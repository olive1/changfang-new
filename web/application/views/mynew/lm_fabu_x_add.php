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
					<?php
					if(isset($xuqiu_row))
					{
						$action	=	site_url('fabu/xuqiu_update/'.$xuqiu_row['fabuid']);
					}
					else
					{
						$action	=	site_url('fabu/xuqiu_add');
					}
					?>
							<form class="set_form" method="post" action="<?php echo($action);?>">
								<!-- str 需求 -->
								<div id="contact_2">
								<h2>发布需求</h2>
								<span style="color:#fc5e53;">					
								<?php 
								echo($this->lm_session->flashdata('success') ? $this->lm_session->flashdata('success') : '');
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

										</ul>					
										<textarea name="content" style="width:500px; height:200px; margin-left:130px; "><?php echo isset($xuqiu_row) ? htmlspecialchars($xuqiu_row['content']) : set_value('content');?></textarea>
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
