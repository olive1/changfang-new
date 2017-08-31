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

.user_all{}
.user_all input{ border:0;}
-->
</style>
</HEAD>
<BODY>
<div>

<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TR height=28>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/title_bg1.jpg style="padding-left:10px; ">
	当前位置: 查看会员
	
	</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/shadow_bg.jpg></TD></TR></TABLE>
	
	
	
	<div class="lm_main">
	

<div class="main-div" style="width:800px; text-align:left; ">
<div class="button_add">
	<a href="<?php echo(site_url().LUMN_ADMIN_PATH);?>/user/u_list/">会员列表</a>
</div>


<div class="user_all">
<form class="set_form" method="post" action="">


							<!-- str 基本资料 -->
							<div id="profile0" class="guild_con setting_data jtab-con" >
	
								 <span style="color:#fc5e53;"><?php echo(validation_errors());?></span>
									<ul class="info_list" 
									<?php 
										//echo ($center == 1 ? "" : "style='display:none;'");
									?>
                                    >
                                    
										<li class="field_area">

											<label>Email：</label>
			<input type="text" class="input_txt m_l200" id="email" name="user_mail" value="<?php echo($user_row->user_mail);?>" readonly>
<span class="tx_tip"></span>
										</li>
										<li class="field_area">
											<label>姓 名：</label> 
			<input type="text" class="input_txt m_l200" readonly id="realname" name="user_name" value="<?php echo($user_row->user_name ? $user_row->user_name : set_value('user_name'));?>">
										</li>
										<li class="field_area">
											<label>昵 称：</label>										
											<input type="text" readonly class="input_txt m_l200" id="name" name="nickname" value="<?php echo($user_row->nickname ? $user_row->nickname : set_value('nickname'));?>" >
										</li>
										<li class="field_area">
											<label>性别：</label>
											<span class="choose_c">
											<?php echo(($user_row->sex == 1) ? '女' : '男');?>
											</span>
										</li>
										<li class="field_area">
											<label>城市：</label>
											<span class="choose_c">
											<select name='cat_id' disabled>
                                            <?php
							//返回所有城市 二级遍历
							foreach($this->area->_data as $row):
								if($row->parent_id == 0):
							
									foreach($this->area->_data as $row_two):
										if($row_two->parent_id == $row->cat_id):
									?>
                                    	 <option value="<?php echo($row_two->cat_id);?>"   <?php
										 	
                                        	if($user_row->cat_id == $row_two->cat_id)
											{
												echo(' selected  ');
												}
										?>>
                                         <?php echo($row_two->cat_name);?>
                                         </option>
                                         
									<?php
										endif;
									endforeach;
									?>
		 					</li>
                            
                            <?php
								endif;
							endforeach;
							 unset($row);
							?>
                            
                            
                                            </select>
											</span>
										</li>
										<li class="field_area">
											<label>手 机：</label>
				<input type="text" readonly class="input_txt m_l200" maxlength="11" id="mobile" name="user_phone" value="<?php echo($user_row->user_phone ? $user_row->user_phone : set_value('user_phone'));?>" <?php 
				if(!empty($user_row->user_phone) && strlen($user_row->user_phone) == 11 ):
					echo('readonly');
				endif
				?> >
                
                <?php
				if(strlen($user_row->user_phone) !==11):
                	echo('<span class="tx_tip">请认真填写，填写后将不可更改。</span>');
				endif
				?>
										</li>
									</ul>

							</div>
							<!-- end 基本资料 -->
							<!-- str 用户头像 -->
							<div id="profile1" class="guild_con setting_face jtab-con" style="display:none;" >
 								 <span style="color:#fc5e53;"><?php echo(validation_errors());?></span>
									<div class="cutphoto clearfix">
										<!-- str 当前头像 -->
										<div class="photo_area">
											<h3>当前头像:</h3>
											<div class="photo_pic">
												<img src="<?php echo(base_url());?>img/no_avatar.gif" alt="" title=""/>
											</div>
										</div>	
										<!-- str 当前头像 -->
										<h3>更换头像:</h3>
										<p class="txt_tip">请选择新的照片文件，文件需小于10MB</p>
										<p class="c_style">请上传.gif或.jpg格式的图片</p>
										<div class="type-file-box">
											<input type="file" class="type-file-file" id="avatar" name="avatar" size="28" />
										</div>
										<div class="upload_area">
											<span class="hotel_btn"><input type="submit" value="上传" class="bt_in"/></span>
										</div>
									</div>
								
							</div>
							<!-- end 用户头像 -->
							<!-- str 联系方式 -->
							<div id="profile2" class="guild_con setting_contact jtab-con">
 							 <span style="color:#fc5e53;"><?php echo(validation_errors());?></span>
									<ul class="info_list">
										<li class="field_area">
											<label>地 址：</label> <input readonly type="text" class="input_txt m_l200" id="address" name="address" value="<?php echo($user_row->address ? $user_row->address : set_value('address'));?>">
										</li>
										<li class="field_area">
											<label>邮 编：</label> <input readonly type="text" class="input_txt m_l200" id="zipcode" name="zip" value="<?php echo($user_row->zip ? $user_row->zip : set_value('zip'));?>" maxlength="6">
										</li>
										<li class="field_area">
											<label>电 话：</label>  <input readonly type="text" class="input_txt m_l200" id="tel" name="tel" value="<?php echo($user_row->tel ? $user_row->tel : set_value('tel'));?>">
										</li>
										<li class="field_area">
											<label>QQ：</label> <input readonly type="text" class="input_txt m_l200" id="qq" name="qq" value="<?php echo($user_row->qq ? $user_row->qq : set_value('qq'));?>">
										</li>
										<li class="field_area">
											<label>MSN：</label>  <input readonly type="text" class="input_txt m_l200" id="msn" name="msn" value="<?php echo($user_row->msn ? $user_row->msn : set_value('msn'));?>">
										</li>
									</ul>
				
							</div>
                            
                            
							<!-- end 联系方式 -->

                            

                                    </form>
</div>
</div>
  
	
	
	<div class="foot">
		版权所有 © 2008-2012 lumn网站开发系统 版权所有，  并保留所有权利。
	</div>
	
	</div>

  
  
  
  
</div>

</BODY></HTML>
