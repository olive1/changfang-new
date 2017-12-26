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
		<a href="<?php echo site_url("appapi/lists");?>" class="btn btn-success">列表</a>
	</div>
	
	
	
	
	<form class="form-horizontal">
	
	
	
	
	<div class="form-group">
		接口名称：<input type="text" name="apiname" id="apiname" style="width:100px; " value="">
	</div>
		
	<div class="form-group">
		请求网址：<input type="text" name="apiurl" id="apiurl" style="width:350px; " value="<?php echo $url;?>">
	</div>
		
	
	<div class="form-group">
		请求数据：<textarea id="postdata" style="width:500px; height:350px; "><?php echo $postdata;?></textarea>
	
		<span id="postdata_tongbu" style="color:#ff0000; cursor:pointer; ">同步注释</span>：<textarea id="postdata_zhushi" style="width:350px; height:350px; "></textarea>
	
	</div>
	
	
	
	<div class="form-group">
		编辑ID：<input type="text"  name="id" id="id" style="width:50px; " value="">
	</div>
	
	
	
	<div class="form-group">
		<input id="button"  class="btn btn-default" type="button" value="提交">
		<input id="button_save"  class="btn btn-success" type="button" value="保存数据库">
	</div>


	</form>



</div>

<script>
$(document).ready(function(){
	//格式化JSON展示
	var json = $('#postdata').val();
	var result = JSON.stringify(JSON.parse(json), null, 4);
	$('#postdata').val(result);
	
	
	
  $("#button").click(function(){
		sendPost();
  });
  
  $("#button_save").click(function(){
		sendPost(true);
  });
  
  
  
  function sendPost(issave=false)
  {  
		var url = $("#apiurl").val();
		var postdata = $("#postdata").val();
		postdata = eval("(" + postdata + ")"); 		
		
		$.post(url, postdata,
		function(data){
		 	//alert("Data Loaded: " + data);
			
			if(issave)
			{
				savePost(data);
			}
		});
  }
    
  
  
  function savePost( returndata)
  {
  		var postdata = $("#postdata").val();
		var postdata_zhushi= $("#postdata_zhushi").val();
  		var url="<?php echo $url;?>save";
		var apiurl = $("#apiurl").val();
		var apiname = $("#apiname").val();
		var id = $("#id").val();
		
		$.post(url, {apiurl:apiurl,apiname:apiname, postdata:postdata,postdata_zhushi:postdata_zhushi, returndata:returndata,id:id},
		function(data){
			alert('保存成功');
		});
  }
  
  
	$("#postdata_tongbu").click(function(){
			var postdata = $("#postdata").val();
		  $("#postdata_zhushi").val(postdata);
	});
  
});
</script>


</body>
</html>