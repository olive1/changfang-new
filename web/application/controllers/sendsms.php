<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

//发送短信类
class sendsms extends CI_Controller {

	//构造函数
	public function __construct() {
		parent::__construct();
	}
	

	/**
	 * 发送短信类
	 * @param array $data
	 */
	public function send(){
		if(!$this->input->is_ajax_request())
		{
			$this->response(array(0, '请求方式错误！'));
		}

		$this->load->library('sendsms_helper');
        $phone		= $this->input->post('phone');
		$type		= $this->input->post('type');
		$ip			= $this->input->ip_address();
		$code		= rand(1000,9999);
		$expiredtime= time()+300;//5分钟后过期
		
		if(!$phone){
			$this->response(array(0, '请输入手机号'));
		}

		//待开发
		if(!$this->is_type($type, $phone))
		{
			$this->response(array(0, '验证失败，该用户不是老用户'));
		}
		
		//验证当天，同IP的，短信次数，和最近的时间
		$start 		= date('Y-m-d 00:00:00');
		$end 		= date('Y-m-d 23:59:59');
		$sql		= "SELECT * FROM dili_lulu_smscode WHERE phone='{$phone}' and created>'{$start}' and created<'{$end}' ORDER BY id DESC  ";
		$result		= $this->db->query($sql)->result_array();
		if(count($result) >=5)
		{
			$this->response(array(0, '每天最多发送5次验证码'));
		}
		
		if(isset($result[0]) && (time()-strtotime($result[0]['created'])<60))
		{
			$this->response(array(0, '60秒内只能发送1次'));
		}

		//替换模板，发送手机短信验证码
		$msg		= str_replace('{code}', $code, $this->sendsms_helper->sms_template);		
		$msg		= str_replace('{expiredtime}', $expiredtime, $msg);
		//$issend		= $this->sendsms_helper->sendsms($phone, $msg);
		$issend = 1;

		if(!$issend) 
		{
			log_message('error', "sms_new->send | 手机号:{$phone} 验证码:{$code} 调用短信发送返回值:" . json_encode($issend));
			$this->response(array(0, '发送失败'));
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


	/**
	 * 待开发，或者直接验证码，这里不验证了。
	 * @param $type
	 */
	function is_type($type,$phone)
	{
		//老用户绑定
		if($type == 'bind_phone')
		{
			//查询是否是老用户，并且未绑定
			$this->load->model('access_model');
			$user_old         = $this->access_model->news_table_row(array('a2'=>$phone));

			if(!$user_old)
			{
				return false;
			}

			return true;
		}


	}

	function response($msg)
	{
		echo json_encode($msg);
		exit;
	}


 }