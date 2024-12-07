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
            <h1 class="h3 mb-0" style='color: #14213D;'>Attendance Reports</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./" style='color: #14213D;'>Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Reports</li>
            </ol>
          </div>

          <div class="row">
            <div class="col-lg-12">
              <!-- Filter Form -->
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold" style='color: #14213D;'>Filter Reports</h6>
                </div>
                <div class="card-body">
                  <form method="POST">
                    <div class="row">
                      <div class="col-md-5">
                        <div class="form-group">
                          <label for="startDate">Start Date</label>
                          <input type="date" class="form-control" id="startDate" name="startDate" required>
                        </div>
                      </div>
                      <div class="col-md-5">
                        <div class="form-group">
                          <label for="endDate">End Date</label>
                          <input type="date" class="form-control" id="endDate" name="endDate" required>
                        </div>
                      </div>
                      <div class="col-md-2">
                        <button type="submit" name="filter" class="btn btn-primary btn-block" style="margin-top: 30px;">Filter</button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>

            <div class="col-lg-12">
              <!-- Report Table -->
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold" style='color: #14213D;'>Attendance Records</h6>
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
                        <th>Status</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php
                      if (isset($_POST['filter'])) {
                        // Get filtered date range
                        $startDate = $_POST['startDate'];
                        $endDate = $_POST['endDate'];

                        // Query to fetch attendance within date range
                        $query = "SELECT tblstudents.id AS studentId, 
                                         tblstudents.fullName,
                                         tblstudents.rfidNumber, 
                                         tblviewattendance.attendanceDate, 
                                         tblviewattendance.timeIn, 
                                         tblviewattendance.timeOut 
                                  FROM tblstudents 
                                  LEFT JOIN tblviewattendance 
                                  ON tblstudents.id = tblviewattendance.tblstudents_id 
                                  WHERE tblviewattendance.attendanceDate BETWEEN '$startDate' AND '$endDate'
                                  ORDER BY tblviewattendance.attendanceDate DESC";

                        $rs = $conn->query($query);
                        $id = 1;

                        while ($rows = $rs->fetch_assoc()) {
                          // Set attendance status
                          $status = "Absent";
                          if (!empty($rows['attendanceDate'])) {
                            if (!empty($rows['timeIn'])) {
                              $timeIn = strtotime($rows['timeIn']);
                              $lateThreshold = strtotime('09:00:00');
                              $status = $timeIn > $lateThreshold ? "Late" : "Present";
                            }
                          }

                          echo "
                            <tr>
                              <td>".$id++."</td>
                              <td>".$rows['studentId']."</td>
                              <td>".$rows['fullName']."</td>
                              <td>".$rows['rfidNumber']."</td>
                              <td>".(!empty($rows['attendanceDate']) ? $rows['attendanceDate'] : 'No Record')."</td>
                              <td>".(!empty($rows['timeIn']) ? $rows['timeIn'] : '-')."</td>
                              <td>".(!empty($rows['timeOut']) ? $rows['timeOut'] : '-')."</td>
                              <td>".$status."</td>
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