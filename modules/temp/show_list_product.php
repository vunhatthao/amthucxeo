<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$photo_avt = '';
$alt = ($row['img_note']!="") ? stripslashes($row['img_note']) : stripslashes($row['name']);
if($row['img']!="" && $row['img']!="no") {
	$photo_avt = '<img src="'. HOME_URL .'/uploads/product/product-1x'. $row['img'] . '" alt="' . $alt . '" />';
	$photo_avt = '<a title="' . stripslashes($row['name']) . '">' . $photo_avt . '</a>';
} else {
	$photo_avt = '<img src="'. HOME_URL .'/images/404-product.jpg" alt="'.$alt.'" />';
	$photo_avt = '<a title="' . stripslashes($row['name']) . '">' . $photo_avt . '</a>';
}
$title = '<h4 class="title"><a>' . $stringObj->crop(stripslashes($row['name']), 8) . '</a></h4>';


$sale = '';
if($row['sale']>0) $sale = '<p class="sale">' . stripslashes(formatNumberVN($row['sale']))  . '</p>';
else $sale = '<p class="sale"></p>';
$price = '';
if($row['price']>0) $price = '<span class="price">' . stripslashes(formatNumberVN($row['price']))  . $lgTxt_unit_price . '</span>';
else $price = '<span class="price "></span>';
?>
<div class="item-product col-xs-6 col-lg-6 col-sm-6 col-md-6">
	<div class="box-it">
		<div class="img">
			<?php echo $photo_avt; ?>
		</div>
		<div class="comment">
			<div class="post clearfix">
				<?php echo $title ; ?>
			</div>
			<?php echo '<div class="txt">'. stripslashes($row['promotion']) . '</div>'; ?>
			<div class="buttons clearfix">
				<?php echo $price; ?>
				<span class="cart">
					<a href="#" class="fa-order btn_add_card" data-id="<?php echo $row['product_id']?>" ><span><?=$lgTxt_add_cart;?></span></a>
				</span>
			</div>
		</div>
	</div>
</div>
	