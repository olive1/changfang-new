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
					当前位置: <a href="<?php echo(site_url()); ?>">首页</a> &gt; 我的预约
				</div>
			
			
            <?php include"user_left.php";?>
            <div class="user_right">
            	
                <div class="user_r_con">
					<h2>我的预约</h2>
					<div class="order_manage">
								<table width="90%">
										<tr><th  class="order_td" width="123">预约时间</th><th  class="order_td" width="295">酒店名称</th><th  class="order_td" width="108">价格</th><th  class="order_td" width="114">预约状态</th></tr>
                                        <?php
										if(isset($order_result) && $order_result):
											foreach($order_result as $row):
										?>
                                        <tr>
											<td  class="order_td"><span class="date_c"><?php echo(date('Y-m-d', $row->create_time));?></span></td>
											<td  class="order_td">
											<a href="<?php echo(site_url().'lmgoods/detail/'.$row->goods_id);?>" target="_blank">
											<?php echo($row->goods_name);?>
                                            </a>
                                            </td>
											
											<td  class="order_td"><?php echo($row->l_price.' ～ '.$row->h_price);?></td>
											<td  class="order_td"><em class="status_c ed_c">
                                            <?php 
											switch($row->status){
												case 0:
													$status = '处理中';
													break;
												case 1:
													$status = '已处理';
													break;
												case 2:
													$status = '无效';
													break;
												}
												
											echo('预约'.$status);
											?>
                                            </em></td>											
										</tr>		
                                        <?php
											endforeach;
										endif;
										?>
                                        
										<tr>
										<td class="order_td no_bottom">&nbsp;</td>
										<td class="order_td no_bottom">&nbsp;</td>
										<td class="order_td no_bottom">&nbsp;</td>
										<td class="order_td no_bottom">&nbsp;</td>
										</tr>
										
								</table>
						</div>
                </div>
            	
            </div>
            
            <div class="clear"></div>
	</div>
	<!-- main over-->
	
	
	<?php include"foot.php";?>
</body>
</html>
