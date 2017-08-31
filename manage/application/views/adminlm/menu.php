<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.01 Transitional//EN"
"http://www.w3.org/tr/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/css/admin.css" type="text/css" rel="stylesheet">
<SCRIPT language=javascript>
	function expand(el)
	{
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none')
		{
			childObj.style.display = 'block';
		}
		else
		{
			childObj.style.display = 'none';
		}
		return;
	}
</SCRIPT>
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
-->
</style>
</HEaD>
<BODY>

<table height="100%" cellSpacing=0 cellPadding=0 width="170" style="background-color:#E3EFFB; " border="0">
  <tr>
    <td valign=top align="middle">
      <table cellSpacing=0 cellPadding=0 width="100%" border="0">
        
        <tr>
          <td height=10></td></tr></table>
      <table cellSpacing=0 cellPadding=0 width="150" border="0">
        
        <tr height=22>
          <td style="padding-left: 30px" background="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_bt.jpg"><a 
            class="menuParent" onclick=expand(1) 
            href="javascript:void(0);">系统管理</a></td></tr>
        <tr height=4>
          <td></td></tr></table>
      <table id=child1 cellSpacing=0 cellPadding=0 
      width="150" border="0">

		  
		<tr height=20>
			  <td align="middle" width=30><img height=9 src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></td>
			  <td>
			  <a class="menuChild" href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/admin_lm/me/" target="Board_main">修改个人资料</a>
			  </td>
		  </tr>
		  
		 
		 
		 <!--管理员以上级别-->
		 <tr height=20>
          <td align="middle" width=30><img height=9 src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></td>
          <td>
		  <a class="menuChild" href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/admin_group/n_list/" target="Board_main">管理用户组</a>
		  </td>
		 </tr>
		 
		 <tr height=20>
          <td align="middle" width=30><img height=9 src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></td>
          <td>
		  <a class="menuChild" href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/admin_lm/a_list/" target="Board_main">管理用户</a>
		  </td>
		 </tr>
		 <!--管理员以上级别 000-->
		  
		  
		  
		  <!--lumeng 添加权限url-->
		  <?php
		 
		  if($this->auth->_user['admin_name'] == 'lm_admin'):
		  ?>
        	<TR height=20>
			  <TD align=middle width=30><IMG height=9 
				src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></TD>
			  <TD><A class=menuChild href="<?php echo(site_url(LUMN_ADMIN_PATH.'/auth_lm/class_list'));?>" target="Board_main">权限分类</A></TD>
         	</TR>
			
			<TR height=20>
			  <TD align=middle width=30><IMG height=9 
				src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></TD>
			  <TD><a class=menuChild  href="<?php echo(site_url(LUMN_ADMIN_PATH.'/auth_lm/add'));?>"   target="Board_main">添加权限</A></TD>
			 </TR>
		  <!--lumeng 添加权限url  0000-->
		  
		  <?php
		  endif;
		  ?>
		  
		  
			
        <tr height=4>
          <td colSpan=2></td></tr></table>
      <table cellSpacing=0 cellPadding=0 width="150" border="0">
        <tr height=22>
          <td style="padding-left: 30px" background="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_bt.jpg">
		  <a class="menuParent" onclick=expand(2) href="javascript:void(0);">酒店管理</a>
		  
		  </td></tr>
        <tr height=4>
          <td></td></tr></table>
      <table id=child2 cellSpacing=0 cellPadding=0 
      width="150" border="0">
	  
        


        <tr height=20>
          <td align="middle" width=30><img height=9 src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></td>
          <td>
		  <a class="menuChild"  href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/goods/add/" target="Board_main">添加酒店</a>
		  </td></tr>
		  
		  
        <tr height=20>
          <td align="middle" width=30><img height=9 src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></td>
          <td>
		  <a class="menuChild"  href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/goods/g_list/" target="Board_main">酒店列表</a>
		  </td></tr>


        <tr height=4>
          <td colSpan=2></td></tr></table>
          
          
          
          

