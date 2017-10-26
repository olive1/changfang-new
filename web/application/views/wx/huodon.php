<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
 <style>
	body { padding-top: 70px; }
	</style>



    <title>活动</title>
    

    <!-- Bootstrap core CSS -->


    <!-- Custom styles for this template -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
        <link href="<?php echo base_url();?>/templates/wx/images/b.min.css" rel="stylesheet">
    
    <link href="<?php echo base_url();?>/templates/wx/images/style.css" rel="stylesheet">
    <script type="text/javascript" src="<?php echo base_url();?>/templates/wx/images/jquery-2.1.4.min.js"></script>
    
    
    
    
<script type="text/javascript">
$(function(){
$(".content img").addClass("carousel-inner img-responsive img-rounded"); 
});
</script>


<script type="text/javascript" language="javascript">

    function iFrameHeight() {

        var ifm= document.getElementById("iframepage");

        var subWeb = document.frames ? document.frames["iframepage"].document :

ifm.contentDocument;

            if(ifm != null && subWeb != null) {

            ifm.height = subWeb.body.scrollHeight;

            }

    }

</script> 


    <style>
	body {  background-image:url(<?php echo base_url();?>/templates/wx/images/center1.jpg);background-position:center; padding-top:200px;}
	</style>
    
  </head>

  <body>

<div class="container">



                                    

<nav class="navbar navbar-default navbar-fixed-top ">
  <div class="container">
  		<ul class="nav navbar-nav">
			
                <li class="pull-left bg-info">
                    <a href="" class=""><h4>点击右上角分享至朋友圈</h4></a>
                </li>
            
            
                    

        </ul>
  </div>
</nav>


      <div class="row" style=" text-align:center;">
        <div class="col-md-3 col-centered tac" style="display:none;"> <img src="http://www.triptt.com/images/top.png" alt="logo"> </div>
      </div>
      
      
      
<div class="content" style="background:#fff; padding:10px; margin:0 20px 0 20px; ">






<?php
$display = '';//老用户
$display2 = 'display:none;';//新用户
if(isset($user_data['phone']) && $user_data['phone'] == $this->input->get('phone_old') )
{
	$display 	= "display:none;";
	$display2 	= '';
}

//print_r($user_data);
//echo '<Br><br>'.$phone_old.'==';
?>

<div style="<?php echo $display2;?>">
	活动分享规则：<br>
    1.点击右上角按钮，选择分享朋友圈或分享给好友<br>
    2.好友通过链接进入活动页，并验证手机号，生成新用户订单<br>
    3.业务员联系新用户完成订单，老用户得到奖励<br>
</div>



<div style="<?php echo $display;?>">

<input type="hidden" name="phone_old" id="phone_old" value="<?php echo $this->input->get('phone_old');?>">
            
            <div class="form-group" >
            选择基地:
            <select name="jdfenlei_id" id="jdfenlei_id" class="form-control">
            <?php
            foreach($jidi_list as $k=>$row){
				?>
                
                	<option value="<?php echo $row['id'];?>"><?php echo $row['title'];?></option>
                
                <?php
			}
			?>
            </select>
            </div>       
            
            
            
            
            
            
            
            
            
            <div class="form-group" >
            输入手机号: <input type="text" class="form-control" id="phone_new" name="phone_new" placeholder="输入手机号" autocomplete="off" aria-required="true" data-tip="">
            </div>       

  <div class="row" style="padding-bottom:20px; ">
  <div class="col-xs-4">
    <input type="text" id="imgcode" name="imgcode" class="form-control" placeholder="">
  </div>
  
  <img src="<?php echo base_url("wx_web/captcha");?>" id="captcha" style="width:100px; padding:0px;" class="btn btn-default">
<button class="btn btn-default" id="getimgcode">刷新</button>
</div>


       

  <div class="row">
  <div class="col-xs-4">
    <input type="text" id="code" name="code" class="form-control" placeholder="">
  </div>
<button class="btn btn-default" id="getcode">获取短信验证码</button>
</div>
            
            

            <div class="form-center-button" style="margin:20px 0 0 0;">
            	
              <button id="submit_button" class="btn btn-primary btn-current" >立刻体验</button>
    		</div>
</div>          
                
                
</form>
        </div>
        
        






<div>
<span style="color: #999; font-size:13px; margin-left:20px;">

</span>
</div>


</div>


<script>
    $(document).ready(function () {
		
		
		//图形验证码
		$('#getimgcode').click(function(){
            $("#captcha").attr('src', '<?php echo site_url();?>wx_web/captcha/' + Math.random());
        });
		
		
		//获取验证码
		$("#getcode").click(function(){
			var url_save = '<?php echo site_url();?>sendsms/send';
			var phone_new = $("#phone_new").val();
			if(!phone_new) 
			{
				alert('请输入手机号');
				return;
			}
			
				$.post(url_save, { type: "huodon", phone:phone_new },
			   function(data){
				   var dara_json = eval("(" + data + ")"); 
				   //console.log(dara_json);
				   alert(dara_json[1]);
				 
			   });
			   
			   
			   
		});
		
		
		//提交体验
		$("#submit_button").click(function(){
			var url_save 	= '<?php echo site_url();?>wx_web/huodon_save';
			var phone_new 	= $("#phone_new").val();
			var phone_old 	= $("#phone_old").val();			
			var code 		= $("#code").val();
			var jdfenlei_id = $("#jdfenlei_id").val();
			var imgcode = $("#imgcode").val();
			
			if(!phone_new) 
			{
				alert('请输入手机号');
				return;
			}
			
			if(!code) 
			{
				alert('请输入验证码');
				return;
			}
			
				$.post(url_save, { phone_new: phone_new, phone_old:phone_old, code: code, jdfenlei_id:jdfenlei_id,imgcode:imgcode },
			   function(data){
				   var dara_json = eval("(" + data + ")"); 
						alert(dara_json[1]);
				   if(dara_json[0] == 1 )
				   {
						window.location.href=dara_json[2];//跳转到对应基地页面
					}
					
			   });
			   
			   
			   
		});
		
		

    });
</script>






    </div> <!-- /container -->





  </body>
</html>