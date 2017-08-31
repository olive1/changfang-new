<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 


/** 商品类 */
class Co extends Lm_Admin_Controller{
    
    function __construct(){
        parent::__construct();
        $this->load->model('lm_co_mdl');

    }
    
    /** 添加 */
    function add(){

    }
    
    /** 删除 */
    function del($co_id = 0){        
        
        $co_id          =   (!empty($co_id) && is_numeric($co_id)) ? substr(intval($co_id), 0, 5) : 0;
        $co_id_list     =   $this->input->post('co_id',  TRUE);//ID列表        
        $co_id          =   $co_id   ?   $co_id   :   $co_id_list;
        
        $result         =   $this->_del($co_id);
        go_back(); 
    }
    
    /** 列表 */
    function c_list(){
        
        $limit  =   10; //每页10条
        $num_rows=  $this->lm_co_mdl->select_num_rows();
        $per_page=  intval($this->input->get('per_page'));
        $user_id =  intval($this->input->get('user_id'));   //获取会员ID
        
        $sql    =   'select co_id, user_id, goods_id, cat_id from lm_co ';
        if($user_id) $sql   =   $sql.' where user_id ='.$user_id;
        $sql    =   $sql.' limit '.$per_page.', '.$limit;
        
        $co_result          =   $this->lm_co_mdl->query_result_ary($sql);//得到  所有收藏结果
        $co_result          =   $co_result ? $this->_result_goods_user($co_result) : FALSE;//遍历出 收藏的 goods_name 和 user_name
        $data['co_result']  =   $co_result;
        $data['num_rows']   =   $num_rows; 
        $data['cur']        =   ($per_page/$limit)+1; //第几页
        
        $url    =   site_url().'/'.LUMN_ADMIN_PATH.'/co/c_list/?';
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
        $this->load->view(LUMN_ADMIN_PATH.'/co_list', $data);
    } 
    
    
    
    ///////以下函数供调用  /////////////////////////////////////////////////////////////////////
    /** 验证  */
    function _form_validation(){
        
        $this->form_validation->set_rules('');
    }
    
   /** 遍历  商品名  和 会员名  return array */
   function _result_goods_user($co_result)
   {
        $this->load->model('lm_goods_mdl');
        $this->load->model('lm_user_mdl');
        
        $data   =   $co_result;
        $i      =   0;
        foreach($co_result as $row)
        {
            
            $goods_row              =   $this->lm_goods_mdl->query_row('select goods_name from lm_goods where goods_id ='.intval($row['goods_id']));
            $data[$i]['goods_name'] =   $goods_row ? $goods_row->goods_name : '';  //数组加入 GOODS_NAME
            
            $user_row               =   $this->lm_user_mdl->query_row('select user_mail from lm_user where user_id ='.intval($row['user_id']));
            $data[$i]['user_mail']  =   $user_row ? $user_row->user_mail : '';  //数组加入 GOODS_NAME
            
            $i++;
        }
        
        return $data;
   }
   
   
   /** 删除收藏 */
     function _del($co_id)
     {
        if(is_array($co_id))
        {
            
            foreach($co_id as $id)
            {
                $result =   $this->lm_co_mdl->del(array('co_id'=>intval($id)));   
            }
                   
        }
        else
        {
                $result =   $this->lm_co_mdl->del(array('co_id'=>intval($co_id)));
        }
        return $result;
     }
     
   
    
    
}

?>