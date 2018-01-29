<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/css/admin.css" type="text/css" rel="stylesheet">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/styles/main.css" type="text/css" rel="stylesheet">
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/css/public_con.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/js/jquery.js"></script>
<?php 
$area_id 	= isset($area_id) ? json_encode($area_id) : json_encode(0);
$cid_b 		= isset($cid_b) ? json_encode($cid_b) : json_encode(0);
$cid_a 		= isset($cid_a) ? json_encode($cid_a) : json_encode(0);
?>
<script type="text/javascript">
	$(document).ready(function(){
					ary 		= <?php echo json_encode($cat_id_ary);?>; //所有数据
					area_id 	= <?php echo $area_id;?>; //更新时 区域id
					cid_b 		= <?php echo $cid_b;?>; //更新时 区域id
					cid_a 		= <?php echo $cid_a;?>; //更新时 区域id
					
					//id  append , ary 数组,   pid  父ID, selected_cat_id更新时选中id
					var fun	=	function(select_id, ary, pid, selected_id)
										{
											//alert($("#"+select_id+" option").length);
											//alert(ary.length);
											
											if($("#"+select_id+" option").length > 1)   //已经有数据，则移除
											{
												$oneoption = $("#"+select_id).find("option:first").text();  
												$("#"+select_id+" option").remove();												
												$("#"+select_id).append('<option value="0">'+$oneoption+'</option>');
												if(select_id !="area_id")  //不是商圈ID 则默认移除 
												{
													$("#area_id option").remove();												
													$("#area_id").append('<option value="0">商圈</option>');
												}
											}
											
											for(i = 0; i<ary.length; i++)
											{ 
												if(ary[i].parent_id == pid) //该父ID  下的所有数据循环出来
												{
													if(ary[i].cat_id == selected_id) //更新时判断
													{
														$("#"+select_id).append('<option value="'+ary[i].cat_id+'" selected>'+ary[i].cat_name+'</option>');
													}
													else
													{
														$("#"+select_id).append('<option value="'+ary[i].cat_id+'">'+ary[i].cat_name+'</option>');
													}
													
												}
											}
											
											
										}
					
					
					
					
					
					$(window).load(
									function()
									{
											
											if(!cid_a)
											{
												fun('cid_a', ary, 1, 0);
											}
											else
											{
												fun('cid_a', ary, 1, cid_a);
												fun('cid_b', ary, cid_a, cid_b);
												fun('area_id', ary, cid_b, area_id);
											}
									}
					);
					
					$("#cid_a").change(
									function()
									{
											fun('cid_b', ary, this.value, 0);
									}
					);
					
					$("#cid_b").change(
									function()
									{
											fun('area_id', ary, this.value, 0);
									}
					);
					
	});


	
</script>


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
//print_r(unserialize($this->auth->_user['purview_mdl']));
//echo($this->auth->_user['group'].'====');
//echo('/goods/del_img/');
?>

<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TR height=28>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/title_bg1.jpg style="padding-left:10px; ">
	当前位置: 增加酒店
	
	</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/shadow_bg.jpg></TD></TR></TABLE>
	
	
	
	<div class="lm_main">
	

<div class="main-div" style="width:800px; text-align:left; ">
<div class="button_add">
	<a href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/goods/g_list/">酒店列表</a>
