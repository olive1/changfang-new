<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Yuangong_mdl extends Base_mdl {

	/**
     * 构造函数
     * 
     * @access public
     * @return void
     */
    public function __construct()
    {
       parent::__construct();
	   $this->table = 'yuangong';
	   log_message('debug', "Users Model Class Initialized");
    }
	
	
    function requireds()
    {        
        
            $return_data = $this->db->query("SHOW full fields FROM ".$this->prefix.$this->table)->result_array();            
            $return_data = field2key($return_data, "Field");
            foreach($return_data as $k=>$v){
                $return_data[$v['Field']] = array(
                    'Comment'       =>$v['Comment'],
                    'is_required'   => 0,
                );
            }
            
            foreach($return_data as $k=>$v)
            {
                $return_data[$k] = $v['Comment'];
            }
            
            ksort($return_data);
            return $return_data;
        
    
        
    }
    

	function update_row($where, $data)
	{
        parent::update_row($where, $data);
        
        date_default_timezone_set("Asia/Shanghai");
        $this->load->model("Users_update_log_mdl");
        $ip			= $this->input->ip_address();
		$created	= date("Y-m-d H:i:s");
        $data_log   = array(
            'uid'=>$this->user->uid,
            'ip'=>$ip,
            'sql'=>$this->db->last_query(),
            'created'=>$created,
        );
        $this->Users_update_log_mdl->create($data_log);
        return true;
	}
        



}

/* End of file users_mdl.php */
/* Location: ./application/models/users_mdl.php */