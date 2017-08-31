<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
class Lm_index_mdl extends CI_Model{
    
    /** 表名 */
    const LM_INDEX = 'lm_index';
    
    function __construct(){
        
        parent::__construct();
        
    }
    
    /** 增加用户add() */
    function add($data){
        
        $this->db->insert(self::LM_INDEX, $data);        
        return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
        
    }
    
    /** 删除用户 */
    function del($ary)
    {
        $this->db->delete(self::LM_INDEX, $ary);
        return ($this->db->affected_rows()>0) ? TRUE : FALSE;
    }    
    
    /** 修改  */
    function update($data, $ary){
        
        $this->db->where($ary);
        $this->db->update(self::LM_INDEX, $data);
        return(($this->db->affected_rows() == 1) ? TRUE : FALSE);
    }
    
    /** 返回行记录  */
    function select_row($ary){
        
        $this->db->where($ary);		
        $query = $this->db->get(self::LM_INDEX);
        return ($query->num_rows == 1) ? $query->row() : FALSE;
    }
	
    /** 返回某个行记录 */
    function select($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_INDEX);   
        return ($query->row()) ? $query->row() : FALSE;
    }
    
    
    /** 返回多行记录  */
    function select_result($ary, $orderby=''){        
        
        $this->db->where($ary); 
		$this->db->order_by($orderby);
        $query = $this->db->get(self::LM_INDEX);

        return ($query->num_rows > 0) ? $query->result() : FALSE;
    }
    
    /** 返回 ARRAY 多行记录 */
    function select_result_ary($ary='', $orderby='')
	{
        if($ary)$this->db->where($ary);
		if($orderby)$this->db->order_by($orderby);
        $query = $this->db->get(self::LM_INDEX);
        return ($query->num_rows > 0) ? $query->result_array() : FALSE;
    }
    
    
}

?>