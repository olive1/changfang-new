<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>【<?php echo(LUMN_WEB_NAME);?>】</title>
<?php $rand	=	rand();?>
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/global.css?id=<?php echo($rand);?>" rel="stylesheet" type="text/css" />
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/layout.css?id=<?php echo($rand);?>" rel="stylesheet" type="text/css" />
<script src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>js/jquery-1.7.js" type="text/javascript"></script>
<script src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>js/index.js?id=<?php echo($rand);?>" type="text/javascript"></script>
<script src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>js/cat.js?site_url=<?php echo(site_url());?>&id=<?php echo($rand);?>" type="text/javascript"></script>
</head>

<body>
	<?php include("top.php");?>
	
	
	<div class="main">
		<?php include("header.php");?>
		
		<div class="content">
			<div class="contenttop">
				<table width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<td width="48%" align="left" valign="top">
						<!--会议搜索 -->
						<?php include("search.php");?>
						<!--会议搜索 -->
						</td>
						<td width="14%" align="left" valign="top">
							<div class="col-main" id="dynamicPanel01">
												<div class="focus" id="J_Foucs">
													<ul>
													<?php
													if($index_result_1):
															$index_result_1 = explode('|', $index_result_1);
															
															foreach($index_result_1 as $row):
																
																$row = explode(',', $row);
															?>
																<li><div class="flashpx">
																 <a href="<?php echo(isset($row[0]) ? $row[0] : ''); ?>" target="_blank"><IMG src="<?php echo(isset($row[1]) ? $row[1] : ''); ?>" /></a>         
																</div></li>
															 <?php	
																
															endforeach;
															?>
															</ul>
															
															<div class="btn">
													<?php
															$i = 0;
															foreach($index_result_1 as $row):
																$i++;
																
																echo('<span class="');
																if($i==1) echo(' on ');
																echo('">'.$i.'</span> ');
															endforeach;
													
													endif;
													?>
													</div>
													
												</div>
										</div>
							
						</td>
						<td width="38%" align="left" valign="top">
							<div class="xuqiu">
								<h2><span>会议需求</span> <a href="<?php echo(site_url('xuqiu/xuqiu_list/'));?>">更多&gt;&gt;</a></h2>
								<div class="clear"></div>
								<div class="xuqiucontent">
									<ul>
										<?php
										if($index_result_9):
										$i = 0;														
											foreach($index_result_9 as $news_row):
											$i++;
										?>
										<li><span><?php echo($i);?></span><a href="<?php echo(site_url('xuqiu/xuqiu_detail/'.$news_row['fabuid']));?>"><?php echo($news_row['title']);?></a></li>
										<?php
											endforeach;
										endif;
										?>
									</ul>
								</div>
								
							</div>
							
						</td>
					</tr>
				</table>
			</div>
			
			
			<div class="contentbody">
						
						<!--热门-->
						<div class="jinxuan">
							<div class="title">
								<h2>热门酒店预订</h2>
							</div>
							<div class="list">
								<ul>
								
								<?php
										
										$i	=	0;
										foreach($index_result_2 as $goods_row):
								?>
														<li>
															<div class="img_list"><a href="<?php echo(site_url().'lmgoods/detail/'.$goods_row['goods_id']); ?>" title="<?php echo($goods_row['goods_name']);?>"><img src="<?php echo(base_url().LUMN_IMAGE_PATH_TEM.$goods_row['img_path']);?>" /></a></div>
															<div class="pd">
																<h3><a href="<?php echo(site_url().'lmgoods/detail/'.$goods_row['goods_id']); ?>" target="_blank"> <?php echo(mb_substr($goods_row['goods_name'],0, 15));?></a></h3>
																<span>地址：<?php echo($goods_row['address']);?></span>
																<p><span>星级：<?php echo($goods_row['score']);?></span>  </p>
															</div>
														</li>
									
								<?php
											$i++;
											if($i > 7) break;
										endforeach;
								?>
				
				
								</ul>
								<div class="clear"></div>
							</div>
						</div>
						<!--热门  00-->
						
