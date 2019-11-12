<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$date = new DateClass();
$stringObj = new String();

//---------------[ box-wp BEGIN ]---------------------------
$category_id = 0;
$breadcrumb_home = '<a href="'. HOME_URL_LANG . '" title="' . $lgTxt_menu_home . '"><i class="fa fa-home"></i></a>';
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
	$breadcrumb = '<a href="' . HOME_URL_LANG . '/' . $slug_cat . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>';
}
if($id_menu > 0) {
	$parent = 0;
	$db->table = "gallery_menu";
	$db->condition = "gallery_menu_id = " . $id_menu;
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	if($db->RowCount>0) {
		foreach ($rows as $row) {
			$breadcrumb = '<a href="' . HOME_URL_LANG . '/' . $slug_cat . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>';

			$category_comment =  stripslashes($row['comment']);
		}
	}
}
//echo '<div class="box-text box-wp"><div class="title-product"><h4>'. $category_plus .'</h4><h2 class="tit-pro"><span class="hvr-sweep-to-right">' . $breadcrumb .'</span></h1><p class="text-pro">'. $category_comment .'</p></div></div>';
echo '<section class="content c-gallery"><div class="box-wp"><div class="breadcrumb"><h1 class="title-mm"> ' . $breadcrumb . '</h1></div>';
//-------------------------------------------------------------------------------
if ($id_article > 0){
	$id = $id_article;
	include(_F_TEMPLATES . DS . "show_gallery.php");
} else if($id_menu <= 0) {
	$loc = array();
	$db->table = "gallery_menu";
	$db->condition = "is_active = 1 and category_id = ".$category_id;
	$db->order = "sort ASC";
	$db->limit = "";
	$rows = $db->select();
	$stt=0;
	foreach($rows as $row) {
		$loc[$stt] = $row['gallery_menu_id'];
		$stt++;
	}
	$loc = implode(',',$loc);
	$db->table = "gallery";
	$db->condition = "is_active = 1 and gallery_menu_id IN (".$loc.")";
	$db->order = "created_time DESC";
	$db->limit = "";
	$rows = $db->select();

	$total = $db->RowCount;
	if($total>1) {
		$total_pages = 0;
		$per_page = 9;
		if($total%$per_page==0) $total_pages = $total/$per_page;
		else $total_pages = floor($total/$per_page)+1;
		if($page<=0) $page=1;
		$start=($page-1)*$per_page;

		$db->table = "gallery";
		$db->condition = "is_active = 1 and gallery_menu_id IN (".$loc.")";
		$db->order = "created_time DESC";
		$db->limit = $start.','.$per_page;
		$rows = $db->select();

		$i = 0;
		echo '<div class="wp-list row clearfix">';
		foreach($rows as $row) {
			include(_F_TEMPLATES . DS . "show_list_video.php");
			$i++;
		}
		echo '</div>';
		showPageNavigation($page, $total_pages,'/'.$slug_cat.'?p=');
	}
	else if ($total==1) {
		$id = 0;
		foreach($rows as $row) {
			$id = $row['gallery_id'];
		}
		include(_F_TEMPLATES . DS . "show_gallery.php");
	}
	else echo '<div class="wrap updating f-space25 clearfix">
                <h3>'.$lgTxt_update.'</h3>
            </div>';

} else {
	$slug_submenu = "";
	$parent = false;
	$db->table = "gallery_menu";
	$db->condition = "is_active = 1 and gallery_menu_id = ".$id_menu;
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach($rows as $row) {
		$slug_submenu =  $row['slug'];
		$parent = ($row['parent']+0 == 0) ? true : false;
	}
	if($parent) {
		$loc = array();
		$db->table = "gallery_menu";
		$db->condition = "is_active = 1 and parent = ".$id_menu;
		$db->order = "sort ASC";
		$db->limit = "";
		$rows = $db->select();
		$stt=0;
		if($db->RowCount>0) {
			foreach($rows as $row) {
				$loc[$stt] = $row['gallery_menu_id'];
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

	$db->table = "gallery";
	$db->condition = "is_active = 1 and gallery_menu_id IN (".$loc.")";
	$db->order = "created_time DESC";
	$db->limit = "";
	$rows = $db->select();

	$total = $db->RowCount;
	if($total>1) {
		$total_pages = 0;
		$per_page = 9;
		if($total%$per_page==0) $total_pages=$total/$per_page;
		else $total_pages = floor($total/$per_page)+1;
		if($page<=0) $page=1;
		$start=($page-1)*$per_page;

		$db->table = "gallery";
		$db->condition = "is_active = 1 and gallery_menu_id IN (".$loc.")";
		$db->order = "created_time DESC";
		$db->limit = $start.','.$per_page;
		$rows = $db->select();

		$i = 0;
		echo '<div class="wp- row clearfix">';
		foreach($rows as $row) {
			include(_F_TEMPLATES . DS . "show_list_video.php");
			$i++;
		}
		echo '</div>';
		showPageNavigation($page, $total_pages,'/'.$slug_cat.'/'.$slug_submenu.'?p=');
	}
	else if ($total==1) {
		$id = 0;
		foreach($rows as $row) {
			$id = $row['gallery_id'];
		}
		include(_F_TEMPLATES . DS . "show_gallery.php");
	}
	else echo '<div class="wrap updating f-space25 clearfix">
                <h3>'.$lgTxt_update.'</h3>
            </div>';
}
echo '</div>';
echo '</section>';
