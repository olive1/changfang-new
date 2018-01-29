<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Jg_JPush{

        //测试环境
        private $app_key_test               = '5c1f8b5254b35aac8c53b9c0';
        private $master_secret_test         = 'adee82f5c2b25d3f6a196485';   
        private $ios_option_test            = false;

        //生产环境
        private $app_key_production         = '6e6ebdf7b1670b3ce7b40c8a';
        private $master_secret_production   = '145202f8d1d3e7d50fc137e3';   
        private $ios_option_production      = true;

        private $client;

        public function __construct() {
            require_once("jiGuang/JPush/JPush.php");            
        }

        function single_push($content, $uid, $type, $parameter) {                
            //生产环境
            if(ENVIRONMENT == 'production') 
            { 
                    $this->single_push_production($content, $uid, $type, $parameter);
            }else{//测试环境
                    $this->single_push_test($content, $uid, $type, $parameter);
            }
        }


        function group_push($content, $type, $parameter) {                
            //生产环境
            if(ENVIRONMENT == 'production') 
            {  
                    $this->group_push_production($content, $type, $parameter);
            }else{//测试环境
                    $this->group_push_test($content, $type, $parameter);
            }
        }

//---------------------------------------------------------生产--------------------------------------------------------------------------
        /**
         * 单推
         * @param $content 消息内容
         * @param $uid 用户id
         * @param $type 消息类型
         * @return array|object
         */
        public function single_push_production($content, $uid, $type, $parameter) {
                $this->client = new JPush($this->app_key_production, $this->master_secret_production);
                $result = $this->client->push()
                    ->setPlatform(array('ios', 'android'))
                    ->setOptions(null, null, null, $this->ios_option_production)//true 生产环境IOS, false测试环境
                    ->addAlias("{$uid}")
                    ->addIosNotification($content, 'Voicemail.caf', 1, null, null, array('type'=>$type, 'parameter'=>$parameter))
                    ->addAndroidNotification($content, '', 1, array("type"=>$type, 'parameter'=>$parameter))
                    ->send();

                return $result;
        }

        /**
         * 群推
         * @param $content 消息内容
         * @return array|object
         */
        public function group_push_production($content, $type, $parameter) {
               // echo '生产';exit;
                $this->client = new JPush($this->app_key_production, $this->master_secret_production);
                $result = $this->client->push()
                    ->setPlatform(array('ios', 'android'))
                    ->setOptions(null, null, null, $this->ios_option_production)//true 生产环境IOS, false测试环境
                    ->addAllAudience()
                    ->addIosNotification($content, 'Voicemail.caf', 1, null, null, array('type'=>$type, 'parameter'=>$parameter))
                    ->addAndroidNotification($content, '', 1, array("type"=>$type, 'parameter'=>$parameter))
                    ->send();

                return $result;
        }

//---------------------------------------------------------测试--------------------------------------------------------------------------
        /**
         * 测试环境 单推
         * @param type $content
         * @param type $uid
         * @param type $type
         * @param type $parameter
         * @return type
         */
        function single_push_test($content, $uid, $type, $parameter) {
                $this->single_ios_test($content, $uid, $type, $parameter);
                $this->single_android_test($content, $uid, $type, $parameter);
        }
        
        /**
         * 测试环境 群推
         * @param type $content
         * @param type $type
         * @param type $parameter
         * @return type
         */
        function group_push_test($content, $type, $parameter) {
                //var_dump($this->ios_option_test);
                //echo $this->app_key_test.'=='.$this->master_secret_test;
                //echo '测试';exit;
                $this->group_ios_test($content, $type, $parameter);
                $this->group_android_test($content, $type, $parameter);
        }
        
        /**
         * 测试环境：单推 IOS ，注：app_key,master 同生产
         * @param type $content
         * @param type $uid
         * @param type $type
         * @param type $parameter
         * @return type
         */
        function single_ios_test($content, $uid, $type, $parameter) {
                $this->client = new JPush($this->app_key_production, $this->master_secret_production);
                $result = $this->client->push()
                    ->setPlatform(array('ios'))
                    ->setOptions(null, null, null, $this->ios_option_test)//true 生产环境IOS, false测试环境
                    ->addAlias("{$uid}")
                    ->addIosNotification($content, 'Voicemail.caf', 1, null, null, array('type'=>$type, 'parameter'=>$parameter))
                    ->addAndroidNotification($content, '', 1, array("type"=>$type, 'parameter'=>$parameter))
                    ->send();

                return $result;
        }
        
        /**
         * 测试环境：单推 android ，注：app_key,master 用测试
         * @param type $content
         * @param type $uid
         * @param type $type
         * @param type $parameter
         * @return type
         */
        function single_android_test($content, $uid, $type, $parameter) {
                $this->client = new JPush($this->app_key_test, $this->master_secret_test);
                $result = $this->client->push()
                    ->setPlatform(array('android'))
                    ->setOptions(null, null, null, $this->ios_option_test)//
                    ->addAlias("{$uid}")
                    ->addIosNotification($content, 'Voicemail.caf', 1, null, null, array('type'=>$type, 'parameter'=>$parameter))
                    ->addAndroidNotification($content, '', 1, array("type"=>$type, 'parameter'=>$parameter))
                    ->send();

                return $result;
        }
        
        /**
         * 测试环境：群推 IOS ，注：app_key,master 同生产
         * @param $content 消息内容
         * @return array|object
         */
        public function group_ios_test($content, $type, $parameter) {
                $this->client = new JPush($this->app_key_production, $this->master_secret_production);
                $result = $this->client->push()
                    ->setPlatform(array('ios'))
                    ->setOptions(null, null, null, $this->ios_option_test)//true 生产环境IOS, false测试环境
                    ->addAllAudience()
                    ->addIosNotification($content, 'Voicemail.caf', 1, null, null, array('type'=>$type, 'parameter'=>$parameter))
                    ->addAndroidNotification($content, '', 1, array("type"=>$type, 'parameter'=>$parameter))
                    ->send();

                return $result;
        }
        
        /**
         * 测试环境：群推 android ，注：app_key,master 同测试
         * @param $content 消息内容
         * @return array|object
         */
        public function group_android_test($content, $type, $parameter) {
                $this->client = new JPush($this->app_key_test, $this->master_secret_test);
                $result = $this->client->push()
                    ->setPlatform(array('android'))
                    ->setOptions(null, null, null, $this->ios_option_test)//true 生产环境IOS, false测试环境
                    ->addAllAudience()
                    ->addIosNotification($content, 'Voicemail.caf', 1, null, null, array('type'=>$type, 'parameter'=>$parameter))
                    ->addAndroidNotification($content, '', 1, array("type"=>$type, 'parameter'=>$parameter))
                    ->send();

                return $result;
        }
        
    
}