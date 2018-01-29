<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>网站管理员登陆</title>
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/css/admin.css" type="text/css" rel="stylesheet">
<link href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/skin.css" rel="stylesheet" type="text/css">
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
-->
</style>
</HEAD>

<BODY>
<TABLE cellSpacing=0 cellPadding=0 width="100%" class="login_top_bg" border=0>
  <TR height=41>
    <TD width=260 height="41" align="left" valign="middle">
    	<h3 style="margin:0; padding:0; line-height:41px;">Lumn 管理系统</h3>
    </TD>
    <TD align="right" valign="middle">
    	当前用户：<?php echo($admin['admin_nickname'] ? $admin['admin_nickname'] : $admin['admin_name']);?> &nbsp;&nbsp; 
		
        <A style="COLOR: #fff" href="<?php echo(site_url(LUMN_ADMIN_PATH.'/admin_lm/me/'));?>" target=Board_main>修改口令</A> &nbsp;&nbsp; 
        <A style="COLOR: #fff" onclick="if (confirm('确定要退出吗？')) return true; else return false;" href="<?php echo($login_out);?>" target=_top>退出系统</A> 
    </TD>
    <TD align=right width=268>&nbsp;</TD></TR></TABLE>
	</BODY></HTML>
