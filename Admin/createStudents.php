<?php 
error_reporting(0);
include '../Includes/dbcon.php';
include '../Includes/session.php';

//------------------------SAVE--------------------------------------------------

if(isset($_POST['save'])){
  
  $studentId = $_POST['studentId'];
  $fullName = $_POST['fullName'];
  $sex = $_POST['sex'];
  $course = $_POST['course'];
  $year = $_POST['year'];
  $contactNo = $_POST['contactNo'];
  $email = $_POST['email'];
  $rfidNumber = $_POST['rfidNumber'];
  $pcNumber = $_POST['pcNumber'];
  $dateCreated = date("Y-m-d");

  // Check if RFID Number already exists
  $query = mysqli_query($conn, "SELECT * FROM tblstudents WHERE rfidNumber ='$rfidNumber'");
  $ret = mysqli_fetch_array($query);

  if ($ret > 0) {
      $statusMsg = "<div class='alert alert-danger' style='margin-right:700px;'>This RFID Number Already Exists!</div>";
  } else {
      // If studentId is auto-incremented, you don't need to include it here.
      $query = mysqli_query($conn, "INSERT INTO tblstudents (studentId, fullName, sex, course, year, contactNo, email, rfidNumber, pcNumber, dateCreated)
      VALUES ('$studentId','$fullName','$sex','$course', '$year', '$contactNo', '$email', '$rfidNumber','$pcNumber','$dateCreated')");
      
      if ($query) {
          $statusMsg = "<div class='alert alert-success' style='margin-right:700px;'>Created Successfully!</div>";
      } else {
          $statusMsg = "<div class='alert alert-danger' style='margin-right:700px;'>An error Occurred!</div>";
      }
  }
}

//---------------------------------------EDIT-------------------------------------------------------------

if (isset($_GET['Id']) && isset($_GET['action']) && $_GET['action'] == "edit") {
  $Id = $_GET['Id'];
  $query = mysqli_query($conn, "SELECT * FROM tblstudents WHERE Id ='$Id'");
  $row = mysqli_fetch_array($query);

    //------------UPDATE-----------------------------

    if (isset($_POST['update'])) {

        $studentId = $_POST['studentId'];
        $fullName = $_POST['fullName'];
        $sex = $_POST['sex'];
        $course = $_POST['course'];
        $year = $_POST['year'];
        $contactNo = $_POST['contactNo'];
        $email = $_POST['email'];
        $rfidNumber = $_POST['rfidNumber'];
        $pcNumber = $_POST['pcNumber'];

        $query = mysqli_query($conn, "UPDATE tblstudents SET studentId='$studentId', fullName='$fullName', sex='$sex', course='$course', 
        year='$year', contactNo='$contactNo', email='$email',  rfidNumber='$rfidNumber', pcNumber='$pcNumber' WHERE Id='$Id'");
        
        if ($query) {
            echo "<script type='text/javascript'> window.location = ('createStudents.php') </script>";
        } else {
            $statusMsg = "<div class='alert alert-danger' style='margin-right:700px;'>An error Occurred!</div>";
        }
    }
}


//--------------------------------DELETE------------------------------------------------------------------

  if (isset($_GET['Id']) && isset($_GET['action']) && $_GET['action'] == "delete")
  {
        $Id= $_GET['Id'];
        $classArmId= $_GET['classArmId'];

        $query = mysqli_query($conn,"DELETE FROM tblstudents WHERE Id='$Id'");

        if ($query == TRUE) {

            echo "<script type = \"text/javascript\">
            window.location = (\"createStudents.php\")
            </script>";
        }
        else{

            $statusMsg = "<div class='alert alert-danger' style='margin-right:700px;'>An error Occurred!</div>"; 
         }
      
  }
?>

<?php
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
<?php include 'includes/title.php';?>
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="css/ruang-admin.min.css" rel="stylesheet">
</head>

<body id="page-top">
  <div id="wrapper">
    <!-- Sidebar -->
    <?php include "Includes/sidebar.php";?>
    <!-- Sidebar -->
      <div id="content-wrapper" class="d-flex flex-column">
        <div id="content">
            <!-- TopBar -->
          <?php include "Includes/topbar.php";?>
            <!-- Topbar -->

          <!-- Container Fluid-->
          <div class="container-fluid" id="container-wrapper">
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0" style="color: #14213D;" >Create Students</h1>
                <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="./">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Create Students</li>
              </ol>
            </div>

             <!-- Import Excel File -->
          <div class="row">
            <div class="col-lg-12">
              <div class="card mb-4">
                <?php
                  if(isset($_SESSION['message']))
                  {
                    echo "<h4>".$_SESSION['message']."</h4>";
                    unset($_SESSION['message']);
                  } 
                ?>
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold" style="color: #FCA311;">Import Excel File</h6>
                </div>
                <div class="card-body">
                  <form action="importStudent.php" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                      <label for="excelFile">Select Excel File<span class="text-danger ml-2">*</span></label>
                      <input type="file" class="form-control" name="excelFile" id="excelFile" accept=".xlsx, .xls, .csv" required>
                    </div>
                    <button type="submit" name="save_excel_data" class="btn" style="background-color: #FCA311;">Import</button>
                  </form>
                </div>
              </div>
            </div>
          </div>

              <div class="row">
                <div class="col-lg-12">
                <!-- Form Basic -->
                  <div class="card mb-4">
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                      <h6 class="m-0 font-weight-bold" style="color: #FCA311;" >Create Students</h6>
                        <?php echo $statusMsg; ?>
                    </div>

              <div class="card-body">
              <form method="POST" action="">
                <div class="form-group row mb-3">
                    <div class="col-xl-6">
                        <label class="form-control-label">Student ID<span class="text-danger ml-2">*</span></label>
                        <input type="text" class="form-control" name="studentId" value="<?php echo $row['studentId'];?>" required>
                    </div>
                    <div class="col-xl-6">
                        <label class="form-control-label">Full Name<span class="text-danger ml-2">*</span></label>
                        <input type="text" class="form-control" name="fullName" value="<?php echo $row['fullName'];?>" required>
                    </div>
                </div>
                <div class="form-group row mb-3">
                    <div class="col-xl-6">
                        <label class="form-control-label">Sex<span class="text-danger ml-2">*</span></label>
                        <input type="text" class="form-control" name="sex" value="<?php echo $row['sex'];?>" required>
                    </div>
                      <div class="col-xl-6">
                        <label class="form-control-label">Course<span class="text-danger ml-2">*</span></label>
                        <input type="text" class="form-control" name="course" value="<?php echo $row['course'];?>" required>
                      </div>
                    </div>
                  <div class="form-group row mb-3">
                      <div class="col-xl-6">
                          <label class="form-control-label">Year<span class="text-danger ml-2">*</span></label>
                          <input type="text" class="form-control" name="year" value="<?php echo $row['year'];?>" required>
                      </div>
                      <div class="col-xl-6">
                          <label class="form-control-label">Contact No.<span class="text-danger ml-2">*</span></label>
                          <input type="text" class="form-control" name="contactNo" value="<?php echo $row['contactNo'];?>" required>
                      </div>
                  </div>
                  <div class="form-group row mb-3">
                      <div class="col-xl-6">
                          <label class="form-control-label">Email<span class="text-danger ml-2">*</span></label>
                          <input type="email" class="form-control" name="email" value="<?php echo $row['email'];?>" required>
                      </div>
                      <div class="col-xl-6">
                          <label class="form-control-label">RFID Number<span class="text-danger ml-2">*</span></label>
                          <input type="text" class="form-control" name="rfidNumber" value="<?php echo $row['rfidNumber'];?>" required>
                      </div>
                  </div>
                  <div class="form-group row mb-3">
                        <div class="col-xl-6">
                            <label class="form-control-label">PC Number<span class="text-danger ml-2">*</span></label>
                            <input type="text" class="form-control" name="pcNumber" value="<?php echo $row['pcNumber'];?>" required>
                        </div>
                    </div>
              

                    <!-- <div class="form-group row mb-3">
                        <div class="col-xl-6">
                        <label class="form-control-label">Select Class<span class="text-danger ml-2">*</span></label>
                         <?php
                        // $qry= "SELECT * FROM tblclass ORDER BY className ASC";
                        // $result = $conn->query($qry);
                        // $num = $result->num_rows;		
                        // if ($num > 0){
                        //   echo ' <select required name="classId" onchange="classArmDropdown(this.value)" class="form-control mb-3">';
                        //   echo'<option value="">--Select Class--</option>';
                        //   while ($rows = $result->fetch_assoc()){
                        //   echo'<option value="'.$rows['Id'].'" >'.$rows['className'].'</option>';
                        //       }
                        //           echo '</select>';
                        //       }
                            ?>  
                        </div>
                        <div class="col-xl-6">
                        <label class="form-control-label">Class Arm<span class="text-danger ml-2">*</span></label>
                            <?php
                                // echo"<div id='txtHint'></div>";
                            ?>
                        </div>
                    </div> -->
                      <?php
                    if (isset($Id))
                    {
                    ?>
                    <button type="submit" name="update" class="btn btn-warning">Update</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <?php
                    } else {           
                    ?>
                    <button type="submit" name="save" class="btn " style="background-color: #FCA311;">Save</button>
                    <?php
                    }         
                    ?>
                  </form>
                </div>
              </di>
            </div>
            

              <!-- Input Group -->
              <div class="row">
                <div class="col-lg-12">
                  <div class="card mb-4">
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                      <h6 class="m-0 font-weight-bold" style="color: #14213D;">All Students</h6>
                    </div>
                    <div class="table-responsive p-3">
                      <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                        <thead class="thead-light">
                          <tr>
                            <th>#</th>
                            <th>Student ID</th>
                            <th>Full Name</th>
                            <th>Sex</th>
                            <th>Course</th>
                            <th>Year</th>
                            <th>Contact No</th>
                            <th>Email</th>
                            <th>RFID Number</th>
                            <th>PC Number</th>
                            <th>Date Created</th>
                            <th>Actions</th>
                          </tr>
                        </thead>
                        <tbody>
                          <?php
                          // Updated SQL query to include studentId
                          $query = "SELECT tblstudents.Id, tblstudents.studentId, tblstudents.fullName, tblstudents.sex, tblstudents.course, 
                                    tblstudents.year, tblstudents.contactNo, tblstudents.email, tblstudents.rfidNumber, tblstudents.pcNumber, 
                                    tblstudents.dateCreated
                                    FROM tblstudents";
                          $rs = $conn->query($query);
                          $num = $rs->num_rows;
                          $sn = 0;

                          if ($num > 0) {
                            while ($rows = $rs->fetch_assoc()) {
                              $sn = $sn + 1;
                              echo "
                                <tr>
                                  <td>".$sn."</td>
                                  <td>".$rows['studentId']."</td>
                                  <td>".$rows['fullName']."</td>
                                  <td>".$rows['sex']."</td>
                                  <td>".$rows['course']."</td>
                                  <td>".$rows['year']."</td>
                                  <td>".$rows['contactNo']."</td>
                                  <td>".$rows['email']."</td>
                                  <td>".$rows['rfidNumber']."</td>
                                  <td>".$rows['pcNumber']."</td>
                                  <td>".$rows['dateCreated']."</td>
                                  <td>
                                    <a class='btn text-white' style='background-color: #14213D;' href='?action=edit&Id=".$rows['Id']."'>
                                      <i class='fas fa-fw fa-edit' style='color: #FCA311;'></i>
                                    </a>
                                    <a class='btn text-white' style='background-color: #14213D;' href='?action=delete&Id=".$rows['Id']."'>
                                      <i class='fas fa-fw fa-trash' style='color: #FCA311;'></i>
                                    </a>
                                  </td>
                                </tr>";
                            }
                          } else {
                            echo "<tr><td colspan='11' class='text-center'>No students found</td></tr>";
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


          <!--Row-->

          <!-- Documentation Link -->
          <!-- <div class="row">
            <div class="col-lg-12 text-center">
              <p>For more documentations you can visit<a href="https://getbootstrap.com/docs/4.3/components/forms/"
                  target="_blank">
                  bootstrap forms documentations.</a> and <a
                  href="https://getbootstrap.com/docs/4.3/components/input-group/" target="_blank">bootstrap input
                  groups documentations</a></p>
            </div>
          </div> -->

        </div>
        <!---Container Fluid-->
      </div>
      <!-- Footer -->
       <?php include "Includes/footer.php";?>
      <!-- Footer -->
    </div>
  </div>

  <!-- Scroll to top -->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="js/ruang-admin.min.js"></script>
   <!-- Page level plugins -->
  <script src="../vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="../vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script>
    $(document).ready(function () {
      $('#dataTable').DataTable(); // ID From dataTable 
      $('#dataTableHover').DataTable(); // ID From dataTable with Hover
    });
  </script>
</body>

</html>