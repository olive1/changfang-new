<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Base_mdl extends CI_Model {

        public  $table = NULL;
        public     $pk = 'id';

        public function __construct($table = NULL)
        {
            parent::__construct();
            $this->prefix = $this->db->dbprefix;
            $this->table = $table;
        }

        public function get_row($where)
        {
            $query = $this->db->get_where($this->table, $where);

            return $query->row_array();
        }    

        public function get_result($where=array(),$order_by=array())
        {
            
                if($order_by)$this->db->order_by($order_by[0], $order_by[1]);   
                $query  = $this->db->get_where($this->table, $where);
                
                return $query->result_array();
        }    

		function update_row($where, $data)
		{
				return $this->db->where($where)->update($this->table, $data);
		}
        
        function get_columns()
        {
            
    	    $return_data = $this->db->query("SHOW full fields FROM ".$this->prefix.$this->table)->result_array();
            $return_data = field2key($return_data, "Field");
            $return_data = array_flip(array_keys($return_data));
    
            return $return_data;
        }
        


        /**
         * array(array('id','asc'), array() )
         * @param type $order_by
         * @return type
         */
        protected function _order_by($order_by)
        {
                if(!is_array($order_by)) return;
                foreach($order_by as $order_row)
                {
                        if($order_row[0] && in_array($order_row[1], array('asc', 'desc')))
                        {
                                $this->db->order_by($order_row[0], $order_row[1]);
                        }
                }
                return;
        }

      
        public function create($data)
        {
            $this->db->insert($this->table, $data);
            if ($this->db->affected_rows() > 0) {
                return isset($data[$this->pk]) ? $data[$this->pk] : $this->db->insert_id();
            }
            else {
                return NULL;
            }
        }

        public function remove($id)
        {
            if (is_int($id)) {
                $id = array($id);
            }

            $this->db->where_in($this->pk, $id)
                ->delete($this->table);

            if ($this->db->affected_rows() > 0) {
                return TRUE;
            }
            else {
                return FALSE;
            }
        }

        public function update($id, $data)
        {
            $result = $this->db->where($this->pk, (int) $id)
                ->update($this->table, $data);
            if($result === FALSE){
                return FALSE;
            }
            if ($this->db->affected_rows() > 0) {
                return $id;
            }
            else {
                return NULL;
            }
        }


       

        public function count_all($where = array())
        {
            if (!empty($where['in'])) {
                    foreach ($where['in'] as $key=>$value) {
                            $this->db->where_in($key, $value);
                    }
                    unset($where['in']);
            }

            $this->_where($where);
            $this->db->_count_string = "SELECT COUNT({$this->pk}) AS ";
            return $this->db->count_all_results($this->table);
        }

        public function sum($field, $where)
        {
            if(!$field){
                return NULL;
            }
            if($where){
                $this->db->where($where);
            }
            foreach($field as $v){
                $this->db->select_sum($v);
            }

            $query = $this->db->get($this->table);
            return $query->result_array();
        }

      

        public function all($where = array(), $select = array())
        {
            if($select){
                $this->_select($select);
            }

            if ($where) {
                $this->_where($where);
            }

            $query = $this->db->get($this->table);

            return $query->result_array();
        }
        
        
        

}

