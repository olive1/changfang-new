<?php if (!defined('BASEPATH')) exit('No direct access allowed.');
/**
 * ǰ�˸�������
 * 
 * 
 */
class MK_App_Controller extends CI_Controller {


    public function __construct() {
        
		parent::__construct();
        $this->verify();//��֤��������
    }
    
    
    /**
     * ��֤��������
     *   
     */
    protected function verify()
    {
        //POST������֤
        if($this->input->method() != 'post')
        {
            response_json(0, '', get_error_code_msg(4000),4000);
        }
        
        //������֤
        $postdata_config = $this->config->item('postdata');
        $post               = $this->input->post();
        if(array_diff_key($postdata_config, $post))
        {
            response_json(0, '', get_error_code_msg(4003),4003);
        }
        
        if(!in_array($post['version'], $postdata_config['version']))
        {
            $msg    = get_error_code_msg(4003) . 'version';
            response_json(0, '', $msg, 4003);
        }
        
        if(!in_array($post['apptype'], $postdata_config['apptype']))
        {
            $msg    = get_error_code_msg(4003) . 'apptype';
            response_json(0, '', $msg, 4003);
        }
        
        if(!$post['time'] || !$post['sign'])
        {
            $msg    = get_error_code_msg(4003) . 'time, sign';
            response_json(0, '', $msg, 4003);
        }
        
        //ǩ����֤
        $data   = $post;
        unset($data['sign']);
        if($post['sign'] != get_sign($data))
        {
            response_json(0, '', get_error_code_msg(4002), 4002);
        }
        
        
    }
    
}

/**
 * ǰ���û���������
 *
 * ��Ҫ�����û�Ȩ����֤
 * 
 * 
 */
class MK_App_User_Controller extends MK_App_Controller {


    public function __construct() {
        
		parent::__construct();
		
		/** ������֤�� */
		$this->load->library('auth');
		
		/** ����½ */		
		if(!$this->auth->hasLogin())
		{
			redirect('admin/login?ref='.urlencode($this->uri->uri_string()));
		}
		
		/** �����û��� */
	   	$this->load->library('yuangong');

		/** ���غ�̨����������ģ�� */
		$this->load->model('yuangong_mdl');
    }
}

/* End of file MY_Controller.php */
/* Location: ./application/libraries/MY_Controller.php */