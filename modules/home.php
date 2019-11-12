<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//-------------
$date = new DateClass();
$stringObj = new String();
?>
<section class="introduct">
    <div class="box-wp clearfix">
        <div class="bum clearfix">
            <?php
            $db->table = "article_menu";
            $db->condition = "is_active = 1 and parent = 0 and category_id = 9";
            $db->order = "sort ASC";
            $db->limit = 1;
            $rows1= $db->select();
            $total = $db->RowCount;
            foreach($rows1 as $row) {
                $photo_avt = '';
                $alt = stripslashes($row['name']);
                if($row['img']!="" && $row['img']!="no") {
                    $photo_avt = '<img src="'. HOME_URL .'/uploads/article_menu/im-'. $row['img'] . '" alt="' . $alt . '">';
                } else {
                    $photo_avt = '<img src="'. HOME_URL .'/images/404-menu.jpg" alt="'.$alt.'">';
                }
                $photo_avt = '<a href="'. HOME_URL_LANG . '/' . $row['slug'] . '" title="' . stripslashes($row['name']) . '">' . $photo_avt . '</a>';

                echo '<div class="about-us">';
                echo '<p class="title-sm"><a href="'. HOME_URL_LANG . '/' . $row['slug'] . '" title="' . stripslashes($row['icon']) . '"><span>' . $stringObj->crop(stripslashes($row['icon']), 7). '</span></a></p>';
                $title = '<h1 class="title-h font-constantia"><a href="'. HOME_URL_LANG . '/' . $row['slug'] . '" title="' . stripslashes($row['name']) . '"><span>' . $stringObj->crop(stripslashes($row['name']), 7). '</span></a></h1>';
                echo $title;
                if($row['comment']!='') echo '<div class="text">' . stripslashes($row['comment']) . '</div>';
                echo '<div class="detail"><a class="hvr-icon-forward " href="'. HOME_URL_LANG . '/' . $row['slug'] . '" title="' . stripslashes($row['icon']) . '"><span>' . $lgTxt_detail. '</span></a></div>';
                echo '</div>';
                echo '<div class="img-us">';
                //echo $photo_avt;
                ?>
                <div class="video-home clearfix">
                    <iframe id="ytplayer" src="<?php echo str_replace("/watch?v=", "/embed/", getPage('video_home', 'comment'));?>?rel=0&autoplay=1&showinfo=0&controls=0&loop=1&enablejsapi=1&playlist=DfXQQbvVlOA" frameborder="0" alows="autoplay"></iframe>
                </div>
            <?php
                echo '</div>';
            } ?>
        </div>
    </div>
</section>
<section class="box-columns">
    <div class="box-wp">
        <div class="row list-it clearfix">
            <div class="col-md-3 col-lg-3 col-xs-6 it">
                <div class="img">
                    <img src="<?php echo HOME_URL;?>/images/it1.png" alt="">
                </div>
                <h4><?php echo getPage('item_1', 'name'); ?></h4>
            </div>
            <div class="col-md-3 col-lg-3 col-xs-6 it">
                <div class="img">
                    <img src="<?php echo HOME_URL;?>/images/it2.png" alt="">
                </div>
                <h4><?php echo getPage('item_2', 'name'); ?></h4>
            </div>
            <div class="col-md-3 col-lg-3 col-xs-6 it">
                <div class="img">
                    <img src="<?php echo HOME_URL;?>/images/it3.png" alt="">
                </div>
                <h4><?php echo getPage('item_3', 'name'); ?></h4>
            </div>
            <div class="col-md-3 col-lg-3 col-xs-6 it">
                <div class="img">
                    <img src="<?php echo HOME_URL;?>/images/it4.png" alt="">
                </div>
                <h4><?php echo getPage('item_4', 'name'); ?></h4>
            </div>
        </div>
    </div>
</section>
<section class="box-tab">
    <div class="box-wp clearfix">
        <?php include(_F_INCLUDES . DS . "tth_select.php"); ?>
    </div>
    <div class="tab-button detail txt-center box-wp">
        <?php echo '<div class="box-v clearfix"><a class="view-detail hvr-icon-forward" href="'. HOME_URL_LANG .'/'. getSlugCategory(74) .'">'. $lgTxt_detail_all.'</a></div>'; ?>
    </div>
