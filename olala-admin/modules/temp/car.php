<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
function car($act, $typeFunc, $car_id, $car_menu_id, $name, $title, $description, $keywords, $img, $img_note, $model, $year, $seat, $color, $price, $sale, $comment, $content, $is_active, $hot, $created_time, $upload_img_id, $error) {
	global $db, $tth;
	$category = 0;
	$db->table = "car_menu";
	$db->condition = "car_menu_id = ".$car_menu_id;
	$db->order = "";
	$rows = $db->select();
	foreach($rows as $row){
		dashboardCoreAdminTwo($tth.";".$row['category_id']);
		$category = $row['category_id'];
	}
?>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="fa fa-files-o"></i> Nội dung xe
			</div>
			<div class="panel-body">
				<form action="<?php echo $act?>" method="post" enctype="multipart/form-data">
					<input type="hidden" name="typeFunc" value="<?php echo $typeFunc?>" />
					<input type="hidden" name="car_id" value="<?php echo $car_id?>" />
					<input type="hidden" name="img" value="<?php echo $img?>" />
					<input type="hidden" name="upload_img_id" value="<?php echo $upload_img_id?>">
					<div class="panel-show-error">
						<?php echo $error?>
					</div>
					<table class="table table-hover">
						<tr>
							<td width="10%"><label>Tiêu đề:</label></td>
							<td width="90%" colspan="3"><input class="form-control" type="text" name="name" maxlength="200" value="<?php echo stripslashes($name)?>" required="required" ></td>
						</tr>
						<tr>
							<td><label>Mục:</label></td>
							<td colspan="3"><?php echo categoryName($car_menu_id);?></td>
						</tr>
						<tr>
							<td width="10%" class="ver-top"><label>Hình đại diện:</label></td>
							<td width="40%" class="ver-top">
								<input class="form-control file file-img" type="file" name="img" data-show-upload="false" data-max-file-count="1" accept="image/*">
								<?php if($img!='no' && $img!='') { ?>
									<br />
									<label class="checkbox-inline">
										<input id="del-img" type="checkbox" name="del_img" value="delete"><span><strong>Không dùng</strong> Hình đại diện</span>
									</label>
								<?php } ?>
							</td>
							<td width="10%" class="ver-top"><label>Ghi chú hình:</label></td>
							<td width="40%" class="ver-top"><input class="form-control" type="text" name="img_note" maxlength="255" value="<?php echo stripslashes($img_note)?>" ></td>
						</tr>
						<tr>
							<td><label>Hiệu xe:</label></td>
							<td><input class="form-control" type="text" name="model" maxlength="255" value="<?php echo stripslashes($model)?>"></td>
							<td><label>Đời xe:</label></td>
							<td><input class="form-control" type="text" name="year" maxlength="255" value="<?php echo stripslashes($year)?>"></td>
						</tr>
						<tr>
							<td><label>Kiểu xe:</label></td>
							<td><input class="form-control" type="text" name="seat" maxlength="255" value="<?php echo stripslashes($seat)?>"></td>
							<td><label>Màu xe:</label></td>
							<td><input class="form-control" type="text" name="color" maxlength="255" value="<?php echo stripslashes($color)?>"></td>
						</tr>
						<tr>
							<td><label>Giá thuê:</label></td>
							<td><input class="form-control auto-number" type="text" name="price" maxlength="15" value="<?php echo stripslashes($price)?>" data-a-sep="." data-a-dec="," data-v-max="9999999999" data-v-min="0" autocomplete="off"></td>
							<td><label>Sale: (%)</label></td>
							<td><input class="form-control auto-number" type="text" name="sale" maxlength="2" value="<?php echo stripslashes($sale)?>" data-a-sep="." data-a-dec="," data-v-max="99" data-v-min="0" autocomplete="off"></td>
						</tr>
						<tr>
							<td class="ver-top"><label>Mô tả:</label></td>
							<td colspan="3">
								<textarea class="form-control" rows="3" name="comment" required="required"><?php echo stripslashes($comment)?></textarea>
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<label style="padding-bottom: 5px;">Nội dung chi tiết:</label>
								<textarea class="form-control" name="content" id="content" required="required" ><?php echo stripslashes($content)?></textarea>
							</td>
						</tr>
						<tr>
							<td class="ver-top"><label>Upload photos:</label></td>
							<td colspan="3">
								<input id="album" class="form-control file" type="file" name="images[]" data-max-file-count="15" accept="image/*" multiple>
							</td>
						</tr>
						<tr>
							<td><label>Trạng thái:</label></td>
							<td colspan="3">
								<label class="radio-inline"><input type="radio" name="is_active" value="0" <?php echo $is_active==0?"checked":""?> > Đóng</label>
								<label class="radio-inline"><input type="radio" name="is_active" value="1" <?php echo $is_active==1?"checked":""?> > Mở</label>
							</td>
						</tr>
						<tr>
							<td><label>Nổi bật:</label></td>
							<td colspan="3">
								<label class="radio-inline"><input type="radio" name="hot" value="0" <?php echo $hot==0?"checked":""?> > Đóng</label>
								<label class="radio-inline"><input type="radio" name="hot" value="1" <?php echo $hot==1?"checked":""?> > Mở</label>
							</td>
						</tr>
						<tr>
							<td><label>Ngày đăng:</label></td>
							<td colspan="3"><input class="form-control" id="input-datetime" type="text" name="created_time" style="width: 160px;"  value="<?php echo $created_time?>" ></td>
						</tr>
						<tr>
							<td class="tth-bg-df" colspan="4"><strong>SEO</strong> -<span class="tth-gp-text">Không bắt buộc phải nhập, dữ liệu được lấy tự động nếu rỗng.</span></td>
						</tr>
						<tr>
							<td class="tth-gp-l"><label>Title:</label></td>
							<td class="tth-gp-r" colspan="3"><input class="form-control" type="text" name="title" maxlength="255" value="<?php echo stripslashes($title)?>" ></td>
						</tr>
						<tr>
							<td class="tth-gp-l"><label>Description:</label></td>
							<td class="tth-gp-r" colspan="3"><input class="form-control" type="text" name="description" maxlength="255" value="<?php echo stripslashes($description)?>" ></td>
						</tr>
						<tr>
							<td class="tth-gp-l tth-gp-b"><label>Keywords:</label></td>
							<td class="tth-gp-r tth-gp-b" colspan="3"><input class="form-control" type="text" name="keywords" data-role="tagsinput" value="<?php echo stripslashes($keywords)?>" ></td>
						</tr>
						<tr>
							<td colspan="4" align="center">
								<button type="submit" class="btn btn-form-primary btn-form">Đồng ý</button> &nbsp;
								<button type="reset" class="btn btn-form-success btn-form">Làm lại</button> &nbsp;
								<button type="button" class="btn btn-form-info btn-form" onclick="location.href='?<?php echo TTH_PATH?>=car_list&id=<?php echo $car_menu_id?>'">Thoát</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- The blueimp Gallery widget -->
<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls">
	<div class="slides"></div>
	<h3 class="title"></h3>
	<a class="prev">‹</a>
	<a class="next">›</a>
	<a class="close">×</a>
	<a class="play-pause"></a>
	<ol class="indicator"></ol>
</div>
<?php
$dir_dest = ROOT_DIR . DS .'uploads'. DS .'photos';
$list_img = "";
$p1 = $p2 = array();
$db->table = "uploads_tmp";
$db->condition = "upload_id = ".$upload_img_id;
$db->order = "";
$db->limit = "";
$rows = $db->select();
foreach ($rows as $row){
	$list_img = $row['list_img'];
}

$files_img = explode(";", $list_img);
if(count($files_img)>0) {
	for ($i = 0; $i < count($files_img); $i++) {
		if ($files_img[$i] != "" && file_exists($dir_dest . DS . $files_img[$i])) {
			$src = "/uploads/photos/" . $files_img[$i];
			$l_key = explode("_", $files_img[$i]);
			$key = $l_key[0];
			$url = '/uploads/upload.php?type=2&id='.$upload_img_id.'&item='.$files_img[$i].'&lang='.TTH_LANGUAGE;
			$p1[$i] = '"<a href=\''.$src.'\' data-gallery><img src=\''.$src.'\' class=\'file-preview-image\'></a>"';
			$p2[$i] = '{url: "'.$url.'", key: '.$key.'}';
		}
	}
}
?>
<script>
	CKEDITOR.replace('content', {
			height: 300}
	);
	$('#input-datetime').datetimepicker({
		mask:'39/19/9999 29:59',
		lang:'vi',
		format:'<?php echo TTH_DATETIME_FORMAT?>'
	});
	$('.file-img').fileinput({
		<?php if($img!='no' && $img!='') { ?>
		initialPreview: [
			"<img src='../uploads/car/<?php echo $img?>' class='file-preview-image' title='<?php echo $img?>' alt='<?php echo $img?>'>"
		],
		<?php } ?>
		allowedFileExtensions : ['jpg', 'png','gif']
	});
	$("#album").fileinput({
		uploadUrl: "/uploads/upload.php?type=1&id=<?php echo $upload_img_id?>&lang=<?php echo TTH_LANGUAGE?>",
		uploadAsync: false,
		initialPreview: [
			<?php echo implode(',', $p1);?>
		],
		initialPreviewConfig: [
			<?php echo implode(',', $p2);?>
		]
	});
</script>
<?php
}
/**
 * @param $id
 * @param $par
 */
