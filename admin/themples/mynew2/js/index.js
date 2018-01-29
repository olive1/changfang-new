
/**
 * scrollable
 */
		
/*

//箭头滚动
$(function(){
	// scroll bar production.	
	var J_hspcontent = $("#J_hotsaleProducts"),          //滚动对象
	 	scrollable = $(".scrollwrap", J_hspcontent),
		$step = $(".step", J_hspcontent),
		sc_click_prev = $('.arrowPrev a', J_hspcontent), //滚一个
		sc_click_next = $('.arrowNext a', J_hspcontent),
		arrow_lthin = $('.arrow-lthin', J_hspcontent), // 滚四个
		arrow_rthin = $('.arrow-rthin', J_hspcontent),
		
		jQContent = scrollable.find("ul li"),       //滚动内容
		scrollableSize = jQContent.size(),               //滚动内容数量
		wrapWidth = scrollable.width()+2,                 //滚动可见宽度
		aWidth = jQContent.eq(1).position().left,        //滚动内容单位宽度
		pageSize = Math.floor(wrapWidth/aWidth),       							// 每页滚动内容数量
		mLen = jQContent.eq(scrollableSize-1).position().left - wrapWidth + aWidth;         //最大滚动距离
		
	if(mLen < 0){
		sc_click_prev.hide();
		sc_click_next.hide();
		$step.hide();		
	} else {
		products_scrollInit();
	}
	function products_scrollInit(){
		//设置初始滚动当前项
		if(!jQContent.hasClass("active")){
			jQContent.eq(0).addClass("active");
		}
		//设置初始滚动位置
		if(scrollableSize > pageSize){
			scrollInit();
		}
		function scrollInit(){		
			scrollTo1(jQContent.filter(".active")[0]);
			//前一个
			sc_click_prev.click(function(){
				sc_prev(1);
			});
			//下一个
			sc_click_next.click(function(){
				sc_next(1);
			});
			//前一页
			arrow_lthin.click(function(){
				sc_prev(pageSize);
			});
			//下一页
			arrow_rthin.click(function(){
				sc_next(pageSize);
			});
			
			
			function sc_prev(num){
				var obj = jQContent.filter(".active");
				var i = jQContent.index(obj);
				if(i < num || obj.length == 0){
					scrollTo1(jQContent[0]);
					return false;
				}			
				scrollTo1(jQContent[i-num]);
			}
			function sc_next(num){
				var obj = jQContent.filter(".active");
				var i = jQContent.index(obj);
				if(i > scrollableSize-1-num || obj.length == 0){
					scrollTo1(jQContent[scrollableSize-1]);
					return false;
				}
				scrollTo1(jQContent[i+num]);
			}
			
			
			//滚动至第一个
			function scrollToFirst(){
				var object = jQContent[0];
				scrollTo1(object);
			}
			//滚动至最后一个
			function scrollToLast(){
				var object = jQContent[scrollableSize-1];
				scrollTo1(object);
			}
			//滚动至第N个
			function scrollTo1(obj){
				var xLen = $(obj).position().left;
				
				if(xLen < 0){
					xLen = 0;
					sc_click_prev.addClass('disable');
					sc_click_next.removeClass('disable');
					arrow_lthin.addClass('disable'); 
					arrow_rthin.removeClass('disable');
				}
				if(xLen == 0){
					sc_click_prev.addClass('disable');
					arrow_lthin.addClass('disable'); 
				} else {
					sc_click_prev.removeClass('disable');
					arrow_lthin.removeClass('disable');
				}
				if(xLen > mLen){
					xLen = mLen;
				} else {
					sc_click_next.removeClass('disable');
					arrow_rthin.removeClass('disable');	
					jQContent.filter(".active").removeClass("active");
					$(obj).addClass("active");
				}
				if(xLen == mLen){
				//alert(xLen + '---'+ mLen)
					sc_click_next.addClass('disable');
					arrow_rthin.addClass('disable');
					arrow_lthin.removeClass('disable'); 
				} 
				// 滚动动画
				//scrollable.animate({scrollLeft:xLen}, 300, "easein");
				scrollable.stop(true, true).animate({
					scrollLeft: xLen
				}, 1000, "easeInOutExpo");
			}
		}
	}
	
	// tab notice
	var J_tabNotice = $("#J_tabNotice");
	$('.tab li', J_tabNotice).click(function(){
		var self = $(this),
			i = $('.tab li', J_tabNotice).index(self);
		self.addClass('selected').siblings().removeClass('selected');
		$('.content ul:eq('+i+')', J_tabNotice).show().siblings().hide();
	});
}); 
**/


//幻灯滚动

