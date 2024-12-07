<?php 
include 'Includes/dbcon.php';
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="img/logo/NASLockLogo.png" rel="icon">
    <title>NASLock - Login</title>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/ruang-admin.min.css" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <style>
        /* Add styling for the input container */
        .input-icon {
            position: relative;
            display: flex;
            align-items: center;
        }

        /* Style for the icon inside the input */
        .input-icon i {
            position: absolute;
            left: 10px;
            color: #9e9e9e; /* Icon color */
            font-size: 18px; /* Icon size */
        }

        /* Add padding to the left of the input to avoid overlap with the icon */
        .input-icon input {
            padding-left: 30px; /* Adjust the padding to the right of the icon */
        }
    </style>

</head>

<body class="bg-gradient-login" style="background: linear-gradient(135deg, #14213d, #2D374C, #414859, #7F7F7F, #9D8865, #B78F43, #FCA311);"> 
    <!-- Login Content -->
    <div class="container-login">
        <div class="row justify-content-center">
            <div class="col-xl-10 col-lg-12 col-md-9">
                <div class="card shadow-sm my-5" style="border-radius: 15px;">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="login-form" style="background-color:#14213d; border-radius: 15px;">
                                    <h4 align="center" style="color:#fca311">NASLock</h4>
                                    <!-- <h5 align="center">Student Attendance System</h5> -->
                                    <div class="text-center">
                                        <img src="img/logo/NASLockLogo.png" style="width:100px;height:110px">
                                        <br><br>
                                    </div>
                                    <form class="user" method="Post" action="">
                                        <!-- <div class="form-group">
                                                <select required name="userType" class="form-control mb-3" style="border-radius: 5px;">
                                                    <option value="">Select User Roles</option>
                                                    <option value="Administrator">Administrator</option>
                                                    <option value="ClassTeacher">Instructor</option>
                                                </select>
                                        </div> -->
                                        <div class="form-group">
                                            <div class="input-icon">
                                                <i class="bx bx-envelope"></i>
                                                <input type="text" class="form-control" required name="username" id="exampleInputEmail" placeholder="Enter Email Address">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-icon">
                                                <i class="bx bx-key"></i>
                                                <input type="password" name="password" required class="form-control" id="exampleInputPassword" placeholder="Enter Password">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small" style="line-height: 1.5rem;">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <!-- <label class="custom-control-label" for="customCheck">Remember
                          Me</label> -->
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input type="submit" class="btn btn-success btn-block" value="Login" name="login" style="background-color:#fca311; color: #fff; border: none; border-radius: 5px;" />
                                        </div>
                                    </form>

                                    <div class="text-center">
                                        <p class="text-white-900 mb-4">
                                            <a href="#" style="color:#fca311;" onclick="goToAttendance(event);">Go to Attendance</a>
                                        </p>
                                    </div>

                                    <script>
                                    function goToAttendance(event) {
                                        console.log('Link clicked!'); // Debugging message
                                        event.preventDefault(); // Prevent the default anchor click behavior
                                        window.location.href = 'attendance.php'; // Adjust the path if necessary
                                    }
                                    </script>


                                    <?php

  if(isset($_POST['login'])){

    // $userType = $_POST['userType'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $password = md5($password);

    // if($userType == "Administrator"){

      $query = "SELECT * FROM tbladmin WHERE emailAddress = '$username' AND password = '$password'";
      $rs = $conn->query($query);
      $num = $rs->num_rows;
      $rows = $rs->fetch_assoc();

      if($num > 0){

        $_SESSION['userId'] = $rows['Id'];
        $_SESSION['firstName'] = $rows['firstName'];
        $_SESSION['lastName'] = $rows['lastName'];
        $_SESSION['emailAddress'] = $rows['emailAddress'];

        echo "<script type = \"text/javascript\">
        window.location = (\"Admin/index.php\")
        </script>";
      }

      else{

        echo "<div class='alert alert-danger' role='alert'>
        Invalid Username/Password!
        </div>";

      }

    // }
    // else if($userType == "ClassTeacher"){

    //   $query = "SELECT * FROM tblclassteacher WHERE emailAddress = '$username' AND password = '$password'";
    //   $rs = $conn->query($query);
    //   $num = $rs->num_rows;
    //   $rows = $rs->fetch_assoc();

    //   if($num > 0){

    //     $_SESSION['userId'] = $rows['Id'];
    //     $_SESSION['firstName'] = $rows['firstName'];
    //     $_SESSION['lastName'] = $rows['lastName'];
    //     $_SESSION['emailAddress'] = $rows['emailAddress'];
    //     $_SESSION['classId'] = $rows['classId'];
    //     $_SESSION['classArmId'] = $rows['classArmId'];

    //     echo "<script type = \"text/javascript\">
    //     window.location = (\"ClassTeacher/index.php\")
    //     </script>";
    //   }

    //   else{

    //     echo "<div class='alert alert-danger' role='alert'>
    //     Invalid Username/Password!
    //     </div>";

    //   }
    // }
    // else{

    //     echo "<div class='alert alert-danger' role='alert'>
    //     Invalid Username/Password!
    //     </div>";

    // }
}
?>

                                    <!-- <hr>
                    <a href="index.html" class="btn btn-google btn-block">
                      <i class="fab fa-google fa-fw"></i> Login with Google
                    </a>
                    <a href="index.html" class="btn btn-facebook btn-block">
                      <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                    </a> -->

                    
                                    <div class="text-center">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Login Content -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="js/ruang-admin.min.js"></script>
</body>

</html>