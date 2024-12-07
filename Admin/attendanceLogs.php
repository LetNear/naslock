<?php 
error_reporting(0);
include '../Includes/dbcon.php';
include '../Includes/session.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="img/logo/NASLockLogo.png" rel="icon">
  <?php include 'includes/title.php';?>
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="css/ruang-admin.min.css" rel="stylesheet">
  <link href="../vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>

<body id="page-top">
  <div id="wrapper">
    <!-- Sidebar -->
    <?php include "Includes/sidebar.php";?>
    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">
        <!-- TopBar -->
        <?php include "Includes/topbar.php";?>
        <!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0" style='color: #14213D;'>Attendance Logs</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./" style='color: #14213D;'>Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Attendance Logs</li>
            </ol>
          </div>

            <div class="col-lg-12">
              <!-- Report Table -->
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold" style='color: #14213D;'>Attendance Logs</h6>
                </div>
                <div class="table-responsive p-3">
                  <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                    <thead class="thead-light">
                      <tr>
                        <th>#</th>
                        <th>User Type</th>
                        <th>ID</th>
                        <th>Full Name</th>
                        <th>RFID Number</th>
                        <th>Attendance Date</th>
                        <th>Time In</th>
                        <th>Time Out</th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php
if (isset($_POST['filter'])) {
    $startDate = $_POST['startDate'];
    $endDate = $_POST['endDate'];

    // SQL query to fetch data for students and instructors
    $query = "
      SELECT 'Student' AS userType, tblstudents.id AS userId, 
             CONCAT(tblstudents.firstName, ' ', tblstudents.lastName) AS fullName, 
             tblstudents.rfidNumber, tblviewattendance.attendanceDate, 
             tblviewattendance.timeIn, tblviewattendance.timeOut 
      FROM tblstudents 
      JOIN tblviewattendance ON tblstudents.id = tblviewattendance.tblstudents_id 
      WHERE tblviewattendance.attendanceDate BETWEEN '$startDate' AND '$endDate'
      
      UNION ALL
      
      SELECT 'Instructor' AS userType, tblinstructors.id AS userId, 
             CONCAT(tblinstructors.firstName, ' ', tblinstructors.lastName) AS fullName, 
             tblinstructors.rfidNumber, tblviewattendance.attendanceDate, 
             tblviewattendance.timeIn, tblviewattendance.timeOut 
      FROM tblinstructors 
      JOIN tblviewattendance ON tblinstructors.id = tblviewattendance.tblinstructors_id 
      WHERE tblviewattendance.attendanceDate BETWEEN '$startDate' AND '$endDate'
      
      ORDER BY attendanceDate DESC";

    $rs = $conn->query($query);
    $id = 1;

    while ($rows = $rs->fetch_assoc()) {
        echo "
          <tr>
            <td>".$id++."</td>
            <td>".$rows['userType']."</td>
            <td>".$rows['userId']."</td>
            <td>".$rows['fullName']."</td>
            <td>".$rows['rfidNumber']."</td>
            <td>".$rows['attendanceDate']."</td>
            <td>".($rows['timeIn'] ?? '-')."</td>
            <td>".($rows['timeOut'] ?? '-')."</td>
          </tr>";
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
      <?php include "Includes/footer.php";?>
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
  <script src="../vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="../vendor/datatables/dataTables.bootstrap4.min.js"></script>
  <script>
    $(document).ready(function () {
      $('#dataTableHover').DataTable(); // DataTable for hover-enabled table
    });
  </script>
</body>
</html>
