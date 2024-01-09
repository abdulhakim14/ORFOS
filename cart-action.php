<?php
if(!empty($_GET["action"])) 
{
$productId = isset($_GET['id']) ? htmlspecialchars($_GET['id']) : '';
$quantity = isset($_POST['quantity']) ? htmlspecialchars($_POST['quantity']) : '';

switch($_GET["action"])
 {
	
	case "remove":
		if(!empty($_SESSION["cart_item"]))
			{
				foreach($_SESSION["cart_item"] as $k => $v) 
				{
					if($productId == $v['d_id'])
						unset($_SESSION["cart_item"][$k]);
				}
			}
			break;
			
	case "empty":
			unset($_SESSION["cart_item"]);
			break;
			
	case "check":
			header("location:checkout.php");
			break;
	}
}