<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户注册 -【<?php echo(LUMN_WEB_NAME);?>】</title>
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/global.css" rel="stylesheet" type="text/css" />
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/user.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <?php include"top.php";?>
    <div class="main">
			<?php include("header.php");?>
			<div class="reg">
				<h2>会员注册</h2>
				<div class="reg_top">
					<font>注册<?php echo(LUMN_WEB_NAME);?>，只需20秒！</font>  以下信息均为必填  <span>已注册，去<a href="<?php echo(site_url()); ?>user/login/">登录 >></a></span>
				</div>
				<div class="reg_jt"><img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/reg.gif" /></div>
				
				<div class="reg_content">
                  <?php
					//失败则输出
                    echo('<div>'.($this->lm_session->flashdata('success') ? $this->lm_session->flashdata('success') : '').'</div>');
					?>
					<form action='<?php echo(site_url()); ?>user/reg/' method='post'>

					<p>
						邮箱：<br>
                        <input name='user_mail' value="<?php echo(set_value('user_mail')); ?>" type="text" class="reg_input"/>
						
						<?php echo(form_error('user_mail')); ?>
					</p>
					
					<p>
						密码：<br>
                        <input name='user_password' type="password" class="reg_input"/>
						<?php echo(form_error('user_password')); ?>
					</p>
					
					<p>
						确认密码：<br>
                        <input name='user_passwordf' type="password" class="reg_input"/>
						<?php echo(form_error('user_passwordf')); ?>
					</p>
					
					<p>
                        验证码：<br>
                    
						        <input type="text" name="yzm" class="reg_input" value="<?php echo(set_value('yzm')); ?>" />  
                     <br />
                                 <?php echo($yzm);?>
						          <?php echo(form_error('yzm')); ?>

                      
					</p>
					<div class="reg_submit"><input type="submit" value=" " /></div>
				</form>
					
				</div>
			</div>			
			
	</div>
	<!-- main over-->
	
	
	<?php include"foot.php";?>
</body>
</html>
