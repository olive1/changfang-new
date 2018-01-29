<?php if (!defined('BASEPATH')) exit('No direct access allowed.');
/**
 * 
 * Mailer
 * 
 */

class Mailer
{
	/**
    * CI���
    * 
    * @access private
    * @var object
    */
	private $_CI;

	 /**
     * ���캯��
     * 
     * @access public
     * @return void
     */
    public function __construct()
    {
        /** ��ȡCI��� */
		$this->_CI = & get_instance();
        $this->_CI->load->library("phpmailer/phpmailer");
		log_message('debug', "Pdf library Class Initialized");
    }
        
    /**
     * 
     * @param FromName ����˭�����ƣ�
     * @param Subject  ���� 
     * @param Body     ���� 
     * @param fujian_path   ����·��
     * @param fujian_bieming ��������
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
    		$mail->CharSet        ='UTF-8'; //�����ʼ����ַ����룬�����Ҫ����Ȼ�������� 
    		$mail->SMTPAuth       = true; //������֤ 
    		$mail->Port           = $config['Port']; 
    		$mail->Host           = $config['Host']; 
    		$mail->Username       = $config['Username']; 
    		$mail->Password       = $config['Password']; 
    		//$mail->IsSendmail(); //���û��sendmail�����ע�͵���������֡�Could not execute: /var/qmail/bin/sendmail ���Ĵ�����ʾ 
    		$mail->AddReplyTo($config['AddReplyTo'],"");//�ظ���ַ 
    		//$mail->AddCC($config['AddCC'],"");//���͵�ַ 
    				
    		$mail->From           = $config['From']; 
    		$mail->FromName       = $config['FromName']; 
    		$mail->AddAddress($config['AddAddress']); //�ռ��������ַ
    		$mail->Subject        = $config['Subject']; 
    		$mail->Body           = $config['Body']; 
    		$mail->AltBody        = $config['AltBody']; //���ʼ���֧��htmlʱ������ʾ������ʡ�� 
    		$mail->WordWrap       = $config['WordWrap'];  // ����ÿ���ַ����ĳ��� 
    		if($config['fujian_path']) $mail->AddAttachment($config['fujian_path'], $config['fujian_bieming']);//����
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