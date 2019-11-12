<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$photo_avt = '';
$alt = stripslashes($row['name']);
if($row['img']!="" && $row['img']!="no") {
	$photo_avt = '<iframe height="315" src="'. str_replace("/watch?v=", "/embed/", stripslashes($row['link'])) . '?rel=0&showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>';
} else {
	$photo_avt = '<img src="'. HOME_URL .'/images/404.jpg" alt="'.$alt.'" />';
}
$photo_avt = '<a href="'. HOME_URL_LANG . '/' . $row['slug'] . '" title="' . stripslashes($row['name']) . '">' . $photo_avt . '</a>';
$title = '<a data-fancybox href="'. $row['link'] . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>';
?>

<div class="item-7 it-video col-lg-6 col-md-6 col-sm-6 col-xs-6">
	<div class="box-it">
		<div class="img">
			<?php echo $photo_avt; ?>
		</div>
		<div class="comment"><h4><?php echo $title; ?></h4></div>
	</div>
</div>