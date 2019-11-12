<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//-------------
?>
<div class="content-left sidebar">
<?php
echo '<div class="menu-left">' . loadMenuChild('article_menu', $id_category, 0, $slug_cat, $id_menu) . '</div>';
?>
</div>