<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//-------------
?>
<!-- .header -->
<div class="header">
    <div class="box-wp">
        <div class="header-left">
            <div class="logo">
                <a href="<?php echo HOME_URL_LANG;?>" title="<?php echo getConstant('title');?>">
                    <img src="<?php echo HOME_URL . getConstant('file_logo');?>" alt="<?php echo getConstant('meta_site_name');?>">
                </a>
            </div>
        </div>
        <div class="header-right">
            <div class="top-lang clearfix">
                <div class="language">
                    <div class="lang-choose">
                        <?php
                        if(TTH_LANGUAGE=='vi') echo '<label><img src="' . HOME_URL . '/images/vi.png"></label><label>Tiếng Việt</label><label><i class="fa fa-caret-down"></i></label>';
                        if(TTH_LANGUAGE=='en') echo '<label><img src="' . HOME_URL . '/images/en.png"></label><label>English</label><label><i class="fa fa-caret-down"></i></label>';
                        if(TTH_LANGUAGE=='kr') echo '<label><img src="' . HOME_URL . '/images/ko.png"></label><label>한국어</label><label><i class="fa fa-caret-down"></i></label>';
                        if(TTH_LANGUAGE=='cn') echo '<label><img src="' . HOME_URL . '/images/ch.png"></label><label>中文</label><label><i class="fa fa-caret-down"></i></label>';
                        if(TTH_LANGUAGE=='th') echo '<label><img src="' . HOME_URL . '/images/th.png"></label><label>ไทย</label><label><i class="fa fa-caret-down"></i></label>';
                        ?>
                    </div>
                    <ul class="lang-choice">
                        <?php
                        if(TTH_LANGUAGE!='vi') echo '<li><a href="' . HOME_URL . '" title="Tiếng Việt"><label><img src="' . HOME_URL . '/images/vi.png"></label><label>Tiếng Việt</label></a></li>';
                        if(TTH_LANGUAGE!='en') echo '<li><a href="' . HOME_URL . '/en' . '" title="English"><label><img src="' . HOME_URL . '/images/en.png"></label><label>English</label></a></li>';
                        if(TTH_LANGUAGE!='kr') echo '<li><a href="' . HOME_URL . '/kr' . '" title="한국어"*/><label><img src="' . HOME_URL . '/images/ko.png"></label><label>한국어</label></a></li>';
                        if(TTH_LANGUAGE!='cn') echo '<li><a href="' . HOME_URL . '/cn' . '" title="中文"><label><img src="' . HOME_URL . '/images/ch.png"></label><label>中文</label></a></li>';
                        if(TTH_LANGUAGE!='th') echo '<li><a href="' . HOME_URL . '/th' . '" title="ไทย"><label><img src="' . HOME_URL . '/images/th.png"></label><label>ไทย</label></a></li>';
                        ?>
                    </ul>
                </div>
                <div class="hotline">
                    <?php
                    $txt_phone = '';
                    $phone = array();
                    $phone = explode(';', getConstant('tell_contact'));
                    if(count($phone)>0) {
                        for($i=0; $i < count($phone); $i++) {
                            $txt_phone .= '<a href="tel:' . str_replace(' ', '', $phone[$i]) . '" >' . $phone[$i] . '</a>';
                        }
                    }
                    ?>
                    <?php echo $txt_phone;?>
                    <!--<a href="tel:<?php /*echo getConstant('tell_contact');*/?>"><img src="<?php /*echo HOME_URL;*/?>/images/tel_836012.png" alt=""><?php /*echo getConstant('tell_contact');*/?></a>-->
                </div>
            </div>
            <div class="menu-home f-space15 clearfix">
                <nav class="navbar">
                    <div class="navigation" role="navigation">
                        <ul>
                            <li <?php if($slug_cat=='home') echo 'class="active"'; ?> >
                                <a href="<?php echo HOME_URL_LANG; ?>" title="<?php echo $lgTxt_menu_home; ?>">
                                    <span><?php echo $lgTxt_menu_home; ?></span>
                                </a>
                            </li>
                            <?php
                            $db->table = "category";
                            $db->condition = "`is_active` = 1 AND `menu_main` = 1";
                            $db->order = "`sort` ASC";
                            $db->limit = "";
                            $rows = $db->select();
                            foreach ($rows as $row) {
                                $active = '';
                                if ($slug_cat == $row['slug']) $active = ' class="active"';
                                echo '<li' . $active . '><a href="' . HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '"><span>' . stripslashes($row['name']) . '</span></a>' . loadMenuChild('product_menu', $row['category_id'], 0, $slug_cat, $id_menu) . '</li>';
                            }
                            ?>
                            <li <?php if($slug_cat=='lien-he') echo 'class="active"'; ?>>
                                <a href="<?php echo HOME_URL_LANG . '/' . $lgTxt_slug_contact; ?>" title="<?php echo $lgTxt_menu_contact; ?>" >
                                    <span><?php echo $lgTxt_menu_contact; ?></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div class="search">
                    <form class="box-search" action="<?php echo HOME_URL_LANG . '/';?>search" method="get" name="frmsearch">
                        <button class="fa icon-search" type="submit" id="smsearch"><i class="fa fa-search" aria-hidden="true"></i></button>
                        <input class="searchinput" name="q" id="search" placeholder="<?php echo $lgTxt_input_search;?>" type="text">
                        <input type="hidden" name="cx" value="009526142498541672060:a_bpbtsv2zc">
                        <input type="hidden" name="cof" value="FORID:11">
                        <input type="hidden" name="ie" value="UTF-8">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<header class="header-sm Fixed clearfix">
    <div class="logo">
        <a href="<?php echo HOME_URL_LANG;?>" title="<?php echo getConstant('title');?>">
            <img src="<?php echo HOME_URL . getConstant('file_logo');?>" alt="<?php echo getConstant('meta_site_name');?>">
        </a>
    </div>
    <div class="hotline">
        <?php
        $txt_phone = '';
        $phone = array();
        $phone = explode(';', getConstant('tell_contact'));
        if(count($phone)>0) {
            for($i=0; $i < count($phone); $i++) {
                $txt_phone .= '<a href="tel:' . str_replace(' ', '', $phone[$i]) . '" >' . $phone[$i] . '</a>';
            }
        }
        ?>
        <?php echo $txt_phone;?>
    </div>
    <!--<a href="javascript:;" onclick="return open_booking('_order');" class="btn btn-danger">BOOK NOW</a>-->
    <a id="hamburger" href="#menu"><span></span></a>
</header>
<!-- / .header -->