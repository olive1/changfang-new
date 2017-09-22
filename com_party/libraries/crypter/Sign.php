<?php

/**
 * 计算签名
 * 
 * @author		MIKE lumeng
 * @since		Version 1.0
 */
class Sign
{
        private $_log = '';
        /**
         * md5生成签名 sort升序排序
         * @param type $params_str string
         * @param type $token string
         * @param type $time string
         * @return type
         */
	public function get_sign($params_str, $token, $time){
                $aryData        = array($params_str, $token, $time);
                sort($aryData, SORT_STRING);
                $str            = implode($aryData);
                $signMsg        = strtolower(md5($str));
                $this->set_log($str, $signMsg);
                return $signMsg;
        }
        
        function set_log($str, $signMsg){
                $this->_log = "<br>签名明文：{$str}<br> 签名密文：{$signMsg}<br>";
        }
        
        function get_log(){
                return $this->_log;
        }

}


