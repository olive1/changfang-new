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
					当前位置: <a href="<?php echo(site_url()); ?>">首页</a> &gt; 用户中心
				</div>
			
			
            <?php include"user_left.php";?>
            <div class="user_right">
            	
                <div class="user_r_con">
<form class="set_form" method="post" action="<?php echo(site_url().'usercenter/center/'.$id);?>">
					
					<div id="zhiliao_1">
					<h2>个人信息 &gt; 基本资料</h2>
					<span style="color:#fc5e53;">					
					<?php 
					echo($this->lm_session->flashdata('success') ? $this->lm_session->flashdata('success') : '');
					echo(validation_errors());?>
					</span>
									<ul>
										<li>
											<span>Email：</span>
																												
										  <input type="text" id="email" name="user_mail" value="<?php echo($user_row->user_mail);?>" readonly class="readonly">
										</li>
										<li>
											<span>姓 名：</span> 
			<input type="text" id="realname" name="user_name" value="<?php echo($user_row->user_name ? $user_row->user_name : set_value('user_name'));?>">
										</li>
										<li>
											<span>昵 称：</span>	
																					
											<input type="text" id="name" name="nickname" value="<?php echo($user_row->nickname ? $user_row->nickname : set_value('nickname'));?>" >
										</li>
										<li>
											<span>性别：</span>
											<input type="radio"  name="sex" id="sex" value="0" <?php echo(($user_row->sex == 0) ? 'checked' : '');?>> 女

											<input type="radio" id="sex" name="sex" value="1"  <?php echo(($user_row->sex == 1) ? 'checked' : '');?> > 男
											
										</li>
										<li style="display:none;">
											<span>城市：</span>
											
											<select name='cat_id'>
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
		 					
                            
                            <?php
								endif;
							endforeach;
							 unset($row);
							?>
                            
                            
                                            </select>
										</li>
										<li>
											<span>手 机：</span>
											<input type="text" maxlength="11" id="mobile" name="user_phone" value="<?php echo($user_row->user_phone ? $user_row->user_phone : set_value('user_phone'));?>" <?php 
											if(!empty($user_row->user_phone) && strlen($user_row->user_phone) == 11 ):
												echo('readonly');
											endif
											?> >   <?php
												if(strlen($user_row->user_phone) !==11):
													echo('请认真填写，填写后将不可更改。');
												endif
												?>
										</li>
								</ul>
							  </div>

		  
		              
									<div class="user_r_sub">
									<input type="submit" value="保存" >
									<input type="reset" value="重置 ">
									</div>
								</form>
                </div>
            	
            </div>
            
            <div class="clear"></div>
	</div>
	<!-- main over-->
	
	
	<?php include"foot.php";?>
</body>
</html>
