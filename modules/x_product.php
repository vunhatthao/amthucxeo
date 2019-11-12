<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$date = new DateClass();
$stringObj = new String();

//---------------[ box-wp BEGIN ]---------------------------
$category_id = 0;
$breadcrumb_home = '<a href="'. HOME_URL_LANG . '" title="' . $lgTxt_menu_home . '">'. $lgTxt_menu_home .'</a>';
$breadcrumb_category = $breadcrumb_menu_parent = $breadcrumb_menu = $breadcrumb_detail = '';
$breadcrumb = '';
$db->table = "category";
$db->condition = "is_active = 1 and slug = '".$slug_cat."'";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
foreach ($rows as $row) {
	$category_plus =  stripslashes($row['plus']);
	$category_comment =  stripslashes($row['comment']);
	$category_id = $row['category_id']+0;
	$breadcrumb_category = '<a href="' . HOME_URL_LANG . '/' . $slug_cat . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>';
$breadcrumb = '<a href="' . HOME_URL_LANG . '/' . $slug_cat . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>';
}
if($id_menu > 0) {
	$parent = 0;
	$db->table = "product_menu";
	$db->condition = "product_menu_id = " . $id_menu;
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	if($db->RowCount>0) {
		foreach ($rows as $row) {
			$parent = $row['parent'] + 0;
			if ($parent == 0) {
				$breadcrumb_menu_parent = '<a href="' . HOME_URL_LANG . '/' . $slug_cat . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>';

				$category_comment =  stripslashes($row['plus']);
			} else {
				$db->table = "product_menu";
				$db->condition = "product_menu_id = " . $parent;
				$db->order = "";
				$db->limit = 1;
				$rows_parent = $db->select();
				if ($db->RowCount > 0) {
					foreach ($rows_parent as $row_parent) {
						$breadcrumb_menu_parent = '<a href="' . HOME_URL_LANG . '/' . $slug_cat . '/' . stripslashes($row_parent['slug']) . '" title="' . stripslashes($row_parent['name']) . '">' . stripslashes($row_parent['name']) . '</a>';
						$breadcrumb_menu = '<a href="' . HOME_URL_LANG . '/' . $slug_cat . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>';

						$category_comment =  stripslashes($row['plus']);
					}
				}
			}
		}
	}
}
if($id_menu > 0) {
	$parent = 0;
	$db->table = "product_menu";
	$db->condition = "product_menu_id = " . $id_menu;
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	if($db->RowCount>0) {
		foreach ($rows as $row) {
			$breadcrumb = '<a href="' . HOME_URL_LANG . '/' . $slug_cat . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>';
			$category_comment =  stripslashes($row['plus']);
		}
	}
}
//echo '<div class="box-text box-wp"><div class="title-product"><h2 class="tit-pro"><span class="hvr-sweep-to-right">' . $breadcrumb .'</span></h2><p class="text-pro">'. $category_comment .'</p></div></div>';
//echo '<div class="breadcrumb"><div class="box-wp">' . $breadcrumb_home . $breadcrumb_category . $breadcrumb_menu . '</div></div>';
echo '<section class="content wap-product">';

