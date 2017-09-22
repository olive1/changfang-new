<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Class Wx
 * 微信网页授权
 * 注意（登录公众平台，开发者设置，网页授权设置，填写‘网页授权域名，网页授权域名，网页授权域名’）
 * https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421140842
 * 1 第一步：用户同意授权，获取code
 * 2 第二步：通过code换取网页授权access_token
 * 3 第三步：刷新access_token（如果需要）
 * 4 第四步：拉取用户信息(需scope为 snsapi_userinfo)
 * 5 附：检验授权凭证（access_token）是否有效
 */
class Wx_web extends CI_Controller
{
    public $appid       = WX_APPID;
    public $secret      = WX_APPSECRET;


    function __construct()
    {
        parent::__construct();
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
        print_r($_GET);exit;
        $url            = "https://api.weixin.qq.com/sns/oauth2/access_token?appid={$this->appid}&secret={$this->secret}&code={$code}&grant_type=authorization_code";

        $this->load->library("crypter/Httprequest");
        $returnData         = $this->httprequest->doget($url);
        if($returnData[0] != '200')
        {
            log_message('error', __FUNCTION__.':httprequest doget 请求失败:'.json_encode($returnData));
            exit;
        }

        $access_token_data  =@json_decode($returnData[1]);
        if(!$access_token_data || !isset($access_token_data['access_token']) || !isset($access_token_data['openid']))
        {
            log_message('error', __FUNCTION__.':微信返回access_token失败:'.$returnData[1]);
            exit;
        }

        //保存openid
        $this->insert($access_token_data);

        $this->three($access_token_data['refresh_token']);//刷新access_token 有效期为30天
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
        $this->insert($access_token_data);
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

}
