<?php
if(isset($_POST['btnSendOrder'])) {

	$date = new DateClass();
	$stringObj = new String();
	$item = '';

	$txtName = $_POST['txtName'];
	$txtEmail = $_POST['txtEmail'];
	$txtTell = $_POST['txtTell'];
	$txtAddress = $_POST['txtAddress'];
	$txtContent = $_POST['txtContent'];
	if(empty($HTTP_X_FORWARDED_FOR)) $IP_NUMBER = getenv("REMOTE_ADDR");
	else $IP_NUMBER = $HTTP_X_FORWARDED_FOR;
	$domain = $_SERVER['HTTP_HOST'];
	$emailTo = getConstant('email_contact');
	$time_now = time();
	$datetime_now = $date->vnDateTime(time());

	$subject = "[ĐẶT HÀNG] ".$txtName." (". $datetime_now .")";
	$message = '<div style="line-height: 20px;"><b>----- THÔNG TIN KHÁCH HÀNG ------</b><br/>Họ và tên: <b>'.$txtName.'</b><br/>Địa chỉ: <b>'.$txtAddress.'</b><br/>Email: <b>'.$txtEmail.'</b><br/>Số điện thoại: <b>'.$txtTell.'</b><br/>Yêu cầu: <b>'.$txtContent.'</b><br/><b>'.$txtName.'</b> đặt hàng từ website http://'.$domain.'</div><p>&nbsp;</p>';

	$message .= '<div><p><b>----- ĐƠN ĐẶT HÀNG ------</b></p>';
	$message .= '<table cellpadding="5" cellspacing="0" class="form-order" style="box-sizing: border-box; border-width: 0px 1px 1px 0px; border-right-style: solid; border-bottom-style: solid; border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); max-width: 100%;" width="100%"><thead style="box-sizing: border-box; border: 0px;"><tr align="center" style="box-sizing: border-box; border: 0px;"><td style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); color: rgb(255, 255, 255); font-weight: bold; background: #08608a;" width="12%">Hình ảnh</td><td style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); color: rgb(255, 255, 255); font-weight: bold; background: #08608a;">Sản phẩm</td><td style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); color: rgb(255, 255, 255); font-weight: bold; background: #08608a;">Đơn giá</td><td style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); color: rgb(255, 255, 255); font-weight: bold; background: #08608a;" width="12%">Số lượng</td><td style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); color: rgb(255, 255, 255); font-weight: bold; background: #08608a;">Thành tiền</td></tr></thead>';

	foreach($_SESSION['cart'] as $key=>$value) {
		$item[] = $key;
	}
	$str = empty($item) ? 0 : implode(",",$item);

	$db->table = "product";
	$db->condition = "is_active = 1 and product_id IN ($str)";
	$db->order = "created_time DESC";
	$db->limit = "";
	$rows = $db->select();

	if($db->RowCount>0) {
		$total = 0;
		$contact = false;
		foreach($rows as $row) {
			$img_product    = '';
			$name_product   = '';
			$price_product  = '';
			$money_price    = '';
			$price          = 0;
			$price_amount   = 0;

			$alt = stripslashes($row['name']);
			if($row['img']!="" && $row['img']!="no") {
				$img_product = '<img width="100px" src="'. HOME_URL .'/uploads/product/product-1x'.$row['img'].'" alt="'.$alt.'" />';
				$img_product = '<a title="'.stripslashes($row['name']).'">'.$img_product.'</a>';
			} else {
				$img_product = '<img width="100px" src="'. HOME_URL .'/images/404-product.jpg" alt="'.$alt.'" />';
			}

			$name_product   = '<a title="'.stripslashes($row['name']).'">'.stripslashes($row['name']).'</a>';
			$price          = $row['price']+0;
			$price_product  = ($price==0) ? 'Liên hệ'  : number_format($price,0,"",".");
			$price_amount   = $price*$_SESSION['cart'][$row['product_id']];
			$money_price    = ($price==0) ? 'Liên hệ'  : number_format($price_amount,0,"",".");
			if($price==0) $contact = true;
			$total = $total + $price_amount;


			$message .= '<tr style="box-sizing: border-box; border: 0px;"><td align="center" class="img" style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); line-height: 0;">'.$img_product.'</td><td align="center" style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221);">'.$name_product.'</td><td align="center" style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221);">'.$price_product.'</td><td align="center" style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221);">'.$_SESSION['cart'][$row['product_id']].'</td><td align="center" style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221);">'.$money_price.'</td></tr>';

		}
		$total_money = ($contact==true) ? 'Liên hệ'  : number_format(($total),0,"",".");
		$message .= '<tr style="box-sizing: border-box; border: 0px;"><td align="right" colspan="4" style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221);"><strong style="box-sizing: border-box; border: 0px;"><strong>Tổng tiền:</strong></td><td align="center" class="total" style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); font-weight: bold; color: rgb(155, 99, 46); text-transform: uppercase; text-decoration: underline;">'.$total_money.'</td></tr>';
	} else {
		$message .= '<tr style="box-sizing: border-box; border: 0px;"><td align="center" colspan="5" style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221);" ><strong>Giỏ hàng rỗng</strong></td></tr>';
	}

	$message .= '</table></div>';

	$db->table = "order";
	$data = array(
		'name'=>$db->clearText($txtName),
		'phone'=>$db->clearText($txtTell),
		'email'=>$db->clearText($txtEmail),
		'content'=>$db->clearText($message),
		'ip'=>$db->clearText($IP_NUMBER),
		'icon'=>'fa-shopping',
		'created_time'=>$time_now
	);
	$db->insert($data);

	$send_mail = sendMailFn($txtEmail, $txtName, $emailTo, '', $subject, $message, '', $txtEmail, $txtName);
	if($send_mail == TRUE) {
		unset($_SESSION['cart']);
		session_destroy();
		echo $txtOrder_sendOk;
	}
	else { echo $txtContact_sendDie; }

}