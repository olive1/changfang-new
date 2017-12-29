<?php if (!defined('BASEPATH')) exit('No direct access allowed.');
/**
 * 
 * �ϴ���
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
        
    /**
     * �����ϴ� 
     * @param $file_input_name �ϴ��ļ��� �ı�������
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
        
        //if 7niu $this->do_upload_qniu();//�Ƿ�ͬ����7ţ
        
        return TRUE;
    }
    
    /**
     * 
     * ��ţ �ϴ�
     * @param $file_local_name ����ͼƬ·��+�ļ�������$file_local_name='D:/x/puchao/git/puchao-oa/admin/other/tem1/img/sample-img-2.png';
     * @param $file_upload_name �ϴ�����ţ�󱣴���ļ�������$file_upload_name='apuchao-oa/dmin/other/tem1/img/sample-img-2.png';
     * @return boolen
     */
    public function do_upload_qniu($file_local_name, $file_upload_name='')
    {
        $this->load->config('upload');
        $config         = $this->config->item('image_Qniu');//7ţ ������Ϣ
                
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