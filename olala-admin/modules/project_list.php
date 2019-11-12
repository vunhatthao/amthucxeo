<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//

if(isset($_POST['idDel'])){
	$dir_dest = ROOT_DIR . DS .'uploads';

	$upload_id = array();
	$idDel = implode(',',$_POST['idDel']);
	$db->table = "project";
	$db->condition = "project_id IN (".$idDel.")";
	$db->order = "";
	$rows = $db->select();
	$i = 0;
	foreach($rows as $row) {
		$upload_id[$i] = $row['upload_id'];

		$list_img = "";
		$db->table = "uploads_tmp";
		$db->condition = "upload_id = ".($row['upload_id']+0);
		$db->order = "";
		$rows = $db->select();
		foreach ($rows as $row){
			$list_img = $row['list_img'];
		}
		$img = explode(";",$list_img);
		if(count($img)>0) {
			for($j=0;$j<count($img);$j++) {
				if($img[$j] != ""){
					$mask = $dir_dest . DS . "photos" . DS . '*'.$img[$j];
					if (glob($mask))
						array_map("unlink", glob($mask));
				}
			}
		}
		$i++;
	}

	$upload_id = implode(',',$upload_id);
	$db->table = "uploads_tmp";
	$db->condition = "upload_id IN (".$upload_id.")";
	$db->delete();

	$db->table = "project";
	$db->condition = "project_id IN (".$idDel.")";
	$db->delete();
	loadPageSucces("Đã xóa bài viết thành công.","?".TTH_PATH."=project_list&id=".$_POST['list_id']);
}

$project_menu_id =  isset($_GET['id']) ? $_GET['id']+0 : 0;
$category_id_core = 0;
$db->table = "project_menu";
$db->condition = "project_menu_id = ".$project_menu_id;
$rows = $db->select();
foreach($rows as $row){
	$category_id_core = $row['category_id'];
}
if($db->RowCount==0) loadPageAdmin("Mục không tồn tại.","?".TTH_PATH."=project_manager");
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
			<i class="fa fa-list"></i> <?php echo getNameMenu($project_menu_id, 'project')?>
		</li>
		<a class="btn-add-new" href="?<?php echo TTH_PATH?>=project_add&id=<?php echo $project_menu_id?>">Thêm bài viết</a>
	</ol>