</div>
<div>
<?php echo ($this->session->flashdata('success')) ? $this->session->flashdata('success') : '' ?>
</div>
<div class="tab-div">
    <!-- tab bar -->
    <div id="tabbar-div">
      <p>
        <span class="tab-front" id="general-tab">通用信息</span><span
        class="tab-back" id="detail-tab">简介描述</span><span
        class="tab-back" id="mix-tab" style="display:none; ">菜单表</span><span
        class="tab-back" id="properties-tab" style="display:none; ">活动</span><span
        class="tab-back" id="gallery-tab">相册大厅</span><span
        class="tab-back" id="linkgoods-tab" style="display:none; ">地铁公交</span>
      </p>
    </div>

    <!-- tab body -->
    <div id="tabbody-div">
      <form enctype="multipart/form-data" action="<?php 
	  if(isset($goods_id)){
	  	echo(site_url().LUMN_ADMIN_PATH.'/goods/add_save/'.$goods_id);
	  }else{
	  	echo(site_url().LUMN_ADMIN_PATH.'/goods/add_save/');
	  }
	  
	  
	  ?>" method="post" name="theForm">
        <!-- 最大文件限制 -->
        
        <!-- 通用信息 -->
				
        <table width="100%" id="general-table" align="center">
		
		
				    
		  
		
		    <tr>
            <td class="label">地区：</td>
            <td>
						<select name="cid_a" id="cid_a">
							<option value="0">省（市）</option>
						</select>
						
						<select name="cid_b" id="cid_b">
							<option value="0">市（区）</option>
						</select>
						
						<select name="area_id" id="area_id">
							<option value="0">商圈</option>
						</select>
						
						
			</td>
          </tr>
		
		
          <tr>
            <td class="label">酒店名称：</td>
            <td><input type="text" name="goods_name" value="<?php echo(isset($goods_name) ? $goods_name : '');?>" size="30" />
			            <span class="require-field">*</span></td>
          </tr>
		  
          
          <tr>

            <td class="label">地址：</td>
            <td>
			
              <input type="text" size="32" name="address" value="<?php echo(isset($address) ? $address : '');?>" /> <span class="require-field">*</span>
            </td>
          </tr>
                   <tr style="display:none; ">
            <td class="label">面积：</td>

            <td>
			
			<input type="text" name="l_price" value="<?php echo(isset($l_price) ? $l_price : '');?>" size="10" onClick="isMobile(this);"/>
平方米 
            <span class="require-field">*</span></td>
          </tr>
                    <tr>
            <td class="label">
人数：</td>
            <td>                            <span id="nrank_1"></span>
                            <input type="text" name="tables" value="<?php echo(isset($tables) ? $tables : '');?>" size="10" />
							 <span class="require-field">*</span>
		              </td>
          </tr>
		  
		  
                    <tr>
            <td class="label">
星级：</td>
            <td>                            <span id="nrank_1"></span>
                            
							
							 				<?php
				if(isset($score_ary)):
				//print_r($score_ary);
					foreach($score_ary as $rows):
						
				?>
				<input type="radio" name="score" value="<?php echo($rows->cat_id);?>"  <?php
				
					if(isset($score) && $score == $rows->cat_id)
					{
						echo(' checked ');
						
					}
					else{
						
						if(!isset($score) && $rows->cat_id == 216):
							echo(set_radio('score', $rows->cat_id, true));
						else:
							echo(set_radio('score', $rows->cat_id));
						endif;
						
					}
					
				?>><?php echo($rows->cat_name);?>
				
				&nbsp;  
				<?php
					endforeach;
				endif;
				?>
							 <span class="require-field">*</span>
		              </td>
          </tr>
         
		 
          <tr>
              <td width="14%" class="label">
			  地铁：
			  
			  </td>
              <td width="86%">
				<input type="text" value="<?php echo(isset($subway) ? $subway : '');?>" name="subway" size="50">
			  </td>
          </tr>

          <tr>
              <td width="14%" class="label">
			  公交：
			  
			  </td>
              <td width="86%">
				<input type="text" value="<?php echo(isset($bus) ? $bus : '');?>" name="bus" size="50">
			  </td>
          </tr>
		 
		  
		  
          <tr>
            <td class="label">
            关键词： </td>
            <td><input type="text" name="keywords" value="<?php echo(isset($keywords) ? $keywords : '');?>" size="20" />
			
			</td>

          </tr>
          <tr>
            <td class="label">描述：</td>
            <td><input type="text" name="description" value="<?php echo(isset($description) ? $description : '');?>" size="90" >

        </td>

          </tr>
		  
		  

        </table>

        <!-- 详细描述 -->
        <table width="90%" id="detail-table" style="display:none; ">

          <tr>
            <td>
			<?php
		echo "<textarea id=\"lumeng\" cols=\"\" rows=\"\" name=\"contents\"  style=\"display:none\" />";
		
		echo(isset($contents) ? $contents : '');
		
		echo "</textarea>"; 
		//echo "<input type=\"hidden\" id=\"contents___Config\" value=\"\" style=\"display:none\" />"; 
		echo "<iframe id=\"contents__Frame\" src=\"".base_url()."lmfckeditor/editor/fckeditor.html?InstanceName=lumeng&amp;Toolbar=Default\" width=\"100%\" height=\"300px\" frameborder=\"0\" scrolling=\"no\"></iframe>"; 
			?>
			</td>
          </tr>
        </table>

        <!-- 菜单表 -->
