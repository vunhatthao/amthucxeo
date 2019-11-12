<?php
if(isset($_POST['id'])) {
	$stringObj  = new String();
	$id = empty($id) ?  0 : $_POST['id'];
	$category  = getTableOl($id, 'product_menu', 'product_menu_id', 'category_id');
	$slug = getSlugCategory($category);
	$db->table = "product";
	$db->condition = "`is_active` = 1 AND `product_menu_id` = $id";
	$db->order = "`created_time` DESC";
	$db->limit = 20;
	$rows = $db->select();
	foreach($rows as $row) {
		$photo_avt = '';
		$alt = ($row['img_note']!="") ? stripslashes($row['img_note']) : stripslashes($row['name']);
		if($row['img']!="" && $row['img']!="no") {
			$photo_avt = '<img src="'. HOME_URL .'/uploads/product/bds-'. $row['img'] . '" alt="' . $alt . '">';
		} else {
			$photo_avt = '<img src="'. HOME_URL .'/images/404-bds.jpg" alt="'.$alt.'">';
		}

		$photo_avt = '<a href="'. HOME_URL_LANG . '/' . $slug . '/' . getSlugMenu($row['product_menu_id'], 'product') . '/' . $stringObj->getLinkHtml($row['name'], $row['product_id']) . '" title="' . stripslashes($row['name']) . '">' . $photo_avt . '</a>';
		$title = '<h3><a href="'. HOME_URL_LANG . '/' . $slug . '/' . getSlugMenu($row['product_menu_id'], 'product') . '/' . $stringObj->getLinkHtml($row['name'], $row['product_id']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a></h3>';

		$hot = $status = '';
		if($row['hot']==1) $hot = '<div class="it-hot">Hot</div>';
		if($row['pin']==1) $status = '<div class="it-status s-2">Đã giao dịch</div>';
		else $status = '<div class="it-status s-1">Đang giao dịch</div>';
		?>
		<div class="item-re">
			<div class="box">
				<div class="img"><?php echo $photo_avt . $hot . $status; ?></div>
				<div class="comment">
					<?php echo $title;?>
					<ul class="info">
						<?php
						if($row['area']>0) echo '<li class="acreage">' . formatNumberVN($row['area']) . 'm<sup>2</sup></li>'; else echo '<li class="not">&nbsp;</li>';
						if($row['price']>0) echo '<li class="price">' . convertCurrency($row['price']) . stripslashes($row['price_unit']); else echo '<li class="not">&nbsp;</li>';
						if($row['bedroom']>0) echo '<li class="bedroom">' . formatNumberVN($row['bedroom']); else echo '<li class="not">&nbsp;</li>';
						if($row['bathroom']>0) echo '<li class="bathroom">' . formatNumberVN($row['bathroom']); else echo '<li class="not">&nbsp;</li>';
						if($row['address']!="") echo '<li class="address">' . stripslashes($row['address']);
						?>
					</ul>
				</div>
			</div>
		</div>
	<?php }
} else echo 'Error--';