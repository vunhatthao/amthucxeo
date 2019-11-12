<?php
if(isset($_POST['send_booking'])) {

	$date = new DateClass();
	$stringObj = new String();
	
	$txtName        = $_POST['full_name'];
	$txtCountry     = $_POST['country'];
	$txtAddress     = $_POST['address'];
	$txtEmail       = $_POST['email'];
	$txtTel         = $_POST['phone'];
	$txtStar        = $_POST['star'];
	$txtRoom        = $_POST['room'];
	$txtDateStart   = $_POST['hotel_date_begin'];
	$txtDateEnd     = $_POST['hotel_date_end'];
	$txtAdults      = $_POST['adults'];
	$txtChild       = $_POST['child'];
	$txtContent     = $_POST['content'];
	$id             = $_POST['id'];
	$slug_cat7      = getSlugCategory(7);

	$hotel = '';
	$db->table = "article";
	$db->condition = "`is_active` = 1 and `article_id` = $id";
	$db->order = "";
	$db->limit = 1;
	$rows_hotel = $db->select();
	if($db->RowCount>0) {
		foreach($rows_hotel as $row_hotel) {
			
			$photo_avt = '';
			$alt = ($row_hotel['img_note']!="") ? stripslashes($row_hotel['img_note']) : stripslashes($row_hotel['name']);
			if($row_hotel['img']!="" && $row_hotel['img']!="no") {
				$photo_avt = '<img width="200" src="'. HOME_URL .'/uploads/article/hotel-'. $row_hotel['img'] . '" alt="' . $alt . '" />';
				$photo_avt = '<a href="'. HOME_URL_LANG . '/' . $slug_cat7 . '/' . getSlugMenu($row_hotel['article_menu_id'], 'article') . '/' . $stringObj->getLinkHtml($row_hotel['name'], $row_hotel['article_id']) . '" title="' . stripslashes($row_hotel['name']) . '">' . $photo_avt . '</a>';
			} else {
				$photo_avt = '<img width="200" src="'. HOME_URL .'/images/404-hotel.jpg" alt="'.$alt.'" />';
				$photo_avt = '<a href="'. HOME_URL_LANG . '/' . $slug_cat7 . '/' . getSlugMenu($row_hotel['article_menu_id'], 'article') . '/' . $stringObj->getLinkHtml($row_hotel['name'], $row_hotel['article_id']) . '" title="' . stripslashes($row_hotel['name']) . '">' . $photo_avt . '</a>';
			}

			$hotel .= '<label style="font-size:15px;font-weight:600;padding-left:12px;text-transform:uppercase;"><a href="'. HOME_URL_LANG . '/' . $slug_cat7 . '/' . getSlugMenu($row_hotel['article_menu_id'], 'article') . '/' . $stringObj->getLinkHtml($row_hotel['name'], $row_hotel['article_id']) . '" title="' . stripslashes($row_hotel['name']) . '">' . stripslashes($row_hotel['name']) . '</a></label><br>';
			$hotel .= '<label style="font-weight:600;padding-left:12px;">Hình ảnh: </label><br><label style="padding-left:12px;">'. $photo_avt .'</label><br>';
		}
	}

	if(empty($HTTP_X_FORWARDED_FOR)) $IP_NUMBER = getenv("REMOTE_ADDR");
	else $IP_NUMBER = $HTTP_X_FORWARDED_FOR;
	$domain = $_SERVER['HTTP_HOST'];
	$email_to = getConstant('email_contact');
	$date = new DateClass();
	$time_now = time();
	$datetime_now = $date->vnDateTime(time());

	$subject = "[ĐẶT PHÒNG] ".$txtName." (".$datetime_now.")";
	$message = '<div marginwidth="0" marginheight="0" style="font-family:Arial,serif;"><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" style="table-layout:fixed;"><tbody><tr><td width="100%" valign="top" bgcolor="#f5f5f5" style="border-top:3px solid #579902;padding:0;"><table border="0" cellpadding="0" cellspacing="0" align="center" style="margin:0 auto;width:100%;"><tbody><tr><td bgcolor="white" style="padding:10px 0; text-align: center;"><a href="' . HOME_URL_LANG .'" target="_blank"><img src="'. HOME_URL . getConstant('file_logo') .'" style="max-height:70px;max-width:80%;" alt="' . getConstant('meta_site_name') . '" border="0"></a></td></tr></tbody></table><div style="min-height:35px">&nbsp;</div><table border="0" cellpadding="0" cellspacing="0" align="center" style="min-width:290px;margin:0 auto;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;" width="620"><tbody><tr><td style="border-left:6px solid #fb651b;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;vertical-align:top;padding:15px 8px 25px 20px;" bgcolor="#fdfdfd"><p style="margin: 10px 0">Chào <b> '.$txtName.'</b>,</p><p style="margin: 10px 0">Xin chân thành cảm ơn Quý khách đã quan tâm và sử dụng dịch vụ của chúng tôi!<br>Yêu cầu của Quý khách đã gửi thành công. Chúng tôi sẽ phản hồi lại trong vòng 24h tới.</p><p style="margin: 10px 0"><b style="text-decoration:underline;">THÔNG TIN ĐẶT PHÒNG KHÁCH SẠN CỦA QUÝ KHÁCH:</b><br/><label style="font-weight:600;padding-left:12px;">Họ và tên: </label> ' .$txtName.'<br/><label style="font-weight:600;padding-left:12px;">Quốc tịch: </label> ' .$txtCountry.'<br/><label style="font-weight:600;padding-left:12px;">Địa chỉ: </label> ' .$txtAddress.'<br/><label style="font-weight:600;padding-left:12px;">Email: </label> '.$txtEmail.'<br/><label style="font-weight:600;padding-left:12px;">Điện thoại: </label> '.$txtTel.'<br/><label style="font-weight:600;padding-left:12px;">Tiêu chuẩn: </label> '.$txtStar.'<br/><label style="font-weight:600;padding-left:12px;">Loại phòng: </label> '.$txtRoom.'<br/><label style="font-weight:600;padding-left:12px;">Ngày nhận phòng: </label> '.$txtDateStart.'<br/><label style="font-weight:600;padding-left:12px;">Ngày trả phòng: </label> '.$txtDateEnd.'<br/><label style="font-weight:600;padding-left:12px;">Người lớn: </label> '.$txtAdults.'<br/><label style="font-weight:600;padding-left:12px;">Trẻ em: </label> '.$txtChild.'<br/><label style="font-weight:600;padding-left:12px;">Yêu cầu: </label> '.$txtContent.'<br/>' . $hotel . '<label style="font-weight:600;padding-left:12px;">IP truy cập: </label> '.$IP_NUMBER.'<br/><label style="font-weight:600;padding-left:12px;">Ngày đặt: </label> '.$datetime_now.'<br/></p><p style="margin: 10px 0">Đây là hộp thư tự động. Sau thời gian trên nếu quý khách chưa nhân được phản hồi từ nhân viên của chúng tôi, rất có thể đã gặp sự cố nhỏ nào đó vì vậy Quý khách có thể liên hệ trực tiếp chúng tôi để nhận được những thông tin nhanh nhất.</p><p style="margin: 10px 0">Chân thành cảm ơn!</p></td></tr></tbody></table><div style="min-height:35px">&nbsp;</div><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center"><tbody><tr><td bgcolor="#e1e1e1" style="padding:15px 10px 25px"><table border="0" cellpadding="0" cellspacing="0" align="center" style="margin:0 auto;min-width:290px;" width="620"><tbody><tr><td><table width="80%" cellpadding="0" cellspacing="0" border="0" align="left"><tbody><tr><td valign="top" style="font-size:12px;color:#5e5e5e;font-family:Arial,serif;line-height:15px;font-weight:bold;">' . getConstant('meta_site_name') . '</td></tr></tbody></table><table width="20%" cellpadding="0" cellspacing="0" border="0"><tbody><tr><td style="font-size:13px;color:#5e5e5e;font-family:Arial,serif;line-height:1;vertical-align:top;text-align:right;font-style:italic;"><span>Follow us on</span><br><a href="' . getConstant('link_facebook') . '" target="_blank"><img src="https://ci5.googleusercontent.com/proxy/PMSfAkbhhMLEe-tDCLFilReG-hlq_DWsTblTQ2qp8Dsq9KFW1UyFcKTr_uwU3EqyR8AhiFIooeExoAw9Oe3G5c6hvIEoOnU=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/fb.png" width="27" height="27" alt="Facebook logo" title="Facebook" border="0" style="padding:3px;"></a>&nbsp;<a href="' . getConstant('link_twitter') . '" target="_blank"><img src="https://ci3.googleusercontent.com/proxy/GNHxgrYKL99Apyic0XnGYk6IqVZAc-wFuhgCDxzBYMr80NGggmI1nRORIBVRIkPkJHbQHGGMrTFtbzTDoxk5dc0i_H0HOc0=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/tw.png" width="27" height="27" alt="Twitter logo" title="Twitter" border="0" style="padding:3px;"></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div>';

	$db->table = "order";
	$data = array(
		'name'=>$db->clearText($txtName),
		'phone'=>$db->clearText($txtTel),
		'email'=>$db->clearText($txtEmail),
		'content'=>$db->clearText($message),
		'ip'=>$db->clearText($IP_NUMBER),
		'icon'=>'fa-building',
		'created_time'=>$time_now
	);
	$db->insert($data);
	
	$send_mail = sendMailFn($txtEmail, $txtName, $email_to, 'Tư vấn khách hàng', $subject, $message, '', $txtEmail, $txtName);
	if($send_mail == TRUE)
		echo $txtOrder_sendOk;
	else
		echo $txtContact_sendDie;
}