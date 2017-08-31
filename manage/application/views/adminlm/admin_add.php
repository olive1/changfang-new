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
-->
</style>
</HEAD>
<BODY>
<div>

<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TR height=28>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/title_bg1.jpg style="padding-left:10px; ">
	当前位置: 增加用户
	
	</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/shadow_bg.jpg></TD></TR></TABLE>
	
	
	
	<div class="lm_main">
	

<div class="main-div" style="width:800px; text-align:left; ">
<div class="button_add">
	<a href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/admin_lm/a_list/">管理用户</a>
</div>


<?php
echo (($this->session->flashdata('success')) ? '<div style="color:#CCC;font-weight:bold;">'.$this->session->flashdata('success').'</div>' : '');
?>

<?php
if(isset($admin_row))
{
	$action = site_url(LUMN_ADMIN_PATH.'/admin_lm/update/'.$admin_row['admin_id']);
}
else
{
	$action = site_url(LUMN_ADMIN_PATH.'/admin_lm/add');
}
?>
<form method="post" action="<?php echo($action);?>" name="listForm">

<table width="500">
  <tr>
    <td width="55" class="label"><div align="right">用户名</div></td>

    <td width="433">
      <div align="left">
        <input type="text" name="admin_name" maxlength="20" value="<?php 
				echo isset($admin_row) ? $admin_row['admin_name'] : set_value('admin_name');
				?>" <?php
				echo(isset($admin_row) ? ' style="border:0px;" readonly="readonly" ' : '');
				?> size="34"/>
        <span class="require-field">*</span>
		<span style="color:#FF0000; "><?php echo(form_error('admin_name'));?></span>
		</div></td>
  </tr>

   <tr>
    <td class="label"><div align="right">密  码</div></td>
    <td>
      <div align="left">
        <input type="password" name="admin_password" maxlength="32" size="34" />
        <span class="require-field">*</span>
		<span style="color:#FF0000; "><?php echo(form_error('admin_password'));?></span>
		</div></td>
  </tr>
  <tr>
    <td class="label"><div align="right">确认密码</div></td>

    <td>
      <div align="left">
        <input type="password" name="admin_passwordf" maxlength="32" size="34" />
        <span class="require-field">*</span>
		<span style="color:#FF0000; "><?php echo(form_error('admin_passwordf'));?></span>
		</div></td>
  </tr>
  
  
  <tr>
    <td class="label"><div align="right">昵称</div></td>
    <td>
      <div align="left">
        <input type="text" name="admin_nickname" value="<?php 
				echo isset($admin_row) ? $admin_row['admin_nickname'] : set_value('admin_nickname');
				?>" size="34" />

		
		</div></td>

  </tr>
  
  
  <tr>
    <td class="label"><div align="right">用户组</div></td>

    <td>
      <div align="left">
        <select name="yhzid">
			
			<?php
				if(isset($admin_group)):
					foreach($admin_group as $group):
				?>
			<option value="<?php echo($group->yhzid);?>" <?php 
			if(isset($admin_row)):
				if($admin_row['yhzid'] == $group->yhzid) echo(" selected ");
			else
				echo(set_select('yhzid', $group->yhzid));
			endif;
			
			?> ><?php echo($group->title);?></option>
			<?php
					endforeach;
				endif;
			?>
		</select>
        <span class="require-field">*</span>
		<span style="color:#FF0000; "><?php echo(form_error('group'));?></span>
		
		[<a href="<?php echo(site_url().LUMN_ADMIN_PATH.'/admin_group/add/');?>">添加用户组</a>]
		</div></td>
  </tr>
  

  
  
    
           <tr>
    <td colspan="2" align="center">
      <input type="submit" value=" 确定 " class="button" />&nbsp;&nbsp;&nbsp;
      <input type="reset" value=" 重置 " class="button" />
</td>
  </tr>
</table>
</form>
</div>
  
	
	
	<div class="foot">
		版权所有 © 2008-2012 lumn网站开发系统 版权所有，  并保留所有权利。
	</div>
	
	</div>

  
  
  
  
</div>

</BODY></HTML>
