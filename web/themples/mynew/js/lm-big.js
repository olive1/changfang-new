//��Сͼ����ʾ��ͼ
function display_bigImg_big(bigImg_name,bigImg,bigImg_path){
	var bigImg =  document.getElementById(bigImg);
	bigImg.src = bigImg_path+bigImg_name;
}



// ���ҵ��������ʼ
var scrollPic1_big = new ScrollPic();
scrollPic1_big.scrollContId   = "divAcrollPic1Big"; //��������ID
scrollPic1_big.arrLeftId      = "LeftArr-big";//���ͷID
scrollPic1_big.arrRightId     = "RightArr-big"; //�Ҽ�ͷID

scrollPic1_big.frameWidth     = 890;//��ʾ����
scrollPic1_big.pageWidth      = 95; //��ҳ���

scrollPic1_big.speed          = 10; //�ƶ��ٶ�(��λ���룬ԽСԽ��)
scrollPic1_big.space          = 10; //ÿ���ƶ�����(��λpx��Խ��Խ��)
scrollPic1_big.autoPlay       = false; //�Զ�����
scrollPic1_big.autoPlayTime   = 3; //�Զ����ż��ʱ��(��)

scrollPic1_big.initialize(); //��ʼ��
// ���ҵ����������




