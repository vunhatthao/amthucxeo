<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//-------------
?>
<!-- .slider -->
<section class="box-slider">
    <div id="slider2_container" style="position: relative; top: 0px; left: 0px; width: 1300px;height: 590px;">
        <!-- Loading Screen -->
        <div u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;
                background-color: #000; top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
            <div style="position: absolute; display: block; background: url(<?php echo HOME_URL;?>/img/loading.gif) no-repeat center center;
                top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
        </div>
        <div u="slides" style="position: absolute; left: 0px; top: 0px; width: 1300px; height: 590px;overflow: hidden;">
            <?php
            $db->table = "gallery";
            $db->condition = "`is_active` = 1 AND `gallery_menu_id` IN (SELECT `gallery_menu_id` FROM `".TTH_DATA_PREFIX."gallery_menu` WHERE `category_id` = 13)";
            $db->order = "`created_time` DESC";
            $db->limit = "";
            $rows = $db->select();
            foreach ($rows as $row){
                $imgShow = ($row['link']=='') ?
                    '<img data-u="image" src="' . HOME_URL . '/uploads/gallery/slider-' . $row['img'] . '" alt="' . stripslashes($row['name']) . '">'
                    :
                    '<a target="_blank" href="'.$row['link'].'" title="'.stripslashes($row['name']).'"><img data-u="image" src="' . HOME_URL . '/uploads/gallery/slider-' . $row['img'] . '" alt="' . stripslashes($row['name']) . '"></a>';


                echo '<div class="th">' . $imgShow;
                ?>
                <!--<div data-u="caption" data-t="3" style="position:absolute;top:50%;left:0;right:0;width:auto;z-index:0;color:#ffffff;text-align:center;">
                    <p class="comment-c title" style=""><?/*=stripslashes($row['comment'])*/?></p>
                    <h1 class="name-c title"><?/*=stripslashes($row['name'])*/?></h1>
                </div>-->
                <?php
                echo '</div>';
            }
            ?>
        </div>
        <style>
            .jssorb01 {
                position: absolute;
                outline: none;
            }
            .jssorb01 div, .jssorb01 div:hover, .jssorb01 .av {
                position: absolute;
                width: 18px;
                height: 18px;
                filter: alpha(opacity=70);
                opacity: 1;
                overflow: hidden;
                cursor: pointer;
                outline: none;
                -webkit-border-radius:50%;
                -moz-border-radius:50%;
                border-radius:50%;
            }
            .jssorb01 div { background: url('../images/nut.png'); }
            .jssorb01 div:hover, .jssorb01 .av:hover {
                background: url('../images/nut-h.png');
                outline: none;
            }
            .jssorb01 .av {
                outline: none;
                background: url('../images/nut-h.png');
            }
            .jssorb01 .dn, .jssorb01 .dn:hover {
                border: #fff 1px solid;background-color: #555555; }

            .jssora05l, .jssora05r {
                display: block;
                position: absolute;
                /* size of arrow element */
                width: 40px;
                height: 40px;
                cursor: pointer;
                background: url(../img/a17.png) no-repeat;
                overflow: hidden;
            }
            .jssora05l { background-position: -10px -40px; }
            .jssora05r { background-position: -70px -40px; }
            .jssora05l:hover { background-position: -130px -40px; }
            .jssora05r:hover { background-position: -190px -40px; }
            .jssora05l.jssora05ldn { background-position: -250px -40px; }
            .jssora05r.jssora05rdn { background-position: -310px -40px; }

            .jssora05l.jssora05lds { background-position: -10px -40px; opacity: .3; pointer-events: none; }
            .jssora05r.jssora05rds { background-position: -70px -40px; opacity: .3; pointer-events: none; }
        </style>
        <!-- Bullet Navigator -->
        <div u="navigator" class="jssorb01" style="bottom: 16px; right: 0px; left:0px; outline: none;">
            <!-- bullet navigator item prototype -->
            <div u="prototype"></div>
        </div>
        <!-- Arrow Navigator -->
       <span u="arrowleft" class="jssora05l" style="top: 123px; left: 8px;">
        </span>
        <!-- Arrow Right -->
        <span u="arrowright" class="jssora05r" style="top: 123px; right: 8px;">
        </span>
    </div>
</section>
<script>
    jssor_2_slider_init('slider2_container');
</script>
<!-- / .slider -->