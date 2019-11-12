<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

?>
<li><a href="<?php echo HOME_URL_LANG . '/' . stripslashes($row2['slug']);?>" title="<?php echo stripslashes($row2['name']); ?>" ><?php echo stripslashes($row2['name']); ?><?php if(in_array($slug_cat, array('tin-tuc'))) echo '&nbsp; - <span class="time">('.$date->date($row2['created_time']).')</span>'; ?></a></li>