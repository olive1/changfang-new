<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| Profiler Sections
| -------------------------------------------------------------------------
| This file lets you determine whether or not various sections of Profiler
| data are displayed when the Profiler is enabled.
| Please see the user guide for info:
|
|	https://codeigniter.com/user_guide/general/profiling.html
|
*/

$config['error_codes'] = array(
		'4000' => '请求类型不正确',
        '4001' => '未登录或登录超时',
        '4002' => '签名错误',
        '4003' => '缺少参数或参数格式不正确',
        '4004' => '参数验证失败',
        '5001' => '系统错误',
    );


