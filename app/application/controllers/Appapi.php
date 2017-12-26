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
        'apptype'   => 'APP类型   : IOS/andriod/...',
        'sign'      => '签名      : md5(参数1+参数2+...+密钥+时间戳) ; ',//sort参数值后 拼接所有参数值+密钥+时间戳
    );
    
    
    public $error_codes = array(
        '4001' => '未登录或登录超时',
        '4002' => '签名错误',
        '4003' => '缺少参数或参数格式不正确',
        '4004' => '参数验证失败',
        '5001' => '系统错误',
    );
    
    function index()
    {
        exit('v');
    }
    
    //添加接口
	public function add()
	{
	   $data['title']          = "添加APP接口";
	   $data['url']            = $this->url;       
       $data['postdata']       = json_encode($this->postdata, JSON_UNESCAPED_UNICODE|JSON_UNESCAPED_SLASHES);
       
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
        //print_r($data);
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
