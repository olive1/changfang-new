<?php if (!defined('BASEPATH')) exit('No direct access allowed.');
/**
 * 
 * 上传类
 * 
 */
class Upload_lm
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
        
    /**
     * 本地上传 
     * @param $file_input_name 上传文件名 文本框名称
     * @return boolen
     */
    public function do_upload_lm($file_input_name)
    {
        $config = $this->config;
        $this->_CI->load->library('upload', $config);

        if ( ! $this->_CI->upload->do_upload($file_input_name))
        {
           return FALSE;
        }
        
        //if 7niu $this->do_upload_qniu();//是否同步到7牛
        
        return TRUE;
    }
    
    /**
     * 
     * 七牛 上传
     * @param $file_local_name 本地图片路径+文件名，如$file_local_name='D:/x/puchao/git/puchao-oa/admin/other/tem1/img/sample-img-2.png';
     * @param $file_upload_name 上传到七牛后保存的文件名，如$file_upload_name='apuchao-oa/dmin/other/tem1/img/sample-img-2.png';
     * @return boolen
     */
    public function do_upload_qniu($file_local_name, $file_upload_name='')
    {
        $this->load->config('upload');
        $config         = $this->config->item('image_Qniu');//7牛 配置信息
                
        $this->_CI->load->library('Upload_Qniu', $config);
        
        if ( ! $this->_CI->upload_qniu->do_upload($file_local_name, $file_upload_name))
        {
           return FALSE;
        }
        
        return TRUE;
    }
    
            
        
    
    
}

/* End of file User.php */
/* Location: ./application/libraries/User.php */