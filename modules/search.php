<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//-----------------

$breadcrumb_home = '<a href="'. HOME_URL_LANG . '" title="' . $lgTxt_menu_home . '"><i class="fa fa-home"></i></a>';
$breadcrumb_category = $breadcrumb_menu_parent = $breadcrumb_menu = '';
$breadcrumb_category = '<h3 class="title"><a href="' . HOME_URL_LANG . '/' . $lgTxt_slug_search . '" title="' . $lgTxt_title_search . '">' . $lgTxt_title_search . '</a></h3>';

echo '<section class="content"><div class="box-wp"><div class="box-breadcrumb f-space15">' . $breadcrumb_category . $breadcrumb_menu_parent . $breadcrumb_menu . '</div>';
?>
<div class="wrap-detail f-space10">
	<div class="main-content-detail">
		<script>
			(function() {
				var cx = '009526142498541672060:a_bpbtsv2zc';
				var gcse = document.createElement('script');
				gcse.type = 'text/javascript';
				gcse.async = true;
				gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(gcse, s);
			})();
		</script>
		<gcse:search></gcse:search>
	</div>
</div>
<?php
echo '</div>';
echo '</section>';