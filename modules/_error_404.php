<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//---
$breadcrumb_home = '<a href="'. HOME_URL_LANG . '" title="' . $lgTxt_menu_home . '"><i class="fa fa-home"></i></a>';
$breadcrumb_category = '';
$breadcrumb_category = '<a class="error" href="' . HOME_URL_LANG . '" title="' . $lgTxt_error_page . '">' . $lgTxt_error_page . '</a>';

// Banner photo
$photo_avt = '<img src="'. HOME_URL .'/images/banner.jpg" alt="' . $lgTxt_error_page . '">';
$db->table = "category";
$db->condition = "`is_active` = 1 AND `category_id` = 89";
$db->order = "`sort` ASC";
$db->limit = 1;
$rows = $db->select();
foreach($rows as $row) {
    if(file_exists(ROOT_DIR  . DS . 'uploads' . DS . 'category' . DS . 'banner-' . $row['img']) && $row['img']!='') {
        $photo_avt = '<img src="'. HOME_URL .'/uploads/category/banner-'. $row['img'] . '" alt="' . $lgTxt_error_page . '">';
    }
}

echo '<section class="breadcrumb"><div class="box-wp">' . $breadcrumb_home . $breadcrumb_category . '</div></section>';
echo '<section class="content"><div class="box-wp">';
?>
<div class="error404">
    <p><?php echo $lgTxt_page404;?> <a href="<?php echo HOME_URL_LANG;?>"><?php echo $lgTxt_page404_click;?></a> <?php echo $lgTxt_page404_back;?> <a href="<?php echo HOME_URL_LANG;?>"><?php echo $lgTxt_menu_home;?></a>.</p>
    <p><i class="fa fa-warning color-red"></i></p>
</div>
<?php
echo '</div></section>';