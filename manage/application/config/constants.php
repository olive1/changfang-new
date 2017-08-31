<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
|--------------------------------------------------------------------------
| File and Directory Modes
|--------------------------------------------------------------------------
|
| These prefs are used when checking and setting modes when working
| with the file system.  The defaults are fine on servers with proper
| security, but you may wish (or even need) to change the values in
| certain environments (Apache running a separate process for each
| user, PHP under CGI with Apache suEXEC, etc.).  Octal values should
| always be used to set the mode correctly.
|
*/
define('FILE_READ_MODE', 0644);
define('FILE_WRITE_MODE', 0666);
define('DIR_READ_MODE', 0755);
define('DIR_WRITE_MODE', 0777);

/*
|--------------------------------------------------------------------------
| File Stream Modes
|--------------------------------------------------------------------------
|
| These modes are used when working with fopen()/popen()
|
*/

define('FOPEN_READ',							'rb');
define('FOPEN_READ_WRITE',						'r+b');
define('FOPEN_WRITE_CREATE_DESTRUCTIVE',		'wb'); // truncates existing file data, use with care
define('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE',	'w+b'); // truncates existing file data, use with care
define('FOPEN_WRITE_CREATE',					'ab');
define('FOPEN_READ_WRITE_CREATE',				'a+b');
define('FOPEN_WRITE_CREATE_STRICT',				'xb');
define('FOPEN_READ_WRITE_CREATE_STRICT',		'x+b');



/*
|---------------------------------------------------------------------------
| Lumn 常量设置
|---------------------------------------------------------------------------
|
*/
define('LUMN_TEL',                              '400-012-7879');//电话
define('LUMN_WEB_NAME',                         '会务通');//网站名称

define('LUMN_ADMIN_PATH',                       '');//后台路径
define('LUMN_ADMIN_VIEW_PATH',                  'admin'); //后台视图路径

define('LUMN_IMAGE_PATH',                       '/lm_uploads/');//上传路径
define('LUMN_ALLOWED_TYPES',                    'gif|jpg|png');//类型
define('LUMN_MAX_SIZE',                         '1000');//大小 1000KB
define('LUMN_MAX_WIDTH',                        '1000');//宽
define('LUMN_MAX_HEIGHT',                       '1500');//高
define('LUMN_IMAGE_PATH_TEM',                   '/lm_tem_uploads/');//缩略图路径
define('LUMN_WIDTH',                            '220');//缩略图宽
define('LUMN_HEIGHT',                           '160');//缩略图高

define('LUMN_THEMPLE',				          	'adminlm/');//视图文件模板文件夹名称
define('LUMN_THEMPLES_FLODER',                  'themples/'.LUMN_THEMPLE);//模板总文件夹

define('LUMN_TIME_YZM',                              200); //验证码时间
define('LUMN_fabu_x_limit',                          50);  //发布 限制个数 0或false表示不限制


/* End of file constants.php */
/* Location: ./application/config/constants.php */