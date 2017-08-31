<div class="user_left">
            	
                <div class="user_left_top"><img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/user_left_top.jpg" /></div>
                <div class="user_left_nav">
                	<h3>个人信息</h3>
                    <ul>
        				<li><a href="<?php echo(site_url()); ?>usercenter/center/0" title="基本资料" onClick="shift(0)">基本资料</a></li>
        				<li style="display:none;"><a href="<?php echo(site_url()); ?>usercenter/1" title="用户头像" onClick="shift(1)">用户头像</a></li>
        				<li><a href="<?php echo(site_url()); ?>usercenter/center/2" title="联系方式" onClick="shift(2)">联系方式</a></li>
        				<li><a href="<?php echo(site_url()); ?>usercenter/center/3" title="修改密码" onClick="shift(3)">修改密码</a></li>
                    </ul>
                    
                	<h3>预约管理</h3>
                    <ul>
			         	<li><a href="<?php echo(site_url()); ?>usercenter/order/" title="我的预约">我的预约</a></li>
                    </ul>
                    
                	<h3 style="display:none; ">我的酒店</h3>
                    <ul style="display:none; ">
        				<li><a href="<?php echo(site_url()); ?>usercenter/co/" title="我的收藏">我的收藏</a></li>        				
                    </ul>
					
					
                	<h3>发布管理</h3>
                    <ul>
			         	<li><a href="<?php echo(site_url()); ?>fabu/xuqiu_list/" title="所有发布">所有发布</a></li>
						<li><a href="<?php echo(site_url()); ?>fabu/xuqiu_add/" title="我要发布">我要发布</a></li>
						
                    </ul>
                </div>
                
            </div>