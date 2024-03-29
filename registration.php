<!DOCTYPE html>
<html lang="en">
<?php

session_start(); //temp session
error_reporting(0); // hide undefine index
include("connection/connect.php"); // connection
if(isset($_POST['submit'] )) //if submit btn is pressed
{
     if(empty($_POST['firstname']) ||  //fetching and find if its empty
   	empty($_POST['lastname'])|| 
		empty($_POST['email']) ||  
		empty($_POST['phone'])||
		empty($_POST['password'])||
		empty($_POST['cpassword']) ||
		empty($_POST['cpassword']))
		{
			$message = "All fields must be Required!";
		}
	else
	{
		//checking username & email if already present
      $check_username= mysqli_query($db, "SELECT username FROM users where username = '".$_POST['username']."' ");
      $check_email = mysqli_query($db, "SELECT email FROM users where email = '".$_POST['email']."' ");
         

      
      if($_POST['password'] != $_POST['cpassword']){  //matching passwords
            $message = "Password not match";
      }
      elseif(strlen($_POST['password']) < 6)  //cal password length
      {
         $message = "Password Must be >=6";
      }
      elseif(strlen($_POST['phone']) < 11)  //cal phone length
      {
         $message = "invalid phone number!";
      }

      elseif (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) // Validate email address
      {
            $message = "Invalid email address please type a valid email!";
      }
      elseif(mysqli_num_rows($check_username) > 0)  //check username
      {
         $message = 'username Already exists!';
      }
      elseif(mysqli_num_rows($check_email) > 0) //check email
      {
         $message = 'Email Already exists!';
      }
      else{
         
         //inserting values into db
         $mql = "INSERT INTO users(username,f_name,l_name,email,phone,password,address) VALUES('".$_POST['username']."','".$_POST['firstname']."','".$_POST['lastname']."','".$_POST['email']."','".$_POST['phone']."','".md5($_POST['password'])."','".$_POST['address']."')";
         mysqli_query($db, $mql);
            $success = "Account Created successfully";
            header("refresh:1;url=login.php"); // redireted once inserted success
            
      }
	}

}


?>


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>Sign up </title>
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
            <div class="breadcrumb">
               <div class="container">
                  <ul>
                        <li>
                            <a href="#" class="active">
                                <span style="color:red;"><?php echo $message; ?></span>
                                <span style="color:green;">
                                    <?php echo $success; ?>
                                </span>
                        
                            </a>
                        
                        </li>
                   </ul>
               </div>
            </div>

            <section class="contact-page inner-page">
               <div class="container">
                  <div class="row">
                     <!-- REGISTER -->
                     <div class="col-md-12">
                        <div class="widget">
                           <div class="widget-body">
                              
							  <form action="" method="post">
                                 <div class="row">
								            <div class="form-group col-sm-12">
                                       <label for="exampleInputEmail1">User Name</label>
                                       <input class="form-control" type="text" name="username" id="example-text-input" placeholder="UserName"> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">First Name</label>
                                       <input class="form-control" type="text" name="firstname" id="example-text-input" placeholder="First Name"> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Last Name</label>
                                       <input class="form-control" type="text" name="lastname" id="example-text-input-2" placeholder="Last Name"> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Email address</label>
                                       <input type="text" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email"> <small id="emailHelp" class="form-text text-muted">We"ll never share your email with anyone else.</small> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputEmail1">Phone number</label>
                                       <input class="form-control" type="text" name="phone" id="example-tel-input-3" placeholder="Phone"> <small class="form-text text-muted">We"ll never share your Phone number with anyone else.</small> 
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputPassword1">Password</label>
                                       <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password"> <small class="form-text text-muted"> >=6  </small>
                                    </div>
                                    <div class="form-group col-sm-6">
                                       <label for="exampleInputPassword1">Confirm password</label>
                                       <input type="password" class="form-control" name="cpassword" id="exampleInputPassword2" placeholder="Password"> <small class="form-text text-muted"> >=6  </small>
                                    </div>
									         <div class="form-group col-sm-12">
                                       <label for="exampleTextarea">Delivery Address</label>
                                       <textarea class="form-control" id="exampleTextarea"  name="address" rows="3"></textarea>
                                    </div>
                                   
                                 </div>
                                
                                 <div class="row">
                                    <div class="col-sm-12">
                                       <p align="center"> <input type="submit" value="Register" name="submit" class="btn theme-btn"> </p>
                                    </div>
                                 </div>
                              </form>
                           
						   </div>
                           <!-- end: Widget -->
                        </div>
                        <!-- /REGISTER -->
                     </div>
                     
                  </div>
               </div>
            </section>
                   
            <!-- start: FOOTER -->

                <?php
                    include("footer.php");
                ?>
            
            <!-- end:Footer -->

         </div>

         <!-- end:page wrapper -->
      
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