<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$date = new DateClass();
$stringObj = new String();

//---------------[ box-wp BEGIN ]---------------------------
$breadcrumb_home = '<a href="'. HOME_URL_LANG . '" title="' . $lgTxt_menu_home . '">' . $lgTxt_menu_home . '</a>';
$breadcrumb_category = $breadcrumb_menu = '';

$db->table = "category";
$db->condition = "`is_active` = 1 AND `category_id` = $id_category";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
foreach ($rows as $row) {
	$breadcrumb_category = '<a href="' . HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>';
}
if($id_menu > 0) {
	$parent = $id_menu;
	while($parent>0) {
		$db->table = "product_menu";
		$db->condition = "`product_menu_id` = $parent";
		$db->order = "";
		$db->limit = 1;
		$rows = $db->select();
		if($db->RowCount>0) {
			foreach ($rows as $row) {
				$parent = intval($row['parent']);
				$breadcrumb_menu = '<a href="' . HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>' . $breadcrumb_menu;
			}
		} else $parent = 0;
	}
}

echo '<div class="breadcrumb"><div class="box-wp">' . $breadcrumb_home . $breadcrumb_category . $breadcrumb_menu . '</div></div>';
echo '<section class="content c-news"><div class="box-wp">';
//echo '<div class="content-right">';
//-------------------------------------------------------------------------------
if ($id_article > 0){
	$id = $id_article;
	include(_F_TEMPLATES . DS . "show_article.php");
} else if($id_menu <= 0) {
    $list = getListIdMenuChild('article_menu', $id_category, 0);

    $db->table = "article";
    $db->condition = "`is_active` = 1 AND `article_menu_id` IN ($list)";
    $db->order = "`created_time` DESC";
    $db->limit = "";
    $rows = $db->select();

    $total = $db->RowCount;
    if($total>1) {
        $total_pages = 0;
        $per_page = 6;
        if($total%$per_page==0) $total_pages=$total/$per_page;
        else $total_pages = floor($total/$per_page)+1;
        if($page<=0) $page=1;
        $start=($page-1)*$per_page;

        $db->table = "article";
        $db->condition = "`is_active` = 1 AND `article_menu_id` IN ($list)";
        $db->order = "`created_time` DESC";
        $db->limit = $start.','.$per_page;
        $rows = $db->select();

        $i = 0;
        echo '<div class="list-news row clearfix">';
        foreach($rows as $row) {
            include(_F_TEMPLATES . DS . "show_list_article.php");
            $i++;
        }
        echo '</div>';
        showPageNavigation($page, $total_pages, HOME_URL_LANG . '/' . $slug_cat . '?p=');
    }
    else if ($total==1) {
        $id = 0;
        foreach($rows as $row) {
            $id = $row['article_id'];
        }
        include(_F_TEMPLATES . DS . "show_article.php");
    }
    else {
        echo '<div class="wrap updating"><h3>' . $lgTxt_update . '</h3></div>';
    }

} else {
	$slug_submenu = getSlugMenu($id_menu, 'article');
	$list = getListIdMenuChild('article_menu', $id_category, $id_menu);

	$db->table = "article";
	$db->condition = "`is_active` = 1 AND `article_menu_id` IN ($list)";
	$db->order = "`created_time` DESC";
	$db->limit = "";
	$rows = $db->select();

	$total = $db->RowCount;
	if($total>1) {
		$total_pages = 0;
		$per_page = 6;
		if($total%$per_page==0) $total_pages=$total/$per_page;
		else $total_pages = floor($total/$per_page)+1;
		if($page<=0) $page=1;
		$start=($page-1)*$per_page;

		$db->table = "article";
		$db->condition = "`is_active` = 1 AND `article_menu_id` IN ($list)";
		$db->order = "`created_time` DESC";
		$db->limit = $start.','.$per_page;
		$rows = $db->select();

		$i = 0;
		echo '<div class="list-news row clearfix">';
		foreach($rows as $row) {
			include(_F_TEMPLATES . DS . "show_list_article.php");
			$i++;
		}
		echo '</div>';
		showPageNavigation($page, $total_pages, HOME_URL_LANG . '/' . $slug_submenu . '?p=');
	}
	else if ($total==1) {
		$id = 0;
		foreach($rows as $row) {
			$id = $row['article_id'];
		}
		include(_F_TEMPLATES . DS . "show_article.php");
	}
	else {
		echo '<div class="wrap updating"><h3>' . $lgTxt_update . '</h3></div>';
	}
}

//echo '</div>';
//include(_F_INCLUDES . DS . "tth_left.php");
echo '</div></section>';