</section>
<section class="box_album">
    <div class="box-wp clearfix">
        <div class="gallery-al">
            <div class="list-ga clearfix">
            <?php
            $db->table = "gallery";
            $db->condition = "`is_active` = 1 AND `hot`= 1  AND `gallery_menu_id` IN (SELECT `gallery_menu_id` FROM `".TTH_DATA_PREFIX."gallery_menu` WHERE `category_id` = 11)";
            $db->order = "`modified_time` DESC";
            $db->limit = 1;
            $rows = $db->select();
            foreach ($rows as $row){
                $alt = stripslashes($row['name']);
                $list_img = "";
                $db->table = "uploads_tmp";
                $db->condition = "upload_id = ".($row['upload_id']+0);
                $db->order = "";
                $db->limit = 1;
                $rows_gal = $db->select();
                foreach ($rows_gal as $row_gal){
                    $list_img = $row_gal['list_img'];
                }
                $img = array();
                $img = explode(";",$list_img);
                $img = array_filter($img);
                //-----------------------------------
                $see_all = '';
                $ck = 4; $total = count($img);
                $total_all = $total;
                if($total_all>1) {
                    echo '<div class="item-list-img tt-' . $total_all . ' clearfix">';
                    if($total>0) {
                        if ($total_all > 5) $see_all = '<div class="see-all"><div class="sa-p01"><span class="sa-p11">+' . ($total_all-4) . '</span></div></div>';
                        for ($i = 0; $i < $total; $i++) {
                            if ($i > $ck) echo '<div class="item-img hidden"><a data-fancybox="'.stripslashes($row['slug']).'" href="' . HOME_URL . '/uploads/photos/' . $img[$i] . '" data-caption="' . $alt . '">&nbsp;</a></div>';
                            elseif ($i == 0) echo '<div class="item-img"><div class="img"><a title="'. $alt .'" data-fancybox="'.stripslashes($row['slug']).'" href="' . HOME_URL . '/uploads/photos/' . $img[$i] . '" data-caption="' . $alt . '"><img src="' . HOME_URL . '/uploads/photos/' . $img[$i] . '"></a></div></div>';
                            elseif ($i == $ck) echo '<div class="item-img"><div class="img"><a data-fancybox="'.stripslashes($row['slug']).'" href="' . HOME_URL . '/uploads/photos/' . $img[$i] . '" data-caption="' . $alt . '">' . $see_all . '<img src="' . HOME_URL . '/uploads/photos/thm_' . $img[$i] . '"></a></div></div>';
                            else echo '<div class="item-img"><div class="img"><a title="'. $alt .'" data-fancybox="'.stripslashes($row['slug']).'" href="' . HOME_URL . '/uploads/photos/' . $img[$i] . '" data-caption="' . $alt . '"><img src="' . HOME_URL . '/uploads/photos/thm_' . $img[$i] . '"></a></div></div>';
                        }
                    }
                    echo '</div>';

                } elseif($total_all>0) {
                    echo '<div class="detail-wp photos-sw">';
                    echo '<div class="img"><a data-fancybox="'.stripslashes($row['slug']).'" href="' . HOME_URL . '/uploads/photos/' . $img[0] . '" data-caption="' . $alt . '">' . $see_all . '<img src="' . HOME_URL . '/uploads/photos/' . $img[0] . '"></a></div>';
                    echo '</div>';
                }
            }
            ?>
            </div>
        </div>
    </div>
</section>
<script>
    var tag = document.createElement('script');
    tag.src = "//www.youtube.com/iframe_api";
    var firstScriptTag = document.getElementsByTagName('script')[0];
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
    var player;
    function onYouTubeIframeAPIReady() {
        var player;
        player = new YT.Player('player', {
            videoId: 'DfXQQbvVlOA',
            playerVars: { 'autoplay': 1, 'controls': 0 },
            /*events: {
                'onReady': onPlayerReady,
                'onPlaybackQualityChange': onPlayerPlaybackQualityChange,
                'onStateChange': onPlayerStateChange,
                'onError': onPlayerError
            }*/
        });
    }
</script>
<section class="box_post">
    <div class="box-wp">
        <div class="news">
            <div class="box-title">
                <h2 class="title-sm">
                    <a title="<?=getNameCategory(12);?>" href="<?php echo HOME_URL_LANG . '/' . getSlugCategory(12);?>">
                        <?=getNameCategory(12);?>
                    </a>
                </h2>
                <h3 class=" title-h font-constantia">
                    <a title="<?=getPlusCategory(12);?>" class="red" href="<?php echo HOME_URL_LANG . '/' . getSlugCategory(12);?>">
                        <?=getPlusCategory(12);?>
                    </a>
                </h3>
            </div>
            <?php
            $db->table = "article";
            $db->condition = "`is_active` = 1 AND `hot`= 1 AND `article_menu_id` IN (SELECT `article_menu_id` FROM `" . TTH_DATA_PREFIX . "article_menu` WHERE `category_id` = 12)";
            $db->order = "`modified_time` DESC";
            $db->limit = "3";
            $rows = $db->select();
            if ($db->RowCount > 0) {
                echo '<div class="list row clearfix">';
                foreach ($rows as $row) {
                    $photo_avt = $title = $time = $views = '';
                    $alt = ($row['img_note'] != "") ? stripslashes($row['img_note']) : stripslashes($row['name']);
                    if(file_exists(ROOT_DIR  . DS . 'uploads' . DS . 'article' . DS . 'post-' . $row['img']) && $row['img']!='') {
                        $photo_avt = '<img src="' . HOME_URL . '/uploads/article/post-' . stripslashes($row['img']) . '" alt="' . $alt . '">';
                    } else {
                        $photo_avt = '<img src="' . HOME_URL . '/images/404-post.jpg" alt="' . stripslashes($alt) . '">';
                    }

                    $photo_avt = '<a href="' . HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . $photo_avt . '</a>';
                    $title = '<h3 class="font-constantia"><a href="' . HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a></h3>';

                    echo '<div class="item-post col-md-4 col-lg-4 col-xs-4"><div class="box">';
                    echo '<div class="img">' . $photo_avt . '</div>';
                    echo '<div class="description">';
                    echo $title;
                    if($row['comment']!='') echo '<div class="text">' . $stringObj->crop(stripslashes($row['comment']), 30) . '</div>';
                    echo '<div class="line clearfix"><label class="time"><i class="fa fa-calendar-o fa-fw"></i> ' . $date->date($row['created_time']) . '</label><label class="view"><i class="fa fa-eye fa-fw"></i> ' . formatNumberVN($row['views']) . '</label><label class="click"><a href="'. HOME_URL_LANG . '/' . stripslashes($row['slug']) .'">'.$lgTxt_red_more.' <i class="fa fa-angle-right" aria-hidden="true"></i></a></label></div>';
                    echo '</div></div></div>';
                }
                echo '</div>';
            }
            ?>
        </div>
    </div>
</section>