<table width="90%" id="mix-table" align="center" style="display:none; ">
			<tr><td align="left" valign="top">
			
			<!--编辑 old 菜单-->
			
			
				
				<div id="menu_old">
			<?php
        if(isset($data_menu) && is_array($data_menu)):
            //   宴名  宴价  菜单  菜单说明
            foreach($data_menu as $row):            
		?>
					<div id="menu_<?php echo($row->menu_id);?>" class="lm_menu">
					<p>
					<a href="javascript:;" onClick="removeMenuid(<?php echo($row->menu_id);?>);"> [ - ]</a> &nbsp;
						宴名：<input type="text" name="menu_title_old[<?php echo($row->menu_id);?>]" value="<?php echo($row->menu_title);?>" size="30" />
						&nbsp;&nbsp;
						宴价：<input type="text" name="menu_price_old[<?php echo($row->menu_id);?>]" value="<?php echo($row->menu_price);?>" size="10" onKeyUp="this.value=this.value.replace(/[^0-9]+/,'');" />
					</p>
					<p>
						菜单：(菜单名用逗号【,】分隔   多套餐用竖线分隔【|】)  
					</p>
					<p id="menu_add_b_c">
						<textarea class="lm_menu_list" name="menu_name_old[<?php echo($row->menu_id);?>]" style="width:500px; height:50px; "><?php echo($row->menu_name);?></textarea><br>
					</p>
					<p>
						说明：<input type="text" name="menu_content_old[<?php echo($row->menu_id);?>]" value="<?php echo($row->menu_content);?>" size="60">
					</p>
					</div>
		<?php
            endforeach;
		 endif;
		
			
		?>		
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
				<div class="lm_menu">
					<p>
						宴名：<input type="text" name="menu_title[]" value="" size="30" />
						&nbsp;&nbsp;
						宴价：<input type="text" name="menu_price[]" value="" size="10" onKeyUp="this.value=this.value.replace(/[^0-9]+/,'');" />
					</p>
					
					<p>
						菜单：(菜单名用逗号【,】分隔   多套餐用竖线分隔【|】)  
						<a id="menu_add_b" style="cursor:pointer; display:none;" onClick="jk(this.id+'b_c');">
						<img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/lm_x.jpg" title="增加一套菜单" />
						</a>
						&nbsp;&nbsp;
						<a id="menu_add_b" style="cursor:pointer; display:none; " onClick="jb(this.id+'b_c');">
						<img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/lm_y.jpg" title="减去一套菜单" />
						</a>
						
					</p>
					<p id="menu_add_b_c">

						<textarea class="lm_menu_list" id="menu0name" name="menu_name[]" style="width:500px; height:50px; "></textarea><br>

					</p>
					<p id="menu_add_bb_c"></p>
					<br>
					<p>
						说明：<input type="text" name="menu_content[]" size="60">
					</p>
				</div>
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
			  
			  
			  	<div id="images_old" style="padding-bottom:25px;">
					<?php
					if(isset($data_images) && is_array($data_images)):
						//    图片路径  场景名称  场景层高  场景桌数 goods_id 商品ID   
						foreach($data_images as $row):
						?>
						<p id="img_<?php echo($row->img_id);?>" style="padding:10px; border-bottom:1px solid #CCC; ">
						<a href="javascript:;" onclick="removeImgid(<?php echo($row->img_id);?>, <?php echo($this->auth->_user['admin_id']);?>)">[-]</a><?php //echo(site_url().LUMN_ADMIN_PATH.'/goods/del_img/'.$row->img_id));?>
						  名称 <input type="text" name="img_name_old[<?php echo($row->img_id);?>]" value="<?php echo($row->img_name);?>" size="15" />&nbsp;&nbsp;
						  图片：
						  <a href="<?php echo(base_url().LUMN_IMAGE_PATH.$row->img_path);?>" target="_blank">
						  <img src="<?php echo(base_url().LUMN_IMAGE_PATH_TEM.$row->img_path);?>" name="img_path"></a>&nbsp;&nbsp;
						 
						  <input type="text" size="25" value="或者输入外部图片链接地址" style="display:none;color:#aaa;" onfocus="if (this.value == '或者输入外部图片链接地址'){this.value='http://';this.style.color='#000';}" name="img_patha[]"/>&nbsp;&nbsp;
						  层高<input type="text" name="img_height_old[<?php echo($row->img_id);?>]" size="3" value="<?php echo($row->img_height);?>" onKeyUp="this.value=this.value.replace(/[^0-9]+/,'');" />&nbsp;&nbsp;
						  桌数<input type="text" name="img_tables_old[<?php echo($row->img_id);?>]" size="3" value="<?php echo($row->img_tables);?>" onKeyUp="this.value=this.value.replace(/[^0-9]+/,'');" />&nbsp;&nbsp;
						  婚宴厅<input type="checkbox" name="img_hall_old[<?php echo($row->img_id);?>]" value="1" <?php echo($row->img_hall ? 'checked' : '');?>>
                          <input type="radio" name="img_hot_old[]" value="<?php echo($row->img_id);?>" <?php echo(($row->img_hot==1) ? 'checked' : '');?>>
                         
						</p>
					<?php
						endforeach;
					endif;
					?>
				</div>
				
				
			  </td>
		  </tr>
		  
          <!-- 上传图片 -->
          <tr>
            <td>
              <a href="javascript:;" onclick="addImg(this)">[+]</a>
              名称 <input type="text" name="img_name[]" size="15" />

  
			  上传文件 
			  <input type="file" name="img_path[]" />
              <input type="text" size="25" value="或者输入外部图片链接地址" style="display:none;color:#aaa;" onfocus="if (this.value == '或者输入外部图片链接地址'){this.value='http://';this.style.color='#000';}" name="img_patha[]"/>
			  &nbsp;
			  层高<input type="text" name="img_height[]" size="3" onKeyUp="this.value=this.value.replace(/[^0-9]+/,'');" />
			  桌数<input type="text" name="img_tables[]" size="3" onKeyUp="this.value=this.value.replace(/[^0-9]+/,'');" />
			    婚宴厅<input type="checkbox" name="img_hall[]" value="1">
                
                 
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
  
	
	<span id="theFromAction" style="display:none; ">"<?php echo(site_url().LUMN_ADMIN_PATH.'/goods/add_save');?>"</span>
	<div class="foot">
		版权所有 © 2008-2012 lumn网站开发系统 版权所有，  并保留所有权利。
	</div>
	
	</div>

  
  
  
  