<!--ad 1-->
<div class="ad"><?php
$index_result_6 = explode(',', $index_result_6);
echo('<a href="'.$index_result_6[1].'"  target="_blank"><img src="'.$index_result_6[0].'" class="ad" /></a>');
echo($index_result_6[1]);
?></div>
<!--ad 1 over-->
						
						<table width="100%" cellpadding="0" cellspacing="0">
							<tr>
								<td align="left" valign="top">
											<!--特价-->
											<div class="jinxuan">
												<div class="title">
													<h2>特价酒店预订</h2>
												</div>
												<div class="list">
													<ul>
													
														<?php
																$i	=	0;
																foreach($index_result_3 as $goods_row):
														?>
															<li>
																<div class="img_list"><a href="<?php echo(site_url().'lmgoods/detail/'.$goods_row['goods_id']); ?>" title="<?php echo($goods_row['goods_name']);?>"><img src="<?php echo(base_url().LUMN_IMAGE_PATH_TEM.$goods_row['img_path']);?>" /></a></div>
																<div class="pd">
																	<h3><a href="<?php echo(site_url().'lmgoods/detail/'.$goods_row['goods_id']); ?>" target="_blank"> <?php echo(mb_substr($goods_row['goods_name'],0, 15));?></a></h3>
																	<span>地址：<?php echo($goods_row['address']);?></span>
																	<p><span>星级：<?php echo($goods_row['score']);?></span>  </p>
																</div>
															</li>
														
														<?php
																$i++;
																if($i > 2) break;
															endforeach;
														?>
									
													</ul>
													<div class="clear"></div>
												</div>
											</div>						
											<!--特价  00-->
													
								
								</td>
								
								<td align="left" valign="top" width="25%">
									<div class="xuqiu">
								<h2><span>优惠活动</span> <a href="<?php echo(site_url('hudong'));?>">更多&gt;&gt;</a></h2>
								<div class="clear"></div>
								<div class="xuqiucontent">
									<ul>
										<?php
										$i = 0;														
											foreach($index_result_10 as $news_row):
											$i++;
										?>
										<li><span><?php echo($i);?></span><a href="<?php echo(site_url('hudong/detail/'.$news_row['news_id']));?>"><?php echo($news_row['newstitle']);?></a></li>
										<?php
											endforeach;
										?>
									</ul>
								</div>
								
							</div>
								</td>
							</tr>
						</table>
						
						
						
<!--ad 2-->
<div class="ad"><?php
$index_result_7 = explode(',', $index_result_7);
echo('<a href="'.$index_result_7[1].'"  target="_blank"><img src="'.$index_result_7[0].'" class="ad" /></a>');
?></div>
<!--ad 2 over-->
						
						
						<table width="100%" cellpadding="0" cellspacing="0">
							<tr>
								<td align="left" valign="top">
											<!--特价-->
											<div class="jinxuan">
												<div class="title">
													<h2>精选酒店</h2>
												</div>
												<div class="list">
													<ul>
													
														<?php
																$i	=	0;
																foreach($index_result_4 as $goods_row):
														?>
															<li>
																<div class="img_list"><a href="<?php echo(site_url().'lmgoods/detail/'.$goods_row['goods_id']); ?>" title="<?php echo($goods_row['goods_name']);?>"><img src="<?php echo(base_url().LUMN_IMAGE_PATH_TEM.$goods_row['img_path']);?>" /></a></div>
																<div class="pd">
																	<h3><a href="<?php echo(site_url().'lmgoods/detail/'.$goods_row['goods_id']); ?>" target="_blank"> <?php echo(mb_substr($goods_row['goods_name'],0, 15));?></a></h3>
																	<span>地址：<?php echo($goods_row['address']);?></span>
																	<p><span>星级：<?php echo($goods_row['score']);?></span>  </p>
																</div>
															</li>
														
														<?php
																$i++;
																if($i > 2) break;
															endforeach;
														?>
									
													</ul>
													<div class="clear"></div>
												</div>
											</div>						
											<!--特价  00-->
													
								
								</td>
								
								<td align="left" valign="top" width="25%">
									<div class="xuqiu">
								<h2><span>会议资讯</span> <a href="<?php echo(site_url('news'));?>">更多&gt;&gt;</a></h2>
								<div class="clear"></div>
								<div class="xuqiucontent">
									<ul>
										<?php
										$i = 0;														
											foreach($index_result_11 as $news_row):
											$i++;
										?>
										<li><span><?php echo($i);?></span><a href="<?php echo(site_url('news/detail/'.$news_row['news_id']));?>"><?php echo($news_row['newstitle']);?></a></li>
										<?php
											endforeach;
										?>
									</ul>
								</div>
								
							</div>
								</td>
							</tr>
						</table>
						
						
						
