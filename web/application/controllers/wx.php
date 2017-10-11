<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Class Wx
 * 微信消息接口与验证
 * 微信公众号接口，用于接收用户发来的消息，并做回应
 * AES加密
 */
class Wx extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->library("wx/WXBizMsgCrypt");
    }

    /**
     * 微信接口URL
     */
    function get_wx_msg()
    {
        $this->msg();
    }
    /**
     * 接收公众号消息 并回复 文本消息
     * 我们会收到2种类型的数据
     * （1）$_GET：主要是用于验证的一些参数，如timestamp,nonce,msg_signature,signature,openid,encrypt_type
     * （2）php://input：主要是‘xml格式的消息内容’，如ToUserName，Encrypt
     *
     */
    function msg()
    {
        //微信配置验证 begin
        $echostr        = $this->input->get_post("echostr");
        $this->db->insert('lulu_wx_log', array('content'=>'1 原POST', 'post_data'=>'-'.json_encode($_GET), 'created'=>date('Y-m-d H:i:s')));
        echo $echostr;exit;//这里开启时用于验证微信，不用下面的验证了（登录微信公众平台，配置URL，启用时验证）
        //微信配置验证 end
        if(!isset($_GET['msg_signature']))
        {
            echo '未获取到 msg_signature';exit;
        }

        //传来的‘xml 消息内容’ 必须用这种方式接收
        $xml            = file_get_contents("php://input");
        $postObj        = simplexml_load_string($xml, 'SimpleXMLElement', LIBXML_NOCDATA);//xml转换为obj
        $data           = array('content'=>'2 POST php:// INPUT XML', 'post_data'=>json_encode($postObj), 'created'=>date('Y-m-d H:i:s'));
        $this->db->insert('lulu_wx_log', $data);

        //解密数据,得到内容
        $return         = $this->wxbizmsgcrypt->decryptMsg(
                            $_GET['msg_signature'],
                            $_GET['timestamp'],
                            $_GET['nonce'],
                            $xml,
                            $msg);
        $data           = array('content'=>'4 decryptMsg', 'post_data'=>$msg.'====='.$return, 'created'=>date('Y-m-d H:i:s'));
        $this->db->insert('lulu_wx_log', $data);

        //被动回复消息 不需要加密，直接输出xml
        header("Content-type:text/xml");
        echo $this->get_returnData();
        exit;
    }

    /**
     * 用于回复的xml消息数据
     * $ToUserName 即 （2）php://input：参数之一
     * $fromUser 即openid
     *
     * @return string
     */
    function get_returnData()
    {
        $ToUserName     = 'gh_62f9724b7e1f';
        $fromUser   = 'oWX6OuLvIUJOhFGl9dJr9ObMnXGc';
        $CreateTime = time();
        $Content    = '咨询更多，请联系我们的客服：
葵园生态农庄 021-31601105
喜来春农庄   021-60549280
金源果蔬    021-31601103
长兴岛桔园 021-31601102
青浦梦幻田园 021-31660013
嘉定醉华庭  021-31601104
长岛庄园  021-31601102';

        //ToUserName 收到的 $fromUser, FromUserName 收到的 $ToUserName
        $returnData = "<xml>
<ToUserName><![CDATA[{$fromUser}]]></ToUserName>
<FromUserName><![CDATA[{$ToUserName}]]></FromUserName>
<CreateTime>{$CreateTime}</CreateTime>
<MsgType><![CDATA[text]]></MsgType>
<Content><![CDATA[{$Content}]]></Content>
</xml>";
        return $returnData;
    }



    function test()
    {
        $this->load->library('wx/validate');
        $data = $this->validate->index();
        print_r($data);
    }


    /**
     * @param $replyMsg 回复内容
     * @return string
     */
    function response($replyMsg)
    {
        //加密数据
        $timeStamp  = time();
        $nonce      = rand(100,999);
        $encryptMsg = '';

        $this->wxbizmsgcrypt->encryptMsg($replyMsg, $timeStamp, $nonce, $encryptMsg);
        return $encryptMsg;
    }



}
