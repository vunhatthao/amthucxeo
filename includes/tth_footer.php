<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//-------------
?>
<!-- .footer -->
<footer class="footer">
	<div class="box-wp">
		<div class="row">
			<div class="f-left col-xs-6 col-lg-6 col-sm-6 col-md-4">
				<div class="logo-footer">
					<a href="<?php echo HOME_URL_LANG;?>" title="<?php echo getConstant('title');?>">
						<img src="<?php echo HOME_URL . getConstant('file_logo');?>" alt="<?php echo getConstant('meta_site_name');?>">
					</a>
				</div>
				<div class="contact-home">
					<?php echo getPage('copyright');?>
				</div>
			</div>
			<div class="f-center col-xs-6 col-lg-3 col-sm-3 col-md-4">
				<h4 class="tit font-constantia"><span><?php echo getPage('system', 'name');?></span></h4>
				<div class="txt f-space10">
					<?php echo getPage('system'); ?>
				</div>
			</div>
			<div class="f-right col-xs-6 col-lg-3 col-sm-3 col-md-4">
				<h4 class="tit font-constantia"><?php echo getPage('business_hours', 'name'); ?></h4>
				<div class="txt f-space10">
					<?php echo getPage('business_hours'); ?>
				</div>
				<div class="footer-social">
					<?php
					echo '<ul class="social">';
					echo '<span class="ti">' . $lgTxt_social .'</span>';
					if(getConstant('link_facebook')!="") echo '<li class="facebook"><a target="_blank" href="' . getConstant('link_facebook') . '" title="Facebook"><i class="fa fa-facebook"></i></a></li>';
					if(getConstant('link_twitter')!="") echo '<li class="twitter"><a target="_blank" href="' . getConstant('link_twitter') . '" title="Twitter"><i class="fa fa-twitter"></i></a></li>';
					if(getConstant('link_tripadvisor')!="") echo '<li class="tripadvisor"><a target="_blank" href="' . getConstant('link_tripadvisor') . '" title="Tripadvisor"><i class="fa fa-tripadvisor" aria-hidden="true"></i></a></li>';
					if(getConstant('link_instagram')!="") echo '<li class="instagram"><a target="_blank" href="' . getConstant('link_instagram') . '" title="Instagram"><i class="fa fa-instagram"></i></a></li>';
					echo '</ul>';
					?>
				</div>
			</div>
		</div>
	</div>
	</div>
</footer>
<div class="copyright" style="overflow: hidden">
	<div class="box-wp">
		<div class="row clearfix">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
				<?php echo getConstant('meta_copyright'); ?>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
				<div class="olalaweb">
					<p>Developed by <a href="http://olalaweb.vn">Olala web</a> | <a href="http://olalaweb.vn">Olala Group</a></p>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- / .footer -->