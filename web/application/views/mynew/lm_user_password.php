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
								<div id="password_3">
									<h2>个人信息 &gt; 修改密码</h2>
										<span style="color:#fc5e53;">					
										<?php 
										echo($this->lm_session->flashdata('success') ? $this->lm_session->flashdata('success') : '');
										echo(validation_errors());?>
										</span>
										<ul class="info_list">
	
											<li>
												<span>新密码：</span> <input type="password" id="newpwd" name="user_password" value="">
											</li>
											<li>
												<span>确认密码：</span>  <input type="password" id="repwd" name="user_passwordf" value="">
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
