<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
function road($act, $typeFunc, $road_id, $name, $is_active, $hot, $error) {
	dashboardCoreAdmin();
?>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="fa fa-files-o"></i> Chuyên mục chiều rộng đường
			</div>
			<div class="panel-body">
				<form action="<?php echo $act?>" method="post" enctype="multipart/form-data">
					<input type="hidden" name="typeFunc" value="<?php echo $typeFunc?>" />
					<input type="hidden" name="road_id" value="<?php echo $road_id?>" />
					<div class="panel-show-error">
						<?php echo $error?>
					</div>
					<table class="table table-hover" style="width: 70%;">
						<tr>
							<td width="150px"><label>Tên mục:</label></td>
							<td><input class="form-control" type="text" id="name" name="name" maxlength="255" value="<?php echo stripslashes($name)?>" required></td>
						</tr>
						<tr>
							<td><label>Trạng thái:</label></td>
							<td>
								<label class="radio-inline"><input type="radio" name="is_active" value="0" <?php echo $is_active==0?"checked":""?> > Đóng</label>
								<label class="radio-inline"><input type="radio" name="is_active" value="1" <?php echo $is_active==1?"checked":""?> > Mở</label>
							</td>
						</tr>
						<tr>
							<td><label>Nổi bật:</label></td>
							<td>
								<label class="radio-inline"><input type="radio" name="hot" value="0" <?php echo $hot==0?"checked":""?> > Đóng</label>
								<label class="radio-inline"><input type="radio" name="hot" value="1" <?php echo $hot==1?"checked":""?> > Mở</label>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<button type="submit" class="btn btn-form-primary btn-form">Đồng ý</button> &nbsp;
								<button type="reset" class="btn btn-form-success btn-form">Làm lại</button> &nbsp;
								<button type="button" class="btn btn-form-info btn-form" onclick="location.href='?<?php echo TTH_PATH?>=road_manager'">Thoát</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>
<?php
}
/**
 * @param $id
 * @param $parent
 * @return mixed
 */
function sortAcs(){
	global $db;
	$db->table = "road";
	$db->condition = "";
	$db->select();
	return $db->RowCount;
}
?>
