<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$stringObj = new String();
require_once(ROOT_DIR . DS ."lang" . DS . $lang . ".lang");
?>
<!-- .booking -->
<div class="modal-content modal-animated-in">
<div class="booking animated fadeIn" id="_order">

	<div class="modal-header">

		<!--<div class="close fa fa-close"></div>-->
		<button type="button" class="close" data-dismiss="modal">&times;</button>
		<h4 class="modal-title"><?php echo $lgTxt_title_book;?></h4>
	</div>
	<div class="form-booking" style="padding: 20px 20px 30px 20px">
		<input type="hidden" name="lang_field" value="<?php echo $txtEnter_field;?>">
		<input type="hidden" name="lang_email" value="<?php echo $txtEnter_email;?>">
		<input type="hidden" name="lang_phone" value="<?php echo $txtEnter_tell;?>">
		<form id="_frm_booking" name="frm_booking" class="booking" method="post" onsubmit="return sendHome('send_booking', '_frm_booking', '<?php echo $lang;?>');">
			<input type="hidden" name="id" value="0">
			<div class="clearfix">
				<div class="form-item form-bg">
					<input class="" type="text" name="full_name" placeholder="<?php echo $lgTxt_booking_name;?>" value="" maxlength="250">
				</div>
				<div class="form-item form-bg">
					<input class="" type="text" name="phone" placeholder="<?php echo $lgTxt_booking_fone;?>" value="" maxlength="20">
				</div>
				<div class="clearfix"></div>
				<div class="form-item form-bg">
					<input class="" type="text" name="email" placeholder="<?php echo $lgTxt_booking_email;?>" value="" maxlength="250">
				</div>
				<div class="form-item form-bg">
					<input class="" type="text" name="adults" placeholder="<?php echo $lgTxt_booking_quantity;?>" class="auto-number" data-a-sep="." data-a-dec="," data-v-max="999" data-v-min="0" value="" maxlength="3">
				</div>
				<div class="form-item form-bg">
					<div class='input-group date' id='datetimepicker1'>
						<input class="" type="text" placeholder="<?php echo $lgTxt_booking_begin;?>" class="date-begin" name="date_begin" value="" maxlength="50">
						<span class="input-group-addon">
							<span class="glyphicon glyphicon-calendar"></span>
						</span>
					</div>
				</div>
				<div class="form-item form-bg">
					<select class="form-control" name="time" placeholder="<?php echo $lgTxt_booking_time;?>" >
						<option selected><?php echo $lgTxt_booking_time;?></option>
						<?php
						$db->table = "others";
						$db->condition = "is_active = 1 and others_menu_id = 1";
						$db->order = "`sort` ASC";
						$db->limit = "";
						$rows_r = $db->select();
						foreach($rows_r as $row){
							$selected = '';
							echo '<option value="' . stripslashes($row['name']) . '"' . $selected . '>' . stripslashes($row['name']).'</option>';
						}
						?>
					</select>
				</div>
				<div class="form-item form-bg">
					<select class="form-control" name="map" >
						<option selected><?php echo getNameMenu(2, 'others');?></option>
						<?php
						$db->table = "others";
						$db->condition = "is_active = 1 and others_menu_id = 2";
						$db->order = "`sort` ASC";
						$db->limit = "";
						$rows_r = $db->select();
						foreach($rows_r as $row){
							$selected = '';
							echo '<option value="' . stripslashes($row['name']) . '"' . $selected . '>' . stripslashes($row['name']).'</option>';
						}
						?>
					</select>
				</div>
				<div class="clearfix"></div>
				<div class="form-item form-bg sub-book f-space05" style="text-align: center">
					<input style="width: 40%" class="btn btn-danger" type="submit" id="_send_booking" name="send_booking" value="<?php echo $lgTxt_booking_submit;?>">
				</div>
			</div>
		</form>
		<script>
			$('.input-group.date').datepicker({
				weekStart: 0,
				maxViewMode: 3,
				language: "vi",
				orientation: "top left",
				keyboardNavigation: false,
				forceParse: false,
				autoclose: true,
				todayHighlight: true,
				startDate: '1d',
				toggleActive: true
			});
			window.onload = check_booking();
		</script>
	</div>
</div>
</div>
<!-- / .booking -->