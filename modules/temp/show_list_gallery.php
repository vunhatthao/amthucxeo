<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$photo_avt = '';
$alt = stripslashes($row['name']);
if($row['img']!="" && $row['img']!="no") {
	$photo_avt = '<img src="'. HOME_URL .'/uploads/gallery/'. $row['img'] . '" alt="' . $alt . '" />';
} else {
	$photo_avt = '<img src="'. HOME_URL .'/images/404.jpg" alt="'.$alt.'" />';
}
$photo_avt = '<a href="'. HOME_URL_LANG . '/' . $row['slug'] . '" title="' . stripslashes($row['name']) . '">' . $photo_avt . '</a>';
$title = '<a href="'. HOME_URL_LANG . '/' . $row['slug'] . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>';
?>

<div class="item-7 col-lg-4 col-md-4 col-sm-6 col-xs-6">
	<div class="box-it">
		<div class="img">
			<?php echo $photo_avt; ?>
		</div>
		<div class="comment"><h4><?php echo $title; ?></h4></div>
	</div>
</div>