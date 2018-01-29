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

.user_all{}
.user_all input{ border:0;}


.user_right{}
.user_right h2{margin:15px; padding:3px 0 3px 15px; border-bottom:1px solid #cccccc; font-size:12px; font-weight:normal;}
.user_r_con ul li{height:25px; line-height:25px; margin-top:10px;}
.user_r_con ul li span{display:block; padding-left:10px; width:80px; text-align:right; float:left;}
.user_r_con ul li input{ border:1px solid #cccccc; height:20px; line-height:20px; font-size:14px; padding:2px 5px 0 5px;}
.user_r_con ul li input:hover{border-color:#f1ca7f;}




-->
</style>
</HEAD>
<BODY>
<div>

<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TR height=28>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/title_bg1.jpg style="padding-left:10px; ">
	当前位置: 需求编辑
	
	</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/shadow_bg.jpg></TD></TR></TABLE>
	
	
	
	<div class="lm_main">
	

<div class="main-div" style="width:800px; text-align:left; ">
<div class="button_add">
	<a href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/fabu/xuqiu_list/">所有需求</a>
</div>


<div class="user_all">
					<?php
					if(isset($xuqiu_row))
					{
						$action	=	site_url(LUMN_ADMIN_PATH.'/fabu/update_adm_xuqiu/'.$xuqiu_row['fabuid']);
					}
					else
					{
						$action	=	site_url(LUMN_ADMIN_PATH.'/fabu/xuqiu_add');
					}
					?>
					
									<div class="user_right">
					
					<div class="user_r_con">
<form class="set_form" method="post" action="<?php echo($action);?>">
								<!-- str 需求 -->
								<div id="contact_2">
								<span style="color:#fc5e53;">					
								<?php 
								echo($this->session->flashdata('success') ? $this->session->flashdata('success') : '');
								echo(validation_errors());?>
								</span>
										<ul>
											<li>
												<span>标题：</span> <input type="text" id="title" name="title" style="width:400px; " maxlength="80" value="<?php echo isset($xuqiu_row) ? htmlspecialchars($xuqiu_row['title']) : set_value('title');?>">
											</li>
											<li>
												<span>姓名：</span> <input type="text" id="names" name="names" maxlength="50" value="<?php echo isset($xuqiu_row) ? htmlspecialchars($xuqiu_row['names']) : set_value('names');?>">
											</li>
											<li>
												<span>电话：</span> <input type="text" id="tel" name="tel" maxlength="50" value="<?php echo isset($xuqiu_row) ? htmlspecialchars($xuqiu_row['tel']) : set_value('tel');?>">
											</li>
											<li>
												<span>手机：</span> <input type="text" id="phone" name="phone" maxlength="11" value="<?php echo isset($xuqiu_row) ? htmlspecialchars($xuqiu_row['phone']) : set_value('phone');?>">
											</li>
											<li>
												<span>邮箱：</span> <input type="text" id="email" name="email" maxlength="50" value="<?php echo isset($xuqiu_row) ? htmlspecialchars($xuqiu_row['email']) : set_value('email');?>">
											</li>
											<li>
												<span>描述：</span>(请勿留有联系方式，否则审核将会不通过。)<br>
											</li>
<textarea name="content" style="width:500px; height:200px; margin-left:130px; "><?php echo isset($xuqiu_row) ? htmlspecialchars($xuqiu_row['content']) : set_value('content');?></textarea>
										</ul>			
											
								</div>
								
	
										<div class="user_r_sub" style="padding:10px 0 0 50px; ">
										<input type="submit" value="保 存" >&nbsp;&nbsp;
										<input type="reset" value="重 置 ">
										</div>
									</form>
									</div><div style="clear:both; " ></div>
						</div>
						
						<div style="clear:both; " ></div>
									
</div>
</div>
  
	
	
	<div class="foot">
		版权所有 © 2008-2012 lumn网站开发系统 版权所有，  并保留所有权利。
	</div>
	
	</div>

  
  
  
  
</div>

</BODY></HTML>