function categoryName($id) {
	echo '<select name="car_menu_id" class="form-control">';
	global $db;
	$db->table = "category";
	$db->condition = "type_id = 11";
	$db->order = "sort ASC";
	$db->limit = "";
	$rows = $db->select();
	foreach($rows as $row) {
		echo "<option value='".$row["category_id"]."' disabled";
		echo ">".stripslashes($row["name"])."</option>";
		loadMenuCategory($db, 0, 0, $row["category_id"], $id);
	}
	echo '</select>';

}

/**
 * @param $db
 * @param $level
 * @param $parent
 * @param $category_id
 * @param $par
 */
function loadMenuCategory($db, $level, $parent, $category_id, $id){
	$space = "-&nbsp;-&nbsp;";
	for($i=0; $i<$level; $i++){
		$space.="-&nbsp;";
	}
	$db->table = "car_menu";
	$db->condition = "category_id = ".$category_id." and parent = ".$parent;
	$db->order = "sort ASC";
	$db->limit = "";
	$rows2 = $db->select();
	foreach($rows2 as $row) {
		if ($level <= 3){
			echo "<option value='".$row["car_menu_id"]."'";
			if ($id==$row["car_menu_id"]) echo " selected ";
			echo ">".$space.stripslashes($row["name"])."</option>";
				loadMenuCategory($db, $level+2, $row["car_menu_id"]+0, $row["category_id"]+0, $id);
		}
	}
}

function getNumerics($str) {
    preg_match_all('/\d+/', $str, $matches);
    $arr = $matches[0];
	if(empty($arr)) return 0;
	else {
		$num = $arr[0];
		return $num;
	}
}
