<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//-----------------

$breadcrumb_home = '<a href="'. HOME_URL_LANG . '" title="' . $lgTxt_menu_home . '">'. $lgTxt_menu_home .'</a>';
$breadcrumb_category = $breadcrumb_menu_parent = $breadcrumb_menu = '';
$breadcrumb_category = '<a href="' . HOME_URL_LANG . '/' . $lgTxt_slug_contact . '" title="' . $lgTxt_menu_contact . '">' . $lgTxt_menu_contact . '</a>';


echo '<section class="content c-contact"><div class="box-wp">';
?>

	<div class="wrap-detail contact-page clearfix">
		<div class="contact-right">
			<div class="box-map">
				<?=getPage('contact_maps')?>
			</div>
			<!--<div class="contact-info">
				<?php /*echo getPage('contact_page')*/?>
			</div>-->
		</div>
		<div class="contact-left">
			<h3 class="tit-pro title"><?=getPage('contact_page', 'name')?></h3>
			<p class="txt f-space10">
				<?php echo getPage('contact_page', 'comment');?>
			</p>
			<input type="hidden" name="lang_field" value="<?php echo $txtEnter_field;?>"/>
			<input type="hidden" name="lang_email" value="<?php echo $txtEnter_email;?>"/>
			<input type="hidden" name="lang_phone" value="<?php echo $txtEnter_tell;?>"/>
			<form id="_frm_contact" name="frm_contact" style="margin:0 -7px;" class="frm f-space20" method="post" onsubmit="return sendMail('send_contact', '_frm_contact');">
				<div class="f-space05 clearfix">
					<div class="form-item form-bg">
						<input type="text" name="name" placeholder="<?=$txtContact_name?>" value="" maxlength="250">

					</div>
					<div class="form-item form-bg">
						<input type="text" name="address" placeholder="<?=$txtContact_address?>" value="" maxlength="250">

					</div>
					<div class="clearfix"></div>
					<div class="form-item form-sm">
						<input type="text" name="email" placeholder="<?=$txtContact_email?>" value="" maxlength="250">

					</div>
					<div class="form-item form-sm">
						<input type="text" name="tel" placeholder="<?=$txtContact_fone?>" value="" maxlength="20">

					</div>
				</div>
				<div class="form-item form-bg">
					<textarea name="content" placeholder="<?=$txtContact_content?>" cols="60" rows="4"></textarea>

				</div>
				<div class="form-bg clearfix" style="text-align:right;">
					<div class="form-item form-bg hvr-rectangle-in" style="margin-right: -5px;">
						<button class="btn btn-danger" type="reset" value="Reset">Xóa</button>
						<input class="btn btn-primary" type="submit" id="_send_contact" value="Gửi" name="send_contact">
					</div>
				</div>
			</form>
			<script>
				window.onload = check_contact();
			</script>
		</div>
	</div>
<?php
echo '</div>';
echo '</section>';