$(document).ready(function(){
	//alert("OK@");
	var get_data	=	function(id, select_id){
							$.ajax({
							type:'get',//可选get
							url:'http://localhost/hwt/x/index.php/meeting/get_cat/'+id+'/',//这里是接收数据的PHP程序
							data:'',//传给PHP的数据，多个参数用&连接
							dataType:'Json',//服务器返回的数据类型 可选XML ,Json jsonp script html text等
							success:function(msg){
								//这里是ajax提交成功后，PHP程序返回的数据处理函数。msg是返回的数据，数据类型在dataType参数里定义！
								//alert(msg);
								for(i = 0; i<msg.length; i++)
								{
									$("#"+select_id).append('<option value="'+msg[i].cat_id+'">'+msg[i].cat_name+'</option>');
								}
							},
							error:function(){
							 alert('提交失败！');//ajax提交失败的处理函数！
							}
							})

					}
	$("#cid").click(function(){
							get_data(1, 'cid_a');
					});
	$(window).load(
				    function(){
							get_data(1, 'cid_a');
							get_data(226, 'price_a');
							get_data(227, 'price_b');
							get_data(234, 'menu_table');
							get_data(235, 'menu_l_price');
							get_data(2, 'put_id');
							get_data(211, 'score');
					});
	
	$("#cid_a").change(function(){
								//alert(this.value);
							get_data(this.value, 'cid_b');
					});
	$("#cid_b").change(function(){
							get_data(this.value, 'area');
					});
	
	/**
	$("#b01").click(function(){
  		htmlobj=$.ajax({url:"/jquery/test1.txt",async:false});
  		$("#myDiv").html(htmlobj.responseText);
  	});
	$.ajax({ url: "test.html", context: document.body, success: function(){
        $(this).addClass("done");
      }});
	*/
	
	
	
	
	
	
});

