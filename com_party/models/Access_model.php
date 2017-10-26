<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

//读取mdb access
class Access_model extends CI_Model{
    public $table;
    public $pk = 'id';
    public $access_db;
    public function __construct()
    {
        //读取access中数据
        $this->access_db = $this->load->database('access', TRUE);
    }

    public function news_table_result($where=array())
    {
        $this->access_db->select('newsid,a1,a2,a3,adminid,news_status_id');
        if($where)$this->access_db->where($where);
        $result = $this->access_db->get('news')->result_array();
        return $result;
    }

    public function news_table_row($where)
    {
        $row = $this->access_db->select('*')->where($where)->get('news')->row_array();
        return $row;
    }

    public function get_row($table,$where)
    {
        $row = $this->access_db->select('*')->where($where)->get($table)->row_array();
        //echo $this->access_db->last_query();
        return $row;
    }

}