</div>





<script type="text/javascript">
	$(document).ready(function(){
		//主框架 切换
		$("div#tabbar-div p span").click(function(){
			$("div#tabbar-div p span").removeClass('tab-front');
			$("div#tabbar-div p span").addClass('tab-back');
			$(this).removeClass('tab-back');
			$(this).addClass('tab-front');
			$("#tabbody-div table").hide();
			$("table#"+$(this).attr("id")+"le").show();
			
		});
		
		//区域  赋值给地址
		
		$(":input:radio[name = 'cid_b']").click(function(){				
			$(this).each(function(){
				if($(this).is(':checked')){
					//alert($(this).val());
					//alert($("#cid_bb"+$(this).val()+"").val());
					$(":input[name = 'address']").val($("#cid_bb"+$(this).val()+"").val());
				}
			});

		});

		//通用信息验证
		//表单 提交验证
		$("form[name = 'theForm']").submit(function(){
		
			//选择区域
			//alert($("#cid_a option:selected").val());
			//return false;
			if($("#cid_a option:selected").val() == 0){
				alert('请选择省（市）');
				//($("#cid_a option").focus();
				return false;
			}
			
			if($("#cid_b option:selected").val() == 0){
				alert('请选择市（区）');
				//($("#cid_b option").focus();
				return false;
			}
			if($("#area_id option:selected").val() == 0){
				alert('请选择商圈');
				//($("#area_id option").focus();
				return false;
			}
			
			
			//商品名称
			if($("input[name = 'goods_name']").val() == ''){
				alert('请填写酒店名称');
				$("input[name = 'goods_name']").focus();
				return false;
			}
			
			//价格
			if($("input[name = 'l_price']").val() == '' ){
				alert('请填写面积');
				$("input[name = 'l_price']").focus();
				return false;
			}
			
			//价格
			if($("input[name = 'tables']").val() == '' ){
				alert('请填写人数');
				$("input[name = 'tables']").focus();
				return false;
			}
			
			
			
		});
		
		//验证 数字 replace  最低价-最高价
		$("input[name='l_price']").keyup(function(){
			 	var reg = /[^0-9]+/;
				x = $(this).val().replace(reg, "");
				$(this).val(x);
		});
		$("input[name='h_price']").keyup(function(){
			 	var reg = /[^0-9]+/;
				x = $(this).val().replace(reg, "");
				$(this).val(x);
		});
		//桌数
		$("input[name='tables']").keyup(function(){
			 	var reg = /[^0-9]+/;
				x = $(this).val().replace(reg, "");
				$(this).val(x);
		});
		//评分
		$("input[name='score']").keyup(function(){
			 	var reg = /[^0-9]/;
				x = $(this).val().replace(reg, "");
				$(this).val(x);
		});
		

		
		
		
		/** 菜单增加 */
		//大增加
		var i = 0;
		$("#menu_add_a").click(function(){
			i++;
			var html = $("#menu_add_a_c").html();
			html = html.replace("宴名", "宴名<span style='color:#ff0000;'>"+ (i+1) +"</span>");
			html = html.replace("id=\"menu_add_b\"", "id=\"menu_add_b"+ i +"\"");
			html = html.replace("id=\"menu_add_b_c\"", "id=\"menu_add_b_c"+ i +"\"");
			html = html.replace("id=\"menu_add_bb_c\"", "id=\"menu_add_b"+ i +"b_c\"");
			
			//更改 菜单名 数组
			html = html.replace("menu_name[0]", "menu_name["+ i +"]");
			
			$("#menu_add_a_c").after(html);
			
		});
		

		//小增加
		//for(var j=0; j<=i; j++){
			//$("#menu_add_b" + j).click(function(){
				//$("#menu_add_b_c" + j).after($("#menu_add_b_c" + j).html());
			//});
		//}
		
	});
	
	//菜单增加
	var iix = 0;
	function jk(obj){		
		iix++;
		add = document.getElementById("menu_add_b_c").innerHTML;
		//alert(obj);
		add = add.replace('][0]', ']['+iix+']');
		
		var this_add= document.getElementById(obj); 
		this_add.innerHTML = this_add.innerHTML + add;
	}
	
	function del(obj){
		document.getElementById(obj).remove();
	}
	
	
	//相册增加
 function addImg(obj)
  {
  	
      var src  = obj.parentNode.parentNode;
	   //alert(src);
      var idx  = src.rowindex;
	 
      var tbl  = document.getElementById('gallery-table');
      var row  = tbl.insertRow(idx + 1);
	  
      var cell = row.insertCell(-1);
      cell.innerHTML = src.cells[0].innerHTML.replace(/(.*)(addImg)(.*)(\[)(\+)/i, "$1removeImg$3$4-");
  }

  /**
   * 删除图片上传
   */
  function removeImg(obj)
  {
      var row = obj.parentNode.parentNode.rowindex;
      var tbl = document.getElementById('gallery-table');

      tbl.deleteRow(row);
  }
  
  
  
  
  
  //////////////////////ajax//////////////////////////////
  function removeImgid(img_id, c_id)
	{

	var xmlhttp;
	
	if (img_id.length==0 || isNaN(img_id))
	  {
	 	alert("请输入正确id");
	  return false;
	  }
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	   //alert(xmlhttp.status);
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)//执行成功时
		{
			
			var test = document.getElementById("images_old");	
				test.removeChild(document.getElementById('img_'+img_id));	//移除子节点
			//document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
		}
	  }
	xmlhttp.open("GET","<?php echo(site_url().LUMN_ADMIN_PATH.'/goods/del_img/');?>"+img_id+"/"+c_id,true);
	xmlhttp.send();
	}
	
  function removeMenuid(menu_id)
	{
	
	var xmlhttp;
	
	if (menu_id.length==0 || isNaN(menu_id))
	  {
	 	alert("请输入正确id");
	  return false;
	  }
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)//执行成功时
		{

			var test = document.getElementById("menu_old");	
				test.removeChild(document.getElementById('menu_'+menu_id));	//移除子节点
			//document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
		}
	  }
	xmlhttp.open("GET","<?php echo(site_url().LUMN_ADMIN_PATH.'/goods/del_menu/');?>"+menu_id,true);
	xmlhttp.send();
	}
	

</script>

</body>
</html>
