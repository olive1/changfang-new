<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Base_model extends CI_Model {

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
                if($order_by)$this->_order_by($order_by);
                $query  = $this->db->get_where($this->table, $where);
                return $query->result_array();
        }    

		function update_row($where, $data)
		{
				return $this->db->where($where)->update($this->table, $data);
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

        public function save($data, $id = 0)
        {
            if ((int) $id > 0) {
                return $this->update($id, $data);
            }
            else {
                return $this->create($data);
            }
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


        public function get($pk)
        {
            $where = array(
                "{$this->table}.{$this->pk}" => (int) $pk,
            );

            $query = $this->db->get_where($this->table, $where);

            return $query->row_array();
        }











        public function _where($where)
        {
            if (isset($where['order_by']) && !empty($where['order_by'])) {
                $this->db->order_by($where['order_by']);
                unset($where['order_by']);
            }
            else {
                $this->db->order_by("{$this->table}.{$this->pk} desc");
            }

            $this->db->where($where);
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

        protected function _select($select)
        {
            if($select && is_array($select)){
                $field = '';
                foreach($select as $k=>$v){
                    $field .= "{$this->table}.{$v}";
                    if(count($select) > $k){
                        $field .= ",";
                    }
                }
                $this->db->select($field);
            }else{
                $this->db->select("{$this->table}.*");
            }
        }

        public function search($where = array(), $limit = 20, $offset = 0, $select = array())
        {
            if (!empty($where['in'])) {
                    foreach ($where['in'] as $key=>$value) {
                            $this->db->where_in($key, $value);
                    }
                    unset($where['in']);
            }

            if ($offset > 0) {
                $ids = $this->_find_ids($where, $limit, $offset);
                if(!$ids){
                    return NULL;
                }
                $this->db->where_in($this->pk, $ids);
                if (isset($where['order_by']) && !empty($where['order_by'])) {
                    $this->db->order_by($where['order_by']);
                }
                else {
                    $this->db->order_by("{$this->pk} desc");
                }
            }
            else {
                $this->db->limit($limit);
                $this->_where($where);
            }        


            if($select){
                $this->_select($select);
            }

            $query = $this->db->get($this->table);
            //echo $this->db->last_query();
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

        public function _find_ids($where, $limit, $offset)
        {
            $this->db->select("{$this->table}.{$this->pk}");
            $this->_where($where);
            if ($offset > 0) {
                $this->db->limit($limit, $offset);
            }
            elseif ($limit > 0) {
                $this->db->limit($limit);
            }

            $query = $this->db->get($this->table);

            $ids = array();

            if ($query->num_rows() > 0) {
                $rows = $query->result_array();
                foreach ($rows as $row) {
                    $ids[] = $row[$this->pk];
                }
            }

            return $ids;
        }


        public function widgetWhere($where)
        {
            if (!empty($where['cols'])) {
                            $this->db->select(implode($where['cols'], ','));
                            unset($where['cols']);
                    }

            if (!empty($where['scope'])) {
                    foreach ($where['scope'] as $key=>$value) {
                            foreach ($value as $k=>$val) {
                                    $key == 'lt'  && $this->db->where($k . ' > ' , $val);
                                    $key == 'ltt' && $this->db->where($k . ' >= ', $val);
                                    $key == 'mt'  && $this->db->where($k . ' < ' , $val);
                                    $key == 'mtt' && $this->db->where($k . ' <= ', $val);
                            }
                    }
                    unset($where['scope']);
            }

            if (!empty($where['in'])) {
                    foreach ($where['in'] as $key=>$value) {
                            $this->db->where_in($key, $value);
                    }
                    unset($where['in']);
            }

            if (!empty($where['not_in'])) {
                    foreach ($where['not_in'] as $key=>$value) {
                            $this->db->where_not_in($key, $value);
                    }
                    unset($where['not_in']);
            }

            if (!empty($where['like'])) {
                    foreach ($where['like'] as $key=>$value) {
                                    $this->db->like($key, $value[0], $value[1]);
                            }
                    unset($where['like']);
            }

            if (!empty($where['sum'])) {
                    $this->db->select_sum($where['sum']);
                    unset($where['sum']);
            }
            if (isset($where['order_by']) && !empty($where['order_by'])) {
                $this->db->order_by($where['order_by']);
                unset($where['order_by']);
            }
            if (!empty($where['order'])) {
                    $order = array();
                    foreach ($where['order'] as $key=>$value) {
                            $order[] = $key . ' ' . $value;
                    }
                $this->db->order_by(implode($order, ','));
                unset($where['order']);
            }

            if (!empty($where['custom'])) {
                    $this->db->where($where['custom']);
                unset($where['custom']);
            }

            if (!empty($where)) {
                    $this->db->where($where);
            }
        }


        public function getWidgetPages($where = array(), $limit = 20, $offset = 0)
        {
            $this->widgetWhere($where);
            $this->db->limit($limit, $offset);
            $query = $this->db->get($this->table);

            return $query->result_array();
        }


        public function getWidgetTotal($where = array())
        {
            $this->widgetWhere($where);
            $this->db->_count_string = "SELECT COUNT({$this->pk}) AS ";
            return $this->db->count_all_results($this->table);
        }


        public function getWidgetRow($where)
        {
            if (is_array($where)) {
                    $this->widgetWhere($where);
                            $query = $this->db->get($this->table);
            } else {
                    $query = $this->db->get_where($this->table, array('id' => $where));
            }

            return $query->row_array();
        }
}

