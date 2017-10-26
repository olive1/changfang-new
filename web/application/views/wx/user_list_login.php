<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>绑定手机号</title>
<meta name="Keywords" content="www.021news.cn">
<meta name="Description" content="www.021news.cn">

<!-- Bootstrap -->
<link href="<?php echo base_url();?>/templates/wx/images/bootstrap.min.css" rel="stylesheet">
<link href="<?php echo base_url();?>/templates/wx/images/main.css" rel="stylesheet">
<link href="<?php echo base_url();?>/templates/wx/images/enter.css" rel="stylesheet">
<script src="<?php echo base_url();?>/templates/wx/images/jquery.min.js"></script>
<script src="<?php echo base_url();?>/templates/wx/images/bootstrap.min.js"></script>
<script src="<?php echo base_url();?>/templates/wx/images/jquery.particleground.min.js"></script>
</head>
<body>
<div id="particles">
  <canvas class="pg-canvas" width="1920" height="911" style="display: block;"></canvas>
  <div class="intro" style="margin-top: -256.5px;">
    <div class="container">
      <div class="row" style="padding:30px 0;">
        <div class="col-md-3 col-centered tac"> <img src="http://www.triptt.com/images/top.png" alt="logo"> </div>
      </div>
    </div>
    <div class="container" style="text-align:left;">
      <div class="row">
        <div class="col-md-3 col-sm-8 col-centered">
          
            <div class="form-group">
              <input type="text" class="form-control" id="phone" name="phone" placeholder="手机号" autocomplete="off" aria-required="true" data-tip="">
            </div>
            

 
  
  
            <div class="form-group">
              <input type="text" class="form-control" id="adminpass" name="adminpass" placeholder="密码" autocomplete="off" aria-required="true" data-tip="">
            </div>

        
            
            
            
            
            
            
            
            
            
            
            

<div style="height:100px;">

</div>
            <div class="form-center-button">
              <button id="submit_button" class="btn btn-primary btn-current">登录</button>
    			</div>

                
          
        </div>
      </div>
    </div>
    <div class="modal fade" id="myModal" tabindex="-1" style="text-align: left" role="dialog">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
            <h4 class="modal-title">用户协议</h4>
          </div>
          <div class="modal-body" id="agreementContent"></div>
        </div>
      </div>
    </div>
    <link rel="stylesheet" href="<?php echo base_url();?>/templates/wx/images/jquery.validator.css">
    <script src="<?php echo base_url();?>/templates/wx/images/zh-CN.js"></script><script src="<?php echo base_url();?>/templates/wx/images/jquery.validator.min.js"></script> 
  </div>
</div>
<script>
    $(document).ready(function () {
		
		//提交登录
		$("#submit_button").click(function(){
			var url_save 	= '<?php echo site_url();?>wx_web/login_save';
			var phone 		= $("#phone").val();
			var adminpass 	= $("#adminpass").val();	
			
			if(!phone) 
			{
				alert('请输入手机号');
				return;
			}
			
			if(!adminpass) 
			{
				alert('请输入密码');
				return;
			}
			
				$.post(url_save, { phone: phone, adminpass:adminpass },
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
<div style="text-align:center;">

</div>
</body>
</html>