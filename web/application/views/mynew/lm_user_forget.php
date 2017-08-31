<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>忘记密码-【<?php echo(LUMN_WEB_NAME);?>】</title>
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/global.css" rel="stylesheet" type="text/css" />
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/user.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <?php include"top.php";?>
    <div class="main">
			<?php include("header.php");?>
			<div class="reg">
				<h2>找回密码</h2>
				<div class="reg_top">
					请输入注册时，您所用的电子邮箱，我们将会把新的密码发送到您的邮箱。
				</div>
				<div class="reg_jt"><img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/reg.gif" /></div>
				
				<div class="reg_content">
 						<form action='<?php echo(site_url()); ?>user/forget/' method="post">
				<p>
                电子邮箱：<br>
                <input type="text" value="<?php echo(set_value('user_mail')); ?>" class="reg_input" name='user_mail' >
                 <?php echo(form_error('user_mail')); ?>
				</p>				
					<p>
						验证码：<br>
						<input type="text" name="yzm" class="reg_input" />   
                     <br />
                                 <?php echo($yzm);?>
						          <?php echo(form_error('yzm')); ?>
					</p>
								
                                <div class="forget_submit"><input type="submit" value=" " /></div>
                                
							</form>
					
					
				</div>
			</div>			
			
	</div>
	<!-- main over-->
	
	
	<?php include"foot.php";?>
</body>
</html>
