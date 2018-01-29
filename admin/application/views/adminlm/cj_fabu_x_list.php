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
	当前位置: 承接列表
	
	</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/shadow_bg.jpg></TD></TR></TABLE>
	
	
	
	<div class="lm_main">
	

<div class="main-div" style="width:800px; text-align:center; ">
<div class="button_add">

</div>
<form method="post" onSubmit="return confirm('您确实要删除吗！');" action="<?php echo(site_url().LUMN_ADMIN_PATH.'/co/del/');?>" name="listForm">
  <!-- start goods list -->

  <div class="list-div" id="listDiv">
<table cellpadding="3" width="100%" cellspacing="1">
  <tr>
    <th width="7%">
      <input name="goods_list" id="goods_list" type="checkbox" value="goods_list" onClick="CheckAll(this.form);" />
      <a href="javascript:listTable.sort('goods_id'); ">ID</a> <br><input type="submit" value="删除"> </th>
    <th width="26%" align="left">
	
	<a href="javascript:listTable.sort('goods_name'); ">单位名称</a></th>
    <th width="6%"><a href="javascript:listTable.sort('is_best'); ">联系人</a></th>
	<th width="4%"><a href="javascript:listTable.sort('goods_sn'); ">性别</a></th>
    <th width="10%"><a href="javascript:listTable.sort('goods_sn'); ">联系电话</a></th>
    <th width="31%"><a href="javascript:listTable.sort('goods_sn'); ">说明</a></th>
	 <th width="7%"><a href="javascript:listTable.sort('goods_sn'); ">需求</a></th>
    <th width="8%"><a href="javascript:listTable.sort('goods_sn'); ">日期</a></th>

	
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
		<?php 
	if(isset($row['dwmc']))
	echo($row['dwmc']);
	
	?>
	</td>
        <td align="center"  style="border-right:1px solid #ccc;">
 
        	<?php 
	if(isset($row['lxr']))
	echo($row['lxr']);
	
	?>
        </a>
        </td>
    <td align="left" style="border-right:1px solid #ccc;">
	<span onclick="listTable.edit(this, 'edit_goods_sn', 1)">
	
                                  	<?php 
	if(isset($row['sex']))
	echo($row['sex']);
	
	?>
	</span></td>

   
    <td align="left" style="border-right:1px solid #ccc;">
	<span onclick="listTable.edit(this, 'edit_goods_sn', 1)">
	
                                  	<?php 
	if(isset($row['lxdh']))
	echo($row['lxdh']);
	
	?>
	</span></td>
	
	
	
 <td align="left" style="border-right:1px solid #ccc;">
	<?php 
	if(isset($row['description']))
	echo($row['description']);
	
	?>
 </td>


    <td align="left">

	<a href="<?php echo(site_url('xuqiu/xuqiu_detail/'.$row['fabuid']));?>" target="_blank">查看</a>
   </td>


    <td align="left">

      	<?php 
	if(isset($row['cjtime']))
	echo(date('m-d', $row['cjtime']));
	
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
