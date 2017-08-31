<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户登录-【<?php echo(LUMN_WEB_NAME);?>】</title>
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/global.css" rel="stylesheet" type="text/css" />
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/user.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <?php include"top.php";?>
    <div class="main">
			<?php include("header.php");?>
			<!--登录-->
			<div class="login">
				<h2>用户登录</h2>
				<div style="text-align: right;"><a href="<?php echo(site_url()); ?>user/forget/">忘记密码</a></div>
				
				<div class="login_content">
                    <?php
					//失败则输出
                    echo('<div>'.($this->lm_session->flashdata('success') ? $this->lm_session->flashdata('success') : '').'</div>');
					?>
					<form method="post" action="<?php echo(site_url()); ?>user/login/">
					<p>
						邮箱或手机：<br>
                        <input name='user_mail' value="<?php echo(set_value('user_mail')); ?>" type="text"  class="login_input"/>
						<?php echo(form_error('user_mail')); ?>
					</p>
					
					<p>
						密码：<br>
                        <input name='user_password' type="password" class="login_input"/>
						<?php echo(form_error('user_password')); ?>
					</p>
					
					
					<p>
						验证码：<br>
						<input type="text" name="yzm" class="reg_input" />   
                     <br />
                                 <?php echo($yzm);?>
						          <?php echo(form_error('yzm')); ?>
					</p>
					<div class="login_submit"><input type="submit" value=" " /> 
					<a href="<?php echo(site_url()); ?>user/reg/"><img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/login_reg.jpg" /></a>
					</div>
					
				</form>
					
				</div>
			</div>			
			
	</div>
	<!-- main over-->
	
	
	<?php include"foot.php";?>
</body>
</html>
