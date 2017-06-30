<?php
    namespace Modules\Ajax\Controllers;

    use Core\Arr;
    use Core\QB\DB;
    use Core\User;
    use Core\Widgets;
    use Core\Config;
    use Core\Common;


    class Popup extends \Modules\Ajax {

        public function callbackAction() {
            $id = Arr::get($_POST,'id');
            echo Widgets::get('Popup/Callback', array('id'=>$id));
        }

        public function after() {
            die;
        }

    }