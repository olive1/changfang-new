<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div class="header">
			<div class="headertop">
				<div class="fl">
					<a href="<?php echo(site_url());?>"><img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/logo.jpg" /></a>
				</div>
				<div class="fr">
					 <?php
					 $top_foot	=	$this->allpublic->get_data();
					 $index_top	=	$top_foot['index_top'];
					 $index_top	=	explode(',', $index_top);
					 if($index_top && isset($index_top[0]) && isset($index_top[1])):
					 ?>
					 <a href="<?php echo($index_top[0]);?>"><img src="<?php echo($index_top[1]);?>" /></a>
					 <?php
					 else:
					 ?>
					 <a href="<?php echo(site_url('user/reg'));?>"><img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/regimg.jpg" /></a>
					 <?php
					 endif;
					 ?>
					
				</div>
				<div class="clear"></div>
			</div>
			<div class="headernav">
				<ul>
					<li>
						<a href="<?php echo(site_url());?>">首页</a>
					</li>
					<li>
						<a href="<?php echo(site_url('meeting'));?>">会议场地</a>
					</li>
					<li>
						<a href="<?php echo(site_url('service'));?>">会议服务</a>
					</li>
					<li>
						<a href="<?php echo(site_url('news'));?>">会议资讯</a>
					</li>
					<li>
						<a href="<?php echo(site_url('zhinan'));?>">会议指南</a>
					</li>
					<li>
						<a href="<?php echo(site_url('hudong'));?>">活动优惠</a>
					</li>
					<li class="weibos">
						<img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/sina.jpg" />
					</li>
					<li class="weiboqq">
					    <img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/qq.jpg" />
					</li>
					
					<div class="clear"></div>
				</ul>
			</div>
		</div>