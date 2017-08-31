//点小图，显示大图
function display_bigImg_big(bigImg_name,bigImg,bigImg_path){
	var bigImg =  document.getElementById(bigImg);
	bigImg.src = bigImg_path+bigImg_name;
}



// 左右点击滚动开始
var scrollPic1_big = new ScrollPic();
scrollPic1_big.scrollContId   = "divAcrollPic1Big"; //内容容器ID
scrollPic1_big.arrLeftId      = "LeftArr-big";//左箭头ID
scrollPic1_big.arrRightId     = "RightArr-big"; //右箭头ID

scrollPic1_big.frameWidth     = 890;//显示框宽度
scrollPic1_big.pageWidth      = 95; //翻页宽度

scrollPic1_big.speed          = 10; //移动速度(单位毫秒，越小越快)
scrollPic1_big.space          = 10; //每次移动像素(单位px，越大越快)
scrollPic1_big.autoPlay       = false; //自动播放
scrollPic1_big.autoPlayTime   = 3; //自动播放间隔时间(秒)

scrollPic1_big.initialize(); //初始化
// 左右点击滚动结束




