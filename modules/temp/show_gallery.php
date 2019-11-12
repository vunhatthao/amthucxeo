<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//

$sumView = 0;
$db->table = "gallery";
$db->condition = "is_active = 1 and gallery_id = ".$id;
$db->order = "";
$db->limit = "";
$rows = $db->select();
if($db->RowCount>0){
	foreach($rows as $row) {
		$db->table = "gallery";
		$db->condition = "is_active = 1 and gallery_menu_id = ".($row['gallery_menu_id']+0).' and gallery_id <> '.$id;
		$db->order = "created_time DESC";
		$db->limit = 5;
		$rows2 = $db->select();
		$total = $db->RowCount;
?>
<div class="wrap-detail clearfix">
    <?php //echo '<p class="time"><i class="fa fa-calendar fa-fw"></i> ' . $date->vnFull($row['created_time']) . '</p>';?>
	<h2 class="t-semibold title-gallery"><span><?php echo stripslashes($row['name']); ?></span></h2>
	<div class="detail-wp f-space10"><?php echo stripslashes($row['comment']); ?></div>
	<div class="grid f-space10 clearfix">
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
			for($i=0;$i<count($img);$i++) {
				if($img[$i] != ""){
					?>
					<div class="col-gallery">
						<div class="img">
							<a data-fancybox="gallery" href="<?php echo HOME_URL;?>/uploads/photos/full_<?php echo $img[$i];?>" title="<?php echo $alt;?>">
								<img src="<?php echo HOME_URL;?>/uploads/photos/<?php echo 'thm_' . $img[$i];?>" alt="<?php echo $alt;?>">
							</a>
						</div>
					</div>
					<?
				}
			}
		}
		?>
	</div>
	<div class="social-like clearfix">
		<div class="item-social">
			<div class="fb-like" data-href="<?php echo site_url()?>" data-layout="button_count" data-action="like" data-show-faces="true" data-share="false"></div>
		</div>
		<div class="item-social">
			<a href="<?php echo site_url()?>" class="twitter-share-button"{count} data-hashtags="danaweb">Tweet</a>
		</div>
		<div class="item-social">
			<div class="g-plusone" data-href="<?php echo site_url()?>" data-size="medium" data-annotation="bubble" data-width="50"></div>
		</div>
	</div>
	<div class="others">
		<?php
		//----------------------------------------------------------
		if($total>0) {
			echo '<h3 class="title-other">' . $lgTxt_title_others5 . '</h3>';
			echo '<ul class="list-other">';
			foreach($rows2 as $row2) {
				include(_F_TEMPLATES . DS . "show_other_gallery.php");
			}
			echo '</ul>';
		} ?>
	</div>
</div>

<?php
		$sumView = $row['views']+1;
	}
	$db->table = "gallery";
	$data = array(
		'views'=>$sumView
	);
	$db->condition = "gallery_id = ".$id;
	$db->update($data);

}
else include(_F_MODULES . DS . "error_404.php");