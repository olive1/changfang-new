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
class Wx_web extends CI_Controller
{
    public $appid       = WX_APPID;
    public $secret      = WX_APPSECRET;


    function __construct()
    {
        parent::__construct();
        session_start();
    }

    /**
     * 1 第一步：用户同意授权，获取code
     * scope=snsapi_base的网页授权，就静默授权的，用户无感知；
     * @return string
     */
    function one()
    {
        $redirect_uri       = base_url("wx_web/two");//微信回调code URL，即控制器two
        $redirect_uri       = 'http://www.triptt.com/weixin/wx_web/two';
        $redirect_uri       = urlencode($redirect_uri);
        //echo $redirect_uri.'<Br><Br>';
        $state              = 'something=1';

        $snsapi_base        = "https://open.weixin.qq.com/connect/oauth2/authorize?appid={$this->appid}&redirect_uri={$redirect_uri}&response_type=code&scope=snsapi_base&state={$state}#wechat_redirect";
        $snsapi_userinfo    = "https://open.weixin.qq.com/connect/oauth2/authorize?appid={$this->appid}&redirect_uri={$redirect_uri}&response_type=code&scope=snsapi_userinfo&state={$state}#wechat_redirect ";
        //echo $snsapi_userinfo;exit;
        redirect($snsapi_base);//跳转至微信 授权
    }


    /**
     * 2 第二步：通过code换取网页授权access_token
     * @return string
     */
    function two()
    {
        $code           = $this->input->get_post("code");
        $state          = $this->input->get_post("state");
        //print_r($_GET);exit;
        $url            = "https://api.weixin.qq.com/sns/oauth2/access_token?appid={$this->appid}&secret={$this->secret}&code={$code}&grant_type=authorization_code";

        $this->load->library("crypter/Httprequest");
        //$returnData         = $this->httprequest->doget($url);
        $returnData         = $this->httpget($url);

        $access_token_data  = json_decode($returnData,true);
        if(!$access_token_data || !isset($access_token_data['access_token']) || !isset($access_token_data['openid']))
        {
            $error_msg = __FUNCTION__.':2微信返回access_token失败:'.$returnData[1];
            echo $error_msg;
            log_message('error', $error_msg);
            exit;
        }

        //保存 access_token_data
        $this->session->access_token_data  = $access_token_data;
        $_SESSION['access_token_data']      = $access_token_data;
        //        print_r($this->session->access_token_data);exit;
        //跳转下个页面
        $this->redirect_next_url();
        //$this->three($access_token_data['refresh_token']);//刷新access_token 有效期为30天
    }


    function httpget($url)
    {
        //初始化
        $curl = curl_init();
        //设置抓取的url
        curl_setopt($curl, CURLOPT_URL, $url);
        //设置头文件的信息作为数据流输出
        //curl_setopt($curl, CURLOPT_HEADER, 1);

        //设置获取的信息以文件流的形式返回，而不是直接输出。
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        //执行命令
        $data = curl_exec($curl);
        //关闭URL请求
        curl_close($curl);

        return $data;
    }

    /**
     * 跳转页面：活动页或输入手机号界面做绑定
     */
    function redirect_next_url()
    {
        if(!isset($_SESSION['access_token_data']['openid']))
        {
            show_error('redirect_next_url 获取openid超时，请返回首页重新操作！');
        }
        $openid     = $_SESSION['access_token_data']['openid'];
        $user_data  = $this->db->get_where('lulu_user', array('wx_openid'=>$openid))->row_array();

        //已绑定过OPENID，则直接跳转活动页
        if($user_data && isset($user_data['phone']))
        {
            $_SESSION['user_data'] = $user_data;
            $uri_view  = 'wx_web/huodon?phone_old='.$user_data['phone'];//
            redirect($uri_view);
        }else
        {
            $uri_view   = 'wx_web/bind_phone';//默认 手机号绑定页
            redirect($uri_view);
        }


    }

    /**
     * 活动展示页
     * 输入手机号，与分享者手机号进行关联
     * 安全验证：短信和验证码
     */
    function huodon()
    {
        //$user_data = $_SESSION = array();

        $phone_old      = $this->input->post('phone_old');
        $user_data      = isset($_SESSION['user_data']) ?  $_SESSION['user_data'] : array();
        //print_r($_SESSION);exit;


        //绑定 邀请者与被邀请者 手机号
        if($this->input->post('phone_new'))
        {
            $phone_new      = $this->input->post('phone_new');
            if(!$phone_new)
            {
                echo '请填写手机号';
                exit;
            }
            if(!$phone_old) $phone_old = $phone_new;//未获取到邀请者，则用自己

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
     * 老用户进入 手机号绑定openid页
     */
    function bind_phone()
    {
        $openid     = $_SESSION['access_token_data']['openid'];
        if(!$openid) show_error('获取微信openid失败，请重新进入首页获取！');
        $phone      = $this->input->post("phone");
        //绑定手机号
        if($phone && $openid)
        {
            $user_data  = $this->db->get_where('lulu_user', array('phone'=>$phone))->row_array();
            //update
            if($user_data)
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
            //进入活动页
            $_SESSION['user_data'] = $user_data;
            $uri_view  = 'wx_web/huodon?phone_old='.$user_data['phone'];//
            redirect($uri_view);
        }


        $data = array(
            'openid' => $openid,
        );
        $this->load->view("wx/bind_phone", $data);
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


}
