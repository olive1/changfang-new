<?php
defined('BASEPATH') OR exit('No direct script access allowed');


    /*
     * 字段作为key
     * $results 记录数组
     * $field 字段名
     */
    if ( ! function_exists('field2key'))
    {
        function field2key($results, $field1 = 'id', $field2 = '')
        {
            
            $data   = array();
            if(!is_array($results)) return $data;
            
            foreach($results as $k=>$v){
                if(!isset($v[$field1])) continue;
                if($field2){
                    if(!isset($v[$field2])) continue;
                    $data[$v[$field1]][$v[$field2]]   = $v;
                }else{                
                    $data[$v[$field1]]   = $v;                
                }
                
            }
            
            return $data;
        }
    }
    
    
    
    /*
     * 字典数据
     * $field 字段名
     */
    if ( ! function_exists('zidian_get_keyname'))
    {
        function zidian_get_keyname($keyname='')
        {
            $CI = & get_instance();
            $CI->load->model("zidian_mdl");            
            
    	    $return_data = array();
            $all    = $CI->zidian_mdl->get_all();
            if(!$keyname) return $all;
            
            if(array_key_exists($keyname, $all))
            {
                $return_data = $all[$keyname];
            }
            return $return_data;
        }
    }
    
    /*
     * 字典数据
     * $field 字段名
     */
    if ( ! function_exists('zidian_valuename'))
    {
        function zidian_valuename($id, $valuename=false)
        {
            $CI = & get_instance();
            $CI->load->model("zidian_mdl");            
            
    	    $return_data = array();
            $row   = $CI->zidian_mdl->get_row(array('id'=>$id));
            if(!$valuename) return $row;
            
            $return_data = "";
            if($row && array_key_exists("valuename", $row))
            {
                $return_data = $row["valuename"];
            }
            return $return_data;
        }
    }
    
    
    /*
     * 部门数据
     * $field 字段名
     */
    if ( ! function_exists('bumen_list'))
    {
        function bumen_list()
        {
            $CI = & get_instance();
            $CI->load->model("bumen_mdl");            
            
    	    $return_data = array();
            $all    = $CI->bumen_mdl->get_result();
            return $all;
        }
    }
    
    /*
     * 部门数据
     * $field 字段名
     */
    if ( ! function_exists('bumen_name'))
    {
        function bumen_name($id, $name=false)
        {
            $CI = & get_instance();
            $CI->load->model("bumen_mdl");            
            
    	    $return_data = array();
            $row   = $CI->bumen_mdl->get_row(array('id'=>$id));
            if(!$name) return $row;
            
            $return_data = "";
            if($row && array_key_exists("name", $row))
            {
                $return_data = $row["name"];
            }
            return $return_data;
        }
    }
    
    /*
     * 单个员工数据
     * $field 字段名
     */
    if ( ! function_exists('yuangong_name'))
    {
        function yuangong_name($id, $name=false)
        {
            $CI = & get_instance();
            $CI->load->model("yuangong_mdl");            
            
    	    $return_data = array();
            $row   = $CI->yuangong_mdl->get_row(array('id'=>$id));
            if(!$name) return $row;
            
            $return_data = "";
            if($row && array_key_exists("xingming", $row))
            {
                $return_data = $row["xingming"];
            }
            return $return_data;
        }
    }
    
    /*
     * 员工列表
     * $field 字段名
     */
    if ( ! function_exists('yuangong_list'))
    {
        function yuangong_list($where = array(), $order_by = array())
        {
            $CI = & get_instance();
            $CI->load->model("yuangong_mdl");   
    	    $return_data = array();
            $all    = $CI->yuangong_mdl->get_result($where, $order_by);
            
            return $all;
        }
    }
    
    /*
     * 部门数据
     * $field 字段名
     */
    if ( ! function_exists('json_encode_lm'))
    {
        function json_encode_lm($data)
        {
            header('Content-type: application/json');  
            echo json_encode($data);
            exit;
            $CI = & get_instance();
            
            $CI->output 
            ->set_status_header(200) 
            ->set_header('Cache-Control: no-store, no-cache, must-revalidate') 
            ->set_header('Pragma: no-cache') 
            ->set_header('Expires: 0') 
            ->set_content_type('application/json', 'utf-8')
            ->set_output(json_encode($data));
        
        }
    }
    
    
    /**
     * SQL过滤，防注入
     * 
     */
    if ( ! function_exists('sql_check_input'))
    {
        function sql_check_input($value)
        {
            $CI = & get_instance();
            
            // 去除斜杠
            if (get_magic_quotes_gpc())
            {
                $value = stripslashes($value);
            }
            // 如果不是数字则加引号
            if (!is_numeric($value))
            {
                $value = mysqli_real_escape_string($CI->db->conn_id,$value);
            }
            
            return $value;        
        }
    }
    
    /**
     * 将数组的值转成string
     */
    if (! function_exists('array_val_string')){
        function array_val_string(&$array) {
            foreach ($array as $key => $value) {
                if ( is_array($value) ) {
                    array_val_string($array[$key]);
                }else{
                    $array[$key] = @(string)$value;
                }
            }//endforeach
        }//endfunction
    }
        
    /**
     * response_json
     */
    if (! function_exists('response_json')){
        function response_json($success=1, $data=array(), $msg='', $error_code='') {
            
            $returnData = array(
                'success' => $success,
                'data' => $data,
                'msg' => $msg,
                'error_code'=>$error_code,
            );
            
            if($success == 1)
            {
                $returnData['data'] = array_val_string($data);
                unset($returnData['error_code']);
            }else{
                $returnData['success'] = 0;
                unset($returnData['data']);
            }
            
            $json = json_encode($returnData, JSON_UNESCAPED_UNICODE|JSON_UNESCAPED_SLASHES);
            
            
            header('Content-type: application/json;charset=utf-8');
            echo $json;
            exit;
        }//endfunction
    }
        
    
    /**
     * 获取error_code消息说明
     */
    if (! function_exists('get_error_code_msg')){
        function get_error_code_msg($code='') {
            $CI = & get_instance();
            $error_codes= $CI->config->item('error_codes');
            
            if($code && isset($error_codes[$code]))
            {
                return $error_codes[$code];
            }  
            
            return $error_codes;
        }//endfunction
    }
    
    
    /**
     * 获取error_code消息说明
     */
    if (! function_exists('get_sign')){
        function get_sign($data) {
            sort($data);
            $sign_key   = LM_APP_SIGN_KEY;
            $sign_data  = implode("", $data) . $sign_key;
            
            return md5($sign_data);
        }//endfunction
    }
    
    
    
    

?>