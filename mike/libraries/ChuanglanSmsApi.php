﻿<?php
header("Content-type:text/html; charset=UTF-8");

/* *
 * 类名：ChuanglanSmsApi
 * 功能：创蓝接口请求类
 * 详细：构造创蓝短信接口请求，获取远程HTTP数据
 * 版本：1.3
 * 日期：2016-07-16
 * 说明：
 * 以下代码只是为了方便客户测试而提供的样例代码，客户可以根据自己网站的需要，按照技术文档自行编写,并非一定要使用该代码。
 * 该代码仅供学习和研究创蓝接口使用，只是提供一个参考。
 */

class ChuanglanSmsApi {

	//创蓝发送短信接口URL, 如无必要，该参数可不用修改
	const API_SEND_URL='http://222.73.117.156/msg/HttpBatchSendSM';

	//创蓝短信余额查询接口URL, 如无必要，该参数可不用修改
	const API_BALANCE_QUERY_URL='http://222.73.117.156/msg/QueryBalance';
	
	//创蓝短信余额查询接口URL, 如无必要，该参数可不用修改
	const API_STATUS_REPORT='http://222.73.117.156';

	const API_ACCOUNT='';//创蓝账号 替换成你自己的账号

	const API_PASSWORD='';//创蓝密码 替换成你自己的密码
	
	static $RemindMsg  = array(
         '0' =>'发送成功',
        '101'=>'无此用户',
        '102'=>'密码错',
        '103'=>'提交过快',
        '104'=>'系统忙',
        '105'=>'敏感短信',
        '106'=>'消息长度错',
        '107'=>'错误的手机号码',
        '108'=>'手机号码个数错',
        '109'=>'无发送额度',
        '110'=>'不在发送时间内',
        '111'=>'超出该账户当月发送额度限制',
        '112'=>'无此产品',
        '113'=>'extno格式错',
        '115'=>'自动审核驳回',
        '116'=>'签名不合法，未带签名',
        '117'=>'IP地址认证错',
        '118'=>'用户没有相应的发送权限',
        '119'=>'用户已过期',
        '120'=>'内容不是白名单',
    );

	/**
	 * 发送短信
	 *
	 * @param string $mobile 		手机号码
	 * @param string $msg 			短信内容
	 * @param string $needstatus 	是否需要状态报告
	 */
	public function sendSMS( $mobile, $msg, $needstatus = 'false') {
		
		//创蓝接口参数
		$postArr = array (
				          'account' => self::API_ACCOUNT,
				          'pswd' => self::API_PASSWORD,
				          'msg' => $msg,
				          'mobile' => $mobile,
				          'needstatus' => $needstatus
                     );
		
		$result = $this->curlPost( self::API_SEND_URL , $postArr);
		return $result;
	}
	
	/**
	 * 查询额度
	 *
	 *  查询地址
	 */
	public function queryBalance() {
		
		//查询参数
		$postArr = array ( 
		          'account' => self::API_ACCOUNT,
		          'pswd' => self::API_PASSWORD,
		);
		$result = $this->curlPost(self::API_BALANCE_QUERY_URL, $postArr);
		return $result;
	}

	/**
	 * 处理返回值
	 * 
	 */
	public function execResult($result){
		$result=preg_split("/[,\r\n]/",$result);
		return $result;
	}

	/**
	 * 通过CURL发送HTTP请求
	 * @param string $url  //请求URL
	 * @param array $postFields //请求参数 
	 * @return mixed
	 */
	private function curlPost($url,$postFields){
		$postFields = http_build_query($postFields);
		$ch = curl_init ();
		curl_setopt ( $ch, CURLOPT_POST, 1 );
		curl_setopt ( $ch, CURLOPT_HEADER, 0 );
		curl_setopt ( $ch, CURLOPT_RETURNTRANSFER, 1 );
		curl_setopt ( $ch, CURLOPT_URL, $url );
		curl_setopt ( $ch, CURLOPT_POSTFIELDS, $postFields );
		$result = curl_exec ( $ch );
		curl_close ( $ch );
		return $result;
	}
	
	//魔术获取
	public function __get($name){
		return $this->$name;
	}
	
	//魔术设置
	public function __set($name,$value){
		$this->$name=$value;
	}
}
?>