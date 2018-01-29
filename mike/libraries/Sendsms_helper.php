<?php
/*
 * 发送手机短信验证码类
 */
class sendsms_helper {
	/**
	 * the name of account
	 * @var string
	 */
	private $account = '';
	
	/**
	 * the name of password
	 * @var string
	 */
	private $password = '';
	
	/**
	 * the name of posturl
	 * @var string	 
	 */
	private $posturl='http://222.73.117.156/msg/HttpBatchSendSM?'; 
	
	/**
	 * 短信模板
	 * @var string
	 */
	public $sms_template='亲爱的用户，您的验证码是：{code}，此验证码{expiredtime}分钟内有效，请尽快完成验证。';
	
	/**
	 *send mobile sms
	 *@param string $mobile is send sms mobile code 
	 *@param string $msg is send sms content
	 */
	public function sendsms($mobile,$msg){
                if(ENVIRONMENT != 'production') return true;//生产环境才推送
                
		$mobile=trim($mobile);
		$msg=trim($msg);
		if($mobile=='' || $msg=='')
			return -200;
		if(!preg_match("/1[34587]{1}\d{9}$/",$mobile))
			return -100;
		$post_data = array();
		$post_data['account'] = $this->account;
		$post_data['pswd'] = $this->password;
		$post_data['mobile'] =$mobile;
		$post_data['msg']=mb_convert_encoding($msg,'UTF-8', 'auto');
		$post_data['status']=true;
		$o="";
		foreach ($post_data as $k=>$v)
		{
			$o.= "$k=".urlencode($v)."&";
		}
		$post_data=substr($o,0,-1);
		
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_setopt($ch, CURLOPT_URL,$this->posturl);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data);
		//用于屏蔽界面输出
		curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
		$result = curl_exec($ch);
		//处理还回结果
		$result = substr($result,15);
	    if ($result == '0') {
	    	//发送成功
            return true;
        }else{
            return false;
        }
	}
}

