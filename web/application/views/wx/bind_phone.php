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
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-8 col-centered">
          <form method="post" id="register-form" autocomplete="off" action="wx_web/bind_phone_save" class="nice-validator n-default" novalidate>
            <div class="form-group">
              <input type="text" class="form-control" id="phone" name="phone" placeholder="输入手机号" autocomplete="off" aria-required="true" data-tip="">
            </div>
            
            
            <div id="validator-tips" class="validator-tips"></div>
            <div class="checkbox">
              
             
              </div>
            <div class="form-center-button">
              <button type="submit" id="submit_button" class="btn btn-primary btn-current">进入活动页</button>
    			</div>
          </form>
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
        var intro = $('.intro');
        $('#particles').particleground({
            dotColor: 'rgba(52, 152, 219, 0.36)',
            lineColor: 'rgba(52, 152, 219, 0.86)',
            density: 130000,
            proximity: 500,
            lineWidth: 0.2
        });
        intro.css({
            'margin-top': -(intro.height() / 2 + 100)
        });
    });
</script>
<div style="text-align:center;">

</div>
</body>
</html>