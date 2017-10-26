<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 用户进入首页地址：www.triptt.com/weixin/wx_web/one
 * Class Wx
 * 微信网页授权
 * 注意（登录公众平台，开发者设置，网页授权设置，填写‘网页授权域名，网页授权域名，网页授权域名’）
 * https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421140842
 * 1 第一步：用户同意授权，获取code
 * 2 第二步：通过code换取网页授权access_token
 * 3 第三步：刷新access_token（如果需要）
 * 4 第四步：拉取用户信息(需scope为 snsapi_userinfo)
 * 5 附：检验授权凭证（access_token）是否有效
 *
 *
 * 这里有些坑要注意下：
 * 1、如果是测试状态则参数设置路径：微信公众平台-》开发者工具-》公众平台测试帐号（APPID,APPSECRET,网页授权域名-只填域名不要参数） 这几个参数一定要对应好。
 * 2、开发状态参数设置路径：微信公众平台-》基本配置/接口权限（APPID,APPSECRET,网页授权域名-只填域名不要参数）
 */
header("Content-type: text/html; charset=utf-8");
class Wx_web_list extends CI_Controller
{
    public $appid       = WX_APPID;
    public $secret      = WX_APPSECRET;


    function __construct()
    {
        parent::__construct();
        session_start();
        $this->is_login();
    }

    function is_login()
    {
        if(!isset($_SESSION['adminid']))
        {
            redirect('/wx_web/user_list_login/');
            return;
        }
    }

    function user_exit()
    {
        if(isset($_SESSION['adminid']))
        {
            unset($_SESSION['adminid']);
            redirect('/wx_web/user_list_login/');
            return;
        }
    }

    /**
     * 1.用户列表(老用户对应新用户)
     * 业务员查看自己的老用户推广数
     *
     */
    function user_friend()
    {
        $openid     = '';
        $adminid    = 15;

        //所有老用户(包括新用户)access
        $this->load->model('Access_model');
        $user_old           = $this->Access_model->news_table_result(array('adminid'=>$adminid));
        $user_old           = field2key($user_old,'a2');
        //print_r($user_old);

        //mysql已收集的老用户和新用户 lulu_user_fengxiang
        $user_new  = $this->db->get('lulu_user_fengxiang')->result_array();

        //mysql [老用户][新用户]
        $user_new_oldkey    = field2key($user_new,'phone_old');

        //mysql [新用户][老用户]
        $user_new_newkey    = field2key($user_new,'phone_new');

        //print_r($user_new_oldkey);exit;
        //已录入订单，并且财务审核成功的新用户:mysql新用户 如果在 access所有用户中，并且财务成功，标注新用户为成功新用户
        $user_new_newkey_success    = array();
        //合并后的 老用户和新用户
        $user_old_new_hebin         = array();
        foreach($user_old as $k=>$row_old)
        {
            $row_old['phone_new']   = '';//嵌入新用户手机号字段
            $row_old['created']     = '';
            //防止中文乱码
            $row_old['a1'] =@iconv('gbk','utf-8',$row_old['a1']);
            $user_old[$k] =$row_old;

            //已录入订单，并且财务审核成功的用户
            if(array_key_exists($row_old['a2'], $user_new_newkey) && $row_old['news_status_id'] == 3)
            {
                //键名为新用户手机号，值也是 新用户手机号
                $user_new_newkey_success[$row_old['a2']] = array(
                    'a2'=>$row_old['a2'],
                    'a3'=>$row_old['a3'],
                );
            }

            //嵌入新用户手机号字段
            if(isset($user_new_oldkey[$row_old['a2']]))
            {
                $row_old['phone_new']       = $user_new_oldkey[$row_old['a2']]['phone_new'];
                $row_old['created']         = $user_new_oldkey[$row_old['a2']]['created'];
            }
            $user_old_new_hebin[$k]     = $row_old;
        }

        //print_r($user_new_newkey_success);exit;
        //所有老用户列表，标注成功新用户
        $user_list  = array();
        foreach($user_old_new_hebin as $k=>$v)
        {
            //新用户订单状态
            $v['luru_time']     = '';
            $v['is_success']    = 0;
            if(!$v['phone_new']) continue;
            if(array_key_exists($v['phone_new'], $user_new_newkey_success))
            {
                $v['is_success'] = 1;
                $v['luru_time'] = $user_new_newkey_success[$v['phone_new']]['a3'];//access中的 新增用户 录入时间
            }
            $user_list[$k] = $v;
        }

        sortArrByOneField($user_list, 'is_success');

        //print_r($user_old_new_hebin);exit;
        $data = array(
            'user_list' => $user_list,
        );
        $this->load->view("wx/user_list",$data);
    }


    /**
     * 批量发短信
     */
    function send_user()
    {

    }



}
