<?php if ( ! defined('IN_DILICMS')) exit('No direct script access allowed');
/**
 * LUMENG
 *
 * 用于验证 微信发来的消息
 */
class Validate
{
	private $CI = '';
	protected $error = '';//错误消息

    /**
     * 构造函数
     *
     * @access  public
     * @return  void
     */
	public function __construct()
	{
		//nothing to do!
		$this->CI =& get_instance();
		$this->CI->load->library('wx/WXBizMsgCrypt');
	}
	
	// ------------------------------------------------------------------------

	/**
	 * 验证默认方法
	 * @return array
	 */
	public function index()
	{
		$msgSignature   = $this->CI->input->get_post("msgSignature");
		$timestamp      = $this->CI->input->get_post("timestamp");
		$nonce          = $this->CI->input->get_post("nonce");
		$postData       = file_get_contents("php://input");
		$msg 			= '';//解密后的 数据消息

		if(!$msgSignature) $this->set_error('$msgSignature 不可为空');
		if(!$timestamp) $this->set_error('$timestamp 不可为空');
		if(!$nonce) $this->set_error('$nonce 不可为空');
		if(!$postData) $this->set_error('$postData 不可为空');

		if(!$this->get_error())
		{
			$return 		= $this->CI->wxbizmsgcrypt->decryptMsg($msgSignature, $timestamp, $nonce, $postData, $msg);
			if($return !==0) $this->set_error('解密失败');
		}

		if($this->get_error())
		{
			return array(
				'result'=>0,
				'message'=>$this->get_error(),
				'data'=>array());
		}

		return
			array(
				'result'=>1,
				'message'=>'成功',
				'data'=> xmlToArray($msg),//$msg xml 转数组
			);

	}

	function set_error($error)
	{
		$this->error .= $error.',';
	}

	function get_error()
	{
		return $this->error;
	}





}

/* End of file Form.php */
/* Location: ./shared/libraries/Form.php */