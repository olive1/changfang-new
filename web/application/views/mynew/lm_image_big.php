<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<title>【喜事通】婚宴预订专家</title>
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/global.css" rel="stylesheet" type="text/css" />
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/layout.css" rel="stylesheet" type="text/css" />
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/map.css" rel="stylesheet" type="text/css" />
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/detail.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>js/scrollPic.js"></script>
<script type="text/javascript" src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>js/custom-test.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.3"></script>
<style>
body{background-color:#000000; color:#FFF;}
a{color:#FFF;}
</style>
<body class="hotel_show_inner">

<div class="div960 main">
				<div class="bread">
					<a href="<?php echo(site_url()); ?>" title="婚庆婚宴酒店预定" target="_blank">首页</a> &gt; 
                    <a href="<?php echo(site_url()); ?>lmgoods/g_list/?cid_a=<?php echo($goods_row->cid_a);?>" target="_blank"><?php echo($cat_row ? $cat_row->cat_name : '类别');?></a>&gt;
                    <a href="<?php echo(site_url()); ?>lmgoods/detail/<?php echo($goods_row->goods_id);?>" target="_blank"><?php echo($goods_row->goods_name);?></a>
				</div>
				
				
				
					<div class="detail">
						<div id="bigbig" style="text-align:center;"><img id='bigImg-big' src="<?php echo(base_url().LUMN_IMAGE_PATH.$goods_row->img_path);?>"/></div>						
						<div class="clear"></div>
						
						
		<div class="photo">
			<div id="LeftArr-big"><img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/snoll_left.jpg" /></div>
				
				<div id="divAcrollPic1Big">
                     <?php
                    if($images_result):
						foreach($images_result as $images_row):
							?>
                            
						
							<img src="<?php echo(base_url().LUMN_IMAGE_PATH_TEM.$images_row->img_path);	?>" onClick="display_bigImg_big('<?php echo($images_row->img_path);	?>','bigImg-big','<?php echo(base_url().LUMN_IMAGE_PATH);?>')"  />
						
						
                    <?php
												
						endforeach;
					endif;
					?>
				</div>
			<div id="RightArr-big"><img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/snoll_right.jpg" /></div>
			<div class="clear"></div>
		</div>
	
					</div>
</div>

	<!-- main over-->
<script type="text/javascript" src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>js/bigbigs.js"></script>
<script type="text/javascript" src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>js/lm-big.js"></script>
</body>
</html>