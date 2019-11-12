<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$photo_avt = '';
$alt = ($row2['img_note']!="") ? stripslashes($row2['img_note']) : stripslashes($row2['name']);
if($row2['img']!="" && $row2['img']!="no") {
	$photo_avt = '<img src="'. HOME_URL .'/uploads/product/product-1x'. $row2['img'] . '" alt="' . $alt . '" />';
	$photo_avt = '<a href="'. HOME_URL_LANG . '/' . $row2['slug'] . '" title="' . stripslashes($row2['name']) . '">' . $photo_avt . '</a>';
} else {
	$photo_avt = '<img src="'. HOME_URL .'/images/404-product.jpg" alt="'.$alt.'" />';
	$photo_avt = '<a href="'. HOME_URL_LANG . '/' . $row2['slug'] . '" title="' . stripslashes($row2['name']) . '">' . $photo_avt . '</a>';
}
$title = '<h4 class="title"><a href="'. HOME_URL_LANG . '/' . $row2['slug'] . '">' . $stringObj->crop(stripslashes($row2['name']), 8) . '</a></h4>';


$sale = '';
if($row2['sale']>0) $sale = '<p class="sale">' . stripslashes(formatNumberVN($row2['sale']))  . 'Đ</p>';
else $sale = '<p class="sale"></p>';
$price = '';
if($row2['price']>0) $price = '<span class="price">' . stripslashes(formatNumberVN($row2['price']))  . '€</span>';
else $price = '<span class="price"></span>';
?>
<div class="item-product pro-others">
	<div class="box-it">
		<div class="img">
			<?php echo $photo_avt; ?>
		</div>
		<div class="comment">
			<div class="post clearfix">
				<?php echo $title . $price ; ?>
			</div>
			<?php echo '<p class="txt">'. $stringObj->crop(stripslashes($row2['guarantee']), 10) . '</p>'; ?>
		</div>
	</div>
</div>
	