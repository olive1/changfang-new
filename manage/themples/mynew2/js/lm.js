//��Сͼ����ʾ��ͼ
function display_bigImg(bigImg_name,bigImg,bigImg_path){
	var bigImg =  document.getElementById(bigImg);
	bigImg.src = bigImg_path+bigImg_name;
}



// ���ҵ��������ʼ
var scrollPic1 = new ScrollPic();
scrollPic1.scrollContId   = "divAcrollPic1"; //��������ID
scrollPic1.arrLeftId      = "LeftArr";//���ͷID
scrollPic1.arrRightId     = "RightArr"; //�Ҽ�ͷID

scrollPic1.frameWidth     = 890;//��ʾ����
scrollPic1.pageWidth      = 95; //��ҳ���

scrollPic1.speed          = 10; //�ƶ��ٶ�(��λ���룬ԽСԽ��)
scrollPic1.space          = 10; //ÿ���ƶ�����(��λpx��Խ��Խ��)
scrollPic1.autoPlay       = false; //�Զ�����
scrollPic1.autoPlayTime   = 3; //�Զ����ż��ʱ��(��)

scrollPic1.initialize(); //��ʼ��
// ���ҵ����������


//nav ��ʾ������
/**

names   ����   ��a_   (a_1,a_2,a_3....)
allNum  �ܹ�������
thisNum ��ǰ����
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




