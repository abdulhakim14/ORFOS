<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php");
error_reporting(0);
session_start();
?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="restaurant.png">
    <title>Restaurants</title>
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
            <!-- top Links -->
            <div class="top-links">
                <div class="container">
                    <ul class="row links">
                       
                        <li class="col-xs-12 col-sm-4 link-item active"><span>1</span><a href="restaurants.php">Choose Restaurant</a></li>
                        <li class="col-xs-12 col-sm-4 link-item"><span>2</span><a href="#">Pick your favourite dishes</a></li>
                        <li class="col-xs-12 col-sm-4 link-item"><span>3</span><a href="#">Get delivered & Pay</a></li>
                    </ul>
                </div>
            </div>
            <!-- end:Top links -->
            <section class="restaurants-page">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="bg-gray restaurant-entry">
                                <div class="row">
								    <?php $ress= mysqli_query($db,"select * from restaurant");
									    while($rows=mysqli_fetch_array($ress))
										{
													
						
											 echo' <div class="col-sm-6 col-md-6 col-lg-6 text-xs-center text-sm-left">
														<div class="entry-logo">
															<a class="img-fluid" href="dishes.php?res_id='.$rows['rs_id'].'" > <img src="admin/Res_img/'.$rows['image'].'" alt="Food logo"></a>
														</div>
														<!-- end:Logo -->
                                                            
														<div class="entry-dscr">
															<h5><a href="dishes.php?res_id='.$rows['rs_id'].'" >'.$rows['title'].'</a></h5> <span>'.$rows['address'].' <a href="#">...</a></span>
																
														</div>
														<!-- end:Entry description -->

													</div>
														
													<div class="col-sm-6 col-md-6 col-lg-6 text-xs-center">
															<div class="right-content bg-white">
																<div class="right-review">
																	<a href="dishes.php?res_id='.$rows['rs_id'].'" class="btn theme-btn-dash">View Menu</a> 
                                                                </div>
															</div>
															<!-- end:right info -->

													</div>';
										}
						
						            ?>
                                    
                                </div>
                                <!--end:row -->

                            </div>
                         
                            
                                
                        </div>
                          
                          
                           
                    </div>
                </div>
                </div>
            </section>
                   

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