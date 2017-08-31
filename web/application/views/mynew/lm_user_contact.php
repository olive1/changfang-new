<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>【<?php echo(LUMN_WEB_NAME);?>】</title>
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/global.css" rel="stylesheet" type="text/css" />
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/user.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <?php include"top.php";?>
    <div class="main">
			<?php include("header.php");?>
			<div class="content">
				<div class="bread">
					当前位置: <a href="<?php echo(site_url()); ?>">首页</a> &gt; 用户中心
				</div>
			
				
				<?php include"user_left.php";?>
				<div class="user_right">
					
					<div class="user_r_con">
							<form class="set_form" method="post" action="<?php echo(site_url().'usercenter/center/'.$id);?>">
								<!-- str 联系方式 -->
								<div id="contact_2">
								<h2>个人信息 &gt; 联系方式</h2>
								<span style="color:#fc5e53;">					
								<?php 
								echo($this->lm_session->flashdata('success') ? $this->lm_session->flashdata('success') : '');
								echo(validation_errors());?>
								</span>
										<ul>
											<li>
												<span>地 址：</span> <input type="text" id="address" name="address" value="<?php echo($user_row->address ? $user_row->address : set_value('address'));?>">
											</li>
											<li>
												<span>邮 编：</span> <input type="text" id="zipcode" name="zip" value="<?php echo($user_row->zip ? $user_row->zip : set_value('zip'));?>" maxlength="6">
											</li>
											<li>
												<span>电 话：</span>  <input type="text" id="tel" name="tel" value="<?php echo($user_row->tel ? $user_row->tel : set_value('tel'));?>">
											</li>
											<li>
												<span>QQ：</span> <input type="text" id="qq" name="qq" value="<?php echo($user_row->qq ? $user_row->qq : set_value('qq'));?>">
											</li>
											<li>
												<span>MSN：</span>  <input type="text" id="msn" name="msn" value="<?php echo($user_row->msn ? $user_row->msn : set_value('msn'));?>">
											</li>
										</ul>
					
								</div>
	
										<div class="user_r_sub">
										<input type="submit" value="保存" >
										<input type="reset" value="重置 ">
										</div>
									</form>
					</div>
					
				</div>
				
				<div class="clear"></div>
			</div>
	</div>
	<!-- main over-->
	
	
	<?php include"foot.php";?>
</body>
</html>
