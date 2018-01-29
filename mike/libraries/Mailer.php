<?php if (!defined('BASEPATH')) exit('No direct access allowed.');
/**
 * 
 * Mailer
 * 
 */

class Mailer
{
	/**
    * CI句柄
    * 
    * @access private
    * @var object
    */
	private $_CI;

	 /**
     * 构造函数
     * 
     * @access public
     * @return void
     */
    public function __construct()
    {
        /** 获取CI句柄 */
		$this->_CI = & get_instance();
        $this->_CI->load->library("phpmailer/phpmailer");
		log_message('debug', "Pdf library Class Initialized");
    }
        
    /**
     * 
     * @param FromName 来自谁（名称）
     * @param Subject  标题 
     * @param Body     内容 
     * @param fujian_path   附件路径
     * @param fujian_bieming 附件别名
     */
    public function send($config_new)
    {
        $this->_CI->config->load('phpmailer', TRUE);
        $config     = $this->_CI->config->item('phpmailer', 'phpmailer');        
        
        $config['AddAddress']       = isset($config_new['AddAddress'])        ? $config_new['AddAddress'] : $config['AddAddress'];
        if(!$config['AddAddress']) return false;
        
        $config['FromName']         = isset($config_new['FromName'])        ? $config_new['FromName'] : $config['FromName'];
        $config['Subject']          = isset($config_new['Subject'])         ? $config_new['Subject'] : $config['Body'];
        $config['Body']             = isset($config_new['Body'])            ? $config_new['Body'] : $config['Body'];  
        $config['fujian_path']      = isset($config_new['fujian_path'])     ? $config_new['fujian_path'] : '';
        $config['fujian_bieming']   = isset($config_new['fujian_bieming'])  ? $config_new['fujian_bieming'] : '';
        
        
        //print_r($config);exit;  
        
        $mail   = $this->_CI->phpmailer;   
        
    	try { 
    		$mail->IsSMTP(); 
    		$mail->CharSet        ='UTF-8'; //设置邮件的字符编码，这很重要，不然中文乱码 
    		$mail->SMTPAuth       = true; //开启认证 
    		$mail->Port           = $config['Port']; 
    		$mail->Host           = $config['Host']; 
    		$mail->Username       = $config['Username']; 
    		$mail->Password       = $config['Password']; 
    		//$mail->IsSendmail(); //如果没有sendmail组件就注释掉，否则出现“Could not execute: /var/qmail/bin/sendmail ”的错误提示 
    		$mail->AddReplyTo($config['AddReplyTo'],"");//回复地址 
    		//$mail->AddCC($config['AddCC'],"");//抄送地址 
    				
    		$mail->From           = $config['From']; 
    		$mail->FromName       = $config['FromName']; 
    		$mail->AddAddress($config['AddAddress']); //收件人邮箱地址
    		$mail->Subject        = $config['Subject']; 
    		$mail->Body           = $config['Body']; 
    		$mail->AltBody        = $config['AltBody']; //当邮件不支持html时备用显示，可以省略 
    		$mail->WordWrap       = $config['WordWrap'];  // 设置每行字符串的长度 
    		if($config['fujian_path']) $mail->AddAttachment($config['fujian_path'], $config['fujian_bieming']);//附件
    		$mail->IsHTML(true); 
    		$mail->Send(); 
    		return true;
    	} catch (phpmailerException $e) {
            $this->error_msg = $e;
    		return false;
    	} 
    }
    
    
        
    
    
}

/* End of file User.php */
/* Location: ./application/libraries/User.php */