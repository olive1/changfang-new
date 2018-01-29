<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 


/** 商品类 */
class User extends Lm_Admin_Controller{
    
    function __construct(){
        parent::__construct();
        $this->load->model('lm_user_mdl');

    }
    
    /** 添加 */
    function add(){

    }
    
    /** 删除 */
    function del($user_id = 0){        
        
        $user_id        =   (!empty($user_id) && is_numeric($user_id)) ? substr(intval($user_id), 0, 5) : 0;
        $user_id_list   =   $this->input->post('user_id',  TRUE);//ID列表        
        $user_id        =   $user_id   ?   $user_id   :   $user_id_list;
        
        $result         =   $this->_del($user_id);
        go_back(); 
    }
    
    /** 编辑  */
    function update($user_id = 0){
       
       $user_id             =   intval($user_id);
       $data['user_row']    =   $this->lm_user_mdl->select(array('user_id' => $user_id));
       $this->load->view(LUMN_ADMIN_PATH.'/user_update', $data); 
    }
        
    /** 列表 */
    function u_list(){
        
        $limit  =   10; //每页10条
        $num_rows=  $this->lm_user_mdl->select_num_rows();
        $per_page=  intval($this->input->get('per_page'));
        $sql    =   'select user_id, user_name, user_mail, user_phone, address, sex from lm_user ';
        $sql    =   $sql.' limit '.$per_page.', '.$limit;
        $data['user_result']   =   $this->lm_user_mdl->query($sql);
        $data['num_rows']      =   $num_rows; 
        $data['cur']           =   ($per_page/$limit)+1; //第几页
        
        $url    =   site_url().'/'.LUMN_ADMIN_PATH.'/user/u_list/?';
        $this->load->library('pagination');                //加载分页类           
        $config['base_url']             =   $url;          
        $config['total_rows']           =   $num_rows;     //总记录数
        $config['per_page']             =   $limit;        //每页数
        $config['page_query_string']    =   TRUE;          //get形式
       
        $config['prev_link']            =   '上一页';
        $config['next_link']            =   '下一页';
        $config['first_link']           =   '第一页';
        $config['last_link']            =   '最后页';  
        $config['cur_tag_open']         =   '<b>';
        $config['cur_tag_close']        =   '</b>';       
        $config['num_links']            =   4;
        $this->pagination->initialize($config);
        $data['pagination'] =   $this->pagination->create_links();
        $this->load->view(LUMN_ADMIN_PATH.'/user_list', $data);
    } 
    
    
    
    ///////以下函数供调用  /////////////////////////////////////////////////////////////////////
    /** 验证  */
    function _form_validation(){
        
        $this->form_validation->set_rules('');
    }
    
   
    /** 删除会员 */
     function _del($user_id)
     {
        if(is_array($user_id))
        {
            
            foreach($user_id as $id)
            {
                $result =   $this->lm_user_mdl->del(array('user_id'=>intval($id)));   
            }
                   
        }
        else
        {
                $result =   $this->lm_user_mdl->del(array('user_id'=>intval($user_id)));
        }
        return $result;
     }
     
     
     
    
}

?>