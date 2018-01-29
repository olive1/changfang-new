<?php if (!defined('BASEPATH')) exit('No direct access allowed.');
require_once __DIR__ . '/Qniu/autoload.php';

// 引入鉴权类
use Qiniu\Auth;

// 引入上传类
use Qiniu\Storage\UploadManager;

/**
 * 
 * 七牛上传类
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
    public function __construct($config)
    {
        $this->config = $config;
        /** 获取CI句柄 */
		$this->_CI = & get_instance();
		log_message('debug', "Upload library Class Initialized");
    }
    
    function test(){
                
    }
    
    /**
     * 上传到七牛 
     * @param $file_local_name 本地图片路径+文件名，如/var/www/upload/a.jpg
     * @param $file_upload_name 上传到七牛后保存的文件名
     */
    public function do_upload($file_local_name, $file_upload_name)
    {
        $config     = $this->config;
        
        // 构建鉴权对象
        $auth       = new Auth($config['accessKey'], $config['secretKey']);
        
        // 生成上传 Token
        $token      = $auth->uploadToken($config['bucket']);
        
        // 要上传文件的本地路径
        $filePath   = $file_local_name;
        
        // 上传到七牛后保存的文件名
        $key        = $file_upload_name;
        
        // 初始化 UploadManager 对象并进行文件的上传。
        $uploadMgr  = new UploadManager();
        
        // 调用 UploadManager 的 putFile 方法进行文件的上传。
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