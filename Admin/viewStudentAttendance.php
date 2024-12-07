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
            <h1 class="h3 mb-0" style='color: #14213D;'>Attendance Students</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./" style='color: #14213D;'>Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Attendance Students</li>
            </ol>
          </div>

          <div class="row">
            <div class="col-lg-12">
              <!-- Input Group -->
              <div class="row">
                <div class="col-lg-12">
                  <div class="card mb-4">
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                      <h6 class="m-0 font-weight-bold" style='color: #14213D;'>All Attendance</h6>
                    </div>
                    <div class="table-responsive p-3">
                      <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                        <thead class="thead-light">
                          <tr>
                            <th>#</th>
                            <th>Student ID</th>
                            <th>Full Name</th>
                            <th>RFID Number</th>
                            <th>Attendance Date</th>
                            <th>Time In</th>
                            <th>Time Out</th>
                            <th>Status</th> <!-- Adding Status Column -->
                          </tr>
                        </thead>
                        <tbody>
                          <?php
                          // Query to fetch all students and their attendance
                          if (isset($_GET['id'])) {
                          $query = "SELECT tblstudents.id AS studentId, tblstudents.fullName, tblstudents.rfidNumber, 
                                           tblviewattendance.attendanceDate, tblviewattendance.timeIn, tblviewattendance.timeOut 
                                    FROM tblstudents 
                                    LEFT JOIN tblviewattendance ON tblstudents.id = tblviewattendance.tblstudents_id 
                                    ORDER BY tblviewattendance.attendanceDate DESC";
                          }
                          $rs = $conn->query($query);
                          $id = 1;
                          while ($rows = $rs->fetch_assoc()) {
                            // Set the attendance status
                            $status = "Absent"; // Default status
                            
                            if ($rows['attendanceDate']) {
                              if ($rows['timeIn']) {
                                // Assuming "Late" if the timeIn is after a certain threshold (e.g., 9:00 AM)
                                $timeIn = strtotime($rows['timeIn']);
                                $lateThreshold = strtotime('09:00:00');
                                
                                if ($timeIn > $lateThreshold) {
                                  $status = "Late";
                                } else {
                                  $status = "Present";
                                }
                              }
                            }

                            echo "
                              <tr>
                                <td>".$id++."</td>
                                <td>".$rows['studentId']."</td>
                                <td>".$rows['fullName']."</td>
                                <td>".$rows['rfidNumber']."</td>
                                <td>".($rows['attendanceDate'] ? $rows['attendanceDate'] : 'No attendance recorded')."</td>
                                <td>".($rows['timeIn'] ? $rows['timeIn'] : '-')."</td>
                                <td>".($rows['timeOut'] ? $rows['timeOut'] : '-')."</td>
                                <td>".$status."</td> <!-- Display Status -->
                              </tr>";
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
