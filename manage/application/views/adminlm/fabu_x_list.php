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
	当前位置: 需求列表
	
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
    <th width="9%">
      <input name="goods_list" id="goods_list" type="checkbox" value="goods_list" onClick="CheckAll(this.form);" />
      <a href="javascript:listTable.sort('goods_id'); ">ID</a> <input type="submit" value="删除"> </th>
    <th width="34%" align="left">
	
	<a href="javascript:listTable.sort('goods_name'); ">标题</a></th>
    <th width="18%"><a href="javascript:listTable.sort('is_best'); ">会员</a></th>
    <th width="17%"><a href="javascript:listTable.sort('goods_sn'); ">审核状态</a></th>

    <th width="7%"><a href="javascript:listTable.sort('goods_sn'); ">日期</a></th>


    <th width="7%">操作</th>
    <th width="7%">管理员</th>
	
	<?php 
	//print_r($result);
	if(empty($result)){
		echo("<tr><td colspan=5>暂无记录！</td></tr>");
	}
	else{
	foreach($result as $row):
	
	?>
    
    <!---循环体-->
  <tr>
    <td><input type="checkbox" name="fabuid[]" value="<?php echo($row['fabuid']);?>" /><?php echo($row['fabuid']);?></td>
    <td class="first-cell" align="left" style="border-right:1px solid #ccc;">
	<?php echo(htmlspecialchars($row['title']));?>
	</td>
        <td align="center"  style="border-right:1px solid #ccc;">
        <a href="<?php echo(site_url().LUMN_ADMIN_PATH.'/user/update/'.$row['user_id']);?>">
        <?php echo($row['user_mail']);?>
        </a>
        </td>
    <td align="left" style="border-right:1px solid #ccc;">
	<span onclick="listTable.edit(this, 'edit_goods_sn', 1)">
	
                                  <?php 
											switch($row['ver']){
												case 0:
													$status = '
																<b>审核中</b>
																<a href="'.site_url().''.LUMN_ADMIN_PATH.'/fabu/update_xuqiu/'.$row['fabuid'].'/1'.'">已审核</a>
																<a href="'.site_url().''.LUMN_ADMIN_PATH.'/fabu/update_xuqiu/'.$row['fabuid'].'/2'.'">未通过</a>
																
															  ';
													break;
												case 1:
													$status = '
																<b>已审核</b>
																<a href="'.site_url().''.LUMN_ADMIN_PATH.'/fabu/update_xuqiu/'.$row['fabuid'].'/0'.'">审核中</a>
																<a href="'.site_url().''.LUMN_ADMIN_PATH.'/fabu/update_xuqiu/'.$row['fabuid'].'/2'.'">未通过</a>
																
																
															  ';
													break;
												case 2:													
													$status = '
																<b>未通过</b>
																<a href="'.site_url().''.LUMN_ADMIN_PATH.'/fabu/update_xuqiu/'.$row['fabuid'].'/0'.'">审核中</a>
																<a href="'.site_url().''.LUMN_ADMIN_PATH.'/fabu/update_xuqiu/'.$row['fabuid'].'/1'.'">已审核</a>
																
																
															  ';
													break;
												}
												
											echo(''.$status);
											?>
	</span></td>

   

 <td align="left" style="border-right:1px solid #ccc;">
	<?php 
	if(isset($row['fabutime']))
	echo(date('m-d', $row['fabutime']));
	
	?>
 </td>

    <td align="left">

      <a href="<?php echo(site_url().LUMN_ADMIN_PATH.'/fabu/update_adm_xuqiu/'.$row['fabuid']);?>" title="编辑"><IMG src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/icon_edit.gif" border="0" width="16"></a>
      <a href="<?php echo(site_url().LUMN_ADMIN_PATH.'/fabu/del/'.$row['fabuid']);?>" onclick="return confirm('您确实要删除吗？')" title="删除"><img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/icon_drop.gif" border="0" width="16" /></a>
	  
   </td>
   
    <td align="left" style="border-right:1px solid #ccc;">
	<?php 

	echo(isset($row['admin_name']) ? $row['admin_name'] : '');
	
	?>
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
