<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><?php echo $title;?>网站管理员登陆</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #1D3647;
	font-size:12px;
}
-->
</style>
<link href="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/skin.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" height="166" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="42" valign="top"><table width="100%" height="42" border="0" cellpadding="0" cellspacing="0" class="login_top_bg">
      <tr>
        <td width="1%" height="21">&nbsp;</td>
        <td height="42">&nbsp;</td>
        <td width="17%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg">
      <tr>
        <td width="49%" align="right"><table width="91%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg2">
            <tr>
              <td height="138" valign="top"><table width="89%" height="427" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="149">&nbsp;</td>
                </tr>
                <tr>
                  <td height="80" align="right" valign="top"><img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/logo.png" width="279" height="68"></td>
                </tr>
                <tr>
                  <td height="198" align="right" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" align="left";>


                    <tr>
                      <td>&nbsp;</td>
                      <td width="30%" height="40" align="center" style="display:none; "><img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/icon-demo.gif" width="16" height="16"><a href="lumn.txt" target="_blank" class="left_txt3"> 使用说明</a> </td>
                      <td width="35%" align="center"><img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/icon-login-seaver.gif" width="16" height="16"><a href="tencent://message/?uin=240333983&Site=在线客服&Menu=yes" target="_blank" class="left_txt3">在线客服</a></td>
                    </tr>
                  </table></td>
                </tr>
              </table></td>
            </tr>
            
        </table></td>
        <td width="1%" >&nbsp;</td>
        <td width="50%" valign="bottom"><table width="100%" height="59" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="4%">&nbsp;</td>
              <td width="96%" height="38"><span class="login_txt_bt">登陆管理</span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td height="21"><table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table211" height="328">
                  <tr>
                    <td height="164" colspan="2" align="left">
					<span style="color:#FF0000; "><?php echo $this->validation->error_string; ?></span>
					<?php echo form_open($ref);?>
                        <table cellSpacing="0" cellPadding="0" width="500" border="0" height="143" id="table212" align="left";> 
                          <tr>
                            <td width="12%" height="38" class="top_hui_text"><span class="login_txt">管理员：&nbsp;&nbsp; </span></td>
                            <td height="38" colspan="2" class="top_hui_text" style="border:10px; ">
							<input name="admin_name" class="editbox4" value="<?php echo (set_value('admin_name'));?>" size="20">
							
							
							</td>
							<td width="52%" style="color:#FF0000; " align="left"><?php echo(form_error('admin_name'));?></td>
                          </tr>
                          <tr>
                            <td width="12%" height="35" class="top_hui_text"><span class="login_txt"> 密 码： &nbsp;&nbsp; </span></td>
                            <td height="35" colspan="2" class="top_hui_text"><input class="editbox4" type="password" size="20" name="admin_password">
                              <img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/luck.gif" width="19" height="18"> 
							  </td>
							  <td style="color:#FF0000; " align="left"><?php echo(form_error('admin_password'));?></td>
                          </tr>
                          <tr style="display:none; ">
                            <td width="12%" height="35" align="left"><span class="login_txt">验证码：</span></td>
                            <td height="35" colspan="2" class="top_hui_text"><input class=wenbenkuang name=verifycode type=text value="" maxLength=4 size=10>
                              </td>
							    <td></td>
                          </tr>
                          <tr>
                            <td height="35" >&nbsp;</td>
                            <td width="10%" height="35" align="left" ><input name="Submit" type="submit" class="button" id="Submit" value="登 陆"> </td>
                            <td width="26%" class="top_hui_text"><input name="cs" type="reset" class="button" id="cs" value="取 消"></td>
							<td></td>
                          </tr>
                        </table>
                        <br>
                    </form></td>
                  </tr>
                  <tr>
                    <td width="433" height="164" align="right" valign="bottom"><img src="<?php echo(base_url().LUMN_ADMIN_VIEW_PATH);?>/images/login-wel.gif" width="242" height="138"></td>
                    <td width="57" align="right" valign="bottom">&nbsp;</td>
                  </tr>
              </table></td>
            </tr>
          </table>
          </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="20"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="login-buttom-bg">
      <tr>
        <td align="center"><span class="login-buttom-txt">Copyright &copy; 2009-2010 LumnCms</span></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>