<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/css/admin.css" type="text/css" rel="stylesheet">
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
<BODY>
<div>

<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TR height=28>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/title_bg1.jpg style="padding-left:10px; ">
	当前位置: 增加栏目 
	
	</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/shadow_bg.jpg></TD></TR></TABLE>
	
	
	
	<div class="lm_main">
	

<div class="main-div" style="width:800px; text-align:left; ">
<div class="button_add">
	<a href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/news_class/n_list/">资讯列表</a>
</div>


<?php
echo (($this->session->flashdata('success')) ? '<div style="color:#CCC;font-weight:bold;">'.$this->session->flashdata('success').'</div>' : '');

if(isset($news_row))
{
	$action = site_url().''.LUMN_ADMIN_PATH.'/news_class/update/'.$news_row['news_class_id'];
	}else{
		$action = site_url().''.LUMN_ADMIN_PATH.'/news_class/add/'.$news_cla_id;
		}
?>


 <form enctype="multipart/form-data" action="<?php echo($action);?>" method="post" name="theForm">

<?php

	echo "<table width=\"100%\" border=\"0\" cellpadding=\"4\" cellspacing=\"1\" bgcolor=\"#d5d5d5\">";

echo validation_errors();


		echo "<tr >";
	echo "<td align=\"right\"  background=\"images/index1_72.gif\">*上级栏目：</td>";
	echo "<td bgcolor=\"#FFFFFF\">";

	echo $news_class_title;
	
	echo "</td>";
	echo "</tr>";
	echo "<tr><td width=\"12%\" align=\"right\"  background=\"images/index1_72.gif\">* 标题：</td>";
	echo "<td width=\"88%\" bgcolor=\"#FFFFFF\">";
	echo '<input name="news_class_title" type="text" class="input18" size="40" value="';
	echo isset($news_row) ? $news_row['news_class_title'] : set_value('news_class_title');
	echo '">';
	
	echo "</td></tr>";

		echo "<tr><td width=\"12%\" align=\"right\"  background=\"images/index1_72.gif\">keywords：</td>";
		echo "<td width=\"88%\" bgcolor=\"#FFFFFF\">";
		echo "<input name=\"keywords\" type=\"text\" class=\"input18\" size=\"20\" value=\"";
		echo isset($news_row) ? $news_row['keywords'] : set_value('keywords');
		echo "\">";
		echo "</td></tr>";
		echo "</tr>";
		echo "<tr><td width=\"12%\" align=\"right\"  background=\"images/index1_72.gif\"> description：</td>";
		echo "<td width=\"88%\" bgcolor=\"#FFFFFF\">";
		echo "<input name=\"description\" type=\"text\" class=\"input18\" size=\"80\" value=\"";
		echo isset($news_row) ? $news_row['description'] : set_value('description');
		echo "\">";
		echo "</td></tr>";
		echo "</tr>";

	echo "<tr><td align=\"right\" valign=\"top\"  bgcolor=\"#FFFFFF\"> 内容：</td>";
	echo "<td bgcolor=\"#FFFFFF\">";


		echo "<textarea id=\"lumeng\" cols=\"\" rows=\"\" name=\"news_class_content\"  style=\"display:none\" />";
		
		echo isset($news_row) ? $news_row['news_class_content'] : set_value('news_class_content');
		
		echo "</textarea>"; 
		echo "<input type=\"hidden\" id=\"news_class_content___Config\" value=\"\" style=\"display:none\" />"; 
		echo "<iframe id=\"news_class_content__Frame\" src=\"".base_url()."lmfckeditor/editor/fckeditor.html?InstanceName=lumeng&amp;Toolbar=Default\" width=\"100%\" height=\"300px\" frameborder=\"0\" scrolling=\"no\"></iframe>"; 

		

	echo "</td>";
	echo "</tr>";

	
	echo "<tr><td align=\"right\" valign=\"top\"  bgcolor=\"#FFFFFF\">&nbsp;</td>";
	echo "<td bgcolor=\"#FFFFFF\"><input name=\"Submit\" type=\"submit\" class=\"input18\" value=\"提交\">　　<input name=\"Submit\" type=\"reset\" class=\"input18\" value=\"重置\"></td>";
	echo "</tr></table></td></tr></table>";
	
	?>
</form>
</div>
  
	
	
	<div class="foot">
		版权所有 © 2008-2012 lumn网站开发系统 版权所有，  并保留所有权利。
	</div>
	
	</div>

  
  
  
  
</div>

</BODY></HTML>
