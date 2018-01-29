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
input{color:#000000;}
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
	

<p>
<?php 

echo($this->session->flashdata('upload_success') ? $this->session->flashdata('upload_success').'<br>' : '');

?>


<form action="<?php echo(site_url().LUMN_ADMIN_PATH.'/indexdefin/upload');?>" name="index_upload" method="post" enctype="multipart/form-data">
	<input type="file" name="userfile"> 
    
    <input type="submit" value=" 上传 ">
</form>
</p>
<br>

<div class="main-div" style="width:800px; text-align:center; ">

<?php 

echo($this->session->flashdata('success') ? $this->session->flashdata('success').'<br>' : '');

?>

<form method="post" action="<?php echo(site_url().LUMN_ADMIN_PATH.'/indexdefin/update/');?>" name="listForm">
  <!-- start goods list -->

  <div class="list-div" id="listDiv">
<table cellpadding="3" width="100%" cellspacing="1">
  <tr>
    <th width="12%">
      <input  type="checkbox" value="goods_list" name="chkall" onClick="CheckAll(this.form);" />
      <a href="javascript:listTable.sort('goods_id'); ">ID</a>  <input type="submit" value="删除"></th>
    <th width="20%" align="left">
	
	<a href="javascript:listTable.sort('goods_name'); ">名称</a></th>
    <th width="68%"><a href="javascript:listTable.sort('goods_sn'); ">内容</a></th>
<th ><a href="javascript:listTable.sort('goods_sn'); ">排序</a></th>
	
	
	<?php 
	
	if(!$index_row){
		echo("<tr><td colspan=5>暂无记录！</td></tr>");
	}
	else{
	foreach($index_row as $row):
	
	?>
    
    <!---循环体-->
  <tr>
    <td><input type="checkbox" name="del_id[]" value="<?php echo($row->index_id);?>" /><?php echo($row->index_id);?></td>
    <td class="first-cell" style="" align="left">
    <input type="hidden" name="index_id[]" value="<?php echo($row->index_id);?>" />
<input type="text" name="index_content[]" value="<?php echo($row->index_content);?>" size="20">

	</td>
    <td align="left">
	<span>
	<?php if($row->index_id == 2 || $row->index_id == 7):;?>
		<textarea name="index_value[]" style="width:435px; height:100px; margin:5px 0 5px 0; "><?php echo($row->index_value);?></textarea>
	<?php else:;?>
		<input type="text" name="index_value[]" value="<?php echo($row->index_value);?>" size="70">
	<?php endif;?>
	
	
	
	</span></td>
	
	<td>
		<input type="text" name="index_sort[]" value="<?php echo($row->index_sort);?>" size="5" maxlength="5">
	</td>
  </tr>
   <!---循环结束体-->
  
  <?php
	endforeach;
	}
  ?>
  
  
  
  </table>


<!-- end goods list -->

<!-- 分页 -->
<table id="page-table" cellspacing="0">
  <tr>
    <td align="right" nowrap="true">
          <!-- $Id: page.htm 14216 2008-03-10 02:27:21Z testyang $ -->
            <div id="turn-page" align="center">
      
        <span id="page-link">
		  
		<input type="submit" value=" 更 新  ">
		  
        </span>
      </div>
    </td>
  </tr>

</table>

</div>


</form>


<style>
.screening_list{text-align:left;}
.screening_item{}
</style>

						

<div class="form-div">

  <form action="<?php echo(site_url().LUMN_ADMIN_PATH.'/indexdefin/add/');?>" method="post" name="searchForm">
    <img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/icon_add.gif" width="26" height="22" border="0" alt="SEARCH" />
        <!-- 分类 -->

    key: 
    <input type="text" name="index_content" size="15" value="" />
    
    value: 
    <input type="text" name="index_value" size="35" value="" />
    
    num: 
    <input type="text" name="index_sort" size="5" value="" maxlength="5" /> 
    <input type="submit" value=" 增加 " class="button" />
  </form>
</div>


<div style="text-align:left; ">
<strong>说明：</strong><br>

每个名称对应一个内容。其中内容中的数字皆以半角逗号(,)分隔，数字代表该商品的ID。<br>
其中名称为“广告切换”、“友情链接”的内容分隔方式为：以逗号(,)分隔幻灯图片和链接地址。 多个幻灯图片和链接地址再以竖号(|)分隔开来。<br>


</div>
</div>
  
	
	
	<div class="foot">
		版权所有 © 2008-2012 lumn网站开发系统 版权所有，  并保留所有权利。
	</div>
	
	</div>

  
  
  
  
</div>



</BODY></HTML>
