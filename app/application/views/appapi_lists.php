<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title><?php echo $title;?></title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script src="http://www.w3school.com.cn/jquery/jquery-1.11.1.min.js"></script>
  </head>
  <body>

<div class="container">
	<div>
		<h3><?php echo $title;?></h3>

	</div>
	
	<table class="table table-bordered table-hover table-striped">
      <thead>
        <tr>
          <th>#</th>
          <th style="width:100px; ">接口名称</th>
          <th style="width:200px; ">URI</th>
          <th style="width:300px; ">请求参数</th>
		  <th>返回参数</th>
        </tr>
      </thead>
      <tbody>
	  
	
	  
	  <?php foreach($lists as $row):?>
        <tr>
		
          <th scope="row">
		  <?php echo $row["id"];?>
		  </th>
		  
          <td> <?php echo $row["apiname"];?></td>
          <td> <?php echo str_replace($url,"",$row["apiurl"]);?></td>
          <td> 
		  <?php 
		  //$postdata = json_decode($row["postdata"], true);
		  //echo json_encode($postdata, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);  
		  echo nl2br($row["postdata"]);
		  ?>
		  </td>
          <td class="returndata"> 
		  <?php 
		  $returndata = json_decode($row["returndata"], true);
		  $returndata = json_encode($returndata, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);  
		  echo nl2br($returndata);
		  //echo $row["returndata"];  
		  ?></td>
		  
        </tr>
		
	  <?php endforeach;?>
		

      </tbody>
    </table>



<div style=" background-color:#fcfcfc; padding:20px; margin:20px 0 20px 0; ">
<h3>详细说明：</h3>
	<div style="">
		<p>
			<b>接口地址：</b><br>
			<?php
			echo $url . "<b>URI</b>";
			?>
		</p>	
		
		<p>
			<b>请求方式：</b><br>
			POST
		</p>	
		
		<p>
			<b>参数值类型：</b><br>
			String
		</p>	

		<p>
			<b>全局参数（所有接口都必须传的参数）：</b><br>
			<table class="table table-striped">
				<?php
				foreach($postdata as $k=>$v){
				?>
					<tr>
					<td><?php echo $k;?></td>
					<td><?php echo $v;?></td>
					</tr>
				<?php					
				}
				?>				
			</table>
		</p>	
		
		<p>
			<b>错误码：</b><br>
			<table class="table table-bordered">
				<?php
				foreach($error_codes as $k=>$v){
				?>
					<tr>
						<td><?php echo $k;?></td><td><?php echo $v;?></td>
					</tr>		
				<?php					
				}
				?>				
			</table>
		</p>	
		
		<p>
			<b>返回值格式(json)：</b><br>
				成功：
				{
				"success": "1",
				"data": {"a"=>'1', "b"=>2},
				"msg": "成功"
				}				
				<br>
				失败：
				{
				"success": "0",
				"error_code": "4001",
				"msg":"未登录或登录超时"
				}				
				<br>
				
		</p>	
			
	</div>

</div>
  
  
	


</div>

<script>
$(document).ready(function(){
	
  
	$("#postdata_tongbu").click(function(){
			var postdata = $("#postdata").val();
		  $("#postdata_zhushi").val(postdata);
	});
  
});
</script>



</body>
</html>