<!--ad 3-->
<div class="ad"><?php
$index_result_8 = explode(',', $index_result_8);
echo('<a href="'.$index_result_8[1].'"  target="_blank"><img src="'.$index_result_8[0].'" class="ad" /></a>');
?></div>
<!--ad 3 over-->
						
						
						<table width="100%" cellpadding="0" cellspacing="0">
							<tr>
								<td align="left" valign="top">
											<!--特价-->
											<div class="jinxuan">
												<div class="title">
													<h2>每周酒店</h2>
												</div>
												<div class="list">
													<ul>
													
														<?php
																$i	=	0;
																foreach($index_result_5 as $goods_row):
														?>
															<li>
																<div class="img_list"><a href="<?php echo(site_url().'lmgoods/detail/'.$goods_row['goods_id']); ?>" title="<?php echo($goods_row['goods_name']);?>"><img src="<?php echo(base_url().LUMN_IMAGE_PATH_TEM.$goods_row['img_path']);?>" /></a></div>
																<div class="pd">
																	<h3><a href="<?php echo(site_url().'lmgoods/detail/'.$goods_row['goods_id']); ?>" target="_blank"> <?php echo(mb_substr($goods_row['goods_name'],0, 15));?></a></h3>
																	<span>地址：<?php echo($goods_row['address']);?></span>
																	<p><span>星级：<?php echo($goods_row['score']);?></span>  </p>
																</div>
															</li>
														
														<?php
																$i++;
																if($i > 2) break;
															endforeach;
														?>
									
													</ul>
													<div class="clear"></div>
												</div>
											</div>						
											<!--特价  00-->
													
								
								</td>
								
								<td align="left" valign="top" width="25%">
									<div class="xuqiu">
								<h2><span>会议知识</span> <a href="<?php echo(site_url('article/n_list/32'));?>">更多&gt;&gt;</a></h2>
								<div class="clear"></div>
								<div class="xuqiucontent">
									<ul>
										<?php
										$i = 0;														
											foreach($index_result_12 as $news_row):
											$i++;
										?>
										<li><span><?php echo($i);?></span><a href="<?php echo(site_url('article/detail/'.$news_row['news_id']));?>"><?php echo($news_row['newstitle']);?></a></li>
										<?php
											endforeach;
										?>
									</ul>
								</div>
								
							</div>
								</td>
							</tr>
						</table>
						
						
						

			</div>
			
			
			<!--合作-->
			<div class="hezuo">
				<h2>合作伙伴</h2>
				<div class="hezuocontent">
					<img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/hezuo.jpg">
				</div>
			</div>
			<!--合作00-->
			
			<div class="links">
				<strong>友情链接：</strong>
													<?php
													
													if($index_result_14):
															$index_result_14 = explode('|', $index_result_14);
															foreach($index_result_14 as $row):
																$row = explode(',', $row);
															?>
																 <a href="<?php echo(isset($row[0]) ? $row[0] : ''); ?>" target="_blank"><?php echo(isset($row[1]) ? $row[1] : ''); ?></a> | 
															 <?php	
																
															endforeach;
													endif;
															?>

				
			</div>
			
<?php include("foot.php");?>
		</div>
		
		
	</div>
</body>
</html>
