<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/** 总分类模型   */
class Lm_goods_mdl extends CI_Model{
    
    const   LM_GOODS =   'lm_goods';
    public  $lists      =   '';//存储
    
    function __construct(){
        
        parent::__construct();
        
    }
    
    /** 增加  */
    function add($data){

        $this->db->insert(self::LM_GOODS,    $data);
        return  ($this->db->affected_rows() ==  1)  ?   $this->db->insert_id()  :   FALSE;        
    }
    
    /** 删除  */
    function del($ary){
        
        $this->db->delete(self::LM_GOODS, $ary);
        return ($this->db->affected_rows() == 1)    ?   TRUE    :   FALSE;
    }
    
    /** 修改 */
    function update($data, $ary){
        
        $this->db->where($ary);
        $this->db->update(self::LM_GOODS, $data);
        return(($this->db->affected_rows() == 1) ? TRUE : FALSE);
    }
    
    /** 返回所有行记录 */
    function search($sql){       
        
        $query  =   $this->db->query($sql);
        return ($query->num_rows()>0) ? $query->result() : FALSE;
    }
    
    /** 返回总记录数 */
    function search_num_rows($sql){
        
        $query  =   $this->db->query($sql);
        return ($query->num_rows()>0) ? $query->num_rows() : FALSE;
    }
    
    /** 返回某个行记录 */
    function select($ary='', $str='')
	{
        
        if($ary)$this->db->where($ary);
		if($str)$this->db->select($str);
        $query  =   $this->db->get(self::LM_GOODS);   
        return ($query->row()) ? $query->row() : FALSE;
    }
    
    /** 选择性字段  返回 row_array*/
    function select_where($sql, $ary='')
    {
        $this->db->select($sql);
        if($ary)$this->db->where($ary);
        $query  =   $this->db->get(self::LM_GOODS);   
        return ($query->row()) ? $query->row_array() : FALSE;
    }
    
    function query($sql){
        
        $query  =   $this->db->query($sql);
        return $query->result() ? $query->result() : FALSE;
    }
    
    
    function query_row($sql){
        
        $query  =   $this->db->query($sql);
        return $query->row() ? $query->row() : FALSE;
    }
    
    /** where 并且  like */
    function select_where_like($select, $where, $like, $order_by, $limit_a, $limit_b){
        
        $this->db->select($select);
        if($where)      $this->db->where($where);
        if($like)       $this->db->like($like);
        if($order_by)   $this->db->order_by($order_by);
        if($limit_a && $limit_b)
        {
            $this->db->limit($limit_b, $limit_a);            
        }
        elseif($limit_b)
        {
            $this->db->limit($limit_b);            
        }
        $query  =   $this->db->get(self::LM_GOODS);
        //echo($this->db->last_query());
        
        return $query->result() ? $query->result()  :  FALSE;
    }
    
    /** 返回  记录数  */
    function select_where_like_rows($select, $where, $like){
        
        $this->db->select($select);
        if($where)      $this->db->where($where);
        if($like)       $this->db->like($like);        
        $query  =   $this->db->get(self::LM_GOODS);
        
        return $query->num_rows() > 0 ? $query->num_rows()  :  0;
    }
	
	
	//返回记录数
	function count_all_results($ary)
	{
		if($ary)$this->db->where($ary);
		$this->db->from(self::LM_GOODS);
		return $this->db->count_all_results();
		
	}
    

    
    
}

?>