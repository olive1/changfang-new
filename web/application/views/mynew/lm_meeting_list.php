<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>【<?php echo(LUMN_WEB_NAME);?>】</title>
<?php $rand	=	rand();?>
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/global.css?id=<?php echo($rand);?>" rel="stylesheet" type="text/css" />
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/layout.css?id=<?php echo($rand);?>" rel="stylesheet" type="text/css" />
<script src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>js/jquery-1.7.js" type="text/javascript"></script>
</head>

<body>
	<?php include("top.php");?>
	
	
	<div class="main">
      <?php include("header.php");?>		
      <div class="content">
			<div class="bread">当前位置: <a href="<?php echo(site_url());?>">首页</a>  &gt; <a href="<?php echo(site_url('meeting'));?>">会议场地</a></div>
			<div class="searchselect">
			<div class="searchs_t">
					
					<table width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td align="right" valign="middle" width="100">
								区域选择:
							</td>
							<td align="left" valign="middle">
								省（市）
								<select name="cid_a" onChange="window.location.href=this.value;">
									<?php
									$all['url'] = preg_replace('/page=(\d+)/i', 'page=0', $all['url']);
									
											$urla	=	 preg_replace('/cid_a=(\d+)&/i', 'cid_a=0&', $all['url']);
											$urla	=	 preg_replace('/cid_b=(\d+)&/i', 'cid_b=0&', $urla);//市区 及 商圈  清零
											$urla	=	 preg_replace('/area_id=(\d+)&/i', 'area_id=0&', $urla);
											
											echo("<option value=\"".$urla."\" ");
											if($all['all']['cid_a'] == 0) echo(" selected ");   //选中效果
											echo(" >");
											echo("全部");
											echo("</option>");
									if($tiaojian['cid_a_list']):
										foreach($tiaojian['cid_a_list'] as $rows):							
											$urla	=	 preg_replace('/cid_a=(\d+)&/i', 'cid_a='.$rows->cat_id.'&', $all['url']);
											$urla	=	 preg_replace('/cid_b=(\d+)&/i', 'cid_b=0&', $urla);//市区 及 商圈  清零
											$urla	=	 preg_replace('/area_id=(\d+)&/i', 'area_id=0&', $urla);
											
											echo("<option value='".$urla."' ");
											if($all['all']['cid_a'] == $rows->cat_id) echo(" selected ");   //选中效果
											echo(" >");
											echo($rows->cat_name);
											echo("</option>");						
									
										endforeach;
									endif;
									?>
								</select>
								
								市（区）
								<select name="cid_b" onChange="window.location.href=this.value;">
									<?php
											$urla	=	 preg_replace('/cid_b=(\d+)&/i', 'cid_b=0&', $all['url']);				
											$urla	=	 preg_replace('/area_id=(\d+)&/i', 'area_id=0&', $urla);//商圈  清零			
											
											echo("<option value=\"".$urla."\" ");
											if($all['all']['cid_b'] == 0) echo(" selected ");   //选中效果
											echo(" >");
											echo("全部");
											echo("</option>");
									if($tiaojian['cid_b_list']):
										foreach($tiaojian['cid_b_list'] as $rows):							
											$urla	=	 preg_replace('/cid_b=(\d+)&/i', 'cid_b='.$rows->cat_id.'&', $all['url']);
											$urla	=	 preg_replace('/area_id=(\d+)&/i', 'area_id=0&', $urla);//商圈  清零
											
											echo("<option value='".$urla."' ");
											if($all['all']['cid_b'] == $rows->cat_id) echo(" selected ");   //选中效果
											echo(" >");
											echo($rows->cat_name);
											echo("</option>");						
									
										endforeach;
									endif;
									?>
								</select>
								
								商圈
								<select name="area_id" onChange="window.location.href=this.value;">
									<?php
											$urla	=	 preg_replace('/area_id=(\d+)&/i', 'area_id=0&', $all['url']);							
											echo("<option value=\"".$urla."\" ");
											if($all['all']['area_id'] == 0) echo(" selected ");   //选中效果
											echo(" >");
											echo("全部");
											echo("</option>");
									if($tiaojian['area_id_list']):
										foreach($tiaojian['area_id_list'] as $rows):							
											$urla	=	 preg_replace('/area_id=(\d+)&/i', 'area_id='.$rows->cat_id.'&', $all['url']);
											echo("<option value='".$urla."' ");
											if($all['all']['area_id'] == $rows->cat_id) echo(" selected ");   //选中效果
											echo(" >");
											echo($rows->cat_name);
											echo("</option>");						
									
										endforeach;
									endif;
									?>
								</select>
							</td>
							<td align="right" valign="middle">
							  <form action="<?php echo($all['url']);?>" method="get" name="searchForm">
								<input type="text" name="goods_name" class="search_text" value="<?php  echo($all['all']['goods_name'] ? $all['all']['goods_name'] : '酒店名称！');?>"  onFocus="if (value == '酒店名称！'){value=''}" onBlur="if (value == ''){value='酒店名称！'}"> 
								
								<input type="submit" value=" 搜索 " class="button" />
							  </form>
								
							</td>
						</tr>
					</table>
			  </div>

				<div class="searchs_c">
					<table width="100%">
						<tr>
							<td width="9%" align="right" valign="middle" class="search_cl">
								价格范围：
							</td>
							<td width="91%" align="left" valign="middle">
								<?php
								
								if($tiaojian['price_a_list']):
										$urla	=	 preg_replace('/price_a=(\d+)&/i', 'price_a=0&', $all['url']);										
										echo("<a href=\"".$urla."\" ");
										if($all['all']['price_a'] == 0) echo("class=\"curr\"");   //选中效果
										echo(" >");
										echo("全部");
										echo("</a>");
									foreach($tiaojian['price_a_list'] as $rows):
										
										$urla	=	 preg_replace('/price_a=(\d+)&/i', 'price_a='.$rows->cat_id.'&', $all['url']);
										echo("<a href=\"".$urla."\" ");
										if($all['all']['price_a'] == $rows->cat_id) echo("class=\"curr\"");   //选中效果
										echo(" >");
										echo($rows->cat_name);
										echo("</a>");						
								
									endforeach;
								endif;
								?>
								
								<br />
								
								<?php
								
								if($tiaojian['price_b_list']):
										$urla	=	 preg_replace('/price_b=(\d+)&/i', 'price_b=0&', $all['url']);
										echo("<a href=\"".$urla."\" ");
										if($all['all']['price_b'] == 0) echo("class=\"curr\"");   //选中效果
										echo(" >");
										echo("全部");
										echo("</a>");
									foreach($tiaojian['price_b_list'] as $rows):
										
										$urla	=	 preg_replace('/price_b=(\d+)&/i', 'price_b='.$rows->cat_id.'&', $all['url']);
										echo("<a href=\"".$urla."\" ");
										if($all['all']['price_b'] == $rows->cat_id) echo("class=\"curr\"");   //选中效果
										echo(" >");
										echo($rows->cat_name);
										echo("</a>");						
								
									endforeach;
								endif;
								?>
							</td>
						</tr>
						
						<tr>
							<td width="9%" align="right" valign="middle" class="search_cl">
								会议布局：
							</td>
							<td width="91%" align="left" valign="middle">
								<?php
								
								if($tiaojian['put_id_list']):
										$urla	=	 preg_replace('/put_id=(\d+)&/i', 'put_id=0&', $all['url']);
										echo("<a href=\"".$urla."\" ");
										if($all['all']['put_id'] == 0) echo("class=\"curr\"");   //选中效果
										echo(" >");
										echo("全部");
										echo("</a>");
									foreach($tiaojian['put_id_list'] as $rows):
										
										$urla	=	 preg_replace('/put_id=(\d+)&/i', 'put_id='.$rows->cat_id.'&', $all['url']);
										echo("<a href=\"".$urla."\" ");
										if($all['all']['put_id'] == $rows->cat_id) echo("class=\"curr\"");   //选中效果
										echo(" >");
										echo($rows->cat_name);
										echo("</a>");						
								
									endforeach;
								endif;
								?>
							</td>
						</tr>
						
						<tr>
							<td width="9%" align="right" valign="middle" class="search_cl">
								参加人数：
							</td>
							<td width="91%" align="left" valign="middle">
								<?php
								
								if($tiaojian['menu_table_list']):
										$urla	=	 preg_replace('/menu_table=(\d+)&/i', 'menu_table=0&', $all['url']);
										echo("<a href=\"".$urla."\" ");
										if($all['all']['menu_table'] == 0) echo("class=\"curr\"");   //选中效果
										echo(" >");
										echo("全部");
										echo("</a>");
									foreach($tiaojian['menu_table_list'] as $rows):
										
										$urla	=	 preg_replace('/menu_table=(\d+)&/i', 'menu_table='.$rows->cat_id.'&', $all['url']);
										echo("<a href=\"".$urla."\" ");
										if($all['all']['menu_table'] == $rows->cat_id) echo("class=\"curr\"");   //选中效果
										echo(" >");
										echo($rows->cat_name);
										echo("</a>");						
								
									endforeach;
								endif;
								?>
							</td>
						</tr>
						
						<tr>
							<td width="9%" align="right" valign="middle" class="search_cl">
								场地面积：
							</td>
							<td width="91%" align="left" valign="middle">
								<?php
								
								if($tiaojian['menu_l_price_list']):
										$urla	=	 preg_replace('/menu_l_price=(\d+)&/i', 'menu_l_price=0&', $all['url']);
										echo("<a href=\"".$urla."\" ");
										if($all['all']['menu_l_price'] == 0) echo("class=\"curr\"");   //选中效果
										echo(" >");
										echo("全部");
										echo("</a>");
									foreach($tiaojian['menu_l_price_list'] as $rows):
										
										$urla	=	 preg_replace('/menu_l_price=(\d+)&/i', 'menu_l_price='.$rows->cat_id.'&', $all['url']);
										echo("<a href=\"".$urla."\" ");
										if($all['all']['menu_l_price'] == $rows->cat_id) echo("class=\"curr\"");   //选中效果
										echo(" >");
										echo($rows->cat_name);
										echo("</a>");						
								
									endforeach;
								endif;
								?>
							</td>
						</tr>
						<tr>
							<td width="9%" align="right" valign="middle" class="search_cl">
								星级酒店：
							</td>
							<td width="91%" align="left" valign="middle">
								<?php
								
								if($tiaojian['score_list']):
										$urla	=	 preg_replace('/score=(\d+)&/i', 'score=0&', $all['url']);
										echo("<a href=\"".$urla."\" ");
										if($all['all']['score'] == 0) echo("class=\"curr\"");   //选中效果
										echo(" >");
										echo("全部");
										echo("</a>");
									foreach($tiaojian['score_list'] as $rows):
										
										$urla	=	 preg_replace('/score=(\d+)&/i', 'score='.$rows->cat_id.'&', $all['url']);
										echo("<a href=\"".$urla."\" ");
										if($all['all']['score'] == $rows->cat_id) echo("class=\"curr\"");   //选中效果
										echo(" >");
										echo($rows->cat_name);
										echo("</a>");						
								
									endforeach;
								endif;
								?>
							</td>
						</tr>
						
						
					</table>
				</div>
			</div>
			
			
			<div class="searchbody">
				<table width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<td align="left" valign="top">
						<div class="searchlist">
						
						<div class="page_list_top">
							<div class="fl page_l">
								相关酒店<?php echo($num_rows);?>家
							</div>
							
							<div class="fr page_l_more">
								<!-- Baidu Button BEGIN -->
								<style>
								.alignCenter{
									width:180px; /**这里的数值，您可以根据您按钮的实际宽度进行设置**/
									text-align:right;
									height:20px;
								}
								</style>
								<div class="alignCenter">
								<!-- xBaidu Button BEGIN -->
									<div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
										<a class="bds_qzone"></a>
										<a class="bds_kaixin001"></a>
										<a class="bds_tsina"></a>
										<a class="bds_tqq"></a>
										<a class="bds_renren"></a>
										<span class="bds_more">更多</span>
									</div>
									<script type="text/javascript" id="bdshare_js" data="type=tools" ></script>
									<script type="text/javascript" id="bdshell_js"></script>
									<script type="text/javascript">
										document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?t=" + new Date().getHours();
									</script>
								<!-- xBaidu Button END -->
								</div>
								<!-- Baidu Button END -->
							</div>
							<div class="clear"></div>
							</div>



							<div class="page_list_content">
							<ul>
    							
								<!--循环-->
								<?php 
								if(empty($goods)):
									echo("<li>暂无记录！</li>");
								else:
									foreach($goods as $row):
								?>
								<li>
									<div class="page_l_c_left"><a href="<?php echo(site_url('meeting/detailcontent/'.$row->goods_id)); ?>"><img src="<?php echo(base_url().LUMN_IMAGE_PATH_TEM.$row->img_path); ?>" /></a></div>
									<div class="page_l_c_right">
									<h3>
										<a title="<?php echo($row->goods_name);?>" href="<?php echo(site_url('meeting/detailcontent/'.$row->goods_id)); ?>" target="_blank"><?php echo($row->goods_name);?></a>   
										<span>
										<?php 
										for($i = 0; $i<$row->score; $i++)
										{
											echo('<img src="'.base_url().LUMN_THEMPLES_FLODER.'images/score1.jpg" />');
										}
										for($i = 0; $i<(5-$row->score); $i++)
										{
											echo('<img src="'.base_url().LUMN_THEMPLES_FLODER.'images/score2.jpg" />');
										}
										?>
										</span>
									</h3>
										<table width="100%" cellpadding="0" cellspacing="0">
											<tr>
												<td align="left" valign="top" width="50%">
																		
										<p class="tables">人数：<span><?php echo($row->tables);?></span> </p>
										<p class="address">地址：<?php echo($row->address);?></p>
										<p class="price">地铁：<?php echo($row->subway);?></p>	
										<p class="price">公交：<?php echo($row->bus);?></p>	
												</td>
												<td align="left" valign="top">
												<p class="huiyishi">												
												<?php 
												if($row->meeting):
													echo('<span>会议室：</span>');
													foreach($row->meeting as $menu_row)
													{
														echo('<a href="'.$menu_row->menu_id.'">'.$menu_row->menu_title.'</a>');
													}
												endif;

												?>
												</p>
												</td>
											</tr>
										</table>
										
										
										<p class="description"><?php echo($row->description);?></p>
										
									</div>
									<div class="clear"></div>
								</li>
							
							<?php
								endforeach;
							endif;
							?>
							
							
							
							
							
							
							
							
							</ul>
							
							<div class="page">
								<?php echo($pagination);?>
									<div class="clear"></div>
							</div>
						</div>
					
					</div>
						</td>
						<td align="left" valign="top">
							<div class="bodyleft">
								<!--快速咨询-->
									<div class="left_xuqiu">
										<h2><span>快速咨询</span></h2>
										<div class="clear"></div>
											
											<div class="left_xuqiucontent">
												<div class="yudingtel">
													
													预订热线<br>
													<span><?php echo(LUMN_TEL);?></span>
													
												</div>
												<p class="leftboda">快拨打<span> 021-55667788</span>，把您的需求告诉我们，我们将为您提供多个解决方案。</p>
												<p class="leftfangan">
												·更多的选择<br>
												·更专业的服务<br>
												·更优惠的价格<br>
												·还可提供全方位会议服务，让您轻松办会！
												</p>
											</div>
									</div>
								<!--快速咨询  oo-->
								
								<!--快速咨询-->
									<div class="left_xuqiu">
										<h2><span>简单预订流程</span></h2>
										<div class="clear"></div>
											
											<div class="left_xuqiucontent">
												<img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/liucheng.jpg">
											</div>
									</div>
								<!--快速咨询  oo-->
								
								
								
								
								
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
