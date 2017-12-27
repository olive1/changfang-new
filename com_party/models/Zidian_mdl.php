<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Zidian_mdl extends Base_mdl {

	/**
     * 构造函数
     * 
     * @access public
     * @return void
     */
    public function __construct()
    {
       parent::__construct();
	   $this->table = 'zidian';
	   log_message('debug', "Users Model Class Initialized");
    }
	
	/**
     * 根据keyname 获取所有值。
     * 
     * @access public
	 * @param int $uid 用户id
     * @return array - 用户信息
     */
	public function get_keyname($keyname)
	{
	   $return_data = array();
        $all    = $this->get_all();
        if(array_key_exists($keyname, $all))
        {
            $return_data = $all[$keyname];
        }
        return $return_data;
	}
    
    function get_all()
    {
	    $return_data = array();
		$all      = $this->get_result();
        
        foreach($all as $k=>$v)
        {
            $return_data[$v['keyname']][] = $v;
        }
        return $return_data;
        
    }
    
    



}

/* End of file users_mdl.php */
/* Location: ./application/models/users_mdl.php */