<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/css/admin.css" type="text/css" rel="stylesheet">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/styles/main.css" type="text/css" rel="stylesheet">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/css/public_con.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/js/jquery.js"></script>
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
#page-link a{ text-decoration:none;}
.headerss{font-size:12px; color:#000000; background-color:#C3EFFF; margin-top:20px; text-align:left; padding:3px; }
#headerss{font-size:12px; color:#000000; background-color:#C3EFFF; margin-top:20px; text-align:left; padding:3px; }
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
	当前位置: 管理用户组
	
	</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/shadow_bg.jpg></TD></TR></TABLE>
	
	
	
	<div class="lm_main">
	

<div class="main-div" style="width:800px; text-align:center; ">
<div class="button_add">
	<a href="<?php echo(site_url().LUMN_ADMIN_PATH.'/admin_group/add/');?>">添加用户组</a>
</div>
<form method="post" onSubmit="return confirm('您确实要删除吗！');" action="<?php echo(site_url().LUMN_ADMIN_PATH.'/admin_group/del/');?>" name="listForm">
  <!-- start goods list -->

<div class="list-div" id="listDiv" style=" background-color:#FFFFFF; ">
	<div  style="margin:20px; ">



<table cellspacing='1' cellpadding='3' id='list-table' width="100%" style="border:1px solid #bbdde5; ">

  <tr style="background-image:url(<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/th_bg.gif); background-repeat:repeat-x; ">
    <th width="24%" height="24" align="center">id</th>
    <th width="53%" align="center">用户组名称</th>
    <th width="23%" align="center">操作</th>

  </tr>




		<!---xx-->
		
		<?php
		if($admin_group_result):
			foreach($admin_group_result as $group):
		?>
			<tr>
				<td class="first-cell" ><?php echo($group->yhzid);?></td>
				<td align="left"><?php echo($group->title);?></td>
				<td align="left">
				  <a href="<?php echo(site_url().LUMN_ADMIN_PATH.'/admin_group/update/'.$group->yhzid);?>" title="编辑"><img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/icon_edit.gif" border="0" height="16" width="16"></a>&nbsp;&nbsp;
				  <a href="<?php echo(site_url().LUMN_ADMIN_PATH.'/admin_group/del/'.$group->yhzid);?>" onclick="return confirm('您确认要删除这条记录吗?')" title="移除"><img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/icon_drop.gif" border="0" height="16" width="16"></a>
				 </td>
			</tr>
  
	  <?php
	  		endforeach;
	  endif;
	  ?>
  
		<!---xx  oo-->


  
  </table>


		
		
		
		
		
		
	
	
	</div>
	
	
</div>


</form>

					



</div>
  
	
	
	<div class="foot">
		版权所有 © 2008-2012 lumn网站开发系统 版权所有，  并保留所有权利。
	</div>
	
	</div>

  
  
  
  
</div>


<SCRIPT language=JavaScript type=text/JavaScript>
function CheckAll(form)  {
  for (var i=0;i<form.elements.length;i++)    {
    var e = form.elements[i];
    if (e.name != 'goods_list')       e.checked = form.goods_list.checked; 
   }
  }

</SCRIPT>
</BODY></HTML>
