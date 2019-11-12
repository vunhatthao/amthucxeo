
<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//-------------

$date = new DateClass();
$stringObj = new String();

?>
<div class="list-tab-show row animated fadeIn clearfix">
    <?php
    if(isset($_POST['id'])) {
        $id = $_POST['id'] + 0;
        $list = getListMenuChild('product_menu', 74, $id);
        if($id== -1){
            $db->table = "product";
            $db->condition = "`is_active` = 1 and `hot`= 1";
            $db->order = "`modified_time` DESC";
            $db->limit = 6;
            $rows = $db->select();
            foreach($rows as $row) {
                include(_F_TEMPLATES . DS . "show_list_product.php");
            }
        }else{
            $db->table = "product";
            $db->condition = "`is_active` = 1 AND `product_menu_id` IN ($list)";
            $db->order = "`created_time` DESC";
            $db->limit = 6;
            $rows = $db->select();
            foreach($rows as $row) {
                include(_F_TEMPLATES . DS . "show_list_product.php");
            }
        }
    }
    ?>
</div>
