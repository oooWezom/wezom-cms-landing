<?php
namespace Modules\Ajax\Controllers;

use Core\Arr;
use Core\Common;
use Core\Config;
use Core\Message;
use Core\HTML;
use Modules\Ajax;

class General extends Ajax
{


    public function visitWebsiteAction()
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, 'http://cms.wezom.net/api/get_token_front');
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_USERPWD, '1:1');
        $html = curl_exec($ch);
        curl_close($ch);
        $key = json_decode($html, true);
        if($key['result'] == 'ok'){
            $this->success(['key'=>$key['key']]);
        }else{
            $this->error('Ошибка авторизации!');
        }
    }
    
    public function visitAdminPanelAction()
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, 'http://cms.wezom.net/api/get_token_back');
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_POST, 1); // использовать данные в post
        curl_setopt($ch, CURLOPT_USERPWD, '1:1');
        curl_setopt($ch, CURLOPT_POSTFIELDS, array(
            'login'=>'wezom',
            'password'=>'4H7gCjOH'
        ));
        $html = curl_exec($ch);
        curl_close($ch);
        $key = json_decode($html, true);

        if($key['result'] == 'ok'){
            $this->success(['key'=>$key['key']]);
        }else{
            $this->error('Ошибка авторизации!');
        }
    }


}