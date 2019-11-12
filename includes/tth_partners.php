<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//-------------
?>
<div class="service-page f-space10" style="background: <?php echo 'url(' .getImgCategory(15) .')'; ?>;background-attachment: fixed;
    background-repeat: no-repeat;">
    <div class="container">
        <div class="row list-service clearfix">
            <?php
            $db->table = "article";
            $db->condition = "is_active = 1 and article_menu_id IN (SELECT `article_menu_id` FROM `".TTH_DATA_PREFIX."article_menu` WHERE `category_id` = 15)";
            $db->order = "created_time DESC";
            $db->limit = "";
            $rows = $db->select();
            foreach ($rows as $row){
                $imgShow = ($row['img']=='') ?
                    '<img src="'.HOME_URL.'/uploads/article/icon-'.$row['img'].'" alt="'.stripslashes($row['name']).'" />'
                    :
                    '<a title="'.stripslashes($row['name']).'"><img src="'.HOME_URL.'/uploads/article/icon-'.$row['img'].'" alt="'.stripslashes($row['name']).'" /></a>';
                ?>
                <div class="item-sr col-lg-3 col-xs-6 col-md-3">
                    <div class="box-it">
                        <div class="img">
                            <?php echo $imgShow;?>
                        </div>
                        <div class="comment">
                            <h3><?php echo stripslashes($row['name']); ?></h3>
                            <div class="txt"><?php echo stripslashes($row['comment']); ?></div>
                        </div>
                    </div>
                </div>
                <?php
            }
            ?>
        </div>
    </div>
</div>
<!-- .partners -->
<section class="our-team">
    <div class="box-wp">
        <div class="title-our">
            <h2 class="title-sm">
                <?php echo getNameCategory(91); ?>
            </h2>
        </div>
        <div class="list-our-team owl-carousel owl-theme clearfix">
            <?php
            $db->table = "gallery";
            $db->condition = "is_active = 1 and gallery_menu_id IN (SELECT `gallery_menu_id` FROM `".TTH_DATA_PREFIX."gallery_menu` WHERE `category_id` = 91)";
            $db->order = "created_time DESC";
            $db->limit = "";
            $rows = $db->select();
            foreach ($rows as $row){
                $imgShow = ($row['link']=='') ?
                    '<img src="'.HOME_URL.'/uploads/gallery/part-'.$row['img'].'" alt="'.stripslashes($row['name']).'" />'
                    :
                    '<a title="'.stripslashes($row['name']).'"><img src="'.HOME_URL.'/uploads/gallery/part-'.$row['img'].'" alt="'.stripslashes($row['name']).'" /></a>';
                ?>
                <div class="item-our">
                    <div class="box-it">
                        <div class="img">
                            <?php echo $imgShow;?>
                        </div>
                        <div class="comment">
                            <h3><?php echo stripslashes($row['name']); ?></h3>
                            <label><?php echo stripslashes($row['link']); ?></label>
                            <div class="txt"><?php echo stripslashes($row['comment']); ?></div>
                        </div>
                    </div>
                </div>
                <?php
            }
            ?>
        </div>
    </div>
</section>
<!-- / .partners -->