//-------------------------------------------------------------------------------
if ($id_article > 0){
	$id = $id_article;
	include(_F_TEMPLATES . DS . "show_product.php");
} else if($id_menu <= 0) {
	$loc = array();
	$db->table = "product_menu";
	$db->condition = "is_active = 1 AND `parent` = 0 AND `category_id` = $category_id";
	$db->order = "`sort` ASC";
	$db->limit = "";
	$rows = $db->select();
	$total = $db->RowCount;
	if($total>0) {
		//echo '<div class="box-text box-wp"><div class="title-product"><h2 class="tit-pro"><span class="hvr-sweep-to-right">' . $breadcrumb .'</span></h2><p class="text-pro">'. $category_comment .'</p></div></div>';
		echo '<div class="onepage dotstyle dotstyle-tooltip">' . menuOnePage('product_menu', $id_category, 0, $slug_cat, $id_menu) . '</div>';
		echo '<div class="list-item-product-big clearfix">';
		//
		$total_pages = 0;
		$per_page = 12;
		if($total%$per_page==0) $total_pages = $total/$per_page;
		else $total_pages = floor($total/$per_page)+1;
		if($page<=0) $page=1;
		$start=($page-1)*$per_page;

		$db->table = "product_menu";
		$db->condition = "is_active = 1 AND `parent` = 0 AND `category_id` = $category_id";
		$db->order = "`sort` ASC";
		$db->limit = $start.','.$per_page;
		$rows1 = $db->select();
		foreach($rows1 as $row1) {
			$photo_avt = '';
			$alt = stripslashes($row1['name']);
			if($row1['img']!="" && $row1['img']!="no") {
				$photo_avt = 'url('. HOME_URL .'/uploads/product_menu/bg-'. $row1['img'] . ')';
			} else {
				$photo_avt = 'url('. HOME_URL .'/images/bg-404.jpg)';
			}
			//$photo_avt = '<a href="'. HOME_URL_LANG . '/' . $row['slug'] . '" title="' . stripslashes($row['name']) . '">' . $photo_avt . '</a>';

			?>
			<div class="title-bg box-wp" id="<?=$row1['slug'];?>">
				<h2 class="title-sm">
					<a href="<?php echo HOME_URL_LANG . '/' . $row1['slug']?>" title="<?php echo $row1['name']; ?>" >
						<span><?php echo $stringObj->crop(stripslashes($row1['name']), 10);?></span>
					</a>
				</h2>
			</div>
			<?php
			echo '<div class="box-wp"><div class="list-item-product row clearfix">';

			$list = getListIdMenuChild('product_menu', $category_id, $row1['product_menu_id']);

			$db->table = "product";
			$db->condition = "is_active = 1 AND product_menu_id IN ($list)";
			$db->order = "created_time DESC";
			$db->limit = "";
			$rows = $db->select();
			$i = 0;
			foreach ($rows as $row) {
				include(_F_TEMPLATES . DS . "show_list_product.php");
				$i++;
			}
			echo '</div></div>';
		}

		showPageNavigation($page, $total_pages, HOME_URL_LANG . '/'.$slug_cat.'?p=');
		//
		echo '</div>';
	}
	else if ($total==1) {
		$id = 0;
		foreach($rows as $row) {
			$id = $row['product_id'];
		}
		include(_F_TEMPLATES . DS . "show_product.php");
	}
	else echo '<div class="box-wp"><div class="wrap updating clearfix"><h3>'.$lgTxt_update.'</h3></div></div>';

} else {
	$slug_submenu = "";
	$parent = false;
	$db->table = "product_menu";
	$db->condition = "is_active = 1 and product_menu_id = ".$id_menu;
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach($rows as $row) {
		$slug_submenu =  $row['slug'];
		$parent = ($row['parent']+0 == 0) ? true : false;
	}
	if($parent) {
		$loc = array();
		$db->table = "product_menu";
		$db->condition = "is_active = 1 and parent = ".$id_menu;
		$db->order = "sort ASC";
		$db->limit = "";
		$rows = $db->select();
		$stt=0;
		if($db->RowCount>0) {
			foreach($rows as $row) {
				$loc[$stt] = $row['product_menu_id'];
				$stt++;
			}
			$loc = implode(',',$loc);
			$loc = $id_menu . ','.$loc;
		} else {
			$loc = $id_menu;
		}
	} else {
		$loc = $id_menu;
	}

	$db->table = "product";
	$db->condition = "is_active = 1 and product_menu_id IN (".$loc.")";
	$db->order = "`created_time` ASC";
	$db->limit = "";
	$rows = $db->select();

	$total = $db->RowCount;
	if($total>1) {
		$total_pages = 0;
		$per_page = 14;
		if($total%$per_page==0) $total_pages=$total/$per_page;
		else $total_pages = floor($total/$per_page)+1;
		if($page<=0) $page=1;
		$start=($page-1)*$per_page;

		$db->table = "product";
		$db->condition = "is_active = 1 and product_menu_id IN (".$loc.")";
		$db->order = "`created_time` DESC";
		$db->limit = $start.','.$per_page;
		$rows = $db->select();

		$i = 0;
		//echo '<div class="content-right">';
		//echo '<div class="box-text box-wp"><div class="title-product title-show-product"><h2 class="tit-pro"><span class="hvr-sweep-to-right">' . $breadcrumb .'</span></h2><p class="text-pro">'. $category_comment .'</p></div></div>';

		echo '<div class="box-wp"><div class="list-product f-space15 row clearfix">';
		foreach($rows as $row) {
			include(_F_TEMPLATES . DS . "show_list_product.php");
			$i++;
		}
        echo '</div></div>';
		showPageNavigation($page, $total_pages,'/'.$slug_submenu.'?p=');
        //echo '</div>';

		//include(_F_INCLUDES . DS . "tth_left.php");
	}
	else if ($total==1) {
		$id = 0;
		foreach($rows as $row) {
			$id = $row['product_id'];
		}
		include(_F_TEMPLATES . DS . "show_product.php");
	}
	else echo '<div class="box-wp"><div class="wrap-updating clearfix"><h3>'.$lgTxt_prupdate.'</h3></div></div>';
}

//echo '</div>';
echo '</section>';
?>

<script>
	$(document).ready(function(){
		$('#nav_user').onePageNav();
	});
</script>
