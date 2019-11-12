<div class="content-top">
	<div class="l-sub-menu tab-home-product clearfix">
		<!--<h2 class="title-sm"><a href="<?php /*echo HOME_URL_LANG .'/'. getSlugCategory(74); */?>"><?/*=getNameCategory(74);*/?></a></h2>-->
		<h2 class="title-sm"><a title="<?=getPlusCategory(74);?>" href="<?php echo HOME_URL_LANG .'/'. getSlugCategory(74); ?>"><?=getPlusCategory(74);?></a></h2>
		<ul class="nav-tab">
			<?php
			$db->table = "product_menu";
			$db->condition = "is_active = 1 and `category_id` = 74";
			$db->order = "`sort` ASC";
			$db->limit = "";
			$rows3 = $db->select();
			$i=0;
			?>
			<li class="line active" onclick="return select_level1($(this), -1);" href="javascript:;">
				<a class="hvr-bubble-bottom"><?php echo $lx_dac_biet; ?></a>
			</li>
			<?php
			foreach($rows3 as $row3) {
				$active = '';
				//if($i==0) $active = 'active';
				?>
				<li class="line <?php echo $active; ?>" onclick="return select_level1($(this), <?php echo $row3['product_menu_id'];?>);" href="javascript:;"><a class="hvr-bubble-bottom"><?php echo stripslashes($row3['name']); ?></a></li>
				<?php
				$i++;
			}
			?>
		</ul>
	</div>
</div>
<div id="select" class="content-tab">
	<div class="list-tab-show row animated fadeIn clearfix">
	<?php
	 $db->table = "product";
	 $db->condition = "`is_active` = 1 and `hot`= 1";
	 $db->order = "`modified_time` DESC";
	 $db->limit = 6;
	 $rows = $db->select();
	 foreach($rows as $row) {
		 include(_F_TEMPLATES . DS . "show_list_product.php");
	 }
	?>
	</div>
</div>

