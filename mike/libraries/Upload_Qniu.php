<?php if (!defined('BASEPATH')) exit('No direct access allowed.');
require_once __DIR__ . '/Qniu/autoload.php';

// �����Ȩ��
use Qiniu\Auth;

// �����ϴ���
use Qiniu\Storage\UploadManager;

/**
 * 
 * ��ţ�ϴ���
 * 
 */
class Upload_Qniu
{
	
	/**
     * $config
     *
     * @access public
     * @var string
     */
	public $config = '';

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
    public function __construct($config)
    {
        $this->config = $config;
        /** ��ȡCI��� */
		$this->_CI = & get_instance();
		log_message('debug', "Upload library Class Initialized");
    }
    
    function test(){
                
    }
    
    /**
     * �ϴ�����ţ 
     * @param $file_local_name ����ͼƬ·��+�ļ�������/var/www/upload/a.jpg
     * @param $file_upload_name �ϴ�����ţ�󱣴���ļ���
     */
    public function do_upload($file_local_name, $file_upload_name)
    {
        $config     = $this->config;
        
        // ������Ȩ����
        $auth       = new Auth($config['accessKey'], $config['secretKey']);
        
        // �����ϴ� Token
        $token      = $auth->uploadToken($config['bucket']);
        
        // Ҫ�ϴ��ļ��ı���·��
        $filePath   = $file_local_name;
        
        // �ϴ�����ţ�󱣴���ļ���
        $key        = $file_upload_name;
        
        // ��ʼ�� UploadManager ���󲢽����ļ����ϴ���
        $uploadMgr  = new UploadManager();
        
        // ���� UploadManager �� putFile ���������ļ����ϴ���
        list($ret, $err) = $uploadMgr->putFile($token, $key, $filePath);
        //echo "\n====> putFile result: \n";
        
        if ($err !== null) {
            //var_dump($err);
            return FALSE;
        } 
        
        return TRUE;
    }
    
    
    
    
    
}

/* End of file User.php */
/* Location: ./application/libraries/User.php */