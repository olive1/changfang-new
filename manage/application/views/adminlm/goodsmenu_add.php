<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/css/admin.css" type="text/css" rel="stylesheet">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/styles/main.css" type="text/css" rel="stylesheet">
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
<BODY>
<div>
<?php
$goods_id = isset($goods_id) ? $goods_id : 0;
?>

<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TR height=28>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/title_bg1.jpg style="padding-left:10px; ">
	当前位置: 增加会议室
	
	</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/shadow_bg.jpg></TD></TR></TABLE>
	
	
	
	<div class="lm_main">
	

<div class="main-div" style="width:800px; text-align:left; ">
<div class="button_add">
	<a href="<?php echo(site_url(LUMN_ADMIN_PATH.'/goodsmenu/n_list/'.$goods_id));?>">会议列表</a>
</div>
<div>

</div>
<div class="tab-div">
    <!-- tab bar -->
    <div id="tabbar-div">
      <p>
        <span class="tab-front" id="general-tab">通用信息</span><span
        class="tab-back" id="detail-tab">简介描述</span><span
        class="tab-back" id="mix-tab" style="display:none; ">菜单表</span><span
        class="tab-back" id="properties-tab" style="display:none; ">活动</span><span
        class="tab-back" id="gallery-tab" style="display:none; ">相册大厅</span><span
        class="tab-back" id="linkgoods-tab" style="display:none; ">地铁公交</span>
      </p>
    </div>

    <!-- tab body -->
    <div id="tabbody-div">
	<?php
echo (($this->session->flashdata('success')) ? '<div style="color:#CCC;font-weight:bold;">'.$this->session->flashdata('success').'</div>' : '');

if(isset($row))
{
	$action = site_url(LUMN_ADMIN_PATH.'/goodsmenu/update/'.$row['menu_id']);
	
	}else{
		$action = site_url(LUMN_ADMIN_PATH.'/goodsmenu/add/'.$goods_id);
		}
?>
      <form enctype="multipart/form-data" action="<?php echo($action);?>" method="post" name="theForm">
        <!-- 最大文件限制 -->
        
        <!-- 通用信息 -->
				<?php
				echo validation_errors();
				?>
        <table width="100%" id="general-table" align="center">
		
          <tr>
            <td width="17%" class="label">酒店名称：</td>
            <td width="83%">
				
					<?php
					echo isset($goods_name) ? $goods_name : '';
					?>
				
			</td>
          </tr>
		
          <tr>
            <td width="17%" class="label">会议室名称：</td>
            <td width="83%">
				<input name="menu_title" type="text" class="input18" size="40" value="<?php
					echo isset($row) ? $row['menu_title'] : set_value('menu_title');
				?>">
				<span class="require-field">*</span>
			</td>
          </tr>
		  
          
          <tr>
            <td class="label">价格：</td>
            <td>
			<style>
				.jiage{ padding:0px; margin:0px;}
				.jiage li{float:left; width:100px;}
			</style>
				<ul class="jiage">
					<li>
						小时<br>
							<input name="pricea" type="text" maxlength="5" class="input18" size="10" value="<?php
								echo isset($row) ? $row['pricea'] : set_value('pricea');
							?>">
					</li>
					<li>
						半天<br>
							<input name="priceb" type="text" maxlength="5" class="input18" size="10" value="<?php
								echo isset($row) ? $row['priceb'] : set_value('priceb');
							?>">
					</li>
					<li>
						全天<br>
							<input name="pricec" type="text" maxlength="5" class="input18" size="10" value="<?php
								echo isset($row) ? $row['pricec'] : set_value('pricec');
							?>">
					</li>
					<li>
						晚上<br>
							<input name="priced" type="text" maxlength="5" class="input18" size="10" value="<?php
								echo isset($row) ? $row['priced'] : set_value('priced');
							?>">
					</li>
					
					
					<div style="clear:both; "></div>
				</ul>
				
				


			</td>
          </tr>
		  


          <tr>
            <td class="label">会议布局：</td>
            <td>
				<?php
