<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div class="top">
		<div class="div980">
			<div class="fl">
				您好，欢迎来到<?php echo(LUMN_WEB_NAME);?>   
				
                        <?php
                        	if($this->lmauth->is_login()):
                		?>
								<a href="<?php echo(site_url()); ?>fabu/xuqiu_add/">发布需求</a> | 
								<a href="<?php echo(site_url()); ?>usercenter/center/">用户中心</a> | 
								<a onclick="return confirm('确定要退出吗？');" href="<?php echo(site_url().'usercenter/login_out/');?>">退出</a>
                        
                		<?php
                        else:
                        ?>
							请 <a href="<?php echo(site_url('user/login'));?>">登录</a> | <a href="<?php echo(site_url('user/reg'));?>">注册</a>
                        <?php  
                        endif;
                        ?>
				
			</div>
			<div class="fr">
				帮助  |  收藏本站
			</div>
			<div class="clear"></div>
		</div>
	</div>