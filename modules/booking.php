<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//-------------
$date = new DateClass();
$stringObj = new String();
?>
<section class="box-bookhome">
    <div class="container">
        <h2 class="title-sm"><?php echo $lgTxt_title_book;?></h2>
        <div class="text-book"><?php echo getPage('time_book'); ?></div>
        <div class="booking">
            <div class="form-booking f-space10">
                <input type="hidden" name="lang_field" value="<?php echo $txtEnter_field;?>"/>
                <input type="hidden" name="lang_email" value="<?php echo $txtEnter_email;?>"/>
                <input type="hidden" name="lang_phone" value="<?php echo $txtEnter_tell;?>"/>
                <form id="_frm_booking" name="frm_booking" class="booking" method="post" onsubmit="return sendMail('send_booking', '_frm_booking');">
                    <input type="hidden" name="id" value="<?php echo stripslashes($row['others_id']); ?>">
                    <div class="clearfix">
                        <div class="form-item form-sm">
                            <input class="form-control" type="text" name="full_name" placeholder="<?php echo $lgTxt_booking_name;?>" value="" maxlength="250">
                        </div>
                        <div class="form-item form-sm">
                            <input class="form-control" type="text" name="phone" placeholder="<?php echo $lgTxt_booking_fone;?>" value="" maxlength="20">
                        </div>
                        <div class="clearfix"></div>
                        <div class="form-item form-sm">
                            <input class="form-control" type="text" name="email" placeholder="<?php echo $lgTxt_booking_email;?>" value="" maxlength="250">
                        </div>
                        <div class="form-item form-sm">
                            <input class="form-control" type="text" name="adults" placeholder="<?php echo $lgTxt_booking_quantity;?>" class="auto-number" data-a-sep="." data-a-dec="," data-v-max="999" data-v-min="0" value="" maxlength="3">
                        </div>
                        <div class="form-item form-sm">
                            <div class='input-group date' id='datetimepicker1'>
                                <input class="form-control" type="text" placeholder="<?php echo $lgTxt_booking_begin;?>" class="date-begin" name="date_begin" value="" maxlength="50">
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                        <div class="form-item form-sm">
                            <select class="form-control" name="time" placeholder="<?php echo $lgTxt_booking_time;?>" >
                                <option selected><?php echo $lgTxt_booking_time;?></option>
                                <?php
                                $db->table = "product_menu";
                                $db->condition = "is_active = 1 and `parent` = 0 and category_id = 74";
                                $db->order = "`sort` ASC";
                                $db->limit = "";
                                $rows_r = $db->select();
                                foreach($rows_r as $row){
                                    $selected = '';
                                    if($row['product_menu_id']==$id) $selected = ' selected';
                                    echo '<option value="' . stripslashes($row['name']) . '"' . $selected . '>' . stripslashes($row['name']).'</option>';
                                }
                                ?>
                            </select>
                        </div>
                        <div class="clearfix"></div>
                        <div class="form-item form-bg sub-book f-space20" style="text-align: center">
                            <input class="btn btn-danger" type="submit" id="_send_booking" name="send_booking" value="<?php echo $lgTxt_booking_submit;?>">
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
                        startDate: '+1d',
                        toggleActive: true
                    });
                    window.onload = check_booking();
                </script>
            </div>
        </div>
    </div>
</section>