</div>
<!-- /.row -->
<?php echo dashboardCoreAdminTwo("project_list;".$category_id_core)?>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default panel-no-border">
			<div class="table-responsive">
				<form action="?<?php echo TTH_PATH?>=project_list" method="post" id="deleteArt">
					<input type="hidden" name="list_id" value="<?php echo $project_menu_id?>" />
					<table class="table display table-manager" cellspacing="0" cellpadding="0" id="dataTablesList">
						<thead>
						<tr>
							<th>STT</th>
							<th>Tiêu đề</th>
							<th>Sắp xếp</th>
							<th>Trạng thái</th>
							<th>Nổi bật</th>
							<th>Lượt xem</th>
							<th>Ngày đăng</th>
							<th>Người đăng</th>
							<th>Chức năng</th>
						</tr>
						</thead>
						<tbody>
						<?php
						$date = new DateClass();

						$db->table = "project";
						$db->condition = "project_menu_id = ".$project_menu_id;
						$db->order = "sort ASC";
						$rows = $db->select();
						$countList = 0;
						$countList = $db->RowCount;

						$totalpages = 0;
						$perpage = 40;
						$total = $db->RowCount;
						if($total%$perpage==0) $totalpages=$total/$perpage;
						else $totalpages = floor($total/$perpage)+1;
						if(isset($_GET["page"])) $page=$_GET["page"]+0;
						else $page=1;
						$start=($page-1)*$perpage;
						$i=0+($page-1)*$perpage;

						$db->table = "project";
						$db->condition = "project_menu_id = ".$project_menu_id;
						$db->order = "sort ASC";
						$db->limit = $start.','.$perpage;
						$rows = $db->select();

						foreach($rows as $row) {
							$i++;
							?>
							<tr>
								<td align="center"><?php echo $i?></td>
								<td><?php echo stripslashes($row['name'])?></td>
								<?php
								//-----------Kiểm tra phân quyền ---------------------------------------
								if(in_array("project_edit;".$category_id_core,$corePrivilegeSlug)) {
								?>
								<td align="center">
									<?php echo showSort("sort_".$row["project_id"]."", $countList,$row["sort"], "70%", 0, $row["project_id"] ,'project', 1);?>
								</td>
								<td align="center">
									<?php echo ($row["is_active"]+0==0)?
										'<div class="btn-event-close" data-toggle="tooltip" data-placement="top" title="Mở" onclick="edit_status($(this), '.$row["project_id"].', \'is_active\', \'project\');" rel="1">0</div>'
										:
										'<div class="btn-event-open" data-toggle="tooltip" data-placement="top" title="Đóng" onclick="edit_status($(this), '.$row["project_id"].', \'is_active\', \'project\');" rel="0">1</div>'
									?>
								</td>
								<td align="center">
									<?php echo ($row["hot"]+0==0)?
										'<div class="btn-event-close" data-toggle="tooltip" data-placement="top" title="Mở" onclick="edit_status($(this), '.$row["project_id"].', \'hot\', \'project\');" rel="1">0</div>'
										:
										'<div class="btn-event-open" data-toggle="tooltip" data-placement="top" title="Đóng" onclick="edit_status($(this), '.$row["project_id"].', \'hot\', \'project\');" rel="0">1</div>'
									?>
								</td>
								<?php
								} else {
								?>
								<td align="center">
									<?php echo showSort("sort_".$row["project_id"]."", $countList,$row["sort"], "70%", 0, $row["project_id"] ,'project', 0);?>
								</td>
								<td align="center">
									<?php echo ($row["is_active"]+0==0)?
										'<div class="btn-event-close alertManager" data-toggle="tooltip" data-placement="top" title="Mở">0</div>'
										:
										'<div class="btn-event-open alertManager" data-toggle="tooltip" data-placement="top" title="Đóng">1</div>'
									?>
								</td>
								<td align="center">
									<?php echo ($row["hot"]+0==0)?
										'<div class="btn-event-close alertManager" data-toggle="tooltip" data-placement="top" title="Mở"></div>'
										:
										'<div class="btn-event-open alertManager" data-toggle="tooltip" data-placement="top" title="Đóng"></div>'
									?>
								</td>
								<?php }
								//----------- end if ------------
								?>
								<td align="center"><?php echo formatNumberVN($row['views']+0);?></td>
								<td align="center"><?php echo $date->vnDateTime($row['created_time'])?></td>
								<td align="center"><?php echo getUserName($row['user_id']);?></td>
								<td class="details-control" align="center">
									<div class="checkbox">
										<?php
										$href = ($category_id_core==24) ? '?'.TTH_PATH.'=video_edit&id='.$row['project_id'] : '?'.TTH_PATH.'=project_edit&id='.$row['project_id'];
										?>
										<a href="<?php echo $href?>"><img data-toggle="tooltip" data-placement="top" title="Chỉnh sửa" src="images/edit.png"></a> &nbsp;
										<label class="checkbox-inline">
											<input type="checkbox" data-toggle="tooltip" data-placement="top" title="Xóa" class="checkboxArt" name="idDel[]" value="<?php echo $row['project_id']?>">
										</label>
									</div>
								</td>
							</tr>
						<?php
						}
						?>
						</tbody>
					</table>
					<div class="row">
						<div class="col-sm-6"><?php echo showPageNavigation($page, $totalpages,'?'.TTH_PATH.'=project_list&id='.$project_menu_id.'&page=')?></div>
						<div class="col-sm-6" align="right" style="padding: 7px 0;">
							<label class="radio-inline"><input type="checkbox" id="selecctall"  data-toggle="tooltip" data-placement="top" title="Chọn xóa tất cả" ></label>
							<input type="button" class="btn btn-primary btn-xs <?php echo in_array("project_del;".$category_id_core,$corePrivilegeSlug)? "confirmManager" : "alertManager"?> " value="Xóa" name="deleteArt">
						</div>
					</div>
				</form>
			</div>
			<!-- /.table-responsive -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-6 -->
</div>
<script>
	$(document).ready(function() {
		$('#dataTablesList').dataTable( {
			"language": {
				"url": "<?php echo ADMIN_DIR?>/js/plugins/dataTables/de_DE.txt"
			},
			"aoColumnDefs" : [ {
				"bSortable" : false,
				"aTargets" : [8, "no-sort" ]
			} ],
			"paging":   false,
			"info":     false,
			"order": [ 0, "asc" ],
			"columns": [
				null,
				null,
				{ "orderDataType": "dom-select" },
				null,
				null,
				null,
				null,
				null,
				null
			]
		} );

		$('#selecctall').click(function(event) {
			if(this.checked) {
				$('.checkboxArt').each(function() {
					this.checked = true;
				});
			}else{
				$('.checkboxArt').each(function() {
					this.checked = false;
				});
			}
		});
	});
	$(".confirmManager").click(function() {
		var element = $(this);
		var action = element.attr("id");
		confirm("Tất cả các dữ liệu liên quan đến bài viết sẽ được xóa và không thể phục hồi.\nBạn có muốn thực hiện không?", function() {
			if(this.data == true) document.getElementById("deleteArt").submit();
		});
	});
	$(".alertManager").boxes('alert', 'Bạn không được phân quyền với chức năng này.');
</script>