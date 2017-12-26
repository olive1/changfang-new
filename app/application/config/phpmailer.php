<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------
| phpmailer 配置信息
*/
$config['phpmailer'] = array(
	'Port'		=> 25,
	'Host'		=> 'smtp.puchao.com',
	'Username'	=> 'message@puchao.com',
	'Password'	=> 'Puchao246810',
	'From'		=> 'message@puchao.com',
	'FromName'	=> '入职通知',
	'AddReplyTo'=> 'message@puchao.com',//回复地址 
	'AddCC'		=> '',//抄送地址 	
	'AddAddress'=> '',
	'Subject'	=> '普超控股录取通知书',
	'Body'		=> '
	Dear {xingming}：<br><br>
恭喜你加入普超控股团队，附件为你的录用通知书，请查收，谢谢。<br><br><br><br><br>

钟琍贞 |人力资源部<br>
M +86 13764983077<br>
普超控股<br>​​​​
',
	'AltBody'	=> '恭喜你加入普超控股团队，附件为你的录用通知书，请查收，谢谢。',//当邮件不支持html时备用显示，可以省略 
	'WordWrap'	=> 80, // 设置每行字符串的长度 
 );
 

return $config;