$(function() {
	// foucsScroll init	
	foucsScrollInit();
	
	/*
	 * main focus 
	 * param picTimer
	 * id J_Foucs
	 */
	function foucsScrollInit(){
		var $J_Foucs = $("#J_Foucs"),
			$J_Foucs_ul = $("#J_Foucs>ul"),
			sHeight = $J_Foucs.height(),//获取焦点图的宽度（显示面积）
			len = $("li", $J_Foucs_ul).length, //获取焦点图个数
			index = 0,
			picTimer;
		
		//为数字按钮添加鼠标滑入事件，以显示相应的内容
		$(".btn span", $J_Foucs).mouseenter(function() {
			index = $(".btn span", $J_Foucs).index(this);
			showPics(index);
		}).eq(0).trigger("mouseenter");
		
		//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
		$J_Foucs_ul.css("height",sHeight * (len + 1));
		
		//鼠标滑入某li中的某div里，调整其同辈div元素的透明度，由于li的背景为黑色，所以会有变暗的效果
		$("li div", $J_Foucs_ul).hover(function() {
			$(this).siblings().css("opacity",0.7);
		},function() {
			$(this).css("opacity",1);
		});
		
		//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
		$J_Foucs.hover(function() {
			clearInterval(picTimer);
		},function() {
			picTimer = setInterval(function() {
				if(index == len) { //如果索引值等于li元素个数，说明最后一张图播放完毕，接下来要显示第一张图，即调用showFirPic()，然后将索引值清零
					showFirPic();
					index = 0;
				} else { //如果索引值不等于li元素个数，按普通状态切换，调用showPics()
					showPics(index);
				}
				index++;
			},5000); //此3000代表自动播放的间隔，单位：毫秒
		}).trigger("mouseleave");
		
		//显示图片函数，根据接收的index值显示相应的内容
		function showPics(index) { //普通切换
			var nowLeft = -index*sHeight; //根据index值计算ul元素的left值
			$J_Foucs_ul.stop(true,false).animate({"top":nowLeft},500); //通过animate()调整ul元素滚动到计算出的position
			$(".btn span", $J_Foucs).removeClass("on").eq(index).addClass("on"); //为当前的按钮切换到选中的效果
		}
		
		function showFirPic() { //最后一张图自动切换到第一张图时专用
			$J_Foucs_ul.append($("li:first", $J_Foucs_ul).clone());
			var nowLeft = -len*sHeight; //通过li元素个数计算ul元素的left值，也就是最后一个li元素的右边
			$J_Foucs_ul.stop(true,false).animate({"top":nowLeft},500,function() {
				//通过callback，在动画结束后把ul元素重新定位到起点，然后删除最后一个复制过去的元素
				$J_Foucs_ul.css("top","0");
				$("li:last", $J_Foucs_ul).remove();
			}); 
			$(".btn span", $J_Foucs).removeClass("on").eq(0).addClass("on"); //为第一个按钮添加选中的效果
		}
	}

});

/**
 * jQuery scollbar comments
 */
$(function(){
	/*scroll action*/
	function ScrollAction(listObj, listElem, speed, isSeries) {	//listObj为需要滚动的列表，  speed为滚动速度
		if(!listObj.length){return;}
			var id = '', //记录setInterval的标记id
				pos = listObj.position(),
				top = pos.top,		//列表的top
				aniTop = top,				//记录当前运动时的top
				item_height = listObj.children().eq(0).outerHeight(),			
				height = listObj.height();	//列表的高度
			var firstItem = listObj.children().clone();
				listObj.append(firstItem);
				//listObj.children('li').eq(0).remove();
			var scrollUp = function() {
				if(!isSeries) {	
					aniTop = aniTop - item_height;
					//alert(aniTop)
					//isSeries变量控制是否连续滚动，false不连续，true连续	
					//alert(aniTop + ":" + (-height));		
					if(height < -aniTop) {	//不连续，滚动玩重新滚动
						aniTop = 0;
						listObj.css({'top': aniTop});
					} 
					listObj.stop(true, true).animate({
						top:  aniTop 
					}, 1000, "easeInOutExpo"); 
				} else {
					aniTop--;
					if(aniTop == -listObj.children().eq(0).outerHeight()) {	//连续滚动
						var firstItem = listObj.children('li').eq(0).clone();
						listObj.append(firstItem);
						listObj.children('li').eq(0).remove();
						aniTop = 6;
					}				
					listObj.css({'top': aniTop + 'px'});
				}
			};
			
			var hover = function(id) {
				listObj.hover(function() {
					clearInterval(id);
				}, function() {
					id = setInterval(scrollUp, speed);
				});
			};
			
			this.start = function() {
				id = setInterval(scrollUp, speed);
				hover(id);
			};
			
		};
	var $J_comments_scroll = $('#J_comments_scroll ul');
	if($J_comments_scroll.length>0){
		var SA = new ScrollAction($J_comments_scroll, 'li', 2000, false);
		SA.start();
	}
	
});

/**
 * jQuery tab function
 */
$(function(){
	/*tab product list action*/
	var $plistWrap = $('#bd .p_list_wap');
	$plistWrap.each(function(i, n){
		var $self_i = $(this),
		$tabItem = $('.tab-t li', $self_i);
		$tabItem.mouseenter(function(){
			var self = $(this),
				i = $tabItem.index(self),
				$self_tab_content =  self.parents('.p_list_content');
			self.addClass('current').siblings().removeClass('current');
			$('.tab-c-i:eq('+i+')', $self_tab_content).show().siblings().hide();
		});
	});
	
	/*tab product list collection action */
	var $J_packages = $('#packages'),
		$sp_content_li = $('.sp_content li', $J_packages);
		$sp_content_li.mouseenter(function(){
			var self = $(this);
			self.addClass('current').siblings().removeClass('current');
		});
});



/**
*区域层显示
*/


$(document).ready(function(){
    //显示各区域
    $('#clik_cid_b').click(function(){
        //alert($('#choose_area').is(":visible"));
        //if($('#choose_area').is(":visible") == false)//如果隐藏的  就显示                    
            $('#choose_area').show(300);
       
    })
    
    
    //关闭区域
    $('#choose_area input').click(function(){ 
        $('#clik_area span').html($('#area_'+this.value).html()); //显示所选择的区域
        $('#choose_area').hide();        
    })
    
    
});



