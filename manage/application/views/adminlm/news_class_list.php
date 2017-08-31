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
.bbc{border-bottom:1px solid #cccccc; height:30px; line-height::30px;}
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
	当前位置: 分类管理
	
	</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/shadow_bg.jpg></TD></TR></TABLE>
	
	
	
	<div class="lm_main">
	


<div class="main-div" style="width:800px; text-align:center; ">
<div class="button_add">
	<a href="<?php echo(site_url().LUMN_ADMIN_PATH.'/news_class/add/0');?>">添加顶级栏目</a>
</div>

<?php 

echo($this->session->flashdata('success') ? $this->session->flashdata('success').'<br>' : '');

?>


<script type="text/javascript" language="javascript">
function kk(path)
{
 document.getElementById('listForm').action=path;
 document.getElementById('listForm').submit();
}
</script>
<form method="post" action="<?php echo(site_url(LUMN_ADMIN_PATH.'/news_class/update/'));?>" onSubmit="return confirm('是否要修改？')" name="listForm" id="listForm">
  <!-- start goods list -->

  <div class="list-div" id="listDiv">
<table cellpadding="3" width="100%" cellspacing="1">
  <tr>
    <th width="12%">

      <input  type="hidden" value="goods_list" name="chkall" onClick="CheckAll(this.form);" />
      <a href="javascript:listTable.sort('goods_id'); " style="display:none; ">ID</a>  
	  <input type="hidden" onClick="kk('<?php echo(site_url(LUMN_ADMIN_PATH.'/news_class/del/'));?>');" value="删除">

	  </th>
    <th width="56%" align="left">
	
	<a href="javascript:listTable.sort('goods_name'); ">名称</a></th>
    <th width="32%">操作</th>
</tr>


<?php 
echo($list);	
	if(!isset($index_row) || !$index_row){
		//echo("<tr><td colspan=5>暂无记录！</td></tr>");
	}
	else{
	foreach($index_row as $row):
	
	?>
    
    <!---循环体-->
  <tr>
    <td><input type="checkbox" name="del_id[]" value="<?php echo($row->news_class_id);?>" /><?php //echo($row->news_class_id);?></td>
    <td class="first-cell" align="left">
<input type="hidden" name="news_class_title[]" value="<?php echo($row->news_class_title);?>" style=" color:#000000;" size="20">
<?php echo($row->news_class_title);?>
	</td>
    <td align="left">
	<span>
		
<a href="<?php echo(site_url().LUMN_ADMIN_PATH.'/news_class/add/'.$row->news_class_id);?>">增加子类</a>
	</span></td>
	</tr>
   <!---循环结束体-->
  
  <?php
	endforeach;
	}
  ?>
  
  
  
  </table>


<!-- end goods list -->

<!-- 分页 -->
<table width="100%" id="page-table" cellspacing="0" style="display:none; ">
  <tr>
    <td width="67%" align="center" nowrap="true">

		<input type="submit" value=" 更 新  ">

    </td>
	
	
	<td width="33%" align="center" valign="middle">
			<input type="text" name="news_class_title_" value="" style=" color:#000000;" size="15">
			<br>
			<input type="button" value="增加子栏目">
	</td>
  </tr>

</table>

</div>


</form>


<style>
.screening_list{text-align:left;}
.screening_item{}
</style>

						<br><br>

<div class="form-div" style="display:none; ">
<script type="text/javascript">
function jk()
	{
		
		var news_class_title = document.getElementById('news_class_title').value;
		if(news_class_title == '')
		{
			alert('请填写分类名称！');
			return false;
		}
	}
</script>

  <form action="<?php echo(site_url(LUMN_ADMIN_PATH.'/news_class/add/'));?>" method="post" name="searchForm" onSubmit="return jk();">
    <img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/icon_add.gif" width="26" height="22" border="0" alt="SEARCH" />
        <!-- 分类 -->

    分类名称: 
    <input type="text" name="news_class_title" id="news_class_title" size="35" value="" />
   
    <input type="submit" value=" 增加顶级栏目 " class="button" />
  </form>
</div>

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
