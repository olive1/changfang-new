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
	当前位置: 收藏列表
	
	</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/shadow_bg.jpg></TD></TR></TABLE>
	
	
	
	<div class="lm_main">
	

<div class="main-div" style="width:800px; text-align:center; ">
<div class="button_add">
	<a href="<?php echo(site_url().LUMN_ADMIN_PATH.'/user/u_list/');?>">会员列表</a>
</div>
<form method="post" onSubmit="return confirm('您确实要删除吗！');" action="<?php echo(site_url().LUMN_ADMIN_PATH.'/co/del/');?>" name="listForm">
  <!-- start goods list -->

  <div class="list-div" id="listDiv">
<table cellpadding="3" width="100%" cellspacing="1">
  <tr>
    <th width="10%">
      <input name="goods_list" id="goods_list" type="checkbox" value="goods_list" onClick="CheckAll(this.form);" />
      <a href="javascript:listTable.sort('goods_id'); ">ID</a> <input type="submit" value="删除"> </th>
    <th width="49%" align="left">
	
	<a href="javascript:listTable.sort('goods_name'); ">商品名称</a></th>
    <th width="22%"><a href="javascript:listTable.sort('is_best'); ">会员</a></th>
    <th width="9%"><a href="javascript:listTable.sort('goods_sn'); ">地区</a></th>

    <th width="9%"><a href="javascript:listTable.sort('goods_sn'); ">日期</a></th>


    <th width="10%">操作</th>
	
	
	<?php 
	//print_r($co_result);
	if(empty($co_result)){
		echo("<tr><td colspan=5>暂无记录！</td></tr>");
	}
	else{
	foreach($co_result as $row):
	
	?>
    
    <!---循环体-->
  <tr>
    <td><input type="checkbox" name="co_id[]" value="<?php echo($row['co_id']);?>" /><?php echo($row['co_id']);?></td>
    <td class="first-cell" align="left" style="border-right:1px solid #ccc;">
<a href="<?php echo(site_url().'lmgoods/detail/'.$row['goods_id']);?>" target="_blank">
	<?php echo($row['goods_name']);?>
    </a>
    
	</td>
        <td align="center"  style="border-right:1px solid #ccc;">
        <a href="<?php echo(site_url().LUMN_ADMIN_PATH.'/user/update/'.$row['user_id']);?>">
        <?php echo($row['user_mail']);?>
        </a>
        </td>
    <td align="left" style="border-right:1px solid #ccc;">
	<span onclick="listTable.edit(this, 'edit_goods_sn', 1)">
	
                                    <?php 
									foreach($this->area->_data as $row_two):
										if($row_two->cat_id == $row['cat_id']):
									?>
                                    	<?php echo($row_two->cat_name);?>
									<?php
										endif;
									endforeach;
									?>
	</span></td>

   

 <td align="left" style="border-right:1px solid #ccc;">
	<?php 
	if(isset($row['create_time']))
	echo(date('m-d', $row['create_time']));
	
	?>
 </td>

    <td align="left">


      <a href="<?php echo(site_url().LUMN_ADMIN_PATH.'/co/del/'.$row['co_id']);?>" onclick="return confirm('您确实要删除吗？')" title="删除"><img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/icon_drop.gif" border="0" width="16" /></a>
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
            <div id="turn-page">
        总计  <span id="totalRecords"><?php echo($num_rows);?></span>
        个记录
           &nbsp;&nbsp;    
        第 <strong><?php echo($cur);?></strong> 页
        <span id="page-link">
		  
		  <?php echo($pagination);?>
		  
        </span>
      </div>
    </td>
  </tr>

</table>

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
