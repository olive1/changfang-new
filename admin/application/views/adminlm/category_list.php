<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/css/admin.css" type="text/css" rel="stylesheet">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/style.css" type="text/css" rel="stylesheet">
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
	  background: #DDEEF2;

}
.lm_main{ padding:20px;}
.foot{ margin-top:100px; padding:10px; text-align:center; background-color:#e3effb;}
-->
</style>
</HEAD>

<SCRIPT language=JavaScript type=text/JavaScript>
function CheckAll(form)  {
  for (var i=0;i<form.elements.length;i++)    {
    var e = form.elements[i];
    if (e.name != 'chkall')       e.checked = form.chkall.checked; 
   }
 
}
</SCRIPT>
<script language="javascript">
function jj(obj){
	var objs='abd'+obj;
	var img='img'+obj;
	var img_y=document.getElementById(img).src;
	var img_z=img_y.substring(0,img_y.length-5)+'x.jpg';
	var img_yy=img_y.substring(0,img_y.length-5)+'y.jpg';
	if(document.getElementById(objs).style.display==''){
		document.getElementById(objs).style.display='none';
		document.getElementById(img).src=img_z;
	}else{
		document.getElementById(objs).style.display='';
		document.getElementById(img).src=img_yy;
	}
 }
</script>
<BODY>
<div>

<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TR height=28>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/title_bg1.jpg style="padding-left:10px; ">
	当前位置: 分类列表
	
	</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/shadow_bg.jpg></TD></TR></TABLE>
	
	
	
	<div class="lm_main">
	

<div class="main-div" style="width:800px; text-align:center; ">
<div class="button_add">
	<a href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/category/add/">增加分类</a>
</div>
<b>
<?php echo($this->session->flashdata('failure'));?>
<?php echo($this->session->flashdata('success'));?>
</b>
<table cellspacing='1' cellpadding='3' id='list-table' width="800" style="border:1px solid #bbdde5; ">

  <tr style="background-image:url(<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/th_bg.gif); background-repeat:repeat-x; ">
    <th height="24" width="600">名称</th>
    <th width="100">编辑</th>
    <th>删除</th>


  </tr>
    <tr style="display:none; ">
    <td class="first-cell" >阿猛</td>
    <td align="center">
	<a href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/category/edit/">
	<IMG src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/edit.jpg" border="0">
	</a>
	</td>
    <td align="center">
	<a onClick="return confirm('确定删除吗！');" href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/category/del/">
	<IMG src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/del.jpg" border="0">
	</a>
	</td>

  </tr>
  
  
  
  <tr><td colspan="3">
  
		<?php echo($_list);?>
		
  </td></tr>
  </table>

</div>
  
	
	
	<div class="foot">
		版权所有 © 2008-2012 lumn网站开发系统 版权所有，  并保留所有权利。
	</div>
	
	</div>

  
  
  
  
</div>
</BODY></HTML>
