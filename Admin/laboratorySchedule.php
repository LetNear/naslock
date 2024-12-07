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

  <style>
    .schedule-table {
      width: 100%;
      border-collapse: collapse;
      table-layout: auto; /* Allows table to adjust based on content */
      text-align: center;
    }

    .schedule-table th, .schedule-table td {
      border: 1px solid #000;
      padding: 10px;
      font-size: 14px;
      word-wrap: break-word; /* Ensures long text wraps to next line */
    }

    .schedule-table th {
      background-color: #003366;
      color: #fff;
      white-space: nowrap; /* Prevents column headers from wrapping */
    }

    .schedule-table .day-row {
      background-color: #e0f7fa;
      font-weight: bold;
    }

    .schedule-table .time-slot {
      /* background-color: #ffecb3; */
      min-width: 100px; /* Ensures time cells don't shrink too much */
    }

    .schedule-table .velasco {
      background-color: #ffccbc;
    }

    .schedule-table .cortez {
      background-color: #dcedc8;
    }

    .schedule-table .idian {
      background-color: #fff9c4;
    }

    .schedule-table .barela {
      background-color: #D3EE98;
    }

    .schedule-table .kingking {
      background-color: #95D2B3;
    }

    .schedule-table .benitez {
      background-color: #FFBF78;
    }

    .schedule-table .balbuena {
      background-color: #BBC3A4;
    }

    .schedule-table .pending {
      background-color: #91DDCF;
    }

    .schedule-table .mi {
      background-color: #FDDE55;
    }

    /* Responsive styling for screens larger than 768px */
    @media (min-width: 768px) {
      .schedule-table th, .schedule-table td {
        font-size: 16px;
        padding: 15px;
      }
    }

    /* Responsive styling for smaller screens (below 768px) */
    @media (max-width: 768px) {
      .schedule-table th, .schedule-table td {
        font-size: 12px;
        padding: 8px;
        white-space: normal; /* Allows text to wrap normally */
      }

      /* Ensure table doesn't shrink too much */
      .schedule-table td {
        min-width: 80px;
      }
    }

    /* Additional styling for very small screens (below 576px) */
    @media (max-width: 576px) {
      .schedule-table th, .schedule-table td {
        font-size: 10px;
        padding: 5px;
      }
    }

  </style>


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
            <h1 class="h3 mb-0" style='color: #14213D;'>Laboratory Schedule</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./" style='color: #14213D;'>Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Lab Schedule</li>
            </ol>
          </div>

          <div class="row">
            <div class="col-lg-12">
              <!-- Schedule Table -->
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold" style='color: #14213D;'>All Lab Schedules</h6>
                </div>
                <div class="table-responsive p-3">
                  <table class="schedule-table">
                    <thead>
                      <tr>
                        <th>Time</th>
                        <th>Monday</th>
                        <th>Tuesday</th>
                        <th>Wednesday</th>
                        <th>Thursday</th>
                        <th>Friday</th>
                        <th>Saturday</th>
                        <th>Sunday</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr class="time-slot">
                        <td>7:00 - 8:00</td>
                        <td rowspan="3" class="velasco">IT 316 BSIT 3A MS. VELASCO</td>
                        <td rowspan="3" class="cortez">ITA 215 BSIT 2H MR. R. CORTEZ</td>
                        <td rowspan="3" class="idian">IT 115 BSIT 1D MS. IDIAN</td>
                        <td rowspan="3" class="cortez">ITA 215 BSIT 2G MR. R. CORTEZ</td>
                        <td rowspan="3" class="velasco">IT 316 BSIT 3F MS. VELASCO</td>
                        <td rowspan="3" class="barela">CCIT 104 BSIT 2C MR. BARELA</td>
                        <td rowspan="3" class="kingking">ITA 215 BSIT 2B MR. KINGKING</td>
                      </tr>
                      <tr>
                        <td>8:00 - 9:00</td>
                      </tr>
                      <tr>
                        <td>9:00 - 10:00</td>
                      </tr>
                      <tr>
                        <td>10:00 - 11:00</td>
                        <td rowspan="3" class="benitez">IT 4112 BSIT 4A DR. BENITEZ</td>
                        <td rowspan="3" class="cortez">ITA 215 BSIT 2F MR. R. CORTEZ</td>
                        <td rowspan="3" class="benitez">IT 4112 BSIT 4E DR. BENITEZ</td>
                        <td rowspan="3" class="balbuena">IT 316 BSIT 3E MR. BALBUENA</td>
                        <td rowspan="3" class="velasco">IT 316 BSIT 3G MS. VELASCO</td>
                        <td rowspan="3" class="pending">BSIT PENDING</td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>11:00 - 12:00</td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>12:00 - 1:00</td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>1:00 - 2:00</td>
                        <td rowspan="3" class="velasco">IT 316 BSIT 3B MS. VELASCO</td>
                        <td rowspan="3" class="velasco">IT 316 BSIT 3C MS. VELASCO</td>
                        <td rowspan="3" class="balbuena">IT 316 BSIT 3D MR. BALBUENA</td>
                        <td rowspan="3" class="cortez">ITA 215 BSIT 2E MR. R. CORTEZ</td>
                        <td rowspan="3" class="benitez">IT 4112 BSIT 4E DR. BENITEZ</td>
                        <td rowspan="3" class="idian">IT 115 BSIT 1C MS. IDIAN</td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>2:00 - 3:00</td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>3:00 - 4:00</td>
                        <td rowspan="3" class="idian">IT 115 BSIT 1A MS. IDIAN</td>
                      </tr>
                      <tr>
                        <td>4:00 - 5:00</td>
                        <td rowspan="3" class="benitez">IT 4112 BSIT 4B DR. BENITEZ</td>
                        <td rowspan="3" class="pending">BSIT PENDING</td>
                        <td rowspan="3" class="balbuena">IT 316 BSIT 3H MR. BALBUENA</td>
                        <td rowspan="3" class="balbuena">IT 115 BSIT 1B MR. BALBUENA</td>
                        <td rowspan="3" class="idian">IT 115 BSIT 1E MS. IDIAN</td>
                        <td rowspan="3" class="mi">LIA 111 (LAB) BLIS 1A MAJOR INTRUCTOR</td>
                      </tr>
                      <tr>
                        <td>5:00 - 6:00</td>
                      </tr>
                      <tr>
                        <td>6:00 - 7:00</td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>7:00 - 8:00</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                      </tr>
                      <!-- Add more rows as needed -->
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

  <!-- Page level custom scripts
  <script>
    $(document).ready(function () {
      $('#scheduleTable').DataTable(); // ID From scheduleTable
    });
  </script> -->
</body>

</html>
