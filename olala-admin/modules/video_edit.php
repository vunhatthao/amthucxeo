<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$category_id = $menu_id = 0;
$gallery_id = isset($_GET['id']) ? $_GET['id']+0 : $gallery_id+0;
$db->table = "gallery";
$db->condition = "`gallery_id` = $gallery_id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
foreach($rows as $row) {
	$menu_id    = $row['gallery_menu_id'];
}
if($db->RowCount==0) loadPageAdmin("Video không tồn tại.","?".TTH_PATH."=gallery_manager");
// ---------------
$db->table = "gallery_menu";
$db->condition = "`gallery_menu_id` = $menu_id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
foreach($rows as $row) {
	$category_id =	$row["category_id"]+0;
}
?>
<!-- Menu path -->
<div class="row">
	<ol class="breadcrumb">
		<li>
			<a href="<?php echo ADMIN_DIR?>"><i class="fa fa-home"></i> Trang chủ</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH?>=gallery_manager"><i class="fa fa-edit"></i> Quản lý nội dung</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH?>=gallery_manager"><i class="fa fa-newspaper-o"></i> Hình ảnh</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH?>=gallery_list&id=<?php echo $menu_id?>"><i class="fa fa-list"></i> <?php echo getNameMenuGal($menu_id)?></a>
		</li>
		<li>
			<i class="fa fa-cog"></i> Chỉnh sửa video
		</li>
	</ol>
</div>
<!-- /.row -->
<?php
include_once (_A_TEMPLATES . DS . "video.php");
if(empty($typeFunc)) $typeFunc = "no";

$date = new DateClass();

$OK = false;
$error = '';
if($typeFunc=='edit'){
	if(empty($name)) $error = '<span class="show-error">Vui lòng nhập tiêu đề video.</span>';
	else {
		$handleUploadImg = false;
		$file_max_size = FILE_MAX_SIZE;
		$dir_dest = ROOT_DIR . DS . 'uploads' . DS . 'gallery'. DS;
		if(glob($dir_dest . DS .'*'.$img)) array_map("unlink", glob($dir_dest . DS .'*'.$img));

		preg_match_all("/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i",$link_youtube,$url);
		foreach ( $url as $link ) {
			for($i=0;$i<=count($link);$i++)
			{
				$y_link = $link[$i];
				preg_match("#(?<=v=)[a-zA-Z0-9-]+(?=&)|(?<=[0-9]/)[^&\n]+|(?<=v=)[^&\n]+#", $y_link, $valid);
				if ( (strpos($y_link,"youtube.com") != false) && ($valid != NULL) ) {
					$stringObj = new String();
					$youtube = $valid[0];
					$txt = $stringObj->getSlug($name);
					$filename = getRandomString() . '-' . $txt;
					$OK = uploadVideo($youtube, $filename, $dir_dest);

					if($OK) {
						$img = $filename . '.jpg';
						// Link SEO
						$slug = (empty($slug)) ? $name : $slug;
						$slug = updateLinkSEO($slug, $category_id, $gallery_menu_id, $gallery_id, 'update');
						
						$db->table = "gallery";
						$data = array(
							'gallery_menu_id'=>$gallery_menu_id+0,
							'name'=>$db->clearText($name),
							'slug'=>$db->clearText($slug),
							'title'=>$db->clearText($title),
							'description'=>$db->clearText($description),
							'keywords'=>$db->clearText($keywords),
							'img'=>$db->clearText($img),
							'link'=>$db->clearText($link_youtube),
							'comment'=>$db->clearText($comment),
							'is_active'=>$is_active+0,
							'hot'=>$hot+0,
							'created_time'=>strtotime($date->dmYtoYmd($created_time)),
							'modified_time'=>time(),
							'user_id'=>$_SESSION["user_id"]
						);
						$db->condition = "gallery_id = ".$gallery_id;
						$db->update($data);

						loadPageSucces("Đã chỉnh sửa Video thành công.","?".TTH_PATH."=gallery_list&id=".$gallery_menu_id);
						$OK = true;
					}
				}
			}
		}
	}
}
else {
	$db->table = "gallery";
	$db->condition = "gallery_id = ".$gallery_id;
	$rows = $db->select();
	foreach($rows as $row) {
		$gallery_menu_id    = $row['gallery_menu_id']+0;
		$name			    = $row['name'];
		$slug               = $row['slug'];
		$title			    = $row['title'];
		$description	    = $row['description'];
		$keywords		    = $row['keywords'];
		$img                = $row['img'];
		$link_youtube       = $row['link'];
		$comment            = $row['comment'];
		$is_active		    = $row['is_active']+0;
		$hot			    = $row['hot']+0;
		$created_time       = $date->vnDateTime($row['created_time']);
	}
}
if(!$OK) video("?".TTH_PATH."=video_edit", "edit", $gallery_id, $gallery_menu_id, $name, $slug, $title, $description, $keywords, $img, $link_youtube, $comment, $is_active, $hot, $created_time, $error);
?>