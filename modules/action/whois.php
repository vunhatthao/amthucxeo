<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_REQUEST['domain'])) {
	$domain = empty($_REQUEST['domain']) ? '' : $_REQUEST['domain'];
	$pos = strpos($domain, '.');
	$url = $msg = "";
	$status = 0;
	$root_domain = "http://api.nhanhoa.com/";
	$apinhanhoa = new APINhanHoa();

	$domain_ex = substr($domain, 0, $pos);
	$ext       = substr($domain, $pos);

	$cmd = "whois";
	$postfields["auth-user"] = 'APIhgcEJTP6AD3obNJS';
	$postfields["auth-pwd"] = 'APIQRtNcEsKM2M9eYZp3Dvffza91j6bnQbE';
	$postfields["auth-id"] = 'API81944';

	$formdata = array(
			"domain" => $domain_ex,
			"ext" => $ext,
			"type" => "0",
	);

	$data = $apinhanhoa->execute($cmd, $postfields, $formdata);
	$pos = strpos($data, 'đã đăng ký');
	if($pos === false) {
		$price = 0;
		$db->table = 'others';
		$db->condition = "name LIKE '$ext'";
		$db->order = "";
		$db->limit = 1;
		$rows = $db->select();
		foreach ($rows as $row){
			$price = $row['price']+0;
		}
		$msg = '<label class="domain">' . $domain . '</label><label class="check"><span class="square-orange single-row"><span class="checkbox"><input type="checkbox"  name="reg" value="' . $domain. '"></span></span></label><label class="price">' . formatNumberVN($price) . $lgTxt_price_unit . '</label>';
		$status = 0;
	} else {
		$msg = '<label class="domain">' . $domain . '</label><label class="check"><button type="button" class="btn btn-default btn-xs" onclick="return open_whois(\'' . $domain. '\');">Xem</button></label>';
		$status = 1;
	}

	echo json_encode( array("status" => $status, "msg" => $msg) );


} else echo json_encode(false);
