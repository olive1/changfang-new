<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo($goods_row->goods_name);?>-【<?php echo(LUMN_WEB_NAME);?>】</title>
<meta name="description" content="<?php echo($goods_row->description);?>">
<?php $rand	=	rand();?>
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/global.css?id=<?php echo($rand);?>" rel="stylesheet" type="text/css" />
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/layout.css?id=<?php echo($rand);?>" rel="stylesheet" type="text/css" />
<link href="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>css/detail.css?id=<?php echo($rand);?>" rel="stylesheet" type="text/css" />
<script src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>js/jquery-1.7.js" type="text/javascript"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.3"></script>
<script src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>js/cat.js?site_url=<?php echo(site_url());?>&id=<?php echo($rand);?>" type="text/javascript"></script>
</head>

<body>
	<?php include("top.php");?>
	
	
	<div class="main">
      <?php include("header.php");?>		
      <div class="content">
			<div class="bread">当前位置:<a href="<?php echo(site_url());?>">首页</a>  &gt; <a href="<?php echo(site_url('meeting'));?>">会议场地</a> &gt; <?php echo($goods_row->goods_name);?></div>
			
			
			
			<div class="searchbody">
				<table width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<td align="left" valign="top">
						<div class="mettingdetail">
							<div class="detailtop">
								<div>酒店详情</div>
							</div>
							
							<div class="mdetailcontent">
								<div class="des">
									<div class="fl">
										<h1><?php echo($goods_row->goods_name);?></h1>
										<?php if($goods_row->score):?>
											<p>星级：
											<?php 
											for($i = 0; $i<$goods_row->score; $i++)
											{
												echo('<img src="'.base_url().LUMN_THEMPLES_FLODER.'images/score1.jpg" />');
											}
											for($i = 0; $i<(5-$goods_row->score); $i++)
											{
												echo('<img src="'.base_url().LUMN_THEMPLES_FLODER.'images/score2.jpg" />');
											}
											?>
											</p>
										<?php endif;?>
									</div>
									<div class="fr">
										<img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/yuyue.jpg" onclick="opens('fudong');" style="cursor:pointer; " />
									</div>
									<div class="clear"></div>
								</div>
								
								<?php echo($goods_row->contents);?>
							</div>
							
							<!--图片-->
							<div class="detailtop">
								<div>酒店图片</div>
							</div>
							<div class="mdetailcontent">
								<ul class="mdetail_photo">
									 <?php
									if($images_result):
										foreach($images_result as $images_row):
											?>
											<li><img src="<?php echo(base_url().LUMN_IMAGE_PATH_TEM.$images_row->img_path);	?>"  /></li>
									<?php
																
										endforeach;
									endif;
									?>
								</ul>
							</div>
							<div class="clear"></div>
							<!--图片  000-->
							
							
							
							<!--地理位置-->
							<div class="detailtop">
								<div>地理位置</div>
							</div>
							<div class="mdetailcontent">
								<div id="container"></div>
								<br />
								<p><strong>地铁：</strong><?php echo($goods_row->subway);?></p>
								<p><strong>公交：</strong><?php echo($goods_row->bus);?></p>
							</div>
							<!--地理位置  000-->
							
							
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
								<?php include("search.php");?>
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




	<!--fudong-->
    <div id="fudong" class="fudong">
        <div class="fudongbg"></div>
        <div class="fudongbody">
			
			<div class="fudongclose">
			<img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/detailclose.jpg" onclick="opens('isclose');">
			</div>
			
			
				<div id="isclose" class="isclose">
					<div class="isclosea">
					<table width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td align="left" valign="middle" style="padding-left:5px; ">
								只差最后一步了，真的要关闭吗？
							</td>
							<td align="right" valign="middle">
								<img src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/isclose.jpg" onclick="closes('isclose');">
							</td>
						</tr>
					</table>
					</div>
					
					<div class="isclosecontent">
								<div>这样您将无法获得：</div>
									<div>
										<ul>
										<li>您需要的酒店最新折扣优惠信息</li>
										<li>喜宴通赠送的超值大礼</li>
										<li>婚宴顾问免费一对一贴心服务</li>
										</ul>
									</div>
							
								<div class="isclosec">确定要关闭吗？</div>
								
								<div class="isclosed">
									<table>
										<tr>
											<td><span onclick="closes('fudong');">是</span></td>
											<td><span onclick="closes('isclose');">否</span></td>
										</tr>
									</table>
								</div>
					</div>
				</div>
			
         	
			<div class="fudongcontent">
				
			
			
				<div class="fudonga">预约查看：<span><?php echo($goods_row->goods_name);?></span></div>
				<div>请留下联系信息，我们将免费为您安排酒店经理专门接待您。<br>
				成功预订后，您将立即获得喜宴通赠送的超值大礼包及酒店最新优惠。</div>
				
				<div class="fudongc">
				<table>
				<form method="post" action="<?php echo(site_url().'usercenter/order_add/'.$goods_row->goods_id);?>"  class='formList'>
					<tr>
						<td align="right" valign="middle">
							<span>输入手机号：</span>
						</td>
						<td align="left" valign="middle">
							
												<input type="hidden" name="goods_name" value="<?php echo($goods_row->goods_name);?>">
												<input type="hidden" name="l_price" value="<?php echo($goods_row->l_price);?>">
												<input type="hidden" name="h_price" value="<?php echo($goods_row->h_price);?>">
									 <input type="text" name="order_phone" class="order_phonexx" value="<?php 
												if($this->lmauth->is_login()){
													echo($this->lmauth->_user['user_phone']);
													}?>" maxlength="11">
										
						
                         
						</td>	
		<tr>
			<td></td>
			<td>
					 <div class="fudongd">
					 <input type="image" src="<?php echo(base_url().LUMN_THEMPLES_FLODER);?>images/fudongsubmit.jpg" />
					</div>
				<div>您的重要信息不会被泄漏 详见隐私条款</div>
	</td>
</tr>
					</tr>
					
					</form>
				</table>
				
				 </div>

			</div>
        </div>
    </div>
	

<script type="text/javascript">
	function opens(id)
	{
		document.getElementById(id).style.display='block';		
		if(id == 'fudong')
		{
			document.getElementById('isclose').style.display='none';		
		}
	}
	
	function closes(id)
	{
		if(id == 'fudong')
		{
			document.getElementById('isclose').style.display='none';		
		}
		document.getElementById(id).style.display='none';		
	}
</script>
	<!--fudong over-->

                              <script type="text/javascript">
                            		var address = "<?php echo($goods_row->address);?>";
                            		var city = "<?php echo($goods_row->cid_a);?>";
                            		
                            		var myGeo = new BMap.Geocoder();                            		
                            		myGeo.getPoint(address, 
                            			function(Point)
                            			{
                            				if (Point) 
                            				{
                            					var map = new BMap.Map("container"); 
                            					map.centerAndZoom(Point, 15); 
                            					
                            					var marker = new BMap.Marker(Point); 										
                            					var label = new BMap.Label("<?php echo($goods_row->goods_name);?>!",{"offset":new BMap.Size(10,-20)});
                            					
                            					marker.setLabel(label);
                            					map.addOverlay(marker);					
                            					
                            				}
                            			}
                            		, city);
                                </script>
</body>
</html>
