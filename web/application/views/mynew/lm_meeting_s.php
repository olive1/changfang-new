<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo($m_row->menu_title);?> <?php echo($goods_row->goods_name);?>-【<?php echo(LUMN_WEB_NAME);?>】</title>
<meta name="description" content="<?php echo($m_row->menu_content);?>">
<?php $rand	=	rand();?>
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/global.css?id=<?php echo($rand);?>" rel="stylesheet" type="text/css" />
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/layout.css?id=<?php echo($rand);?>" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.3"></script>
<script src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>js/cat.js?id=<?php echo($rand);?>" type="text/javascript"></script>
</head>

<body>
	<?php include("top.php");?>
	
	
	<div class="main">
      <?php include("header.php");?>		
      <div class="content">
			<div class="bread">
			当前位置:
			<a href="<?php echo(site_url());?>">首页</a>  &gt; 
			<a href="<?php echo(site_url('meeting'));?>">会议场地</a> &gt; 
			<a href="<?php echo(site_url('meeting/detailcontent/'.$m_row->goods_id));?>"><?php echo($goods_row->goods_name);?></a>
			</div>
			
			
			
			<div class="searchbody">
				<table width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<td align="left" valign="top">
						<div class="mettingdetail">
							<div class="detailtop">
								<h2><?php echo($goods_row->goods_name);?> ： <?php echo($m_row->menu_title);?></h2>
							</div>
							
							<div class="mdetailcontent">
								<?php echo($m_row->menu_contents);?>
							</div>
							
							<!--会议室-->
							<div class="detailtop">
								<div>会议室</div>
							</div>
							<div class="mdetailcontent">
								<table width="100%">
									<tr>
										<td class="met_tab_title" width="40%">
											会议室名称
										</td>
										<td class="met_tab_title" width="20%">
											摆放形式
										</td>
										<td class="met_tab_title" width="20%">
											可容纳人数
										</td>
										<td class="met_tab_title" width="20%">
											操作
										</td>
									</tr>
									
									<?php
									if($menu_result):
										foreach($menu_result as $menu_row):
											?>
									<tr>
										<td class="met_tab_list">
											<?php echo($menu_row->menu_title);	?>
										</td>
										<td class="met_tab_list">
											<?php echo($menu_row->put_id);	?>
										</td>
										<td class="met_tab_list">
											<?php echo($menu_row->menu_table);	?>
										</td>
										<td class="met_tab_list">
											<span><a href="<?php echo(site_url('meeting/s/'.$menu_row->menu_id));	?>">查看详细</a></span>
										</td>
									</tr>
									<?php
																
										endforeach;
									endif;
									?>

									
									
								</table>
							</div>
							<!--会议室  000-->
							
							
						</div>
						</td>
						<td align="left" valign="top">
							<div class="bodyleft">
							
<div class="search">
								<div class="searchtitle">
								<img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/searchlogo.gif" />
									<h2>会议场地查询及预订</h2>
								</div>
								
								<div class="searchcontent">
									<div class="searchselect">
										<input type="radio">酒店查询   <input type="radio">会议室查询
									</div>
									<table width="100%">
										<tr>
											<td width="20%" align="right" valign="middle">
												地区：
											</td>
											<td width="80%" align="left" valign="middle">
												<select name="city">
													<option>
														省（市）
													</option>
												</select>
												<select name="city">
													<option>
														市（区）
													</option>
												</select>
											</td>
										</tr>
										
										<tr>
											<td width="20%" align="right" valign="middle">
												商圈：
											</td>
											<td width="80%" align="left" valign="middle">
												<select name="city">
													<option>
														商圈
													</option>
												</select>
											</td>
										</tr>
										
										
										<tr>
											<td width="20%" align="right" valign="middle">
												价格：
											</td>
											<td width="80%" align="left" valign="middle">
												<select name="city">
													<option>
														半天
													</option>
												</select>
												<select name="city">
													<option>
														-----
													</option>
												</select>
											</td>
										</tr>
										
										
										<tr>
											<td width="20%" align="right" valign="middle">
												人数：
											</td>
											<td width="80%" align="left" valign="middle">
												<select name="city">
													<option>-----</option>
													<option>30人以下</option>
												</select>
											</td>
										</tr>
										
										
										
										<tr>
											<td width="20%" align="right" valign="middle">
												星级：
											</td>
											<td width="80%" align="left" valign="middle">
												<select name="city">
													<option>-----</option>
													<option>30人以下</option>
												</select>
											</td>
										</tr>
										
										
										
										<tr>
											<td width="20%" align="right" valign="middle">
												摆放：
											</td>
											<td width="80%" align="left" valign="middle">
												<select name="city">
													<option>-----</option>
													<option>30人以下</option>
												</select>
											</td>
										</tr>
										
										<tr>
											<td width="20%" align="right" valign="middle">
												名称：
											</td>
											<td width="80%" align="left" valign="middle">
												<input type="text">
											</td>
										</tr>
										
										
										
									</table>

									
								<div class="searchsub">
									<input type="submit" src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/searchsubmit.jpg" value="  " class="searchsubmit">
								</div>

								</div>
							</div>
							<br>							
							
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
