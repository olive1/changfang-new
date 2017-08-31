<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 


/** 订单类 */
class Order extends Lm_Admin_Controller{
    
    function __construct(){
        parent::__construct();
        $this->load->model('lm_order_mdl');

    }
    
    
    /** 更新订单 状态 */
    function update_status($order_id = 0, $status = 0)
	{
        $order_id       =   (!empty($order_id) && is_numeric($order_id)) ? substr(intval($order_id), 0, 5) : 0;
        $status         =   (!empty($status) && is_numeric($status)) ? substr(intval($status), 0, 1) : 0;
		
		
        $order          =   $this->lm_order_mdl->select(array('order_id' => $order_id));        
		//有订单，并且有人编辑过的时候检查。即：没有人编辑过不检查
		if($order && $order->admin_id)  
        {            
			$this->auth->is_me(array('order_id'=>$order_id), 'lm_order_mdl');//只能更新自己的信息?
        }
        
        
        $data           =   array('status' => $status, 'admin_id' => $this->auth->_user['admin_id']);
        $ary            =   array('order_id' => $order_id);        
        $row            =   $this->lm_order_mdl->update($data, $ary);
        
        go_back(); 
    }
    
    /** 列表 */
    function o_list(){
        
        $limit   =   10; //每页10条
        $num_rows=  $this->lm_order_mdl->select_num_rows();
        $per_page=  intval($this->input->get('per_page'));  //获取页数
        $user_id =  intval($this->input->get('user_id'));   //获取会员ID
        
        $sql     =   'select * from lm_order ';
        if($user_id) $sql   =   $sql.' where user_id ='.$user_id;
        $sql     =   $sql.' limit '.$per_page.', '.$limit;
        
        $order_result       =   $this->lm_order_mdl->query_result_ary($sql);//得到  所有收藏结果
        $order_result       =   $order_result ? $this->_result_goods_user($order_result) : FALSE;//遍历出 订单的 user_name
        $data['co_result']  =   $order_result;
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
        $this->load->view(LUMN_ADMIN_PATH.'/order_list', $data);
    } 
    
    
    
    ///////以下函数供调用  /////////////////////////////////////////////////////////////////////
    
    
   /** 遍历  商品名  和 会员名  return array */
   function _result_goods_user($co_result)
   {
        
        $this->load->model('lm_user_mdl');
        
        $data   =   $co_result;
        $i      =   0;
        foreach($co_result as $row)
        {
            
            $user_row               =   $this->lm_user_mdl->query_row('select user_mail from lm_user where user_id ='.intval($row['user_id']));
            $data[$i]['user_mail']  =   $user_row ? $user_row->user_mail : '';  //数组加入 GOODS_NAME
            
            $admin_row              =   $this->lm_admin_mdl->query_row('select admin_name from lm_admin where admin_id ='.intval($row['admin_id']));
            $data[$i]['admin_name'] =   $admin_row ? $admin_row->admin_name : '';  //数组加入 admin_name
            
            $i++;
        }
        
        return $data;
   }
    
    
}

?>