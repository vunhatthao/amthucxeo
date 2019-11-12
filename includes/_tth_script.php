<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
?>

<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/modernizr.custom.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.easing.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.slider/jssor.slider.min.js"></script>
<?php
if($slug_cat=='home') {
?>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.slider/jssor.slider.js"></script>
<?php }?>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/script.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.mmenu.all.min.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/fancybox-master/dist/jquery.fancybox.min.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.popup/jquery.boxes.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.popup/jquery.boxes.repopup.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/owlcarousel2/assets/owlcarousel/owl.carousel.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/bootstrap-datepicker.vi.min.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.matchHeight-min.js"></script>
<?php if($slug_cat=='thuc-don'){ ?>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/onepage.nav.js"></script>
<?php }?>
<?php echo getConstant('google_analytics')?>
<?php echo getConstant('chat_online')?>

