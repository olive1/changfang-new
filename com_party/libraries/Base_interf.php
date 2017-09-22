<?php
/**
 * 所有对接接口父类
 * @package		Libraries
 * @author		MIKE lumeng
 * @since		Version 1.0
 */

// ------------------------------------------------------------------------

defined('BASEPATH') OR exit('No direct script access allowed');

class Base_interf {

        private $CI = NULL;
        private $db;//db
        
        protected $crypter;//加密类
        protected $sign;//签名
        protected $httprequest;    
        protected $time;//时间戳
        protected $service      = '';
        protected $key          ='';//密钥        
        protected $error        = '';
        protected $_log         = '';
        private $data           = array();
        private $return_data    = array();//返回数据

        /**
            * Constructor
            */
        public function __construct()
        {
               $this->init();
               log_message('debug', "Base_interf Class Initialized");
        }
        
        protected function init(){
               $this->CI        =& get_instance(); 
               $this->CI->load->library('crypter/Sign');
               $this->CI->load->library('crypter/Aes', array(), 'crypter');
               $this->CI->load->library('crypter/httprequest', array(), 'httprequest');
               
               $this->sign      = $this->CI->sign;
               $this->crypter   = $this->CI->crypter;
               $this->httprequest= $this->CI->httprequest;
               $this->set_time(time());
			   
               //$this->db = $CI->db;
        }

        //子类需重写该方法
        protected function dorequest($data=array()){
				$this->_log		= '';
        }

        protected function entity($string, $key){                
                if(!is_string($string)) return false;
                $this->crypter->init(array('key'=>$key));
				$crypter_data	= $this->crypter->encrypt($string);
	
				$this->set_crypter_log($string, $crypter_data);
                return $crypter_data;
        }

        protected function decrypt($string, $key){
                if(!is_string($string)) return false;
                $this->crypter->init(array('key'=>$key));
				$decrypt_data	= $this->crypter->decrypt($string);

				$this->set_crypter_log($string, $decrypt_data);
                return $decrypt_data;
        }
        
        protected function httppost($url, $postData){
                $returnData = $this->httprequest->dopost($url, $postData);
                $this->set_http_log($url, $postData, $returnData[1]);
                return $returnData;
        }
        
        public function set_crypter_log($string, $data){
                $this->_log             .= "<BR><BR>前:{$string}<br> 后:{$data}<br> <br>";
        }
        
        public function set_http_log($url, $postData, $returnData){
                $postData               = is_array($postData) ? json_encode($postData) : $postData;
                $this->_log             .= "<BR><BR>请求URL:{$url}<br> postdata:{$postData}<br> 返回数据：{$returnData} <br>";
        }
        
        public function get_http_log(){
                return $this->_log;
        }
        
        public function get_sign_log(){
                return $this->sign->get_log();
        }
        
        protected function tojson($data){
                if(!is_array($data) && !is_object($data)) return false;
                return json_encode($data, true);
        }
        
        protected function get_sign($params_str, $token, $time){
                return $this->sign->get_sign($params_str, $token, $time);
        }

        
        function set_key($key){
                $this->key = $key;
        }
        
        function set_token($token){
                $this->token =$token;
        }
        
        function set_url($url){
                $this->url = $url;
        }
        
        function set_error($error){
                $this->error .= "<br>".$error."<br>";
        }
        //数组
        function set_data($data){
                $data = array_map("strval", $data);//将值统一转为string类型
                $this->data = $data;
        }
        
        
        
        function get_key(){
                return $this->key;
        }
        
        function get_url(){
                return $this->url;
        }

        function set_time($time){
                $this->time = $time;
        }
        
        function get_time(){
                return $this->time;
        }
        
        function get_service(){
                return $this->service;
        }        
        
        function get_token(){
                return $this->token;
        }
        
        function get_error(){
                return $this->error;
        }
        
        function get_data(){
                return $this->data;
        }
        
}
