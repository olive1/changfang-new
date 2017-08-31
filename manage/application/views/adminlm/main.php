<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<TITLE>管理中心 LM1.0</TITLE>
<LINK href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/css/admin.css" type="text/css" rel="stylesheet">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "宋体";
	font-size: 12px;
	color: #333333;
}
-->
</style>
</head>

<body>
<div align="center">
	<div style="margin:0px; padding:0px; ">
	<IFRAME src="<?php echo(site_url().LUMN_ADMIN_PATH);?>/lm/header/" id="frmright" name="BoardList" style="HEIGHT: 41px; VISIBILITY: inherit; WIDTH: 100%; Z-INDEX: 1; margin:0px; padding:0px;" scrolling="no" frameborder="0"></IFRAME>
	</div>

	<table width="100%" cellpadding="0" cellspacing="0">
		<tr>
		<td align="left" valign="top" width="180">

			<IFRAME src="<?php echo(site_url().LUMN_ADMIN_PATH);?>/lm/menu/" id="frm_left" name="Board_List" style=" height:600px; padding:0px; margin:0px; width:100%;" marginheight="0" scrolling="no" frameborder="0"></IFRAME>
		</td>
		<td align="left" valign="top">
			<IFRAME src="<?php echo(site_url().LUMN_ADMIN_PATH);?>/<?php echo($ref);?>/" id="frm_right" name="Board_main" style="HEIGHT: 600px; VISIBILITY: inherit; WIDTH: 100%; Z-INDEX: 1" marginheight="0" scrolling="auto" frameborder="0"></IFRAME>
		</td>
		</tr>
	</table>
</div>
</body>
</html>
