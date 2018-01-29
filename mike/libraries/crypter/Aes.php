<?php 

/** 
 * 常用对称加密算法类 
 * 支持密钥：64/128/256 bit（字节长度8/16/32） 
 * 支持算法：DES/AES（根据密钥长度自动匹配使用：DES:64bit AES:128/256bit） 
 * 支持模式：CBC/ECB/OFB/CFB 
 * 密文编码：base64字符串/十六进制字符串/二进制字符串流 
 * 填充方式: PKCS5Padding
 * 
 */  
class Aes{
        private $mcrypt;
        private $key;  
        private $mode;  
        private $iv;  
        private $blocksize;  

        /** 
         * 构造函数 
         * 
         * @param string 密钥 
         * @param string 模式 
         * @param string 向量（"off":不使用 / "auto":自动 / 其他:指定值，长度同密钥） 
         */  
        public function __construct(){

        }  

        function init($data){        		                        
                $this->mcrypt   = isset($data['mcrypt']) && $data['mcrypt'] == 256 ? MCRYPT_RIJNDAEL_256 : MCRYPT_RIJNDAEL_128;        
                $this->mode		= MCRYPT_MODE_ECB;  
                $this->key		= isset($data['key']) ? $data['key'] : '';
                $this->iv		= null;   //ECB不需要向量
        }
		

        /** 
         * 加密 
         * @param string 明文 
         * @param string 密文编码（base64/hex/bin） 
         * @return string 密文 
         */  
        public function encrypt($str){
			$str		= $this->pkcs5_pad($str);
			$td			= mcrypt_module_open($this->mcrypt, '', $this->mode, '');	 
			$iv			= @mcrypt_create_iv(mcrypt_enc_get_iv_size($td), MCRYPT_RAND);
	 
			mcrypt_generic_init($td, $this->key, $iv);
			$cyper_text = mcrypt_generic($td, $str);
			$rt=base64_encode($cyper_text);
			mcrypt_generic_deinit($td);
			mcrypt_module_close($td);

            return $rt;
        }


		/** 
		 * 解密  
		 * @param string 密文 
		 * @param string 密文编码（base64/hex/bin） 
		 * @return string 明文 
		 */     
		 public function decrypt($str){
			$td = mcrypt_module_open($this->mcrypt, '', $this->mode, '');	 
			$iv = @mcrypt_create_iv(mcrypt_enc_get_iv_size($td), MCRYPT_RAND);
	 
			mcrypt_generic_init($td, $this->key, $iv);
			$decrypted_text = mdecrypt_generic($td, base64_decode($str));//base64_decode
			$rt = $decrypted_text;
			mcrypt_generic_deinit($td);
			mcrypt_module_close($td);
	 
			return $this->pkcs5_unpad($rt);
		}
	 

	 
		protected function pkcs5_pad($text)
		{
			$blocksize		= mcrypt_get_block_size($this->mcrypt, $this->mode);
			$pad			= $blocksize - (strlen($text) % $blocksize);
			return $text . str_repeat(chr($pad), $pad);
		}
	 
		protected function pkcs5_unpad($text)
		{
			$pad			= ord($text{strlen($text) - 1});
			if ($pad > strlen($text)) return false;
			if (strspn($text, chr($pad), strlen($text) - $pad) != $pad) return false;
			return substr($text, 0, -1 * $pad);
		}



        public function get_key(){
                return $this->key;
        }

}  

?>