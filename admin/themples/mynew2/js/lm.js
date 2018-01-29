//点小图，显示大图
function display_bigImg(bigImg_name,bigImg,bigImg_path){
	var bigImg =  document.getElementById(bigImg);
	bigImg.src = bigImg_path+bigImg_name;
}



// 左右点击滚动开始
var scrollPic1 = new ScrollPic();
scrollPic1.scrollContId   = "divAcrollPic1"; //内容容器ID
scrollPic1.arrLeftId      = "LeftArr";//左箭头ID
scrollPic1.arrRightId     = "RightArr"; //右箭头ID

scrollPic1.frameWidth     = 890;//显示框宽度
scrollPic1.pageWidth      = 95; //翻页宽度

scrollPic1.speed          = 10; //移动速度(单位毫秒，越小越快)
scrollPic1.space          = 10; //每次移动像素(单位px，越大越快)
scrollPic1.autoPlay       = false; //自动播放
scrollPic1.autoPlayTime   = 3; //自动播放间隔时间(秒)

scrollPic1.initialize(); //初始化
// 左右点击滚动结束


//nav 显示与隐藏
/**

names   名称   如a_   (a_1,a_2,a_3....)
allNum  总共多少数
thisNum 当前数字
**/
function navDisplay(names, allNum, thisNum)
{
	
	if(names == '' || allNum =='' || thisNum =='') return False;
	
	for(i=1; i<=allNum; i++)
	{
		
		if(i == thisNum)
		{
			var thisId = names+thisNum;
			document.getElementById(thisId).style.display = '';
			
			document.getElementById("dc_"+thisNum).className ='current';
		}
		else		
		{
			var otherId = names+i;
			document.getElementById(otherId).style.display ="none";	
			
			document.getElementById("dc_"+i).className ='';
		}
		
		
	}
	
	
}




