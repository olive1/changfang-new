<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['default_controller'] 	= "login/index";
$route[LUMN_ADMIN_PATH] 		= LUMN_ADMIN_PATH."/login";  //默认后台

$route['service'] 				= "article/n_list/18/0";  //服务
$route['service/18/(:num)'] 	= "article/n_list/18/$1";
$route['service/18'] 			= "article/n_list/18";

$route['news'] 					= "article/n_list/37/0";  //资讯
$route['news/37/(:num)'] 		= "article/n_list/37/$1";
$route['news/37'] 				= "article/n_list/37";

$route['zhinan'] 				= "article/n_list/31/0";  //指南
$route['zhinan/37/(:num)'] 		= "article/n_list/31/$1";
$route['zhinan/37'] 			= "article/n_list/31";

$route['hudong'] 				= "article/n_list/38/0";  //活动
$route['hudong/37/(:num)'] 		= "article/n_list/38/$1";
$route['hudong/37'] 			= "article/n_list/38";

/**
$route['xuqiu'] 				= "article/n_list/39/0";  //需求
$route['xuqiu/39/(:num)'] 		= "article/n_list/39/$1";
$route['xuqiu/39'] 				= "article/n_list/39";
*/

$route['info/(:num)'] 			= "article/n_list/$1";
//$route['info/detail/(:num)'] 	= "article/detail/$1";
$route['([a-z]+)/detail/(:num)']= "article/detail/$2";


$route['lmimagebig/(:num)'] 	= "lmimagebig/index/$1";

$route['404_override'] = '';


/* End of file routes.php */
/* Location: ./application/config/routes.php */