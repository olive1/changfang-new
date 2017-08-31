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
	当前位置: 增加用户组
	
	</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/shadow_bg.jpg></TD></TR></TABLE>
	
	
	
	<div class="lm_main">
	

<div class="main-div" style="width:800px; text-align:center; ">
<div class="button_add">
	<a href="<?php echo(site_url().LUMN_ADMIN_PATH.'/admin_group/n_list/');?>">管理用户组</a>
</div>

<?php
if(isset($admin_group_row))
{
	$action = site_url(LUMN_ADMIN_PATH.'/admin_group/update/'.$admin_group_row['yhzid']);
}
else
{
	$action = site_url(LUMN_ADMIN_PATH.'/admin_group/add');
}
?>
<form method="post" action="<?php echo($action);?>" name="listForm">
  <!-- start goods list -->

<div class="list-div" id="listDiv" style=" background-color:#FFFFFF; ">

<div style="height:15px; line-height:15px; text-align:left; padding-bottom:10px; color:#FF0000; ">

<?php
echo validation_errors();

echo (($this->session->flashdata('success')) ? $this->session->flashdata('success') : '');

?>
</div>
<div style="text-align:left;">
	<table width="100%" cellpadding="0" cellspacing="0">
		<tr>
			<td align="left" valign="middle" width="80px;">用户组名称：</td>
			<td align="left" valign="middle">
			
				&nbsp;&nbsp;<input type="text" name="title" value="<?php 
				echo isset($admin_group_row) ? $admin_group_row['title'] : set_value('title');
				?>">
			</td>
		</tr>
	</table>
</div>

<div style=" margin-top:10px;text-align:left;background-image:url(<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/th_bg.gif); background-repeat:repeat-x; ">权限：</div>
	<div  style="margin:20px; padding-left:60px; ">
	
	
		<!---xx-->
		<?php
		if($auth_class_result):
		
			foreach($auth_class_result as $class):
		?>
		<h3 style="font-size:12px; color:#000000; background-image:url(<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/th_bg.gif); background-repeat:repeat-x; margin-top:20px; text-align:left; padding:3px; ">
			<?php echo($class->auth_class_name);?>
		</h3>
		
			
			<?php
			if($auth_result):
			//print_r($auth_result);
			?>
			<ul>
				<?php
				foreach($auth_result as $auth):
					if($auth->auth_class_id == $class->auth_class_id):
				?>
					<li style="width:230px; text-align:left; height:30px; line-height:30px; float:left; ">
						<input type="checkbox" name="authid_list[]" value="<?php echo($auth->authid);?>" 
						<?php 
						
						if(isset($admin_group_row)) //更新时候判断
						{
							$authid_list = array();
							$authid_list = unserialize($admin_group_row['authid_list']);
							//print_r($authid_list);
							//echo('<br>'.$auth->authid);
							//exit();
							//array_search($auth->authid, $authid_list)
							if(array_search($auth->authid, $authid_list) !== false)//检索  该值， 在用户组中是否存在，存在 则显示。
							{
								echo(" checked ");
							}
						}
						else
						{
							echo(set_checkbox('authid_list[]', $auth->authid));
						}
						?>/> 
						
						
						<?php echo($auth->auth_title);?>
						
					</li>
				<?php
					endif;
				endforeach;
				?>
			</ul>
			<?php
			endif;
			?>
			
		<div style="clear:both; "></div>
		
		<?php
			endforeach;
		endif;
		?>
		<!---xx  oo-->
		
		
		
		
		
		<div style="text-align:left; margin-top:20px; ">
			<input type="submit" value="提交">
			&nbsp;&nbsp;
			<input type="reset" value="重置">
		</div>
	
	
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
