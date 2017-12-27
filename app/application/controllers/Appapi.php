<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * api 接口调试
 * 例如：
 * http://app.pc.com/index.php/控制器名/方法名
 * 
 * 
 * sql:
        CREATE TABLE `puchao_appapi` (
          `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户PK',
          `apiurl` varchar(200) DEFAULT NULL COMMENT '接口地址',
          `apiname` varchar(200) DEFAULT NULL COMMENT '接口名称',
          `postdata` varchar(500) DEFAULT NULL COMMENT '请求参数',
          `postdata_zhushi` varchar(500) DEFAULT NULL COMMENT '请求参数带注释',
          `returndata` varchar(800) DEFAULT NULL COMMENT '返回数据',
          `order` int(10) DEFAULT NULL COMMENT '排序',
          `created` datetime DEFAULT NULL COMMENT '时间',
          PRIMARY KEY (`id`)
        ) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

 */
class Appapi extends CI_Controller {
    
    /**
     * 表名
     */
    public $table = 'puchao_appapi';
    
    /**
     * 接口地址
     */
	public $url = 'http://app.pc.com/index.php/';
    
    /**
     * 全局参数
     */
    public $postdata = array(
        'version'   => '版本号    : 1.0/2.0/...',
        'apptype'   => 'APP类型   : ios/andriod',
        'time'      => '时间戳（11位）',
        'sign'      => '签名      : md5(sort(参数1的值+参数2的值+参数X的值+时间戳)+密钥值); ',//sort参数值后MD5    
        'token'     => '登录后的令牌（登录成功后才有）',
    );
    
    
    public $error_codes = array();
    
    public function __construct()
    {
        parent::__construct();
        $this->error_codes= get_error_code_msg();  
    }
    
    function index()
    {
        exit('v');
    }
    
    //添加接口
	public function add()
	{
	   $data['title']          = "添加APP接口";
	   $data['url']            = $this->url;   
       $time                    = time();    
       $data['postdata']       = json_encode(array('version'=>'1.0', 'apptype'=>'ios', 'time'=>"$time", 'token'=>'123'));
       
	   $this->load->view('appapi_add', $data);
	}
    
    //接口列表
	public function lists()
	{
	   $data['title']          = "APP接口列表";
	   $data['url']            = $this->url;  
       $data['postdata']       = $this->postdata; 
       $data['error_codes']    = $this->error_codes;   
       
            
       $lists                  = $this->db->get_where($this->table)->result_array();
       
       $data["lists"]           = $lists;
	   $this->load->view('appapi_lists', $data);
	}
    
    
    function test()
    {
        //获取类的所有方法名
        //$ref = new ReflectionClass('Appapi'); 
        //$methods = $ref->getMethods();         
        
        
        $post = $_POST;
        $return = array(1,2,"a"=>'A');
        
        
        echo json_encode($return, true);exit;
    }

    /**
     * 重新生成 请求数据，主要增加sign签名
     * 
     */
    function get_post_json()
    {
        $post = $_POST;
        $post['sign'] = get_sign($post);
        echo json_encode($post, true);exit;
    }
    
    function save()
    {
        $fields = array(
        'id',
        'apiurl',
        'apiname',
        'postdata',
        'postdata_zhushi',
        'returndata',
        'created',
        );
        
        $data = $this->input->post($fields);
        $data['created'] = date("Y-m-d H:i:s");
        
        if($data['id'])
        {
            $where  = array('id'=>(int)$data['id']);
            unset($data['id']);
            $this->db->where($where)->update($this->table, $data);
        }else
        {
            $this->db->insert($this->table, $data);
        }
        
        print_r($data);exit;
        
    }


   
}
