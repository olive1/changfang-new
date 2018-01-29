<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
class Lm_index_mdl extends CI_Model{
    
    /** ���� */
    const LM_INDEX = 'lm_index';
    
    function __construct(){
        
        parent::__construct();
        
    }
    
    /** �����û�add() */
    function add($data){
        
        $this->db->insert(self::LM_INDEX, $data);        
        return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
        
    }
    
    /** ɾ���û� */
    function del($ary)
    {
        $this->db->delete(self::LM_INDEX, $ary);
        return ($this->db->affected_rows()>0) ? TRUE : FALSE;
    }    
    
    /** �޸�  */
    function update($data, $ary){
        
        $this->db->where($ary);
        $this->db->update(self::LM_INDEX, $data);
        return(($this->db->affected_rows() == 1) ? TRUE : FALSE);
    }
    
    /** �����м�¼  */
    function select_row($ary){
        
        $this->db->where($ary);		
        $query = $this->db->get(self::LM_INDEX);
        return ($query->num_rows == 1) ? $query->row() : FALSE;
    }
	
    /** ����ĳ���м�¼ */
    function select($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_INDEX);   
        return ($query->row()) ? $query->row() : FALSE;
    }
    
    
    /** ���ض��м�¼  */
    function select_result($ary, $orderby=''){        
        
        $this->db->where($ary); 
		$this->db->order_by($orderby);
        $query = $this->db->get(self::LM_INDEX);

        return ($query->num_rows > 0) ? $query->result() : FALSE;
    }
    
    /** ���� ARRAY ���м�¼ */
    function select_result_ary($ary='', $orderby='')
	{
        if($ary)$this->db->where($ary);
		if($orderby)$this->db->order_by($orderby);
        $query = $this->db->get(self::LM_INDEX);
        return ($query->num_rows > 0) ? $query->result_array() : FALSE;
    }
    
    
}

?>