function is_serialized( $data ) {
     $data = trim( $data );
     if ( 'N;' == $data )
         return true;
     if ( !preg_match( '/^([adObis]):/', $data, $badions ) )
         return false;
     switch ( $badions[1] ) {
         case 'a' :
         case 'O' :
         case 's' :
             if ( preg_match( "/^{$badions[1]}:[0-9]+:.*[;}]\$/s", $data ) )
                 return true;
             break;
         case 'b' :
         case 'i' :
         case 'd' :
             if ( preg_match( "/^{$badions[1]}:[0-9.E-]+;\$/", $data ) )
                 return true;
             break;
     }
     return false;
 }
				if(isset($put_ary)):
					foreach($put_ary as $rows):
						
				?>
				<input type="checkbox" name="put_id[]" value="<?php echo($rows->cat_id);?>"  <?php
				
					if(isset($row) && is_serialized($row['put_id']) && array_search($rows->cat_id, unserialize($row['put_id'])) !== false)
					{
						echo(' checked ');
					}
					else{
						echo(set_checkbox('put_id[]', $rows->cat_id));
					}
					
				?>><?php echo($rows->cat_name);?>
				
				&nbsp;  
				<?php
					endforeach;
				endif;
				?>
				
				
				<span class="require-field"></span>
			</td>
          </tr>
		  
		  
		  
		  
          
          <tr>
            <td class="label">人数：</td>
            <td>
				<input name="menu_table" type="text" maxlength="5" class="input18" size="10" value="<?php
					echo isset($row) ? $row['menu_table'] : set_value('menu_table');
				?>">
				<span class="require-field">*</span>
			</td>
          </tr>
		  
		  
          
          
          <tr>
            <td class="label">面积：</td>
            <td>
				<input name="menu_l_price" type="text" maxlength="5" class="input18" size="10" value="<?php
					echo isset($row) ? $row['menu_l_price'] : set_value('menu_l_price');
				?>">
				<span class="require-field">*</span>
			</td>
          </tr>
		  
		  
		  
		  

          <tr>
            <td class="label">备注：</td>
            <td>
				<input name="menu_content" type="text" class="input18" size="60" maxlength="80" value="<?php
					echo isset($row) ? $row['menu_content'] : set_value('menu_content');
				?>">
				
				<span class="require-field"></span>
			</td>
          </tr>
		  
		  

        </table>

        <!-- 详细描述 -->
        <table width="90%" id="detail-table" style="display:none; ">

          <tr>
            <td>
			<?php
		echo "<textarea id=\"lumeng\" cols=\"\" rows=\"\" name=\"menu_contents\"  style=\"display:none\" />";
		
		echo isset($row) ? $row['menu_contents'] : set_value('menu_contents');
		
		echo "</textarea>"; 
		//echo "<input type=\"hidden\" id=\"contents___Config\" value=\"\" style=\"display:none\" />"; 
		echo "<iframe id=\"menu_contents__Frame\" src=\"".base_url()."lmfckeditor/editor/fckeditor.html?InstanceName=lumeng&amp;Toolbar=Default\" width=\"100%\" height=\"300px\" frameborder=\"0\" scrolling=\"no\"></iframe>"; 
			?>
			</td>
          </tr>
        </table>

        <!-- 菜单表 -->
<table width="90%" id="mix-table" align="center" style="display:none; ">
			<tr><td align="left" valign="top">
			
			<!--编辑 old 菜单-->
			
			
				
				<div id="menu_old">

				</div>
			
			
			<!--编辑 old 菜单 over-->
			
			<div class="lm_menu_add">
				<a  id="menu_add_a" style="cursor:pointer; ">
				<img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/lm_x.jpg" title="增加宴名" />
				增加宴名
				</a>
				&nbsp;&nbsp;
				<a  id="menu_add_d" style="cursor:pointer;  display:none; ">
				<img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/lm_y.jpg" title="减去宴名" />
				减去宴名
				</a>
			</div>
				<div id="menu_add_a_c">
				
				</div>
				
				
				
				
	
			</td></tr>
		</table>




        <!-- 优惠活动 -->
                <table width="90%" id="properties-table" align="center" style="display:none; ">
          <tr style="display: none;">
              <td width="6%" class="label">
			  优惠：
			  
			  </td>
              <td width="94%">
                
				<input type="radio" value="1" <?php echo((isset($preferential) && $preferential == 1) ? 'checked' : '');?> <?php echo(isset($preferential) ? '' : 'checked');?> name="preferential">是
				&nbsp;&nbsp;
				<input type="radio" value="0" <?php echo((isset($preferential) && $preferential == 0) ? 'checked' : '');?>  name="preferential">否
			  
			  </td>
          </tr>

