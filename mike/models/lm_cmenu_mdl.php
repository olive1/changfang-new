<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/** 总分类模型   */
class Lm_cmenu_mdl extends CI_Model{
    
    const   LM_CMENU =   'lm_cmenu';
    public  $lists      =   '';//存储
    
    function __construct(){
        
        parent::__construct();
        
    }
    
    /** 增加  */
    function add($data){

        $this->db->insert(self::LM_CMENU,    $data);
        return  ($this->db->affected_rows() ==  1)  ?   $this->db->insert_id()  :   FALSE;        
    }
    
    /** 删除  */
    function del($ary){
        
        $this->db->delete(self::LM_CMENU, $ary);
        return ($this->db->affected_rows() == 1)    ?   TRUE    :   FALSE;
    }
    
    /** 修改 */
    function update($data, $ary){
        
        $this->db->where($ary);
        $this->db->update(self::LM_CMENU, $data);
        
        return(($this->db->affected_rows() == 1) ? TRUE : FALSE);
    }
	
    /** query  result_array */
    function query_result_ary($sql){
        
        $query  =   $this->db->query($sql);
        return ($query->result_array()) ? $query->result_array() : FALSE;
    }
	

    
    /** 返回某个行记录 */
    function select($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_CMENU);   
        return ($query->row()) ? $query->row() : FALSE;
    }
	
	
	
    /** 返回某个行记录--array */
    function select_row_array($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_CMENU);   
        return ($query->row_array()) ? $query->row_array() : FALSE;
    }
    
    /** 返回某个组记录 */
    function select_result($ary='', $orderby='', $str='')
	{
		if($str)$this->db->select($str);
        if($ary)$this->db->where($ary);		
		if($orderby)$this->db->order_by($orderby);
        $query  =   $this->db->get(self::LM_CMENU);   
        return ($query->result()) ? $query->result() : FALSE;
    }
	
    /** 返回 记录数 */
    function select_num_rows(){
        $query  =   $this->db->get(self::LM_CMENU);   
        return ($query->num_rows() > 0 ) ? $query->num_rows() : 0;
    }
	
	
	/** 获取count() */
    function count_all_results($ary){	
        if($ary)$this->db->where($ary);
		$this->db->from(self::LM_CMENU);
        return $this->db->count_all_results();        
    }
	
    
}

?>