<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$document_id = isset($_GET['id']) ? $_GET['id']+0 : $document_id+0;
$db->table = "document";
$db->condition = "document_id = ".$document_id;
$db->order = "";
$rows = $db->select();
foreach($rows as $row) {
	$menu_id    = $row['document_menu_id']+0;
}
if($db->RowCount==0) loadPageAdmin("Tệp tin không tồn tại.","?".TTH_PATH."=document_manager");
// ---------------
$db->table = "document_menu";
$db->condition = "document_menu_id = ".$menu_id;
$rows = $db->select();
$category_id = 0;
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
			<a href="?<?php echo TTH_PATH?>=document_manager"><i class="fa fa-edit"></i> Quản lý nội dung</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH?>=document_manager"><i class="fa fa-folder-open-o"></i> Văn bản, Tài liệu</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH?>=document_list&id=<?php echo $menu_id?>"><i class="fa fa-list"></i> <?php echo getNameMenu($menu_id, 'document')?></a>
		</li>
		<li>
			<i class="fa fa-cog"></i> Chỉnh sửa tệp tin
		</li>
	</ol>
</div>
<!-- /.row -->
<?php
include_once (_A_TEMPLATES . DS . "document.php");
if(empty($typeFunc)) $typeFunc = "no";

$date = new DateClass();

$file_max_size = FILE_MAX_SIZE;
$dir_dest = ROOT_DIR . DS .'uploads' . DS . "document" . DS;
$OK = $file_ck = false;
$error = '';
if($typeFunc=='edit'){
	if(empty($name)) $error = '<span class="show-error">Vui lòng nhập tiêu đề.</span>';
	else {
		// ---- FILE
		$file_type = $_FILES['file']['type'];
		$file_name = $_FILES['file']['name'];
		$file_size = $_FILES['file']['size'];

		$allowedTypes = array(
				'application/msword'			=>	'doc',
				'application/excel'				=>	'xls',
				'application/vnd.ms-powerpoint'	=>	'ppt',

				'application/vnd.openxmlformats-officedocument.wordprocessingml.document'	=>	'docx',
				'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'			=>	'xlsx',
				'application/vnd.openxmlformats-officedocument.presentationml.presentation'	=>	'pptx',

				'application/download'			=>	'zip',
				'application/x-zip-compressed'	=>	'zip',
				'application/zip'				=>	'zip',
				'application/x-rar-compressed'	=>	'rar',
				'application/rar'				=>	'rar',
				'application/pdf'				=>	'pdf',
		);

		if (array_key_exists($file_type, $allowedTypes) && (strtolower(File::getExt($file_name)) == $allowedTypes[$file_type])) {
			$file_type = '.' . $allowedTypes[$file_type];
		}
		else {
			$file_type = 'unk';
		}

		$file_type = trim(strrchr($file_name,'.'));
		$file_full_name = "tmp_".time().$file_type;

		if ( ($file_size > 0) && ($file_size <= $file_max_size)) {
			if ($file_type != "unk") {
				if ( @move_uploaded_file($_FILES['file']['tmp_name'], $dir_dest . $file_full_name) ) {
					$OK = true;
					$file_ck = true;
				}
				else
					$error = '<span class="show-error">Không thể tải tệp tin lên.</span>';
			}
			else
			{
				$error = '<span class="show-error">Sai định dạng tệp - Không thể tải tệp tin lên.</span>';
			}
		}
		else {
			if ($file_size == 0) {
				$OK		    = true;
				$file_ck	= false;
			} {
				$error = '<span class="show-error">Tệp tin của bạn chọn vượt quá kích thước cho phép.</span>';
			}
		}

		if($OK) {
			$id_query = 0;
			$db->table = "document";
			$data = array(
					'document_menu_id' => $document_menu_id+0,
					'name' => $db->clearText($name),
					'model' => $db->clearText($model),
					'release_date' => strtotime($date->dmYtoYmd($release_date)),
					'effective_date'=>strtotime($date->dmYtoYmd($effective_date)),
					'comment' => $db->clearText($comment),
					'content' => $db->clearText($content),
					'is_active' => $is_active + 0,
					'hot' => $hot + 0,
					'created_time' => strtotime($date->dmYtoYmd($created_time)),
					'modified_time' => time(),
					'user_id' => $_SESSION["user_id"]
				);
			$db->condition = "document_id = " . $document_id;
			$db->update($data);

			if($file_ck) {
				$stringObj = new String();
				if(glob($dir_dest . '*'.$file)) array_map("unlink", glob($dir_dest . '*'.$file));
				$u_file = getRandomString().'-'.$document_id.'-'.substr($stringObj->getSlug($name),0,120) . $file_type;
				@rename($dir_dest . $file_full_name, $dir_dest . $u_file);
				$db->table = "document";
				$data = array(
						'file'=>$db->clearText($u_file),
						'type'=>$db->clearText($file_type),
						'size'=>$db->clearText($file_size)
					);
				$db->condition = "document_id = " . $document_id;
				$db->update($data);
			}

			loadPageSucces("Đã thêm Tệp tin thành công.", "?" . TTH_PATH . "=document_list&id=" . $document_menu_id);
			$OK = true;
		}
	}
}
else {
	$db->table = "document";
	$db->condition = "document_id = ".$document_id;
	$rows = $db->select();
	foreach($rows as $row) {
		$document_menu_id   = $row['document_menu_id']+0;
		$name			    = $row['name'];
		$file               = $row['file'];
		$model              = $row['model'];
		if($row['release_date']==0) $release_date = '';
		else $release_date   = $date->vnDate($row['release_date']);
		if($row['effective_date']==0) $effective_date = '';
		else $effective_date = $date->vnDate($row['effective_date']);
		$comment            = $row['comment'];
		$content            = $row['content'];
		$is_active		    = $row['is_active']+0;
		$hot			    = $row['hot']+0;
		$created_time       = $date->vnDateTime($row['created_time']);
	}
}
if(!$OK) document("?".TTH_PATH."=document_edit", "edit", $document_id, $document_menu_id, $name, $file, $model, $release_date, $effective_date, $comment, $content, $is_active, $hot, $created_time, $error);
?>