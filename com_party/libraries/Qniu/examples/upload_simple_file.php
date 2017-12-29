<?php
require_once __DIR__ . '/../autoload.php';

// 引入鉴权类
use Qiniu\Auth;

// 引入上传类
use Qiniu\Storage\UploadManager;

// 需要填写你的 Access Key 和 Secret Key
$accessKey = 'OUkP1rS79FMoIi4lVAR9icNgJRk8N7wmXkyOxywh';
$secretKey = 'FWdfKCUTsqvCFpQlIfv7ub2wFyHVSgRvrkU9vtMI';
$bucket = 'changfang';

// 构建鉴权对象
$auth = new Auth($accessKey, $secretKey);

// 生成上传 Token
$token = $auth->uploadToken($bucket);

// 要上传文件的本地路径
$filePath = './1.png';

// 上传到七牛后保存的文件名
$key = 'my-php-logo2.png';

// 初始化 UploadManager 对象并进行文件的上传。
$uploadMgr = new UploadManager();

// 调用 UploadManager 的 putFile 方法进行文件的上传。
list($ret, $err) = $uploadMgr->putFile($token, $key, $filePath);
echo "\n====> putFile result: \n";
if ($err !== null) {
    var_dump($err);
} else {
    var_dump($ret);
}
