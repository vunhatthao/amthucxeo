<?php
if(isset($_POST['order'])) {
	$date = new DateClass();

	$txtName        = $_POST['name'];
	$txtAddress     = $_POST['address'];
	$txtEmail       = $_POST['email'];
	$txtTel         = $_POST['tel'];
	$txtPurpose     = $_POST['content'];
	$type           = $_POST['type'];

	$service = '';
	$service .= '<label style="font-weight:600;padding-left:12px;">Họ và tên: </label> ' . $txtName . '<br/>';
	$service .= '<label style="font-weight:600;padding-left:12px;">Địa chỉ: </label> ' . $txtAddress . '<br/>';
	$service .= '<label style="font-weight:600;padding-left:12px;">Email: </label> ' . $txtEmail . '<br/>';
	$service .= '<label style="font-weight:600;padding-left:12px;">Số điện thoại: </label> ' . $txtTel . '<br/>';

	if($type=='hosting') {
		$id = isset($_POST['id']) ? $_POST['id']+0 : 0;
		$year = isset($_POST['year']) ? $_POST['year']+0: 0;

		$db->table = "article";
		$db->condition = "`article_id` = " . $id;
		$db->order = "";
		$db->limit = 1;
		$rows_svc = $db->select();
		if ($db->RowCount > 0) {
			foreach ($rows_svc as $row_svc) {
				$service .= '<label style="font-weight:600;padding-left:12px;">Dịch vụ: </label> <label style="font-size:15px;color:#0a79af;font-weight:600;text-transform:uppercase;">' . getTableOl($row_svc['article_menu_id'], 'article_menu', 'article_menu_id', 'icon') . ' - ' . stripslashes($row_svc['name']) . '</label><br>';
				$service .= '<label style="font-weight:600;padding-left:12px;">Đơn giá/năm: </label> ' . formatNumberVN($row_svc['price']) . $lgTxt_price_unit . '<br>';
				$service .= '<label style="font-weight:600;padding-left:12px;">Thời hạn đăng ký: </label> ' . $year . ' (năm)<br>';
				$service .= '<label style="font-weight:600;padding-left:12px;">Tổng tiền (chưa VAT): </label> ' . formatNumberVN($row_svc['price'] * $year) . $lgTxt_svc_money_unit . '<br>';
			}
		}
	} elseif($type=='domain') {
		$domain = isset($_POST['domain']) ? $_POST['domain'] : '';
		$year   = isset($_POST['year']) ? $_POST['year'] : 0;

		$service .= '<label style="font-weight:600;padding-left:12px;">Dịch vụ: </label> <label style="font-size:15px;color:#0a79af;font-weight:600;text-transform:uppercase;">' . getNameMenuArt(351) . '</label><br><br>';

		$total = 0;
		if(count($domain) > 0) {
			$service .= '<label style="padding-left:20px;display:block;"><span style="display:inline-block;width:40%;background-color:#dfdfdf;padding:8px;border-style:solid;border-color:#dfdfdf;border-width:0 0 0 1px;">Tên miền</span><span style="background-color:#dfdfdf;padding:8px;display:inline-block;width:20%;text-align:center;border-style:solid;border-color:#dfdfdf;border-width:0 1px 1px;">Thời hạn</span><span style="background-color:#dfdfdf;padding:8px;display:inline-block;width:30%;text-align:right;border-style:solid;border-color:#dfdfdf;border-width:0 1px 1px 0;">Số tiền</span></label>';
			for ($i = 0; $i < count($domain); $i++) {
				$pos = strpos($domain[$i], '.');
				$domain_ex = substr($domain[$i], 0, $pos);
				$ext = substr($domain[$i], $pos);
				$price = 0;
				$db->table = 'others';
				$db->condition = "name LIKE '$ext'";
				$db->order = "";
				$db->limit = 1;
				$rows = $db->select();
				foreach ($rows as $row) {
					$price = $row['price'] + 0;
				}
				$total = $total + ($price * $year[$i]);
				$service .= '<label style="padding-left:20px;display:block;"><span style="display:inline-block;width:40%;border-style:solid;border-color:#dfdfdf;border-width:0 0 1px 1px;padding:5px 8px;">' . $domain[$i] . '</span><span style="display:inline-block;width:20%;text-align:center;border-style:solid;border-color:#dfdfdf;border-width:0 1px 1px;padding:5px 8px;">' . $year[$i] . ' (năm)</span><span style="display:inline-block;width:30%;text-align:right;border-style:solid;border-color:#dfdfdf;border-width:0 1px 1px 0;padding:5px 8px;">' . formatNumberVN($price * $year[$i]) . $lgTxt_svc_money_unit . '</span></label>';
			}

			$service .= '<label style="padding-left:20px;display:block;"><span style="display:inline-block;width:40%;border-style:solid;border-color:#dfdfdf;border-width:0 0 1px 1px;padding:5px 8px;text-align:right;font-weight:bold;text-decoration:underline;">TỔNG TIỀN(chưa VAT): </span><span style="display:inline-block;width:20%;text-align:center;border-style:solid;border-color:#dfdfdf;border-width:0 1px 1px;padding:5px 8px;">-</span><span style="display:inline-block;width:30%;text-align:right;border-style:solid;border-color:#dfdfdf;border-width:0 1px 1px 0;padding:5px 8px;">' . formatNumberVN($total) . $lgTxt_svc_money_unit . '</span></label><br>';

		}
	} elseif($type=='general') {
		$id = isset($_POST['id']) ? $_POST['id']+0 : 0;

		$db->table = "article";
		$db->condition = "`article_id` = " . $id;
		$db->order = "";
		$db->limit = 1;
		$rows_svc = $db->select();
		if ($db->RowCount > 0) {
			foreach ($rows_svc as $row_svc) {
				$service .= '<label style="font-weight:600;padding-left:12px;">Dịch vụ: </label> <label style="font-size:15px;color:#0a79af;font-weight:600;text-transform:uppercase;">' .  stripslashes($row_svc['name']) . '</label><br>';
			}
		}
	}

	if(empty($HTTP_X_FORWARDED_FOR)) $IP_NUMBER = getenv("REMOTE_ADDR");
	else $IP_NUMBER = $HTTP_X_FORWARDED_FOR;
	$domain = $_SERVER['HTTP_HOST'];
	$email_to = getConstant('email_contact');
	$date = new DateClass();
	$time_now = time();
	$datetime_now = $date->vnDateTime(time());

	$service .= '<label style="font-weight:600;padding-left:12px;">IP truy cập: </label> '.$IP_NUMBER.'<br/>';
	$service .= '<label style="font-weight:600;padding-left:12px;">Ngày đặt: </label> '.$datetime_now.'<br/>';

	$subject = "[ĐĂNG KÝ DỊCH VỤ iSVC] ".$txtName." (".$datetime_now.")";
	$message = '<div marginwidth="0" marginheight="0" style="font-family:Arial,serif;"><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" style="table-layout:fixed;"><tbody><tr><td width="100%" valign="top" bgcolor="#f5f5f5" style="border-top:8px solid #0a79af;padding:0;"><table border="0" cellpadding="0" cellspacing="0" align="center" style="margin:0 auto;width:100%;"><tbody><tr><td bgcolor="white" style="padding:10px 0; text-align: center;"><a href="' . HOME_URL_LANG .'" target="_blank"><img src="'. HOME_URL . getConstant('file_logo') .'" style="max-height:70px;max-width:80%;" alt="' . getConstant('meta_site_name') . '" border="0"></a></td></tr></tbody></table><div style="min-height:35px">&nbsp;</div><table border="0" cellpadding="0" cellspacing="0" align="center" style="min-width:290px;margin:0 auto;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;" width="620"><tbody><tr><td style="border-left:3px solid #ffaa05;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;vertical-align:top;padding:15px 8px 25px 20px;" bgcolor="#fdfdfd"><p style="margin: 10px 0">Chào <b> '.$txtName.'</b>,</p><p style="margin: 10px 0">Xin chân thành cảm ơn Quý khách đã quan tâm và sử dụng dịch vụ của chúng tôi!<br>Yêu cầu của Quý khách đã gửi thành công. Chúng tôi sẽ phản hồi lại trong vòng 24h tới.</p><p style="margin: 10px 0"><b style="text-decoration:underline;">THÔNG TIN ĐĂNG KÝ DỊCH VỤ:</b><br/>' . $service . '</p><p style="margin: 10px 0">Đây là hộp thư tự động. Sau thời gian trên nếu quý khách chưa nhân được phản hồi từ nhân viên của chúng tôi, rất có thể đã gặp sự cố nhỏ nào đó vì vậy Quý khách có thể liên hệ trực tiếp chúng tôi để nhận được những thông tin nhanh nhất.</p><p style="margin: 10px 0">Chân thành cảm ơn!</p></td></tr></tbody></table><div style="min-height:35px">&nbsp;</div><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center"><tbody><tr><td bgcolor="#e1e1e1" style="padding:15px 10px 25px"><table border="0" cellpadding="0" cellspacing="0" align="center" style="margin:0 auto;min-width:290px;" width="620"><tbody><tr><td><table width="80%" cellpadding="0" cellspacing="0" border="0" align="left"><tbody><tr><td valign="top" style="font-size:12px;color:#5e5e5e;font-family:Arial,serif;line-height:15px;font-weight:bold;">' . getConstant('meta_site_name') . '<br>HOTLINE: ' . getConstant('tell_contact') . '</td></tr></tbody></table><table width="20%" cellpadding="0" cellspacing="0" border="0"><tbody><tr><td style="font-size:13px;color:#5e5e5e;font-family:Arial,serif;line-height:1;vertical-align:top;text-align:right;font-style:italic;"><span>Follow us on</span><br><a href="' . getConstant('link_facebook') . '" target="_blank"><img src="https://ci5.googleusercontent.com/proxy/PMSfAkbhhMLEe-tDCLFilReG-hlq_DWsTblTQ2qp8Dsq9KFW1UyFcKTr_uwU3EqyR8AhiFIooeExoAw9Oe3G5c6hvIEoOnU=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/fb.png" width="27" height="27" alt="Facebook logo" title="Facebook" border="0" style="padding:3px;"></a>&nbsp;<a href="' . getConstant('link_twitter') . '" target="_blank"><img src="https://ci3.googleusercontent.com/proxy/GNHxgrYKL99Apyic0XnGYk6IqVZAc-wFuhgCDxzBYMr80NGggmI1nRORIBVRIkPkJHbQHGGMrTFtbzTDoxk5dc0i_H0HOc0=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/tw.png" width="27" height="27" alt="Twitter logo" title="Twitter" border="0" style="padding:3px;"></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div>';

	$db->table = "order";
	$data = array(
		'name'=>$db->clearText($txtName),
		'phone'=>$db->clearText($txtTel),
		'email'=>$db->clearText($txtEmail),
		'content'=>$db->clearText($message),
		'ip'=>$db->clearText($IP_NUMBER),
		'icon'=>'fa-shopping-cart',
		'created_time'=>$time_now
	);
	$db->insert($data);
	
	$send_mail = sendMailFn($txtEmail, $txtName, $email_to, 'Chăm sóc khách hàng', $subject, $message, '', $txtEmail, $txtName);
	if($send_mail == TRUE)
		echo $txtOrder_sendOk;
	else
		echo $txtContact_sendDie;
}