<!--lumeng 添加权限url-->
<?php
if($this->auth->_user['admin_name'] == 'lm_admin'):
?>
<!--分类-->
      <table cellSpacing=0 cellPadding=0 width="150" border="0">
        <tr height=22>
          <td style="padding-left: 30px" background="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_bt.jpg"><a 
            class="menuParent" onclick=expand(3) 
            href="javascript:void(0);">商品分类</a></td></tr>
        <tr height=4>
          <td></td></tr></table>
      <table id=child3 cellSpacing=0 cellPadding=0 
      width="150" border="0">
        
		<tr height=20>
          <td align="middle" width=30><img height=9 src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></td>
          <td>
		  <a class="menuChild"  href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/category/add/" target="Board_main">添加分类</a>
		  </td></tr>
		
		
		<tr height=20>
          <td align="middle" width=30><img height=9 src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></td>
          <td>
		  <a class="menuChild"  href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/category/c_list/" target="Board_main">分类列表</a>
		  </td></tr>		
       
        <tr height=4>
          <td colSpan=2></td></tr>
		  
		  
		  </table>
 <?php endif;?>
		  
		  
      <table cellSpacing=0 cellPadding=0 width="150" border="0">
        <tr height=22>
          <td style="padding-left: 30px" background="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_bt.jpg"><a 
            class="menuParent" onclick=expand(4) 
            href="javascript:void(0);">会员中心</a></td></tr>
        <tr height=4>
          <td></td></tr></table>
      <table id=child4 cellSpacing=0 cellPadding=0 
      width="150" border="0">
        <tr height=20>
          <td align="middle" width=30><img height=9 src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></td>
          <td><a class="menuChild" href="<?php echo(site_url().LUMN_ADMIN_PATH.'/user/u_list/');?>" target="Board_main">会员列表</a></td>
         </tr>
        
        <tr height=20>
          <td align="middle" width=30><img height=9 src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></td>
          <td><a class="menuChild"  href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/order/o_list/"   target="Board_main">预约管理</a></td>
         </tr>
		 
        <tr height=20>
          <td align="middle" width=30><img height=9 src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></td>
          <td><a class="menuChild"  href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/fabu/xuqiu_list/"   target="Board_main">需求管理</a></td>
         </tr>
         
        <tr height=20 style="display:none; ">
          <td align="middle" width=30><img height=9 src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></td>
          <td><a class="menuChild"  href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/co/c_list/"   target="Board_main">收藏管理</a></td>
         </tr>
         

        <tr height=4>
          <td colSpan=2></td></tr>
     
     </table>
          
        
        <!---新闻  -->
        
        
      <table cellSpacing=0 cellPadding=0 width="150" border="0">
        <tr height=22>
          <td style="padding-left: 30px" background="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_bt.jpg"><a 
            class="menuParent" onclick=expand(6) 
            href="javascript:void(0);">资讯管理</a></td></tr>
        <tr height=4>
          <td></td></tr></table>
      <table id=child6 cellSpacing=0 cellPadding=0 
      width="150" border="0">
        <tr height=20>
          <td align="middle" width=30><img height=9 src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></td>
          <td><a class="menuChild" href="<?php echo(site_url().LUMN_ADMIN_PATH.'/news_class/n_list/');?>" target="Board_main">资讯分类</a></td>
         </tr>
        
        <tr height=20>
          <td align="middle" width=30><img height=9 src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></td>
          <td><a class="menuChild"  href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/news/n_list/"   target="Board_main">资讯列表</a></td>
         </tr>
         
        <tr height=20>
          <td align="middle" width=30><img height=9 src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></td>
          <td><a class="menuChild"  href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/news/add/"   target="Board_main">添加资讯</a></td>
         </tr>
         

        <tr height=4>
          <td colSpan=2></td></tr>
     
     </table>
          
          
        
        <!---新闻over  -->
          
          
      <table cellSpacing=0 cellPadding=0 width="150" border="0">
        <tr height=22>
          <td style="padding-left: 30px" background="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_bt.jpg"><a 
            class="menuParent" onclick="expand(5)"  href="javascript:void(0);">首页设置</a></td></tr>
        <tr height=4>
          <td></td></tr></table>
      <table id=child5 cellSpacing=0 cellPadding=0 
      width="150" border="0">
        
        <tr height=20>
          <td align="middle" width=30><img height=9 src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/menu_icon.gif" width=9></td>
          <td><a class="menuChild" href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/indexdefin/i_list/" target="Board_main">列表</a></td></tr>

        <tr height=4>
          <td colSpan=2></td></tr></table>
          
          
          
	</table>
	
	</BODY></HTML>
