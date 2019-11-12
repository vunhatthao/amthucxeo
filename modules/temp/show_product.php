<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//

$sumView = 0;
$db->table = "product";
$db->condition = "is_active = 1 and product_id = ".$id;
$db->order = "";
$db->limit = "";
$rows = $db->select();
if($db->RowCount>0){
	foreach($rows as $row) {
		$db->table = "product";
		$db->condition = "is_active = 1 and product_menu_id = ".($row['product_menu_id']+0).' and product_id <> '.$id;
		$db->order = "created_time DESC";
		$db->limit = 8;
		$rows2 = $db->select();
		$total = $db->RowCount;

		$photo_avt = '';
		$alt = ($row['img_note']!="") ? stripslashes($row['img_note']) : stripslashes($row['name']);
		if($row['img']!="" && $row['img']!="no") {
			$photo_avt = '<img src="'. HOME_URL .'/uploads/product/product-2x'. $row['img'] . '" alt="' . $alt . '" />';
			$photo_avt = '<a class="fancy-box" href="'. HOME_URL . '/uploads/product/full_'. $row['img'] . '" title="' . stripslashes($row['name']) . '">' . $photo_avt . '</a>';
		}


		$sale = '';
		if($row['sale']>0) $sale = '<div class="sale">-' . $row['sale']  . '%</div>';
		$price = '';
		if($row['price']>0) $price = '<span class="price">' . stripslashes(formatNumberVN($row['price'])) . $lgTxt_unit_price . '</span>';
		else $price = '<span class="price">'. $lgTxt_price_title .' '. $lgTxt_price_contact .'</span>';
?>
<div class="wrap-detail box-wp">
		<!--<div class="social-share">
			<input type="checkbox" class="checkbox" id="share">
			<label for="share" class="label fa fa-share-alt" title="Share social buttons"></label>
			<div class="social">
				<ul>
					<li onclick="javascript:window.open('https://www.facebook.com/sharer/sharer.php?u=<?php /*echo site_url()*/?>','_blank')" class="fa fa-facebook"></li>
					<li onclick="javascript:window.open('https://twitter.com/intent/tweet?source=webclient&text=DANAWEB&url=<?php /*echo site_url()*/?>&hashtags=danaweb','_blank')" class="fa fa-twitter"></li>
					<li onclick="javascript:window.open('https://plus.google.com/share?url=<?php /*echo site_url()*/?>','_blank')" class="fa fa-google-plus"></li>
				</ul>
			</div>
		</div>-->
		<?php //echo '<div class="box-text box-wp"><div class="title-product title-show-product"><h2 class="tit-pro"><span class="hvr-sweep-to-right">' . $breadcrumb .'</span></h2><p class="text-pro">'. $category_comment .'</p></div></div>';
		?>
	<div class="product-con f-space10 clearfix">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="img">
					<?php echo $photo_avt; ?>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="txt">
					<div class="top">
						<h3 class="title"><a><?php echo stripslashes($row['name']); ?></a></h3>
					</div>
					<div class="boxiv clearfix">
						<h4><?php echo $price; ?></h4>
					</div>
					<div class="comment"><?= $row['promotion'];?></div>
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
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!-- Thông tin sản phẩm -->
		<div class="tab_product_show f-space20">
			<div class="table_info_right">
				<div class="panel with-nav-tabs panel-default">
					<div class="panel-heading">
						<ul class="nav nav-tabs" style="margin-left: 0 !important;">
							<li class="active"><a href="#tab1" data-toggle="tab"><?php echo $lgTxt_tab_1;?></a></li>
							<li><a href="#tab2" data-toggle="tab"><?php echo $lgTxt_tab_2;?></a></li>
							<li><a href="#tab3" data-toggle="tab"><?php echo $lgTxt_tab_3;?></a></li>
						</ul>
					</div>
					<div class="panel-body">
						<div class="tab-content">
							<div class="tab-pane fade in active" id="tab1">
								<div class="col-md-12 col-sm-12 col-xs-12 divmhndung">
									<div class="row">
										<?= $row['promotion'];?>
										<?php //echo str_replace(PHP_EOL, '<br>', stripslashes($row['comment']));  ?>
									</div> <!-- ./row -->
								</div>
							</div>
							<div class="tab-pane fade" id="tab2">
								<div class="col-md-12 col-sm-12 col-xs-12 divmhndung">
									<div class="row">
										<?php echo stripslashes($row['content']); ?>
									</div> <!-- ./row -->
								</div>
							</div>
							<div class="tab-pane fade" id="tab3">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="box-facebook">
										<div class="fb-comments" data-href="<?php echo site_url()?>" data-width="100%" data-numposts="5"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div><!-- End Table infor right -->
		<!-- end thông tin sản phẩm -->
	</div>

		<div class="product-bottom clearfix">
			<div class="product-others">
				<div class="list-others f-space10">
					<?php
					//----------------------------------------------------------
					if($total>0) {
					?>
					<div class="title">
						<h3 style="text-transform: uppercase"><?php echo $lgTxt_title_others4; ?></h3>
					</div>
					<div class="list-other clearfix f-space05 owl-carousel owl-theme" >
						<?php
						foreach($rows2 as $row2) {
							include(_F_TEMPLATES . DS . "show_other_product.php");
						}
						echo '</div>';
						} ?>

					</div>
				</div>
				<script type="text/javascript">
					(function() {
						[].slice.call( document.querySelectorAll( '.tabs' ) ).forEach( function( el ) {
							new CBPFWTabs( el );
						});
					})();
					$(document).ready(function() {
						var owl = $('.list-other');
						owl.owlCarousel({
							items: 2,
							loop: false,
							margin: 30,
							nav: false,
							autoplay: true,
							autoplayTimeout: 5000,
							autoplayHoverPause: true,
							smartSpeed:450,
							dots:false,
							responsive:{
								0:{
									items:1,
									dots:true
								},
								360:{
									items:1,
									dots:true
								},
								532:{
									items:2,
									dots:true
								},
								600:{
									items:2,
									dots:true
								},
								800:{
									items:2,
									dots:false
								},
								1000:{
									items:2
								}
							}
						});
					})
				</script>
			</div>
		</div>

<?php
		$sumView = $row['views']+1;
	}
	$db->table = "product";
	$data = array(
		'views'=>$sumView
	);
	$db->condition = "product_id = ".$id;
	$db->update($data);

}
else include(_F_MODULES . DS . "error_404.php");