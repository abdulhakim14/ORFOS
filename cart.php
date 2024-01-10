<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php"); // connection to db
error_reporting(0);
session_start();

include_once 'cart-action.php'; //including controller
if(empty($_SESSION['user_id']))  //if usser is not login redirected back to login page
{
	header('location:login.php');
}
else
{

?>


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="potoffood.png">
    <title>Cart</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet"> </head>

<body>
    
        <!--header starts-->

            <?php
            include("header.php");
            ?>

         <!--header End-->>

        <div class="page-wrapper">


            
            <div class="container m-t-30">
                <div class="row">
                 <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                   </div>
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                        
                         <div class="widget widget-cart">
                                <div class="widget-heading">
                                    <h3 class="widget-title text-dark">
                                 Your Shopping Cart
                              </h3>
							  				  
							  
                                    <div class="clearfix"></div>
                                </div>
                                <div class="order-row bg-white">
                                    <div class="widget-body">
									
									
                                    <?php

                                $item_total = 0;

                                foreach ($_SESSION["cart_item"] as $item)  // fetch items define current into session ID
                                {
                                ?>									
									
                                        <div class="title-row">
										<?php echo $item["title"]; ?><a href="cart.php?res_id=<?php echo $_GET['res_id']; ?>&action=remove&id=<?php echo $item["d_id"]; ?>" >
										<i class="fa fa-trash pull-right"></i></a>
										</div>
										
                                        <div class="form-group row no-gutter">
                                            <div class="col-xs-8">
                                                 <input type="text" class="form-control b-r-0" value=<?php echo $item["price"]; ?> readonly id="exampleSelect1">
                                                   
                                            </div>
                                            <div class="col-xs-4">
                                               <input class="form-control" type="text" readonly value='<?php echo $item["quantity"]; ?>' id="example-number-input"> </div>
                                        
									  </div>
									  
                                <?php
                            $item_total += ($item["price"]*$item["quantity"]); // calculating current price into cart
                            }
                            ?>								  
									  
									  
									  
                                    </div>
                                </div>
                               
                                <!-- end:Order row -->
                             
                                <div class="widget-body">
                                    <div class="price-wrap text-xs-center">
                                        <p>Total Amount</p>
                                        <h4 class="value"><strong><?php echo $item_total; ?> Tk</strong></h4>
                                    
                                        <a href="checkout.php?res_id=<?php echo $_GET['res_id'];?>&action=check"  class="btn theme-btn btn-lg">Checkout</a>
                                    </div>
                                </div>
								
						
								
								
                            </div>
                    </div>

                   


                </div>
                <!-- end:row -->
            </div>
            <!-- end:Container -->
            
        
        </div>
        <!-- end:page wrapper -->


        <!-- start: FOOTER -->

            <?php
               include("footer.php");
            ?>
            
        <!-- end:Footer -->


    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>
</body>

</html>

<?php
}
?>