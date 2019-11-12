<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$photo_avt = '';
$alt = ($row['img_note'] != '') ? stripslashes($row['img_note']) : stripslashes($row['name']);
if(file_exists(ROOT_DIR  . DS . 'uploads' . DS . 'article' . DS . 'post-' . $row['img']) && $row['img']!='') {
	$photo_avt = '<img src="'. HOME_URL .'/uploads/article/post-'. $row['img'] . '" alt="' . $alt . '">';
} else {
	$photo_avt = '<img src="'. HOME_URL .'/images/404-post.jpg" alt="'.$alt.'">';
}

$photo_avt = '<a href="'. HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . $photo_avt . '</a>';
$title = $hot = '';
if($row['hot']==1) $hot = '<span class="p-hot">New</span>';
$title = '<h3 class="txt-crop-2lines"><a href="'. HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . $hot . stripslashes($row['name']) . '</a></h3>';

?>
<div class="item-post2">
    <div class="box">
        <div class="img"><?php echo $photo_avt;?></div>
        <div class="description">
            <?php
            echo $title;
            if($row['comment']!='') echo '<p class="text">' . $stringObj->crop(stripslashes($row['comment']), 20) . '</p>';
            echo '<p class="more"><a href="'. HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . $lgTxt_detail . '</a></p>';
            ?>
        </div>
    </div>
</div>