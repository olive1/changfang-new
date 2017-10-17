<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

//发送短信类
class send_sms extends MY_Controller {

	//构造函数
	public function __construct() {
		parent::__construct();
	}
	

	/**
	 * 发送短信类
	 * @param array $data
	 */
	public function send(){
		$this->load->library('sendsms_helper');
        $phone		= this->input->post('phone');   
		$ip			= $this->input->ip_address();
		$code		= rand(1000,9999);
		$expiredtime= time()+300;//5分钟后过期
		
		if(!$phone){
			$this->response(array(0, '请输入手机号'));
		}		 
		
		//验证当天，同IP的，短信次数，和最近的时间
		$sql		= "SELECT * FROM dili_lulu_smscode WHERE phone='{$phone}' and created>'{date('Y-m-d 00:00:00')}' and created<'{date('Y-m-d 23:59:59')}' ORDER BY id DESC  ";
		$result		= $this->db->query($sql)->result_array();
		if(count($result) >=5)
		{
			$this->response(array(0, '每天最多发送5次验证码'));
		}
		
		if(isset($result[0]) && (time()-strtotime($result[0]['created'])<60))
		{
			$this->response(array(0, '60秒内只能发送1次'));
		}
		
                
		//发送手机短信验证码
		
		
		//替换模板
		$msg		= str_replace('{code}', $code, $this->sendsms_helper->sms_template);		
		$msg		= str_replace('{expiredtime}', $expiredtime, $msg);
		$issend		= $this->sendsms_helper->sendsms($phone, $msg);

		if(!$issend) 
		{
			log_message('error', "sms_new->send | 手机号:{$phone} 验证码:{$code} 调用短信发送返回值:" . json_encode($issend));
			echo '发送失败';exit;
		}
		
		//保存验证码
		$sms_data		= array(
			'phone'			=> $phone,
			'code'			=> $code,
			'ip'			=> $ip,
			'expiredtime'	=> $expiredtime,
			'created'		=> date('Y-m-d H:i:s',time()),

		);
		
		//insert
		$insert = $this->db->insert('lulu_smscode', $sms_data);

		//成功
		$this->response(array(1, '发送成功'));
	}



	function response($msg)
	{
		echo json_encode($msg);
		exit;
	}


 }