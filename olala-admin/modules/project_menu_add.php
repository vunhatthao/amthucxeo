<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
?>

<!-- Menu path -->
<div class="row">
	<ol class="breadcrumb">
		<li>
			<a href="<?php echo ADMIN_DIR?>"><i class="fa fa-home"></i> Trang chủ</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH?>=project_manager"><i class="fa fa-edit"></i> Quản lý nội dung</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH?>=project_manager"><i class="fa fa-cubes"></i> Dự án đầu tư</a>
		</li>
		<li>
			<i class="fa fa-plus-square-o"></i> Thêm chuyên mục
		</li>
	</ol>
</div>
<!-- /.row -->
<?php
include_once (_A_TEMPLATES . DS . "project_menu.php");
if(empty($typeFunc)) $typeFunc = "no";
$category_id =  isset($_GET['id_cat']) ? $_GET['id_cat']+0 : $category_id+0;
$db->table = "category";
$db->condition = "category_id = ".$category_id;
$rows = $db->select();
if($db->RowCount==0) loadPageAdmin("Chuyên mục không tồn tại.","?".TH_PATH."=project_manager");
$project_menu_id = isset($_GET['id_art']) ? $_GET['id_art']+0 : 0;
$db->table = "project_menu";
$db->condition = "project_menu_id = ".$project_menu_id;
$rows = $db->select();
if($db->RowCount==0 && $project_menu_id!=0) loadPageAdmin("Chuyên mục không tồn tại.","?".TH_PATH."=project_manager");

$OK = false;
$error = '';
if($typeFunc=='add'){
	if(empty($name)) $error = '<span class="show-error">Vui lòng nhập tên chuyên mục.</span>';
	else {
		$handleUploadImg = false;
		$file_max_size = FILE_MAX_SIZE;
		$dir_dest = ROOT_DIR . DS . 'uploads' . DS . 'project_menu';
		$file_size = $_FILES['img']['size'];

		if($file_size>0) {
			$imgUp = new Upload($_FILES['img']);

			$imgUp->file_max_size = $file_max_size;
			if ($imgUp->uploaded) {
				$handleUploadImg = true;
				$OK = true;
			}
			else {
				$error = '<span class="show-error">Lỗi tải hình: '.$imgUp->error.'</span>';
			}
		}
		else {
			$handleUploadImg = false;
			$OK = true;
		}

		if($OK) {
			$stringObj = new String();

			$slug = (empty($slug)) ? $name : $slug;
			$slug = $stringObj->getSlug($slug);
			$db->table = "project_menu";
			$db->condition = "slug = '".$slug."'";
			$db->select();
			if($db->RowCount > 0) {
				$slug = $slug. '-' .$stringObj->getSlug(getRandomString(10));
			}
			$legal = (isset($legal)) ? $legal : '';
			$location = (isset($location_id)) ? $location_id : '';
			$geo_radius = (isset($geo_radius)) ? $geo_radius : '';
			$project_use = (isset($project_use)) ? implode(',',$project_use) : '';
			$project_hot = (isset($project_hot)) ? implode(',',$project_hot) : '';
			$project_involve = (isset($project_involve)) ? implode(',',$project_involve) : '';
			//-----------------------------------------------

			$id_query = 0;
			$db->table = "project_menu";
			$data = array(
				'category_id'=>$category_id+0,
				'name'=>$db->clearText($name),
				'slug'=>$db->clearText($slug),
				'title'=>$db->clearText($title),
				'description'=>$db->clearText($description),
				'keywords'=>$db->clearText($keywords),
				'parent'=>$parent+0,
				'sort'=>sortAcs($category_id,$parent)+1,
				'is_active'=>$is_active+0,
				'hot'=>$hot+0,
				'comment'=>$db->clearText($comment),
				'project_type'=>$project_type+0,
				'price_max'=>formatNumberToInt($price_max),
				'price_min'=>formatNumberToInt($price_min),
				'legal'=>$legal+0,
				'location'=>$location+0,
				'geo_radius'=>$geo_radius+0,
				'project_use'=>$db->clearText($project_use),
				'project_hot'=>$db->clearText($project_hot),
				'project_involve'=>$db->clearText($project_involve),
				'created_time'=>time(),
				'modified_time'=>time(),
				'user_id'=>$_SESSION["user_id"]
			);
			$db->insert($data);
			$id_query = $db->LastInsertID;

			if($handleUploadImg) {
				$stringObj = new String();

				$img_name_file = getRandomString().'-'.$id_query.'-'.substr($stringObj->getSlug($name),0,120);

				$imgUp->file_new_name_body      = $img_name_file;
				$imgUp->image_resize            = true;
				$imgUp->image_ratio_crop        = true;
				$imgUp->image_x                 = 450;
				$imgUp->image_y                 = 331;
				$imgUp->Process($dir_dest);

				if($imgUp->processed) {
					$name_img = $imgUp->file_dst_name;
					$db->table = "project_menu";
					$data = array(
						'img'=>$db->clearText($name_img)
					);
					$db->condition = "project_menu_id = ".$id_query;
					$db->update($data);
				}
                else {
                    loadPageAdmin("Lỗi tải hình: ".$imgUp->error,"?".TTH_PATH."=project_manager");
                }

				$imgUp->file_new_name_body      = 'hm_' . $img_name_file;
				$imgUp->image_resize            = true;
				$imgUp->image_ratio_crop        = true;
				$imgUp->image_x                 = 500;
				$imgUp->image_y                 = 220;
				$imgUp->Process($dir_dest);

				$imgUp-> Clean();
			}

			loadPageSucces("Đã thêm Chuyên mục thành công.","?".TTH_PATH."=project_manager");
			$OK = true;
		}
	}
}
else {
	$name			    = "";
	$slug               = "";
	$title			    = "";
	$description	    = "";
	$keywords		    = "";
	$parent			    = isset($_GET['id_art']) ? $_GET['id_art']+0 : 0;
	$is_active		    = 1;
	$hot			    = 0;
	$img                = "";
	$comment            = "";
	$project_type       = 0;
	$price_max          = "";
	$price_min          = "";
	$legal              = 0;
	$location           = 0;
	$geo_radius         = 0;
	$project_use        = array();
	$project_hot        = array();
	$project_involve    = array();
}
if(!$OK) projectMenu("?".TTH_PATH."=project_menu_add", "add", 0, $category_id, $name, $slug, $title, $description, $keywords, $parent, $is_active, $hot, $img, $comment, $project_type, $price_max, $price_min, $legal, $location, $geo_radius, $project_use, $project_hot, $project_involve, $error);
?>
