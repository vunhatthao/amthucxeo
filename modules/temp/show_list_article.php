<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$photo_avt = '';
$alt = ($row['img_note'] != '') ? stripslashes($row['img_note']) : stripslashes($row['name']);
if(file_exists(ROOT_DIR  . DS . 'uploads' . DS . 'article' . DS . 'post-' . $row['img']) && $row['img']!='') {
	$photo_avt = '<img src="'. HOME_URL .'/uploads/article/post-'. $row['img'] . '" alt="' . $alt . '">';
} else {
	$photo_avt = '<img src="'. HOME_URL .'/images/404-post.jpg" alt="'.$alt.'">';
}

$photo_avt = '<a href="'. HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . $photo_avt . '</a>';
$title = $time = $hot = '';
if($row['hot']==1) $hot = '<span class="p-hot"></span>';
$title = '<h3><a href="'. HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . $hot . stripslashes($row['name']) . '</a></h3>';

if($slug_cat=='news' || $slug_cat=='tin-tuc') {
	$time = '<p class="time">' . $date->date($row['created_time']) . '</p>';
}
?>
<div class="item-news col-lg-4 col-sm-4 col-md-4 col-xs-6">
	<div class="img">
		<?php echo $photo_avt;?>
		<div class="time-view">
			<?php
			echo '<span class="time"><i class="fa fa-clock-o"></i> ' .  $date->date($row['created_time']) . '</span>';
			echo '<span class="view"><i class="fa fa-eye"></i> ' . formatNumberVN($row['views']) . '</span>';
			?>
		</div>
	</div>
	<div class="description">
		<?php
		echo $title;
		if($row['comment']!='') echo '<p class="txt">' . $stringObj->crop(stripslashes($row['comment']), 26) . '</p>';
		echo '<p class="more"><a href="'. HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . $lgTxt_red_more . ' <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></p>';
		?>
	</div>
</div>