<?php if (!defined('BASEPATH')) exit('No direct access allowed.');
/**
 * ǰ̨��������
 *
 * ǰ̨�����п���������Ҫ�̳������
 * 
 * 
 */
class MK_Controller extends CI_Controller {
    
	public function __construct() {
		
		parent::__construct();
    }

}

// ------------------------------------------------------------------------

/**
 * ��̨��������
 *
 * ��̨�����п���������Ҫ�̳�����࣬��Ҫ������֤
 * 
 * 
 */
class MK_Admin_Controller extends CI_Controller {


    public function __construct() {
        
		parent::__construct();
		
		/** ������֤�� */
		$this->load->library('auth');
		
		/** ����½ */		
		if(!$this->auth->hasLogin())
		{
			redirect('admin/login?ref='.urlencode($this->uri->uri_string()));
		}
		
		/** ���غ�̨������������ */
	   	$this->load->library('form_validation');
	   	$this->load->library('user');

		/** ���غ�̨����������ģ�� */
		$this->load->model('users_mdl');
    }
}

/* End of file MY_Controller.php */
/* Location: ./application/libraries/MY_Controller.php */