<tr>
              <td width="6%" class="label">
			  活动
			  
			  </td>
              <td width="94%">
                
							<?php
                            
       		echo "<textarea id=\"lumenga\" cols=\"\" rows=\"\" name=\"contentsa\"  style=\"display:none\" />";
		
		echo(isset($contentsa) ? $contentsa : '');
		
		echo "</textarea>"; 
		
		//echo "<input type=\"hidden\" id=\"contentsa__Config\" value=\"\" style=\"display:none\" />"; 
		echo "<iframe id=\"contentsa__Frame\" src=\"".base_url()."lmfckeditor/editor/fckeditor.html?InstanceName=lumenga&amp;Toolbar=Default\" width=\"100%\" height=\"300px\" frameborder=\"0\" scrolling=\"no\"></iframe>"; 
			?>

			  </td>
          </tr>
        </table>
        
		
		
        <!-- hall大厅 -->
        <table width="100%" id="gallery-table" align="center" style="display:none; ">
          <!-- 图片列表 -->
		  
		  <tr>
			  <td colspan="2">
			  
			  
			  	
				
				
			  </td>
		  </tr>
		  
          <!-- 上传图片 -->
          <tr>
            <td>
             
			 
                 
            </td>
          </tr>
		  
		  
        </table>

        <!-- 地图交通 -->
        <table width="90%" id="linkgoods-table" align="center" style="display:none; ">
          <!-- 商品搜索 -->

		  
          <tr style="display: none;">
              <td width="6%" class="label">
			  地图：
			  
			  </td>
              <td width="94%">
              	<textarea name="map" style="width:500px; height:150px;"><?php echo(isset($map) ? $map : '');?></textarea>
				<input type="hidden" value="" name="" size="50">
			  </td>
          </tr>
		  
          
        </table>




        <div class="button-div">

                    <input type="submit" value=" 确定 " class="button" />
          <input type="reset" value=" 重置 " class="button" />
        </div>

      </form>
    </div>

</div>
</div>
  
	
	<span id="theFromAction" style="display:none; ">"<?php echo(site_url().LUMN_ADMIN_PATH.'/goodsmenu/add_save');?>"</span>
	<div class="foot">
		版权所有 © 2008-2012 lumn网站开发系统 版权所有，  并保留所有权利。
	</div>
	
	</div>

  
  
  
  
</div>





<script type="text/javascript">
	$(document).ready(function()
	{
		
		//主框架 切换
		$("div#tabbar-div p span").click(function(){
			$("div#tabbar-div p span").removeClass('tab-front');
			$("div#tabbar-div p span").addClass('tab-back');
			$(this).removeClass('tab-back');
			$(this).addClass('tab-front');
			$("#tabbody-div table").hide();
			$("table#"+$(this).attr("id")+"le").show();
			
		});
		
		
		
		//表单 提交验证
		$("form[name = 'theForm']").submit(function(){
			//名称
			if($("input[name = 'menu_title']").val() == ''){
				alert('请填写会议室名称');
				$("input[name = 'menu_title']").focus();
				return false;
			}
			
			if($("input[name='put_id[]']").is(":checked")){
			}
			else{
				alert('请选择会议布局');				
				return false;
			}
			

		});
		
		//验证 数字 replace  最低价-最高价
		$("input[name='pricea']").keyup(function(){
			 	var reg = /[^0-9]+/;
				x = $(this).val().replace(reg, "");
				$(this).val(x);
		});
		
		$("input[name='priceb']").keyup(function(){
			 	var reg = /[^0-9]+/;
				x = $(this).val().replace(reg, "");
				$(this).val(x);
		});
		$("input[name='pricec']").keyup(function(){
			 	var reg = /[^0-9]+/;
				x = $(this).val().replace(reg, "");
				$(this).val(x);
		});
		$("input[name='priced']").keyup(function(){
			 	var reg = /[^0-9]+/;
				x = $(this).val().replace(reg, "");
				$(this).val(x);
		});
		$("input[name='pricee']").keyup(function(){
			 	var reg = /[^0-9]+/;
				x = $(this).val().replace(reg, "");
				$(this).val(x);
		});
		$("input[name='pricef']").keyup(function(){
			 	var reg = /[^0-9]+/;
				x = $(this).val().replace(reg, "");
				$(this).val(x);
		});
		
		//桌数
		$("input[name='menu_l_price']").keyup(function(){
			 	var reg = /[^0-9]+/;
				x = $(this).val().replace(reg, "");
				$(this).val(x);
		});
		//评分
		$("input[name='menu_table']").keyup(function(){
			 	var reg = /[^0-9]/;
				x = $(this).val().replace(reg, "");
				$(this).val(x);
		});
});
</script>

</body>
</html>
