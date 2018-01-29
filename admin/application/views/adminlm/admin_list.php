<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/css/admin.css" type="text/css" rel="stylesheet">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/styles/main.css" type="text/css" rel="stylesheet">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/css/public_con.css" type="text/css" rel="stylesheet">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "宋体";
	font-size: 12px;
	color: #333333;
}
.lm_main{ padding:20px;}
.foot{ margin-top:100px; padding:10px; text-align:center; background-color:#e3effb;}
.bbs{border-bottom:1px solid #cccccc; height:25px; line-height:25px; border-right:1px solid #cccccc; padding:2px;}
-->
</style>
</HEAD>
<BODY>
<div>

<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TR height=28>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/title_bg1.jpg style="padding-left:10px; ">
	当前位置: 管理用户
	
	</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/shadow_bg.jpg></TD></TR></TABLE>
	
	
	
	<div class="lm_main">
	

<div class="main-div" style="width:800px; text-align:center; ">
<div class="button_add">
	<a href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/admin_lm/add/">增加用户</a>
</div>
<div><b><?php echo(($this->session->flashdata('success')) ?  $this->session->flashdata('success') : '');?></b></div>
<table cellspacing='1' cellpadding='3' id='list-table' width="100%" style="border:1px solid #bbdde5; ">

  <tr style="background-image:url(<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/th_bg.gif); background-repeat:repeat-x; ">
    <th height="24" align="center">用户名</th>
    <th align="center">昵称</th>
    <th align="center">加入时间</th>
    <th align="center">用户组</th>
    <th align="center">操作</th>

  </tr>
  
  
  
  <?php
  foreach($admin as $key){
  	?>

    <tr>
    <td class="first-cell bbs" ><?=$key->admin_name; ?></td>
    <td align="left" class="bbs"><?=$key->admin_nickname; ?></td>
    <td align="left" class="bbs"><?=date('Y-m-d', $key->create_time); ?></td>
    <td align="left" class="bbs">
	<?php
	
	echo $key->group_title; 
	?>
	</td>
    <td align="center" class="bbs">
      <a href="<?php echo(site_url().LUMN_ADMIN_PATH.'/admin_lm/update/'.$key->admin_id);?>" title="编辑"><img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/icon_edit.gif" border="0" height="16" width="16"></a>&nbsp;&nbsp;
      <a href="<?php echo(site_url().LUMN_ADMIN_PATH.'/admin_lm/del/'.$key->admin_id);?>" onclick="return confirm('您确认要删除这条记录吗?')" title="移除"><img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/icon_drop.gif" border="0" height="16" width="16"></a></td>
  </tr>
  
  <?php
  }
  ?>
  
  </table>

</div>
  
	
	
	<div class="foot">
		版权所有 © 2008-2012 lumn网站开发系统 版权所有，  并保留所有权利。
	</div>
	
	</div>

  
  
  
  
</div>
</BODY></HTML>
