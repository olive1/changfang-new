$(document).ready(function(){
/**获取参数*/
var getArgs=(function(){
    var sc=document.getElementsByTagName('script');
	var src_name = 'cat.js';  //要查找的 名字
	var this_src	=	sc[sc.length-1].src; //默认该SRC是最后一个script src
	
	for(var jj=0; jj<sc.length; jj++) //遍历所有script src
	{
		if(sc[jj].src.indexOf(src_name) > 0 )  //如果某个script src中包含有该名字，则取得 该src
		{
			this_src = sc[jj].src;
		}
	}
	//alert(this_src);
	//return;
    var paramsArr=this_src.split('?')[1].split('&');

    var args={},argsStr=[],param,t,name,value;
    for(var i=0,len=paramsArr.length;i<len;i++){
            param=paramsArr[i].split('=');
            name=param[0],value=param[1];
            if(typeof args[name]=="undefined"){ //参数尚不存在
                args[name]=value;
            }else if(typeof args[name]=="string"){ //参数已经存在则保存为数组
                args[name]=[args[name]]
                args[name].push(value);
            }else{  //已经是数组的
                args[name].push(value);
            }
    }
    /*在实际应用中下面的showArg和args.toString可以删掉，这里只是为了测试函数getArgs返回的内容*/
    var showArg=function(x){   //转换不同数据的显示方式
        if(typeof(x)=="string"&&!/\d+/.test(x)) return "'"+x+"'";   //字符串
        if(x instanceof Array) return "["+x+"]" //数组
        return x;   //数字
    }
    //组装成json格式
    args.toString=function(){
        for(var i in args) argsStr.push(i+':'+showArg(args[i]));
        return '{'+argsStr.join(',')+'}';
    }
    return function(){return args;} //以json格式返回获取的所有参数
})();

url_ary		= 	getArgs();
site_url	=	url_ary["site_url"];
/**获取参数*/
//alert(site_url+'meeting/get_cat/');
//return;
	//alert("OK@");
	//return;
	var get_data	=	function(id, select_id){
							$.ajax({
							type:'get',//可选get
							url:site_url+'meeting/get_cat/'+id+'/',//这里是接收数据的PHP程序
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
	var remove_option	=	function(select_id){								
								$oneoption = $("#"+select_id).find("option:first").text();  
								$("#"+select_id+" option").remove();
								$("#"+select_id).append('<option  value="0">'+$oneoption+'</option>');
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
							remove_option("cid_b");
							get_data(this.value, 'cid_b');
							
					});
	$("#cid_b").change(function(){
							remove_option("area");
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

