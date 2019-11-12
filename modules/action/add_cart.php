<?php
if(isset($_POST['url'])){
    $id_product=intval($_POST['id']);
    addToCart($id_product+0, 1);
    $result=array();
    if(isset($_SESSION['cart'])){
        $sl=count($_SESSION['cart']);
    } else{
        $sl=0;
    };
    $result=array(
        'no'=> $lgTxt_add_cart,
        'sl'=>$sl,
    );
    echo json_encode($result);
}
