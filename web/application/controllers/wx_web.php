<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 用户进入首页地址，入口：http://www.triptt.com/weixin/index.php/wx_web/one
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
        print_r($_GET);
        var_dump($returnData);
        $access_token_data  = json_decode($returnData,true);
        if(!$access_token_data || !isset($access_token_data['access_token']) || !isset($access_token_data['openid']))
        {
            $error_msg = __FUNCTION__.':2微信返回access_token失败:'.$returnData[1].'--'.json_encode($returnData).'::'.$url;
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

    function test_get()
    {
        $url        = 'https://api.weixin.qq.com/sns/oauth2/access_token?appid=wx15198ac62b728599&secret=e44f98eb0779cbe48ff57f119bf835a4&code=061zcHj40VPwsE11Yej40JVMj40zcHjL&grant_type=authorization_code';
        //$url = 'https://www.baidu.com';
        $returnData         = $this->httpget($url);
        var_dump($returnData);
    }

    function httpget($url)
    {
        //初始化
        $curl = curl_init();
        //设置抓取的url
        curl_setopt($curl, CURLOPT_URL, $url);
        //设置头文件的信息作为数据流输出
        //curl_setopt($curl, CURLOPT_HEADER, 1);
        //解决返回bool false问题
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
        //设置获取的信息以文件流的形式返回，而不是直接输出。
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        //执行命令
        $data = curl_exec($curl);
        //关闭URL请求
        curl_close($curl);

        return $data;
    }

    /**
     * 判断 下个页面网址是什么（1、老用户手机验证，2、得到老用户的分享推广页面）
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

        //已绑定过OPENID，则直接跳转2、活动推广页
        if($user_data && isset($user_data['phone']))
        {
            $_SESSION['user_data'] = $user_data;
            $uri_view  = base_url().'wx_web/huodon?phone_old='.$user_data['phone'];//
            redirect($uri_view);
        }else
        {
            $uri_view   = base_url().'wx_web/bind_phone';//默认 1、老用户手机号验证绑定页
            redirect($uri_view);
        }


    }

    /**
     * 3.用户列表(老用户对应新用户)
     * 业务员查看自己的老用户推广数
     *
     */
    function user_friend()
    {

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
        $uri_view   = base_url().'wx_web/huodon';

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
            $jdfenlei_id    = (int)$this->input->post("jdfenlei_id");

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
                'jdfenlei_id'           => $jdfenlei_id,
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

        $jidi_list  = $this->db->query("SELECT * FROM dili_lulu_jdfenlei")->result_array();

        $data       = array(
            'phone_old' => $phone_old,
            'user_data' => $user_data,
            'jidi_list' => $jidi_list,
        );

        $this->load->view("wx/huodon", $data);
    }



    function huodon_save()
    {
        if(!$this->input->is_ajax_request())
        {
            $this->response(array(0, '请求方式错误！'));
        }


        //留言用户信息
        $phone_old      = $this->input->post('phone_old');
        $phone_new      = $this->input->post("phone_new");
        $code           = (int)$this->input->post("code");
        $jdfenlei_id    = (int)$this->input->post("jdfenlei_id");
        $captcha        = $this->input->post('imgcode');

        if(!is_numeric($phone_new)) $this->response(array(0, '手机号格式不正确！'));
        if(!is_numeric($phone_old)) $this->response(array(0, '手机号格式不正确2！'.$phone_old));

        //图形验证码
        if(!$this->_check_captcha($captcha))
        {
            $this->response(array(0, '图形验证码不正确！'.$_SESSION['captcha']));
        }

        $user_data_new  = $this->db->get_where('lulu_user_fengxiang', array('phone_new'=>$phone_new))->row_array();
        //验证新用户手机号 是否已存在
        if($user_data_new)//手机号已存在，则更新openid
        {
            $this->response(array(0, '该手机号已提交过！'));
        }


        if(!$phone_old) $phone_old = '13482521216';//未获取到邀请者，则用默认老用户员 李杰?

        //短信验证码
        if(!$this->_check_smscode($phone_new, $code))
        {
            $this->response(array(0, '短信验证码不正确！'));
        }

        $insert = '';//保存数据表 lulu_user_fengxiang
        $user_fengxiang_data  = array(
            'phone_old'            => $phone_old,
            'phone_new'            => $phone_new,
            'jdfenlei_id'           => $jdfenlei_id,
            'created'               => date("Y-m-d H:i:s"),
        );
        $is_insert = $this->db->insert('lulu_user_fengxiang', $user_fengxiang_data);
        $message    = "保存失败";
        if(!$is_insert)
        {
            $this->response(array(0, '数据保存失败！'));
        }

        //成功，发消息告知业务员、老用户
        $this->huodon_success($phone_old,$phone_new,$jdfenlei_id);

        //show_error($message);
        $url    = 'http://m.hmw1.com';
        $this->response(array(1, '提交成功,我们会尽快与您取得联系！', $url));
    }

    /**
     * m1、老用户进入页面，进行手机号验证绑定openid页
     */
    function bind_phone()
    {
        $openid     = @$_SESSION['access_token_data']['openid'];
        //if(!$openid) show_error('获取微信openid失败，请重新进入首页获取！');
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
        if(!$this->input->is_ajax_request())
        {
            $this->response(array(0, '请求方式错误！'));
        }
        $openid     =@$_SESSION['access_token_data']['openid'];
        //$openid     = 'test11';
        if(!$openid)
        {
            $this->response(array(0, '获取微信openid失败，请从微信重新进入首页获取！！'));
        }
        $phone      = $this->input->post("phone");
        $code       = (int)$this->input->post("code");
        if(!is_numeric($phone)) $this->response(array(0, '手机号格式不正确！'));

        $uri_view  = 'wx_web/bind_phone';//

        //点击‘生成我的推广页’按钮时，绑定手机号
        //1.判断是否老用户
        $this->load->model('access_model');
        $user_old         = $this->access_model->news_table_row(array('a2'=>$phone));

        if(!$user_old)
        {
            $this->response(array(0, '该手机号不是老用户，您可以点击新用户链接咨询！'));
        }

        //2.短信验证，是否匹配
        $start 		= date('Y-m-d 00:00:00');
        $end 		= date('Y-m-d 23:59:59');
        $sql		= "SELECT * FROM dili_lulu_smscode WHERE phone='{$phone}' and code='{$code}' and created>'{$start}' and created<'{$end}' ORDER BY id DESC  ";
        $row		= $this->db->query($sql)->row_array();
        if(!$row || $code != $row['code'])
        {
            $this->response(array(0, '短信验证码不正确！'));
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
        $uri_view  = base_url().'wx_web/huodon?phone_old='.$user_data['phone'];//
        $this->response(array(1, '成功！', $uri_view));

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
        $this->load->model('access_model');
        $user_old         = $this->access_model->news_table_row(array('a2'=>$phone));

        if(!$user_old)
        {
            echo '该手机号不是老用户，您可以点击新用户链接给我们';
        }
        print_r($user_old);
    }


    public function captcha()
    {
        //$this->load->library('session');
        $this->load->library('captcha');
        $code = $this->captcha->getCaptcha();
       // $this->session->set_userdata('code', $code);
        //$this->session->set_tempdata('captcha', $code, 7200);
        $_SESSION['captcha']        = $code;
        $_SESSION['captcha_time']   = 7200;
        $this->captcha->showImg();
    }

    /**
     * 图形验证码
     * @param $captcha
     */
    private function _check_captcha($captcha)
    {
        $error = '';
        $is_valid = !isset($_SESSION['captcha']) || is_null($_SESSION['captcha']);
        if ($is_valid) {
            $error = '验证码已过期';
            return false;
        }
        elseif (strtolower($captcha) != strtolower($_SESSION['captcha'])) {
            $error = '输入的验证码不符';
            return false;
        }

        return true;
    }

    /**
     * 短信验证码
     * @param $captcha
     */
    private function _check_smscode($phone_new,$code)
    {
        //短信验证，是否匹配
        $start 		= date('Y-m-d 00:00:00');
        $end 		= date('Y-m-d 23:59:59');
        $sql		= "SELECT * FROM dili_lulu_smscode WHERE phone='{$phone_new}' and code='{$code}' and created>'{$start}' and created<'{$end}' ORDER BY id DESC  ";
        $row		= $this->db->query($sql)->row_array();
        if($code != $row['code'])
        {
            return false;
        }

        return true;
    }

    /**
     * 新用户提交成功后做的事情
     * 1.通知业务员
     * 2.通知老用户
     * @param $phone_old 老用户手机号（推广者）
     * @param $phone_new
     * @param $jdfenlei_id
     */
    function huodon_success($phone_old,$phone_new,$jdfenlei_id)
    {
        $this->load->model('access_model');
        $this->load->library('sendsms_helper');

        //业务员手机号
        $user_old         = $this->access_model->news_table_row(array('a2'=>$phone_old));
        if(!$user_old || !isset($user_old['adminid'])) return;//log写入日志，为什么没有查到
        $user_old['adminid']     = (int)$user_old['adminid'];
        $admin_row     = $this->access_model->get_row('admin', array('adminid'=>$user_old['adminid']));
        if(!$admin_row || !isset($admin_row['phone'])) return;//log写入日志，为什么没有查到

        $jidi_row       = $this->db->query("SELECT * FROM dili_lulu_jdfenlei WHERE id={$jdfenlei_id}")->row_array();
        $jidi_name      = isset($jidi_row['title']) ? $jidi_row['title'] : '';

        return;//待接入
        //1.通知业务员
        $msg        = "新用户手机号：{$phone_new}，基地名称：{$jidi_name}，老用户手机号：{$phone_old}";
        $issend		= $this->sendsms_helper->sendsms($admin_row['phone'], $msg);
        //2.通知老用户
        $msg        = "您的推广有新用户登记，如果成功将可获取惊喜红包。";
        $issend		= $this->sendsms_helper->sendsms($phone_old, $msg);
    }


    function user_list_login()
    {
        //已登录状态
        if(isset($_SESSION['adminid']) && $_SESSION['adminid'])
        {
            redirect(base_url().'wx_web_list/user_friend');
            return;
        }

        $this->load->view("wx/user_list_login");
    }

    function login_save()
    {

        if(!$this->input->is_ajax_request())
        {
            $this->response(array(0, '请求方式错误！'));
        }

        $url        = base_url().'wx_web_list/user_friend';

        //留言用户信息
        $phone          = $this->input->post('phone');
        $adminpass      = $this->input->post("adminpass");
        $adminpass      = md5($adminpass);

        if(!is_numeric($phone)) $this->response(array(0, '手机号格式不正确！'.$phone));
        //echo dirname(__FILE__);exit;
        //echo "".APPPATH."data/#database#/#database#.mdb";exit;

        $this->load->model('access_model');
        $admin_row      = $this->access_model->get_row('admin', array('phone'=>$phone,'adminpass'=>$adminpass));

        if(!$admin_row)
        {
            $this->response(array(0, '未找到该用户！'));
        }
        //print_r($admin_row);
        $_SESSION['adminid'] = $admin_row['AdminID'];

        $this->response(array(1, '成功！', $url));
    }

    function test_access()
    {
       // echo dirname(__FILE__);exit;//西数D:\wwwroot\triptt\wwwroot\weixin\application\controllers
        $this->load->model('access_model');
        $adminpass      = '123';
        $adminpass      = md5($adminpass);
        $admin_row      = $this->access_model->get_row('admin', array('phone'=>'13817999192','adminpass'=>$adminpass));
        //echo $this->access_model->access_db->last_query();
        print_r($admin_row);

        $result = $this->db->query("SELECT * FROM dili_lulu_user ")->result_array();
        print_r($result);
    }

    /**
     * 批量发短信
     */
    function sms_all()
    {
        $this->load->model('access_model');
        $admin_row      = $this->access_model->news_table_result();
        foreach($admin_row as $row)
        {
            $mobiles_str;
        }
        $phone_list     = array();//用户列表
        $msg            = '';//短信内容

        $mobiles_str    = implode(',', $phone_list);
        log_message('error', '群发短信：'.$mobiles_str);
        $response       = $this->SmsApi->sendSMS($mobiles_str,    $msg,'true');
        $result         = $this->SmsApi->execResult($response);
        print_r($result);
        echo '批量发送成功！手机号：'.$phone_list;
    }

    function response($data)
    {
        echo json_encode($data);
        exit;
    }

}
