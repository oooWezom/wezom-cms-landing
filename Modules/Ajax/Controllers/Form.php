<?php
namespace Modules\Ajax\Controllers;

use Core\Config;
use Core\GeoIP;
use Core\QB\DB;
use Core\Arr;
use Core\User;
use Core\Config AS conf;
use Core\View;
use Core\System;
use Modules\Cart\Models\Cart;
use Core\Log;
use Core\Email;
use Core\Message;
use Core\Common;
use Modules\Ajax;

class Form extends Ajax
{

    protected $post;
    protected $files;

    function before()
    {
        parent::before();
        // Check for bans in blacklist
        $ip = GeoIP::ip();
        $ips = [];
        $ips[] = $ip;
        $ips[] = $this->ip($ip, [0]);
        $ips[] = $this->ip($ip, [1]);
        $ips[] = $this->ip($ip, [1, 0]);
        $ips[] = $this->ip($ip, [2]);
        $ips[] = $this->ip($ip, [2, 1]);
        $ips[] = $this->ip($ip, [2, 1, 0]);
        $ips[] = $this->ip($ip, [3]);
        $ips[] = $this->ip($ip, [3, 2]);
        $ips[] = $this->ip($ip, [3, 2, 1]);
        $ips[] = $this->ip($ip, [3, 2, 1, 0]);
        if (count($ips)) {
            $bans = DB::select('date')
                ->from('blacklist')
                ->where('status', '=', 1)
                ->where('ip', 'IN', $ips)
                ->and_where_open()
                ->or_where('date', '>', time())
                ->or_where('date', '=', NULL)
                ->and_where_close()
                ->find_all();
            if (sizeof($bans)) {
                $this->error(['response'=>'К сожалению это действие недоступно, т.к. администратор ограничил доступ к сайту с Вашего IP адреса!', 'type' => '_error', 'title' => 'Внимание!']);
            }
        }
    }

    private function ip($ip, $arr)
    {
        $_ip = explode('.', $ip);
        foreach ($arr AS $pos) {
            $_ip[$pos] = 'x';
        }
        $ip = implode('.', $_ip);
        return $ip;
    }

    // Send callback
    public function callbackAction()
    {
        // Check incoming data
        $name = trim(Arr::get($this->post, 'name'));
        if (!$name or mb_strlen($name, 'UTF-8') < 2) {
            $this->error('Введенное имя слишком короткое!');
        }
        $email = Arr::get($this->post, 'email');
        if (!$email or !filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $this->error('Вы неверно ввели E-Mail!');
        }
        /*$phone = trim(Arr::get($this->post, 'phone'));
        if (!$phone ) {
            $this->error(['response'=>'Номер телефона введен неверно!', 'type' => '_error', 'title' => 'Внимание!']);
        }*/

        // Check for bot
        $ip = System::getRealIP();
        $check = DB::select([DB::expr('COUNT(callback.id)'), 'count'])
            ->from('callback')
            ->where('ip', '=', $ip)
            ->where('created_at', '>', time() - 60)
            ->as_object()->execute()->current();
         if (is_object($check) AND $check->count) {
             $this->error('Вы только что отправили заявку! Пожалуйста, повторите попытку через минуту');
         }

        // Save callback
        $lastID = DB::insert('callback', ['name', 'email','phone', 'ip', 'status', 'created_at'])->values([$name, $email, $phone, $ip, 0, time()])->execute();
        $lastID = Arr::get($lastID, 0);

        // Save log
        $qName = 'Заказ сайта';
        $url = '/wezom/callback/edit/' . $lastID;
        Log::add($qName, $url, 3);

        // Send E-Mail to admin
        Email::sendTemplate(3, [
            '{{site}}' => Arr::get($_SERVER, 'HTTP_HOST'),
            '{{ip}}' => $ip,
            '{{date}}' => date('d.m.Y H:i'),
            '{{name}}' => $name,
            '{{email}}' => $email,
            '{{phone}}' => $phone
        ]);

        $emails = explode(',',Config::get('basic.emails_for_send'));
        if($emails[0]){
            foreach ($emails as $_email){
                Email::sendTemplate(3, [
                    '{{site}}' => Arr::get($_SERVER, 'HTTP_HOST'),
                    '{{ip}}' => $ip,
                    '{{date}}' => date('d.m.Y H:i'),
                    '{{name}}' => $name,
                    '{{email}}' => $email,
                    '{{phone}}' => $phone
                ],$_email);
            }
        }

        $this->success('Спасибо, что заказали сайт у нас. Наш менеджер свяжется с Вами через несколько минут!');
    }
}