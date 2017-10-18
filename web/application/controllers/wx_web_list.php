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
    }

    /**
     * 1.用户列表(老用户对应新用户)
     * 业务员查看自己的老用户推广数
     *
     */
    function user_friend()
    {
        $openid     = '';
        $adminid    = 18;

        //所有老用户(包括新用户)access
        $this->load->model('Access_model');
        $user_old           = $this->Access_model->news_table_result(array('adminid'=>$adminid));
        $user_old           = field2key($user_old,'a2');
        //print_r($user_old);

        //mysql已收集的老用户和新用户 lulu_user_fengxiang
        $user_new  = $this->db->get('lulu_user_fengxiang')->row_array();

        //mysql [老用户][新用户]
        $user_new_oldkey    = field2key($user_new,'phone_old');

        //mysql [新用户][老用户]
        $user_new_newkey    = field2key($user_new,'phone_new');

        //已录入订单，并且财务审核成功的新用户:mysql新用户 如果在 access所有用户中，并且财务成功，标注新用户为成功新用户
        $user_new_newkey_success    = array();
        //合并后的 老用户和新用户
        $user_old_new_hebin         = array();
        foreach($user_old as $k=>$row_old)
        {
            $row_old['phone_new']  = array();//嵌入新用户手机号字段
            //防止中文乱码
            $row_old['a1'] =@iconv('gbk','utf-8',$row_old['a1']);
            $user_old[$k] =$row_old;

            //已录入订单，并且财务审核成功的用户
            if(in_array($user_new_newkey, $row_old['a1']) && $row_old['news_status_id'] == 3)
            {
                //键名为新用户手机号，值也是 新用户手机号
                $user_new_newkey_success[$row_old['a1']] = $row_old['a1'];
            }

            //嵌入新用户手机号字段
            if(isset($user_new_oldkey[$row_old['a1']]))
            {
                $row_old['phone_new']      = $user_new_oldkey[$row_old['a1']]['phone_new'];
            }
            $user_old_new_hebin[$k]     = $row_old;
        }

        //所有老用户列表，标注成功新用户
        foreach($user_old_new_hebin as $k=>$v)
        {
            //新用户订单状态
            $v['is_success'] = 0;
            if(in_array($v['phone_new'], $user_new_newkey_success[$v['phone_new']]))
            {
                $v['is_success'] = 1;
            }
            $user_old_new_hebin[$k] = $v;
        }

        print_r($user_old_new_hebin);
    }

    /**
     * m2、活动推广页
     * （1）输入手机号并短信验证身份，选择基地
     * （2）与老客户手机号进行关联
     * （3）发消息给业务员、老客户
     *
     * 安全验证：短信和验证码
     */
    function huodon()
    {
        $uri_view   = 'wx_web/huodon';
        //$user_data = $_SESSION = array();

        $phone_old      = $this->input->post('phone_old');
        $user_data      = isset($_SESSION['user_data']) ?  $_SESSION['user_data'] : array();
        //print_r($_SESSION);exit;


        //新用户提交手机号时：绑定 邀请者与被邀请者 手机号
        if($this->input->post('phone_new'))
        {
            //留言用户信息
            $phone_new      = (int)$this->input->post("phone_new");
            $code           = (int)$this->input->post("code");

            $user_data_new  = $this->db->get_where('lulu_user_fengxiang', array('phone_new'=>$phone_new))->row_array();
            //验证新用户手机号 是否已存在
            if($user_data_new)//手机号已存在，则更新openid
            {
                redirect($uri_view.'?error_msg=手机号已提交过');
                return;
            }

            if(!$phone_old) $phone_old = $phone_new;//未获取到邀请者，则用自己

            //短信验证，是否匹配
            $sql		= "SELECT * FROM dili_lulu_smscode WHERE phone='{$phone_new}' and code='{$code}' and created>'{date('Y-m-d 00:00:00')}' and created<'{date('Y-m-d 23:59:59')}' ORDER BY id DESC  ";
            $row		= $this->db->query($sql)->row_array();
            if($code != $row['code'])
            {
                redirect($uri_view.'?error_msg=短信验证码不正确');
                return;
            }

            $insert = '';//保存数据表 lulu_user_fengxiang
            $user_fengxiang_data  = array(
                'phone_old'            => $phone_old,
                'phone_new'            => $phone_new,
                'created'               => date("Y-m-d H:i:s"),
            );
            $is_insert = $this->db->insert('lulu_user_fengxiang', $user_fengxiang_data);
            $message    = "保存失败";
            if($is_insert)
            {
                $message = "<div style='font-size:50px;'>提交成功，您的邀请人{$phone_old} 将获得额外奖励</div>";
            }
            //show_error($message);

            echo $message;exit;
        }

        $data       = array(
            'phone_old' => $phone_old,
            'user_data' => $user_data
        );
        $this->load->view("wx/huodon", $data);
    }

    /**
     * m1、老用户进入页面，进行手机号验证绑定openid页
     */
    function bind_phone()
    {
        $openid     = $_SESSION['access_token_data']['openid'];
        if(!$openid) show_error('获取微信openid失败，请重新进入首页获取！');
        $data = array(
            'openid' => $openid,
        );
        $this->load->view("wx/bind_phone", $data);
    }

    /**
     * m1 save 表单提交保存，验证
     */
    function bind_phone_save()
    {
        $openid     = $_SESSION['access_token_data']['openid'];
        if(!$openid) show_error('获取微信openid失败，请重新进入首页获取！');
        $phone      = (int)$this->input->post("phone");
        $code       = (int)$this->input->post("code");

        $uri_view  = 'wx_web/bind_phone';//
        if(!$phone)
        {
            redirect($uri_view.'?error_msg=请填写手机号');
        }

        //点击‘生成我的推广页’按钮时，绑定手机号
        //1.判断是否老用户
        $this->load->model('Access_model');
        $user_old         = $this->Access_model->news_table_row(array('phone'=>$phone));

        if(!$user_old)
        {
            redirect($uri_view.'?error_msg=该手机号不是老用户，您可以点击新用户链接给我们');
            return;
        }

        //2.短信验证，是否匹配
        $sql		= "SELECT * FROM dili_lulu_smscode WHERE phone='{$phone}' and code='{$code}' and created>'{date('Y-m-d 00:00:00')}' and created<'{date('Y-m-d 23:59:59')}' ORDER BY id DESC  ";
        $row		= $this->db->query($sql)->row_array();
        if($code != $row['code'])
        {
            redirect($uri_view.'?error_msg=短信验证码不正确');
            return;
        }


        //保存至数据库，并绑定微信
        $user_data  = $this->db->get_where('lulu_user', array('phone'=>$phone))->row_array();
        //update
        if($user_data)//手机号已存在，则更新openid
        {
            $this->db->where('phone', $phone)->update('lulu_user', array('wx_openid'=>$openid));
        }else//insert
        {
            $user_data  = array(
                'phone'                 => $phone,
                'wx_openid'             => $openid,
                'wx_access_token'       => '',
                'wx_expires_in'         => '',
                'wx_refresh_token'      => '',
                'scope'                 => '',
                'created'               => date("Y-m-d H:i:s"),
            );
            $this->db->insert('lulu_user', $user_data);
        }

        //echo $this->db->last_query();exit;

        //3.跳转到‘我的推广页’
        $_SESSION['user_data'] = $user_data;
        $uri_view  = 'wx_web/huodon?phone_old='.$user_data['phone'];//
        redirect($uri_view);

    }



    /**
     * 3 第三步：刷新access_token（如果需要）
     * @return string
     */
    function three($refresh_token)
    {
        $code           = $this->input->get_post("code");
        $state          = $this->input->get_post("state");
        $url            = "https://api.weixin.qq.com/sns/oauth2/refresh_token?appid=APPID&grant_type=refresh_token&refresh_token={$refresh_token}";

        $this->load->library("crypter/Httprequest");
        $returnData         = $this->httprequest->doget($url);
        if($returnData[0] != '200')
        {
            log_message('error', __FUNCTION__.':httprequest doget 请求失败:'.json_encode($returnData));
            return false;
        }

        $access_token_data  =@json_decode($returnData[1]);
        if(!$access_token_data || !isset($access_token_data['access_token']) || !isset($access_token_data['openid']))
        {
            log_message('error', __FUNCTION__.':微信返回access_token失败:'.$returnData[1]);
            return false;
        }

        //保存openid
        $this->set_access_token_data($access_token_data);
        return true;
    }

    /**
     * 记录登录状态
     * @param $access_token_data
     */
    function insert($access_token_data)
    {
        print_r($access_token_data);
        exit;
    }

    /**
     * 微信回调页面
     */
    function huidiao()
    {
        show_error('微信回调页面');
    }


    function test()
    {
        $phone = '13818786656';
        $this->load->model('Access_model');
        $user_old         = $this->Access_model->news_table_row(array('a2'=>$phone));

        if(!$user_old)
        {
            echo '该手机号不是老用户，您可以点击新用户链接给我们';
        }
        print_r($user_old);
    }




}
