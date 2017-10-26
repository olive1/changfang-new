<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>用户列表页</title>
<meta name="Keywords" content="www.021news.cn">
<meta name="Description" content="www.021news.cn">

<!-- Bootstrap -->
<link href="<?php echo base_url();?>/templates/wx/images/bootstrap.min.css" rel="stylesheet">
<script src="<?php echo base_url();?>/templates/wx/images/jquery.min.js"></script>
<script src="<?php echo base_url();?>/templates/wx/images/bootstrap.min.js"></script>
<script src="<?php echo base_url();?>/templates/wx/images/jquery.particleground.min.js"></script>
</head>


<body style="">
<?php
$display = '';
$display2 = 'display:none;';
if(isset($user_data['phone']) && $user_data['phone'] == $this->input->get('phone_old') )
{
	$display 	= "display:none;";
	$display2 	= '';
}

//print_r($user_data);
//echo '<Br><br>'.$phone_old.'==';
?>
<div id="particles" style="background:#FFF; border:1px solid #ccc;color:#000; font-size:14px;">


  <div class="intro" style="">
                      <div style="color:#000; border:2px solid #CCC;<?php echo $display2;?>">
             	点击右上角分享至朋友圈
            </div>      

             	
            

            
    <div class="container">
    
    
    
    
    
    
    
    
    
    
    
      <div class="row">
        <div class="col-md-3 col-sm-8 col-centered">
          
          
          <table class="table table-bordered">
          <tr>          	
            <th align="left">老用户</td>
            <th align="left">老用户</td>
            <th align="left">新用户</td>
            <th align="left">审核</td>
            <th align="left">留言日期</td>
            <th align="left">订单日期</td>
          
          </tr>
          
          
          <?php
          foreach($user_list as $row):
		  ?>
          <tr>
            <td align="left"><?php echo $row['a1'];?></td>
            <td align="left"><?php echo $row['a2'];?></td>
            <td align="left"><?php echo $row['phone_new'];?></td>
            <td align="left"><?php echo $row['is_success']==1 ? '是' : '否';?></td>
            <td align="left"><?php if($row['created'])echo date("Y-m-d", strtotime($row['created']));?></td>      
            <td align="left"><?php if($row['luru_time'])echo date("Y-m-d", strtotime($row['luru_time']));?></td>          
          </tr>
          <?php endforeach;?>
          
          </table>
          
          
          
        </div>
      </div>
    </div>

  </div>
</div>

</body>
</html>