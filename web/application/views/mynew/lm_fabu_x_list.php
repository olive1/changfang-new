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
					当前位置: <a href="<?php echo(site_url()); ?>">首页</a> &gt; 所有发布
				</div>
			
			
            <?php include"user_left.php";?>
            <div class="user_right">
            	
                <div class="user_r_con">
					<h2>已发布信息</h2>
					<div class="order_manage">
								<table width="90%">
										<tr>
										<th  class="order_td" width="852">标题</th>
										<th  class="order_td" width="152">审核情况</th>
										<th  class="order_td" width="245">发布时间</th>
										<th  class="order_td" width="245">操作</th>
										</tr>
                                        
									<?php
									if(!$xuqiu_result):
										echo('<tr><td>暂无记录</td> </tr>');
									else:
										foreach($xuqiu_result as $row):
									?>
                                        <tr>
											<td  class="order_td"><span class="date_c">
											<a href="<?php echo(site_url().'fabu/xuqiu_update/'.$row->fabuid);?>">
											<?php echo(htmlspecialchars($row->title));?>
											</a>
											</span></td>
											<td  class="order_td" align="center">
											
											<?php 
											$var = '';
											switch($row->ver)
											{
												case 0:
													$var = '审核中';
													break;
												case 1:
													$var = '通过';
													break;
												case 2:
													$var = '未通过';
													break;
											}
											echo($var);?>
                                          
                                            </td>
											
											<td  class="order_td" align="center"><?php echo(date('Y-m-d', $row->fabutime));?></td>
											<td  class="order_td"><span class="date_c">
											<a href="<?php echo(site_url().'fabu/xuqiu_update/'.$row->fabuid);?>">编辑</a>
											&nbsp;
											
											<a href="<?php echo(site_url().'fabu/xuqiu_del/'.$row->fabuid);?>">-删除</a>
											</span></td>
										</tr>		
                                        <?php
											endforeach;
										endif;
										?>
                                        
										<tr>
										<td class="order_td no_bottom">&nbsp;</td>
										<td class="order_td no_bottom">&nbsp;</td>
										<td class="order_td no_bottom">&nbsp;</td>
										</tr>
										
								</table>
								
								
						<div class="page">
						
                            <?php echo($pagination);?>
								<div class="clear"></div>
						</div>
				  </div>
                </div>
            	
            </div>
            
            <div class="clear"></div>
	</div>
	<!-- main over-->
	
	
	<?php include"foot.php";?>
</body>
</html>
