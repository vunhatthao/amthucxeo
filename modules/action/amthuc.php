<?php
 $qty = $_POST['qty'];

 foreach($qty as $key=>$value) {
 	// echo $value;
		if( ($value == 0) and (is_numeric($value))) {
			unset($_SESSION['cart'][$key]);
		}
		elseif(($value > 0) and (is_numeric($value))) {
			$_SESSION['cart'][$key] = $value;
		}
	}

	global $db, $lgTxt_cart_img, $lgTxt_cart_product, $lgTxt_cart_unit, $lgTxt_cart_number, $lgTxt_cart_money, $lgTxt_cart_cancel, $lgTxt_cart_contact, $lgTxt_cart_total, $lgTxt_cart_empty, $lgTxt_name_delivery, $lgTxt_cart_continue, $lgTxt_cart_update;
	$stringObj = new String();
	$item = '';

			echo '<thead class="flip-content">
				<tr align="center">
					<th width="15%">'. $lgTxt_cart_img .'</th>
					<th width="30%">'. $lgTxt_cart_product .'</th>
					<th width="15%">'. $lgTxt_cart_unit .'</th>
					<th width="5%">'. $lgTxt_cart_number .'</th>
					<th width="15%">'. $lgTxt_cart_money .'</th>
					<th width="5%">'. $lgTxt_cart_cancel .'</th>
				</tr>
			</thead>';

	foreach($_SESSION['cart'] as $key=>$value) {
		$item[] = $key;
	}
	$str = empty($item) ? 0 : implode(",",$item);

	$db->table = "product";
	$db->condition = "is_active = 1 and product_id IN ($str)";
	$db->order = "created_time DESC";
	$db->limit = "";
	$rows = $db->select();
	if($db->RowCount>0) {
		$total = 0;
		$contact = false;
		foreach($rows as $row) {
			$img_product    = '';
			$name_product   = '';
			$price_product  = '';
			$money_price    = '';
			$price          = 0;
			$price_amount   = 0;
			$ship           = '';

			$alt = stripslashes($row['name']);
			if($row['img']!="" && $row['img']!="no") {
				$img_product = '<img src="'. HOME_URL .'/uploads/product/product-1x'.$row['img'].'" alt="'.$alt.'" />';
				//$img_product = '<a href="'. HOME_URL .'/san-pham/'.getSlugMenu($row['product_menu_id'], 'product').'/'.$stringObj->getLinkHtml($row['name'], $row['product_id']).'" title="'.stripslashes($row['name']).'">'.$img_product.'</a>';
			} else {
				$img_product = '<img src="'. HOME_URL .'/images/404-product.jpg" alt="'.$alt.'" />';
				//$img_product = '<a  href="'. HOME_URL .'/san-pham/'.getSlugMenu($row['product_menu_id'], 'product').'/'.$stringObj->getLinkHtml($row['name'], $row['product_id']).'" title="'.stripslashes($row['name']).'">'.$img_product.'</a>';
			}


			$name_product   = '<h4><a title="'.stripslashes($row['name']).'">' . stripslashes($row['name']).'</a></h4>';
			$price          = $row['price']+0;
			$price_product  = ($price==0) ? $lgTxt_cart_contact  : formatNumberVN($price) . '₫';
			$price_amount   = $price*$_SESSION['cart'][$row['product_id']];
			$money_price    = ($price==0) ? $lgTxt_cart_contact  : formatNumberVN($price_amount) . '₫';
			if($price==0) $contact = true;
			$total = $total + $price_amount;


			echo '<tr>
					<td align="center"><div class="img">'.$img_product.'</div></td>
					<td>'. $name_product .'</td>
					<td align="right"><span class="money">'.$price_product.'</span></td>
					<td align="center"><input type="text" class="nh_'.$row['product_id'].'" onkeyup="sanpham(this.value,'.$row['product_id'].')" name="qty['.$row['product_id'].']" value="'.$_SESSION['cart'][$row['product_id']].'" maxlength="5"></td>
					<td align="right"><span class="money">'.$money_price.'</span></td>
					<td align="center" class="remove"><a href="'.HOME_URL_LANG.'/order?del='.$row['product_id'].'" title="Xóa sản phẩm"><i class="fa fa-trash"></i></a></td>
			</tr>';

		}
		$total_money = ($contact==true) ? $lgTxt_cart_contact  : formatNumberVN($total) . '₫';
		echo '<tr>
			<td align="right" colspan="4">'.$lgTxt_cart_total.'</td>
			<td align="center" class="total th_total" style="text-transform: none;white-space: nowrap;"><p>'.$total_money.'</p><span style="display: none;">'. $total_money.'</span><span class="tongtien" id="'.$total_money.'"></span></td>
			<td>&nbsp;</td>
		</tr>';
	} else {
		echo '<tr>
			<td align="center" colspan="6" style="padding: 20px 10px;">'.$lgTxt_cart_empty.'</td>
		</tr>';
	}

	