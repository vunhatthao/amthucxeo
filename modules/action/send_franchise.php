<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['send'])) {
	$txtName        = $_POST['last_name'] . ' ' . $_POST['first_name'];
	$txtBirthday    = $_POST['date'];
	$txtTel         = $_POST['tel'];
	$txtEmail       = $_POST['email'];
	$txtFacebook    = $_POST['facebook'];
	$txtCareer      = $_POST['career'];
	$txtSpecialize  = $_POST['specialize'];
	$txtIncome      = $_POST['income'];
	$txtCapital     = $_POST['capital'];
	$txtArea        = $_POST['area'];
	$txtReason      = $_POST['reason'];
	$id             = intval($_POST['id']);
	$txtTitle       = getNameCategory($id);
	
	if(empty($HTTP_X_FORWARDED_FOR)) $IP_NUMBER = getenv("REMOTE_ADDR");
	else $IP_NUMBER = $HTTP_X_FORWARDED_FOR;
	$domain = $_SERVER['HTTP_HOST'];
	$email_to = getConstant('email_contact');
	$date = new DateClass();
	$time_now = time();
	$datetime_now = $date->vnDateTime($time_now);

	$subject = "[FRANCHISE] " . $txtName . " (".$datetime_now.")";
	$message = '<div marginwidth="0" marginheight="0" style="font-family:Arial,serif;"><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" style="table-layout:fixed;"><tbody><tr><td width="100%" valign="top" bgcolor="#f5f5f5" style="padding:0"><table border="0" cellpadding="0" cellspacing="0" align="center" style="margin:0 auto;width:100%;"><tbody><tr><td bgcolor="white" style="padding:10px 0; text-align: center;"><a href="' . HOME_URL_LANG .'" target="_blank"><img src="'. HOME_URL . getConstant('file_logo') .'" style="max-height:70px;max-width:80%;" alt="' . getConstant('meta_site_name') . '" border="0"></a></td></tr></tbody></table><div style="min-height:35px">&nbsp;</div><table border="0" cellpadding="0" cellspacing="0" align="center" style="min-width:290px;margin:0 auto;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;" width="620"><tbody><tr><td style="border-left:6px solid #dfdfdf;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;vertical-align:top;padding:15px 8px 25px 20px;" bgcolor="#fdfdfd"><p style="margin: 10px 0">Chào <b> '.$txtName.'</b>,</p><p style="margin: 10px 0">Xin chân thành cảm ơn Quý khách đã quan tâm và sử dụng dịch vụ của chúng tôi!<br>Yêu cầu của Quý khách đã gửi thành công. Chúng tôi sẽ phản hồi lại trong vòng 24h tới.</p><p style="margin: 10px 0"><b style="text-decoration:underline;">THÔNG TIN ĐĂNG KÝ NHƯỢNG QUYỀN CỦA QUÝ KHÁCH:</b><br/><label style="font-weight:600;padding-left:12px;">THƯƠNG HIỆU: </label> ' . $txtTitle . '<br/><label style="font-weight:600;padding-left:12px;">Họ & tên: </label> ' .$txtName.'<br/><label style="font-weight:600;padding-left:12px;">Ngày sinh: </label> '.$txtBirthday.'<br/><label style="font-weight:600;padding-left:12px;">Số điện thoại: </label> '.$txtTel.'<br/><label style="font-weight:600;padding-left:12px;">Email: </label> '.$txtEmail.'<br/><label style="font-weight:600;padding-left:12px;">Facebook cá nhân: </label> '.$txtFacebook .'<br/><label style="font-weight:600;padding-left:12px;">Lịch sử kinh doanh và nghề nghiệp: </label> '.$txtCareer.'<br/><label style="font-weight:600;padding-left:12px;">Thế mạnh chuyên môn khác: </label> '.$txtSpecialize.'<br/><label style="font-weight:600;padding-left:12px;">Khả năng thu nhập hiện tại hằng tháng: </label> '.$txtIncome.'<br/><label style="font-weight:600;padding-left:12px;">Vốn đầu tư dự kiến cho dự án: </label> '.$txtCapital.'<br/><label style="font-weight:600;padding-left:12px;">Khu vực đăng ký làm làm đại lý: </label> '.$txtArea.'<br/><label style="font-weight:600;padding-left:12px;">Lý do tại sao bạn chọn HanCook food & cafe để đầu tư?: </label> '.$txtReason.'<br/><label style="font-weight:600;padding-left:12px;">IP truy cập: </label> '.$IP_NUMBER.'<br/><label style="font-weight:600;padding-left:12px;">Ngày gửi liên hệ: </label> '.$datetime_now.'<br/></p><p style="margin: 10px 0">Đây là hộp thư tự động. Sau thời gian trên nếu quý khách chưa nhân được phản hồi từ nhân viên của chúng tôi, rất có thể đã gặp sự cố nhỏ nào đó vì vậy Quý khách có thể liên hệ trực tiếp chúng tôi để nhận được những thông tin nhanh nhất.</p><p style="margin: 10px 0">Chân thành cảm ơn!</p></td></tr></tbody></table><div style="min-height:35px">&nbsp;</div><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center"><tbody><tr><td bgcolor="#e1e1e1" style="padding:15px 10px 25px"><table border="0" cellpadding="0" cellspacing="0" align="center" style="margin:0 auto;min-width:290px;" width="620"><tbody><tr><td><table width="80%" cellpadding="0" cellspacing="0" border="0" align="left"><tbody><tr><td valign="top" style="font-size:12px;color:#5e5e5e;font-family:Arial,serif;line-height:15px;font-weight:bold;">' . getConstant('meta_site_name') . '</td></tr></tbody></table><table width="20%" cellpadding="0" cellspacing="0" border="0"><tbody><tr><td style="font-size:13px;color:#5e5e5e;font-family:Arial,serif;line-height:1;vertical-align:top;text-align:right;font-style:italic;"><span>Follow us on</span><br><a href="' . getConstant('link_facebook') . '" target="_blank"><img src="https://ci5.googleusercontent.com/proxy/PMSfAkbhhMLEe-tDCLFilReG-hlq_DWsTblTQ2qp8Dsq9KFW1UyFcKTr_uwU3EqyR8AhiFIooeExoAw9Oe3G5c6hvIEoOnU=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/fb.png" width="27" height="27" alt="Facebook logo" title="Facebook" border="0" style="padding:3px;"></a>&nbsp;<a href="' . getConstant('link_twitter') . '" target="_blank"><img src="https://ci3.googleusercontent.com/proxy/GNHxgrYKL99Apyic0XnGYk6IqVZAc-wFuhgCDxzBYMr80NGggmI1nRORIBVRIkPkJHbQHGGMrTFtbzTDoxk5dc0i_H0HOc0=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/tw.png" width="27" height="27" alt="Twitter logo" title="Twitter" border="0" style="padding:3px;"></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div>';

	$db->table = "contact";
	$data = array(
		'name'=>$db->clearText($txtName),
		'email'=>$db->clearText($txtEmail),
		'phone'=>$db->clearText($txtTel),
		'content'=>$db->clearText($message),
		'ip'=>$db->clearText($IP_NUMBER),
		'created_time'=>$time_now
	);
	$db->insert($data);

	$send_mail = sendMailFn($txtEmail, $txtName, $email_to, '', $subject, $message, '', $txtEmail, $txtName);
	if($send_mail == TRUE)
		echo $txtContact_sendOk;
	else
		echo $txtContact_sendDie;

}