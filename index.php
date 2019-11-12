<?php
@ob_start();
@session_start();
// System
define( 'TTH_SYSTEM', true );

$url = isset($_GET['url']) ? $_GET['url'] : 'home';
$path = array();
$path = explode('/',$url);
if($path[0]=='en') {
	$_SESSION["language"] = 'en';
} elseif($path[0]=='kr') {
	$_SESSION["language"] = 'kr';
} elseif($path[0]=='cn') {
	$_SESSION["language"] = 'cn';
} elseif($path[0]=='vi') {
	$_SESSION["language"] = 'vi';
} elseif($path[0]=='th') {
	$_SESSION["language"] = 'th';
} else {
	$_SESSION["language"] = 'vi';
	array_unshift($path, 'vi');
}
//----------------------------------------------------------------------------------------------------------------------
require_once(str_replace( DIRECTORY_SEPARATOR, '/', dirname( __file__ ) ) . '/define.php');
//---
require_once(ROOT_DIR . DS ."lang" . DS . TTH_LANGUAGE . ".lang");
include_once(_F_FUNCTIONS . DS . "Function.php");
try {
	$db =  new ActiveRecord(TTH_DB_HOST, TTH_DB_USER, TTH_DB_PASS, TTH_DB_NAME);
}
catch(DatabaseConnException $e) {
	echo $e->getMessage();
}
$account["id"] = empty($_SESSION["user_id"]) ? 0 : $_SESSION["user_id"]+0;
include_once(_F_INCLUDES . DS . "_tth_constants.php");
include_once(_F_INCLUDES . DS . "_tth_url.php");
include_once(_F_INCLUDES . DS . "_tth_online_daily.php");
if($slug_cat=='gio-hang') {
	if(isset($_POST['remove'])) {
		removeCart();
	}
	if(isset($_POST['addCart']) && isset($_POST['id'])) {
		addToCart($_POST['id']+0, 1);
	}
	if(isset($_GET['del']) && isset($_GET['del'])) {
		delItemCart($_GET['del']);
	}
	if(isset($_POST['updates']) && isset($_POST['qty'])) {
		updateCart($_POST['qty']);
	}
}
?>
<!DOCTYPE html>
<html lang="<?php echo TTH_LANGUAGE;?>">
<head>
	<?php
	include(_F_INCLUDES . DS . "_tth_head.php");
	include(_F_INCLUDES . DS . "_tth_script.php");
	?>
</head>
<body>
<?php
echo getConstant('script_body');
?>
<!-- #wrapper -->
<div id="wrapper">
	<?php
	include(_F_INCLUDES . DS . "tth_header.php");
	if($slug_cat=='home') include(_F_INCLUDES . DS . "tth_slider.php");
	elseif($slug_cat=='tripadvisor') '';
	else include(_F_INCLUDES . DS . "tth_slider_small.php");
	?>
	<!-- .container -->
	<section class="container-page">
		<?php
		include(_F_MODULES . DS .  str_replace('-','_',$slug_cat) . ".php");
		?>
	</section>
	<!-- / .container -->
	<?php
	//if($slug_cat=='gioi-thieu') include(_F_INCLUDES . DS . "tth_partners.php");
	include(_F_INCLUDES . DS . "tth_footer.php");
	include(_F_INCLUDES . DS . "tth_menu_sm.php");
	?>
</div>
<!-- / #wrapper -->
<a href="javascript:void(0)" title="Lên đầu trang" id="go-top"><i class="fa fa-angle-up"></i></a>
<div id="_loading"></div>
<div id="_order" class="modal" style="display: none"></div>
	<!--<div class="quick-call-button"></div>
	<div class="call-now-button" style="left: 41px; bottom: 214px;">
		<div>
			<p class="call-text"><a href="<?/*=HOME_URL_LANG*/?>/<?/*=$lgTxt_slug_cart*/?>" title="BOOK NOW">BOOK NOW</a></p>
			<a href="<?/*=HOME_URL_LANG*/?>/<?/*=$lgTxt_slug_cart*/?>" title="BOOK NOW">
				<div class="quick-alo-ph-circle active"></div>
				<div class="quick-alo-ph-circle-fill active"></div>
				<div class="quick-alo-ph-img-circle shake"></div>
				<span id="count_cart"><?php /*if(isset($_SESSION['cart'])) echo count($_SESSION['cart']); else echo '0';*/?></span>
			</a>
		</div>
	</div>-->
	<div class="quick-call-button"></div>
	<div class="call-now-button" style="left: 41px; bottom: 214px;">
		<div>
			<p class="call-text"><a  href="javascript;" onclick="return open_booking('_order', '<?php echo $_SESSION["language"];?>');" title="BOOK NOW">BOOK NOW</a></p>
			<a  href="javascript;" onclick="return open_booking('_order', '<?php echo $_SESSION["language"];?>');" title="BOOK NOW">
				<div class="quick-alo-ph-circle active"></div>
				<div class="quick-alo-ph-circle-fill active"></div>
				<div class="quick-alo-ph-img-circle shake"></div>
			</a>
		</div>
	</div>
<?php
//echo '<div id="cart-fix" class="hvr-push" onclick="Forward(\'/mua-hang/\')"><span>'.count($_SESSION['cart']) .'</span></div>';
echo getConstant('script_bottom');
?>
</body>
</html>