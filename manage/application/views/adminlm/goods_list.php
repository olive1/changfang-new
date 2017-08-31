<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/css/admin.css" type="text/css" rel="stylesheet">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/styles/main.css" type="text/css" rel="stylesheet">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/css/public_con.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/js/jquery.js"></script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "宋体";
	font-size: 12px;
	color: #333333;
}
.lm_main{ padding:20px;}
.foot{ margin-top:100px; padding:10px; text-align:center; background-color:#e3effb;}
-->
</style>
</HEAD>

<SCRIPT language=JavaScript type=text/JavaScript>
function CheckAll(form)  {
  for (var i=0;i<form.elements.length;i++)    {
    var e = form.elements[i];
    if (e.name != 'chkall')       e.checked = form.chkall.checked; 
   }
 
}
</SCRIPT>
<script language="javascript">
function jj(obj){
	var objs='abd'+obj;
	var img='img'+obj;
	var img_y=document.getElementById(img).src;
	var img_z=img_y.substring(0,img_y.length-5)+'x.jpg';
	var img_yy=img_y.substring(0,img_y.length-5)+'y.jpg';
	if(document.getElementById(objs).style.display==''){
		document.getElementById(objs).style.display='none';
		document.getElementById(img).src=img_z;
	}else{
		document.getElementById(objs).style.display='';
		document.getElementById(img).src=img_yy;
	}
 }
</script>
<BODY>
<div>

<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TR height=28>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/title_bg1.jpg style="padding-left:10px; ">
	当前位置: 分类列表
	
	</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/shadow_bg.jpg></TD></TR></TABLE>
	
	
	
	<div class="lm_main">
	

<div class="main-div" style="width:800px; text-align:center; ">
<div class="button_add">
	<a href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/goods/add/">增加商品</a>
</div>
<form method="post" onSubmit="return confirm('您确实要删除吗！');" action="<?php echo(site_url().LUMN_ADMIN_PATH.'/goods/del/');?>" name="listForm">
  <!-- start goods list -->

  <div class="list-div" id="listDiv">
<table cellpadding="3" width="100%" cellspacing="1">
  <tr>
    <th width="9%">
      <input name="goods_list" id="goods_list" type="checkbox" value="goods_list" onClick="CheckAll(this.form);" />
      <a href="javascript:listTable.sort('goods_id'); ">ID</a>  </th>
    <th width="33%" align="left">
	<input type="submit" value="删除">
	<a href="javascript:listTable.sort('goods_name'); ">商品名称</a></th>
 

    <th width="11%"><a href="javascript:listTable.sort('shop_price'); ">区域</a></th>

    <th width="11%"><a href="javascript:listTable.sort('is_best'); ">日期</a></th>
    <th width="12%" c><a href="javascript:listTable.sort('is_new'); ">管理员</a></th>
    <th width="24%">操作</th>
	
	
	<?php 
	
	if(empty($goods)){
		echo("<tr><td colspan=5>暂无记录！</td></tr>");
	}
	else{
	foreach($goods as $row):
	
	?>
    
    <!---循环体-->
  <tr>
    <td><input type="checkbox" name="goods_id[]" value="<?php echo($row->goods_id);?>" /><?php echo($row->goods_id);?></td>
    <td class="first-cell" style="" align="left">

	<?php echo($row->goods_name);?>
	</td>
    <td align="left">
	<span onclick="listTable.edit(this, 'edit_goods_sn', 1)">
		<?php 
		foreach($category as $value){
			if($row->cid_a == $value->cat_id){
				echo($value->cat_name);
			}
		}
	?>
<?php 
		foreach($category as $value){
			if($row->cid_b == $value->cat_id){
				echo($value->cat_name);
			}
		}
	?>
	
	</span></td>

   
    <td align="left">
	<?php echo(date('Y-m-d',$row->create_time));?>
	</td>
    <td align="left">
	<?php 
		
		foreach($admin as $value){
			if($row->admin_id == $value->admin_id){
				echo($value->admin_nickname ? $value->admin_nickname : $value->admin_name);
			}
		}
	?>
	</td>
    <td align="left">
      <a href="<?php echo(site_url(LUMN_ADMIN_PATH.'/goods/update/'.$row->goods_id));?>" title="编辑"><img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/icon_edit.gif" border="0" width="16" /></a>
      <a href="<?php echo(site_url(LUMN_ADMIN_PATH.'/goods/del/'.$row->goods_id));?>" onclick="return confirm('您确实要删除吗？')" title="删除"><img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/icon_drop.gif" border="0" width="16" /></a>
   
   
      <a href="<?php echo(site_url(LUMN_ADMIN_PATH.'/goodsmenu/add/'.$row->goods_id));?>" target="_blank" title="查看" style="margin-left:20px; ">
	  [+ 会议室]</a>
      <a href="<?php echo(site_url(LUMN_ADMIN_PATH.'/goodsmenu/n_list/'.$row->goods_id));?>" target="_blank" title="查看" style="margin-left:5px; ">
	  [列表]
	  </a>
	  
   </td>
  </tr>
   <!---循环结束体-->
  
  <?php
	endforeach;
	}
  ?>
  
  
  
  </table>


<!-- end goods list -->

<!-- 分页 -->
<table id="page-table" cellspacing="0">
  <tr>
    <td align="right" nowrap="true">
          <!-- $Id: page.htm 14216 2008-03-10 02:27:21Z testyang $ -->
            <div id="turn-page">
        总计  <span id="totalRecords"><?php echo($num_rows);?></span>
        个记录
        <span id="page-link">
		  
		  <?php echo($pagination);?>
		  
        </span>
      </div>
    </td>
  </tr>

</table>

</div>


</form>


<style>
.screening_list{text-align:left;}
.screening_item{}
</style>

				<div class="screening_item">
	<ul>

		<li>
			<h4 class="screening-title">所在区域：</h4>
			<div class="screening_list">
				省（市）
				<select name="cid_a" onChange="window.location.href=this.value;">
					<?php
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
				
				
				
				
				
						</div>
		</li>
		<li>
			<h4 class="screening-title">价格范围：</h4>
			<div class="screening_list">
			
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
			
			<br>
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
							</div>
		</li>
		
		
		
		<li>
			<h4 class="screening-title">会议布局：</h4>
			<div class="screening_list">
				
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
			</div>
		</li>
		
		
		<li>
			<h4 class="screening-title">参加人数：</h4>
			<div class="screening_list">
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
						</div>
		</li>
		
		<li>
			<h4 class="screening-title">场地面积：</h4>
			<div class="screening_list">
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
						</div>
		</li>
		
		<li>
			<h4 class="screening-title">星级酒店：</h4>
			<div class="screening_list">
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
						</div>
		</li>
		
		
		
	</ul>

</div>		

<div class="form-div">

  <form action="<?php   
  echo($all['url']);?>" method="get" name="searchForm">
    <img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/icon_search.gif" width="26" height="22" border="0" alt="SEARCH" />
        <!-- 分类 -->

    关键字 
    <input type="text" name="goods_name" size="15" value="<?php  echo($all['all']['goods_name']);?>" />
    <input type="submit" value=" 搜索 " class="button" />
  </form>
</div>

</div>
  
	
	
	<div class="foot">
		版权所有 © 2008-2012 lumn网站开发系统 版权所有，  并保留所有权利。
	</div>
	
	</div>

  
  
  
  
</div>


<SCRIPT language=JavaScript type=text/JavaScript>
function CheckAll(form)  {
  for (var i=0;i<form.elements.length;i++)    {
    var e = form.elements[i];
    if (e.name != 'goods_list')       e.checked = form.goods_list.checked; 
   }
  }

</SCRIPT>
</BODY></HTML>
