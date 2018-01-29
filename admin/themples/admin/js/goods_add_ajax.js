/*
商品表单 AJAX验证
lumn系统版权所有    作者：阿猛
*/

$(document.ready = function(){
							$("#goodsAddFrom").submit(function(){
								$.post(	<?php echo(site_url().'/'.LUMN_ADMIN_PATH.'/goods/add_save');?>, 
										("#goodsAddFrom").serialize(), 
										function (data){
											alert("结果："+data);
											});
							});

});












