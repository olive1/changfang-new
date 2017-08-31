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
				<div class="bread">
					当前位置: <a href="<?php echo(site_url()); ?>">首页</a> &gt; 我收藏的酒店
				</div>
			
			
            <?php include"user_left.php";?>
            <div class="user_right">
            	
                <div class="user_r_con">
					<h2>我收藏的酒店</h2>
					<div class="co_manage">
						<!--收藏start-->
						<p>
						<?php echo($this->lm_session->flashdata('success') ? $this->lm_session->flashdata('success') : '');?>
						</p>
						
									<?php
									if(isset($result) && $result):
										foreach($result as $row):
									?>
						<div class="co_list">
						<table width="90%">
							<tr>
								<td width="40%" class="co_img">
									<a href="<?php echo(site_url().'lmgoods/detail/'.$row->goods_id); ?>" target="_blank" title="<?php echo($row->goods_name);?>" class="thumb"><img src="<?php echo(base_url());?><?php echo(LUMN_IMAGE_PATH.$row->img_path);?>" alt="" title=""/></a>
								</td>
								<td align="left" valign="top" class="co_text">
									
												<h3><a href="<?php echo(site_url().'lmgoods/detail/'.$row->goods_id); ?>" target="_blank" title="<?php echo($row->goods_name);?>"><?php echo($row->goods_name);?></a></h3>
												<p><?php echo($row->description);?></p>
												<p>地址：<?php echo($row->address);?></p>
												<p>价格：<?php echo($row->l_price);?>～<?php echo($row->h_price);?>元/桌</p>
												<p>桌数：<?php echo($row->tables);?> 桌</p>
								<div class="co_more">
								<a href="<?php echo(site_url().'lmgoods/detail/'.$row->goods_id); ?>" target="_blank" title="查看详情">查看详情</a>
								<a href="<?php echo(site_url().'lmcenter/co_del/'.$row->goods_id); ?>" title="取消收藏">取消收藏</a>
								</div>
								</td>
							</tr>
						</table>
						</div>
                                <?php
									endforeach;
								endif
								?>
						
						<!--收藏 over-->
						</div>
                </div>
            	
            </div>
            
            <div class="clear"></div>
	</div>
	<!-- main over-->
	
	
	<?php include"foot.php";?>
</body>
</html>
