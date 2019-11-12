<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//

$sumView = 0;
$db->table = "article";
$db->condition = "`is_active` = 1 AND `article_id` = $id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
if($db->RowCount>0){
	foreach($rows as $row) {
		$db->table = "article";
		$db->condition = "`is_active` = 1 AND `article_menu_id` = ". intval($row['article_menu_id']). " AND `article_id` <> $id";
		$db->order = "`created_time` DESC";
		$db->limit = 10;
		$rows2 = $db->select();
		$total = $db->RowCount;

		$photo_avt = '';
		$alt = ($row['img_note']!="") ? stripslashes($row['img_note']) : stripslashes($row['name']);
		if($row['img']!="" && $row['img']!="no") {
			$photo_avt = '<a data-fancybox="gallery" href="'. HOME_URL .'/uploads/article/full_'. $row['img'] . '"><img u="image" src="'. HOME_URL .'/uploads/article/post-'. $row['img'] . '" alt="' . $alt . '" /></a>';
			$photo_avt = '<div class="detail-left">' . $photo_avt . '</div>';
		} else {
			$photo_avt = '';
		}
		?>
		<div class="wrap-detail wrap-news">
			<!--<div class="social-share">
				<input type="checkbox" class="checkbox" id="share">
				<label for="share" class="label fa fa-share-alt" title="Share social buttons"></label>
				<div class="social">
					<ul>
						<li onclick="javascript:window.open('https://www.facebook.com/sharer/sharer.php?u=<?php /*echo site_url()*/?>','_blank')" class="fa fa-facebook"></li>
						<li onclick="javascript:window.open('https://twitter.com/intent/tweet?source=webclient&url=<?php /*echo site_url()*/?>','_blank')" class="fa fa-twitter"></li>
						<li onclick="javascript:window.open('https://plus.google.com/share?url=<?php /*echo site_url()*/?>','_blank')" class="fa fa-google-plus"></li>
					</ul>
				</div>
			</div>-->
			<?php if($slug_cat=='tin-tuc'){
				?>
				<?php
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
				$img = explode(";",$list_img);
				if($list_img!="") {
					echo '<div class="detail-left"><div class="list-hinh clearfix owl-carousel owl-theme">';
					for($i=0;$i<count($img);$i++) {
						if($img[$i] != ""){
							?>
							<div class="col-hinh">
								<div class="img">
									<a data-fancybox="gallery" href="<?php echo HOME_URL;?>/uploads/photos/full_<?php echo $img[$i];?>" title="<?php echo $alt;?>">
										<img src="<?php echo HOME_URL;?>/uploads/photos/<?php echo 'thm_' . $img[$i];?>" alt="<?php echo $alt;?>">
									</a>
								</div>
							</div>
							<?
						}
					}
					echo '</div></div>';
				}else echo $photo_avt;
				?>
			<?php
			} ?>
			<?php
			if($slug_cat!='gioi-thieu') echo '<h2 class="title-vs">' . stripslashes($row['name']) . '</h2>';
			if($slug_cat=='news' || $slug_cat=='tin-tuc') echo '<p class="time-views"><label class="time">' . $lgTxt_post_date . $date->date($row['created_time']) . '</label><label class="gach">-</label><label class="views">' . $lgTxt_post_views . formatNumberVN($row['views'])  . '</label></p>';
			if($row['comment']!='') echo '<h4 class="txt-medium f-space05">' . stripslashes($row['comment']) . '</h4>';
			if($row['content']!='') echo '<div class="detail-wp f-space10 clearfix">' . stripslashes($row['content']) . '</div>';

			if($total>0) {
				echo '<div class="others">';
				if($id_category==94 && $id_menu==467) echo '<h3 class="title-other">' . $lgTxt_title_others1 . '</h3>';
				elseif($id_category==98) echo '<h3 class="title-other">' . $lgTxt_title_others2 . '</h3>';
				else echo '<h3 class="title-other">' . $lgTxt_title_others2 . '</h3>';
                echo '<ul class="list-other">';
				foreach($rows2 as $row2) {
					include(_F_TEMPLATES . DS . "show_other_article.php");
				}
				echo '</ul>';
                echo '</div>';
			}
			?>
        </div>
		<?php

		$sumView = $row['views']+1;
	}
	$db->table = "article";
	$data = array(
			'views'=>$sumView
	);
	$db->condition = "article_id = ".$id;
	$db->update($data);

}
else include(_F_MODULES . DS . "error_404.php");