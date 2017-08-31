<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/css/admin.css" type="text/css" rel="stylesheet">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/styles/main.css" type="text/css" rel="stylesheet">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/css/public_con.css" type="text/css" rel="stylesheet">
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
	当前位置: 增加资讯
	
	</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/shadow_bg.jpg></TD></TR></TABLE>
	
	
	
	<div class="lm_main">
	

<div class="main-div" style="width:800px; text-align:left; ">
<div class="button_add">
	<a href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/news/n_list/">资讯列表</a>
</div>


<?php
echo (($this->session->flashdata('success')) ? '<div style="color:#CCC;font-weight:bold;">'.$this->session->flashdata('success').'</div>' : '');

if(isset($news_row))
{
	$action = site_url().''.LUMN_ADMIN_PATH.'/news/update/'.$news_row['news_id'];
	}else{
		$action = site_url().''.LUMN_ADMIN_PATH.'/news/add';
		}
?>


 <form enctype="multipart/form-data" action="<?php echo($action);?>" method="post" name="theForm">

<?php

	echo "<table width=\"100%\" border=\"0\" cellpadding=\"4\" cellspacing=\"1\" bgcolor=\"#d5d5d5\">";

echo validation_errors();


		echo "<tr >";
	echo "<td align=\"right\"  background=\"images/index1_72.gif\">*分类：</td>";
	echo "<td bgcolor=\"#FFFFFF\"><select name=\"news_class_id\" style=\"font-size: 9pt\" ><option value=\"0\" selected>分类</option>";


echo($news_class_list);
/**
foreach($news_class_result as $row)
{
	
	echo('<option value = "'.$row->news_class_id.'" ');
	
	if(isset($news_row) && $news_row['news_class_id'] == $row->news_class_id)
	{
		echo(' selected ');
		}else
		{
			echo(set_select('news_class_id', $row->news_class_id));
			}
			
	echo (' >');
	echo($row->news_class_title);
	echo('</option>');
	}
*/

	echo "</select></td>";
	echo "</tr>";
	echo "<tr><td width=\"12%\" align=\"right\"  background=\"images/index1_72.gif\">* 标题：</td>";
	echo "<td width=\"88%\" bgcolor=\"#FFFFFF\">";
	echo '<input name="newstitle" type="text" class="input18" size="40" value="';
	echo isset($news_row) ? $news_row['newstitle'] : set_value('newstitle');
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
	echo "<tr id=\"jimg\"><td width=\"12%\" align=\"right\"  background=\"images/index1_72.gif\"> 图片：</td>";
	echo "<td width=\"88%\" bgcolor=\"#FFFFFF\"><input type=\"file\" name=\"userfile\">";
	echo ((isset($news_row) && $news_row['newsimg']) ? '有图：'.$news_row['newsimg'] : '');
	echo "</td></tr>";
	echo "</tr>";
	echo "<tr><td align=\"right\" valign=\"top\"  bgcolor=\"#FFFFFF\">* 内容：</td>";
	echo "<td bgcolor=\"#FFFFFF\">";


		echo "<textarea id=\"lumeng\" cols=\"\" rows=\"\" name=\"newscontent\"  style=\"display:none\" />";
		
		echo isset($news_row) ? $news_row['newscontent'] : set_value('newscontent');
		
		echo "</textarea>"; 
		echo "<input type=\"hidden\" id=\"newscontent___Config\" value=\"\" style=\"display:none\" />"; 
		echo "<iframe id=\"newscontent__Frame\" src=\"".base_url()."lmfckeditor/editor/fckeditor.html?InstanceName=lumeng&amp;Toolbar=Default\" width=\"100%\" height=\"300px\" frameborder=\"0\" scrolling=\"no\"></iframe>"; 

		

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
