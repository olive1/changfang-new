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
	当前位置: 编辑分类
	
	</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/shadow_bg.jpg></TD></TR></TABLE>
	
	
	
	<div class="lm_main">
	

<div class="main-div" style="width:800px; text-align:left; ">
<div class="button_add">
	<a href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/category/c_list/">分类列表</a>
</div>

<?php
echo (($this->session->flashdata('success')) ? '<div style="color:#CCC;font-weight:bold;">'.$this->session->flashdata('success').'</div>' : '');
?>
<?php echo(form_open(LUMN_ADMIN_PATH.'/category/update/'.$category->cat_id));?>
<table width="800">
  <tr>
    <td class="label"><div align="right">名称</div></td>

    <td>
      <div align="left">
        <input type="text" name="cat_name" value="<?php echo(set_value('cat_name', $category->cat_name ? $category->cat_name : ''));?>" size="34"/>
        <span class="require-field">*</span>
		
		<br><span style="color:#FF0000; "><?php echo(form_error('cat_name'));?></span>
		</div></td>
  </tr>
  <tr>
    <td class="label"><div align="right" style="display:none; ">上级分类</div></td>
    <td>
      <div align="left">
        <select name="parent_id">
			<option value="0">顶级分类</option>
			<?php echo($_list);?>
		</select>
        <span class="require-field">*</span>
		<br><span style="color:#FF0000; "><?php echo(form_error('parent_id'));?></span>
		
		</div></td>

  </tr>
   <tr>
    <td class="label"><div align="right">排序</div></td>
    <td>
      <div align="left">
        <input type="text" name="order_id" maxlength="5" size="10" value="<?php echo(set_value('order_id', $category->order_id ? $category->order_id : 0));?>" />
        <span class="require-field"></span>
		<br><span style="color:#FF0000; "><?php echo(form_error('order_id'));?></span>
		
		</div></td>
  </tr>
  <tr>
    <td class="label"><div align="right">关键词</div></td>

    <td>
      <div align="left">
        <input type="text" name="keywords" maxlength="25" size="34" value="<?php echo(set_value('keywords', $category->keywords ? $category->keywords : ''));?>" />
        <span class="require-field"></span>
		<br><span style="color:#FF0000; "><?php echo(form_error('keywords'));?></span>
		</div></td>
  </tr>
  
  <tr>
    <td class="label"><div align="right">描述</div></td>

    <td>
      <div align="left">
        <input type="text" name="description" maxlength="110" size="80" value="<?php echo(set_value('description', $category->description ? $category->description : ''));?>" />
        <span class="require-field"></span>
		<br><span style="color:#FF0000; "><?php echo(form_error('description'));?></span>
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
