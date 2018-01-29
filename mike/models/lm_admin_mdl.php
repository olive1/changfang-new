<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
class Lm_admin_mdl extends CI_Model{
    
    /** ���� */
    const LM_ADMIN = 'lm_admin';
    
    function __construct(){
        
        parent::__construct();
        
    }
    
    /** �����û�add() */
    function add($data){
        
        $this->db->insert(self::LM_ADMIN, $data);        
        return ($this->db->affected_rows() > 0) ? TRUE : FALSE;
        
    }
    
    /** ɾ���û� */
    function del($ary)
    {
        $this->db->delete(self::LM_ADMIN, $ary);
        return ($this->db->affected_rows()>0) ? TRUE : FALSE;
    }
    
    /**
     * ����ID���� ���е�����DATA
     * admin_id- ����ԱID
     */
     function get_admin_by_id($admin_id){
        
        $data = array();
        
        $this->db->where('admin_id', $admin_id);
        $query = $this->db->get(self::LM_ADMIN);
        
        if($query->num_rows() == 1 ){ //�����ѯ��1����¼,��������
            $data = $query->row_array();
        }
        return $data;
        
     }
    
    
    /** ����û�������  ������DATA ����
     * $lm_admin-�û���
     * $lm_password-����
     */
    
    function validation_admin($admin_name,$admin_password){
        
        $data = FALSE;
        
        $this->db->where('admin_name', $admin_name);
        $query = $this->db->get(self::LM_ADMIN);
        
        if($query->num_rows() == 1){  //�����1����¼ֵ��
            $data = $query->row_array();
        }
		
        if(!empty($data)){  //�ж� DATA ����
            $data = ($data['admin_password'] == md5($admin_password)) ? $data : FALSE; 
        }
        
        $query->free_result();
        return $data;
    }
    
    
	/**
    * �޸��û���Ϣ
    * 
    * @access public
	* @param int - $uid �û�ID
	* @param int - $data �û���Ϣ
	* @param int - $cipher_password �����Ƿ�hash	
    * @return boolean - success/failure
    */	
    
    function update_admin($admin_id, $data, $hashed = TRUE){
        
        if(!$hashed){
            $data['lm_password'] = md5($data['lm_password']);
        }
        $this->db->where('admin_id', $admin_id);
        $this->db->update(self::LM_ADMIN, $data);
        
        return ($this->db->affected_rows()>0) ? TRUE : FALSE;
    } 
    
    
    //�������м�¼
    function a_list(){

        $this->db->select('admin_id, admin_name, admin_nickname, create_time, group');
        return $this->db->get(self::LM_ADMIN)->result();
        
    }
    
    //�ص� ����û���
    function admin_name_checked($admin_name = ''){
        
        $this->db->where('admin_name', $admin_name);
        $query = $this->db->get(self::LM_ADMIN);
        return ($query->num_rows()>0) ? FALSE : TRUE;
        return FALSE;
        
    }
    
    /** ����ĳ���м�¼ */
    function select($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_ADMIN);   
        return ($query->row()) ? $query->row() : FALSE;
    }
	
    /** ѡ�����ֶ�  ���� row_array*/
    function select_where($sql, $ary='')
    {
        $this->db->select($sql);
        if($ary)$this->db->where($ary);
        $query  =   $this->db->get(self::LM_ADMIN);   
        return ($query->row()) ? $query->row_array() : FALSE;
    }
	
    /** ѡ�����ֶ�  ���� row*/
    function select_where_row($sql, $ary='')
    {
        $this->db->select($sql);
        if($ary)$this->db->where($ary);
        $query  =   $this->db->get(self::LM_ADMIN);   
        return ($query->row()) ? $query->row() : FALSE;
    }
	
	
	
    
    function query_row($sql){
        
        $query  =   $this->db->query($sql);
        return $query->row() ? $query->row() : FALSE;
    }
    
	
    /** ����ĳ�����¼ */
    function select_result($ary=''){
        
        if($ary)$this->db->where($ary);
        $query  =   $this->db->get(self::LM_ADMIN);   
        return ($query->result()) ? $query->result() : FALSE;
    }
	
    /** �޸� */
    function update($data, $ary){
        
        $this->db->where($ary);
        $this->db->update(self::LM_ADMIN, $data);
        
        return(($this->db->affected_rows() == 1) ? TRUE : FALSE);
    }
	
	
    /** ����ĳ���м�¼--array */
    function select_row_array($ary){
        
        $this->db->where($ary);
        $query  =   $this->db->get(self::LM_ADMIN);   
        return ($query->row_array()) ? $query->row_array() : FALSE;
    }
	
	
	
    
    
}

?>