<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//-------------
?>
<!-- .banner -->
<section class="box-banner">
    <?php
    // Banner photo
    $photo_avt = '<img src="'. HOME_URL .'/images/banner.jpg" alt="Banner">';
    $id = ($id_category>0) ? $id_category : 89;
    //
    $db->table = "category";
    $db->condition = "`is_active` = 1 AND `category_id` = $id";
    $db->order = "";
    $db->limit = 1;
    $rows = $db->select();
    foreach ($rows as $row) {
        if(file_exists(ROOT_DIR  . DS . 'uploads' . DS . 'category' . DS . 'banner-' . $row['img']) && $row['img']!='') {
            $photo_avt = '<img src="'. HOME_URL .'/uploads/category/banner-'. $row['img'] . '" alt="' . stripslashes($row['name']) . '">';
        }
    }
    if($id_menu > 0) {
        $parent = $id_menu;
        $role = 1;
        while($parent>0 && $role==1) {
            $db->table = "article_menu";
            $db->condition = "`article_menu_id` = $parent";
            $db->order = "";
            $db->limit = 1;
            $rows = $db->select();
            if($db->RowCount>0) {
                foreach ($rows as $row) {
                    $parent = intval($row['parent']);
                    if(file_exists(ROOT_DIR  . DS . 'uploads' . DS . 'article_menu' . DS . 'banner-' . $row['img']) && $row['img']!='') {
                        $photo_avt = '<img src="'. HOME_URL .'/uploads/article_menu/banner-'. $row['img'] . '" alt="' . stripslashes($row['name']) . '">';
                        $role = 0;
                    }
                }
            } else $parent = 0;
        }
    }

    $breadcrumb_home = '<a href="'. HOME_URL_LANG . '" title="' . $lgTxt_menu_home . '">'. $lgTxt_menu_home .'</a>';
    $breadcrumb_category = $breadcrumb_menu_parent = $breadcrumb_menu = $breadcrumb_detail = '';
    $breadcrumb = '';
    $db->table = "category";
    $db->condition = "is_active = 1 and slug = '".$slug_cat."'";
    $db->order = "";
    $db->limit = 1;
    $rows = $db->select();
    foreach ($rows as $row) {
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
                if(file_exists(ROOT_DIR  . DS . 'uploads' . DS . 'product_menu' . DS . 'banner-' . $row['img']) && $row['img']!='') {
                    $photo_avt = '<img src="'. HOME_URL .'/uploads/product_menu/banner-'. $row['img'] . '" alt="' . stripslashes($row['name']) . '">';
                    $role = 0;
                }
                if ($parent == 0) {
                    $breadcrumb_menu_parent = '<a href="' . HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>';
                } else {
                    $db->table = "product_menu";
                    $db->condition = "product_menu_id = " . $parent;
                    $db->order = "";
                    $db->limit = 1;
                    $rows_parent = $db->select();
                    if ($db->RowCount > 0) {
                        foreach ($rows_parent as $row_parent) {
                            $breadcrumb_menu_parent = '<a href="' . HOME_URL_LANG  . '/' . stripslashes($row_parent['slug']) . '" title="' . stripslashes($row_parent['name']) . '">' . stripslashes($row_parent['name']) . '</a>';
                            $breadcrumb_menu = '<a href="' . HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>';
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
                $_p_menu_title = stripslashes($row['name']);
                $breadcrumb = '<a href="' . HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>';
            }
        } else {
            $db->table = "article_menu";
            $db->condition = "article_menu_id = " . $id_menu;
            $db->order = "";
            $db->limit = 1;
            $rows = $db->select();
            if($db->RowCount>0) {
                foreach ($rows as $row) {
                    $breadcrumb = '<a href="' . HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>';
                }
            }
        }
    }
    if($slug_cat=='search'){
        echo '<div class="comment-center"><div class="box"><div class="bx-cc"><h1><a>'. $lgTxt_title_search .'</a></h1><div class="bread"><div class="box-wp">' . $breadcrumb_home . '<a href="'.HOME_URL_LANG.'/search">'. $lgTxt_title_search .'</a></div></div></div></div></div>';
    }elseif($slug_cat==$lgTxt_slug_contact){
        echo '<div class="comment-center"><div class="box"><div class="bx-cc"><h1><a>'.$lgTxt_menu_contact.'</a></h1><div class="bread"><div class="box-wp">' . $breadcrumb_home . '<a title="Liên hệ" href="'.HOME_URL_LANG.'/'.$lgTxt_slug_contact .'">'.$lgTxt_menu_contact.'</a></div></div></div></div></div>';
    }elseif($slug_cat=='order'){
        echo '<div class="comment-center"><div class="box"><div class="bx-cc"><h1><a>'.$lgTxt_menu_cart.'</a></h1><div class="bread"><div class="box-wp">' . $breadcrumb_home . '<a title="Liên hệ" href="'.HOME_URL_LANG.'/order">'.$lgTxt_menu_cart.'</a></div></div></div></div></div>';
    }else{
        echo '<div class="comment-center"><div class="box"><div class="bx-cc"><h1>' . $breadcrumb .'</h1><div class="bread"><div class="box-wp">' . $breadcrumb_home . $breadcrumb_category . $breadcrumb_menu . '</div></div></div></div></div>';
    }
    echo '<div class="img">' . $photo_avt . '</div>';
    ?>
</section>
<!-- / .banner -->