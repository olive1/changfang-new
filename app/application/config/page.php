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

$config['page']['uri_segment']=3;//分页的偏移量查询在那一段上面

$config['page']['full_tag_open'] = '<ul class="pagination">';
$config['page']['full_tag_close'] = '</ul>';
$config['page']['first_tag_open'] = '<li>';
$config['page']['first_tag_close'] = '</li>';
$config['page']['prev_tag_open'] = '<li>';
$config['page']['prev_tag_close'] = '</li>';
$config['page']['next_tag_open'] = '<li>';
$config['page']['next_tag_close'] = '</li>';
$config['page']['cur_tag_open'] = '<li class="active"><a>';
$config['page']['cur_tag_close'] = '</a></li>';
$config['page']['last_tag_open'] = '<li>';
$config['page']['last_tag_close'] = '</li>';
$config['page']['num_tag_open'] = '<li>';
$config['page']['num_tag_close'] = '</li>';
//已经废弃
//$config['page']['anchor_class']="class='ajax_fPage'";//借鉴第一篇文章的大神，这里为每个a标签加样式
 $config['page']['attributes'] = array('class' => 'myclass');//给所有<a>标签加上class

//每一页显示的数据条数
$config['page']['per_page']=20;
$config['page']['first_link']= '首页';
$config['page']['next_link']= '下一页';
$config['page']['prev_link']= '上一页';
$config['page']['last_link']= '末页';

return $config;


