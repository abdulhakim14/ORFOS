<!DOCTYPE html>
<html lang="en">
<?php
include("../connection/connect.php");
error_reporting(0);
session_start();

?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
	<link rel="icon" type="image/png" sizes="16x16" href="images/orfos.png">
    <title>Ontheway Report</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/helper.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:** -->
    <!--[if lt IE 9]>
    <script src="https:**oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https:**oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>

<body class="fix-header fix-sidebar">
    <!-- Preloader - style you can find in spinners.css -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
			<circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- Main wrapper  -->
    <div id="main-wrapper">
           

        <!-- Start header header  -->
            <?php
            include("header.php");
            ?>
        <!-- End header header -->


        <!--Start Left Sidebar  -->
            <?php
            include("left_sidebar.php");
            ?>
        <!-- End Left Sidebar  -->


        <!-- Page wrapper  -->
        <div class="page-wrapper">
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Reports</h3> </div>
               
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-12">
                        
                       
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Ontheway Reports</h4>
                                <div class="text-right">
                                
                                    <h5>Total Ontheway Orders: <?php $sql="select * from users_orders WHERE status = 'in process' ";
												$result=mysqli_query($db,$sql); 
													$rws=mysqli_num_rows($result);
													
													echo $rws;?></h5>
                                </div>
                             
                                <div class="table-responsive m-t-40">
                                    <table id="example23" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>User name</th>		
                                                <th>Dishes</th>
                                                <th>Quantity</th>
                                                <th>Total Price</th>
												<th>Address</th>
												<th>Status</th>												
												<th>Ordered Date</th>
												
												 
                                            </tr>
                                        </thead>
                                        <tbody>
                                           
											
                                            <?php
												$sql="SELECT users.*, users_orders.* FROM users INNER JOIN users_orders ON users.u_id=users_orders.u_id WHERE users_orders.status='in process'";
												$query=mysqli_query($db,$sql);
												
													if(!mysqli_num_rows($query) > 0 )
														{
															echo '<td colspan="8"><center>No Orders-Data!</center></td>';
														}
													else
														{				
															while($rows=mysqli_fetch_array($query))
																{
																																							
                                                                    ?>
                                                                    <?php
                                                                        echo ' <tr>
                                                                                <td>'.$rows['username'].'</td>
                                                                                <td>'.$rows['title'].'</td>
                                                                                <td>'.$rows['quantity'].'</td>
                                                                                <td>'.$rows['price']*$rows['quantity']+"60".' Tk</td>
                                                                                <td>'.$rows['address'].'</td>';
                                                                    ?>
                                                                    <?php 
                                                                        $status=$rows['status'];
                                                                        if($status=="" or $status=="NULL")
                                                                            {
                                                                    ?>
                                                                        <td> <button type="button" class="btn btn-info" style="font-weight:bold;"><span class="fa fa-bars"  aria-hidden="true" >Dispatch</button></td>
                                                                    <?php 
                                                                        }
                                                                        if($status=="in process")
                                                                        { 
                                                                            
                                                                    ?>
                                                                        <td> <button type="button" class="btn btn-warning"><span class="fa fa-cog fa-spin"  aria-hidden="true" ></span>On the Way!</button></td> 
                                                                    <?php
                                                                        }
                                                                        if($status=="closed")
                                                                        {
                                                                    ?>
                                                                        <td> <button type="button" class="btn btn-success" ><span  class="fa fa-check-circle" aria-hidden="true">Delivered</button></td> 
                                                                    <?php 
                                                                        } 
                                                                    ?>
                                                                    <?php
                                                                        if($status=="rejected")
                                                                        {
                                                                    ?>
                                                                    <td> <button type="button" class="btn btn-danger"> <i class="fa fa-close"></i>Cancelled</button></td> 
                                                                    <?php 
                                                                        } 
                                                                    ?>
                                                                    <?php																									
                                                                        echo '	<td>'.$rows['date'].'</td>';
                                                                    ?>
                                                                       
                                                                    <?php
                                                                        echo '
                                                                        </tr>';
                                                                                                
                                                                                                    
                                                                                                    
															}	
														}
												
											
											?>
                                             
                                            
                                           
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
						 </div>
                      
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End PAge Content -->
            </div>
            <!-- End Container fluid  -->
			
			
			
			
            <!-- footer -->
            <footer class="footer"> © 2023 All rights reserved by ORFOS. Developed by Abdul  Hakim </footer>
            <!-- End footer -->
        </div>
        <!-- End Page wrapper  -->
    </div>
    <!-- End Wrapper -->
    <!-- All Jquery -->
    <script src="js/lib/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="js/lib/bootstrap/js/popper.min.js"></script>
    <script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Menu sidebar -->
    <script src="js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <!--Custom JavaScript -->
    <script src="js/custom.min.js"></script>


    <script src="js/lib/datatables/datatables.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
    <script src="js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
    <script src="js/lib/datatables/datatables-init.js"></script>
    
</body>

</html>