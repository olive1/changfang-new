<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/** 用户会员模型   */
class Lm_fabu_x_mdl extends CI_Model{
    
    const   LM_FABU_X =   'lm_fabu_x';   
    
    function __construct(){
        
        parent::__construct();
        
    }
    
    /** 增加  */
    function add($data){

        $query      =   $this->db->insert(self::LM_FABU_X,    $data);
        return  ($this->db->affected_rows() ==  1)  ?   $this->db->insert_id()  :   FALSE;        
    }
    
    /** 删除  */
    function del($ary){
        
        $this->db->delete(self::LM_FABU_X, $ary);
        return ($this->db->affected_rows() == 1)    ?   TRUE    :   FALSE;
    }
    
    /** 修改 */
    function update($data, $ary){
        
        $this->db->where($ary);
        $this->db->update(self::LM_FABU_X, $data);
        
        return(($this->db->affected_rows() == 1) ? TRUE : FALSE);
    }

    
    /** 返回某个行记录 */
    function select($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_FABU_X);   
        return ($query->row()) ? $query->row() : FALSE;
    }
    
    
    /** 返回某个行记录--array */
    function select_row_array($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_FABU_X);   
        return ($query->row_array()) ? $query->row_array() : FALSE;
    }
    
    /** 返回单个字段记录 */
    function select_row($str, $ary){
        
        if($str) $this->db->select($str);
        if($ary) $this->db->where($ary);
        $query  =   $this->db->get(self::LM_FABU_X);
        return($query->row()) ? $query->row() : FALSE;
    }
    
    /** 返回某个组记录 */
    function select_result($ary='', $str='')
	{
        if($str) $this->db->select($str);
        if($ary)$this->db->where($ary);
        $query  =   $this->db->get(self::LM_FABU_X);   
        return ($query->result()) ? $query->result() : FALSE;
    }
	
    /** 返回某个组记录 */
    function select_result_array($ary){
        
        if($ary)$this->db->where($ary);
        $query  =   $this->db->get(self::LM_FABU_X);   
        return ($query->result_array()) ? $query->result_array() : FALSE;
    }
	
    
    /** query */
    function query($sql){
        
        $query  =   $this->db->query($sql);
        return ($query->result()) ? $query->result() : FALSE;
    }
    
    function query_row($sql){
        
        $query  =   $this->db->query($sql);
        return $query->row() ? $query->row() : FALSE;
    }
    
    /** query  result_array */
    function query_result_ary($sql){
        
        $query  =   $this->db->query($sql);
        return ($query->result_array()) ? $query->result_array() : FALSE;
    }
	
	/** 获取count()  $ary 条件 */
    function count_all_results($ary){	
        if($ary)$this->db->where($ary);
		$this->db->from(self::LM_FABU_X);
        return $this->db->count_all_results();        
    }
    
    /** 返回 记录数 */
    function select_num_rows(){
        $query  =   $this->db->get(self::LM_FABU_X);   
        return ($query->num_rows() > 0 ) ? $query->num_rows() : 0;
    }
    
    /** 选择性字段  返回 row_array*/
    function select_where($str='', $ary='')
    {
        if($str)$this->db->select($str);
        if($ary)$this->db->where($ary);
        $query  =   $this->db->get(self::LM_FABU_X);   
        return ($query->row()) ? $query->row_array() : FALSE;
    }
    
    
}

?>