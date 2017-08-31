<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php  echo($news_row ? $news_row['newstitle'] : '');?> <?php  echo($news_row ? $news_row['news_class_title'] : '');?> -【<?php echo(LUMN_WEB_NAME);?>】</title>
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/global.css" rel="stylesheet" type="text/css" />
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/layout.css" rel="stylesheet" type="text/css" />
<script src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>js/jquery-1.7.js" type="text/javascript"></script>
</head>

<body>
	<?php include("top.php");?>
	
	
	<div class="main">
      <?php include("header.php");?>		
      <div class="content">
			<div class="bread">
				当前位置: 
				<a href="<?php echo(site_url());?>">首页</a>  &gt; 
				<a href="<?php  echo(site_url($news_row ? $news_row['news_class_link'] : ''));?>"><?php  echo($news_row ? $news_row['news_class_title'] : '');?></a>
			</div>
			
			
			
			<div class="searchbody">
				<table width="100%" cellpadding="0" cellspacing="0">
					<tr>
					
<td align="left" valign="top">
							<?php include('article_left.php');?>
						</td>
					
					
						<td align="left" valign="top">
							<div class="detailbody">
								<div class="detailbodytitle">
									<h1><?php  echo($news_row ? $news_row['news_class_title'] : '');?>  </h1>
								</div>
								
								<div class="detailcontent">
									<h1><?php  echo($news_row ? $news_row['newstitle'] : '');?></h1>
									<?php  echo($news_row ? $news_row['newscontent'] : '');?>
								</div>
								
								<div class="detailmore">
									<p class="detailnext">
									上一篇：<?php echo($next_page);?>									
									下一篇：<?php echo($pre_page);?>					
									</p>
								</div>
							</div>
						</td>
						
					</tr>
				</table>
			</div>
			
			
		<?php include("foot.php");?>
	  </div>
</div>
</body>
</html>
