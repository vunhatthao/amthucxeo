<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

?>
<li>
	<a href="<?php echo HOME_URL_LANG . '/' . $row2['slug'];?>" title="<?php echo stripslashes($row2['name']); ?>" ><?php echo stripslashes($row2['name']); ?></a>
</li>