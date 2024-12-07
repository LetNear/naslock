
  <?php 
  include '../Includes/dbcon.php';
  include '../Includes/session.php';


      $query = "SELECT tblclass.className,tblclassarms.classArmName 
      FROM tblclassteacher
      INNER JOIN tblclass ON tblclass.Id = tblclassteacher.classId
      INNER JOIN tblclassarms ON tblclassarms.Id = tblclassteacher.classArmId
      Where tblclassteacher.Id = '$_SESSION[userId]'";

      $rs = $conn->query($query);
      $num = $rs->num_rows;
      $rrw = $rs->fetch_assoc();


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
    <title>Dashboard</title>
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/ruang-admin.min.css" rel="stylesheet">
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"> -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

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
              <h1 class="h3 mb-0 text-gray-800">Administrator Dashboard</h1>
              <ol class="breadcrumb" style="color: #14213D">
                <li class="breadcrumb-item"><a href="./">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
              </ol>
            </div>

<!-- Card for Live Date and Time Display -->
<div class="row mb-3">
  <div class="col-xl-3 col-md-6 mb-4">
    <div class="card h-100">
      <div class="card-body" style="background-color: #14213D; width: 800px; border-radius: 10px;"> <!-- Adjust height here -->
        <div class="row no-gutters align-items-center">
          <div class="col mr-2">
            <div class="text-xs text-white font-weight-bold text-uppercase mb-1">Current Date and Time</div>
            <div id="dateTime" class="h5 mb-0 font-weight-bold text-white" style="font-size: 20px;"></div>
          </div>
          <div class="col-auto">
            <i class="fas fa-clock fa-2x" style="color: #FCA311;"></i>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


            <div class="row mb-3">
            <!-- Students Card -->
            <?php 
  $query1=mysqli_query($conn,"SELECT * from tblstudents");                       
  $students = mysqli_num_rows($query1);
  ?>
              <div class="col-xl-3 col-md-6 mb-4">
                <div class="card h-100">
                  <div class="card-body" style="background-color: #14213D; border-radius: 10px;">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class="text-xs text-white font-weight-bold text-uppercase mb-1">Students</div>
                        <div class="h5 mb-0 mr-3 font-weight-bold text-white"><?php echo $students;?></div>
                        <div class="mt-2 mb-0 text-muted text-xs">
                          <!-- <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 20.4%</span>
                          <span>Since last month</span> -->
                        </div>
                      </div>
                      <div class="col-auto">
                        <i class="fas fa-users fa-2x" style="color: #FCA311"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Class Card -->
              <?php 
  // $query1=mysqli_query($conn,"SELECT * from tblclass");                       
  // $class = mysqli_num_rows($query1);
  ?>
              <!-- <div class="col-xl-3 col-md-6 mb-4">
                <div class="card h-100">
                  <div class="card-body">
                    <div class="row align-items-center">
                      <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-uppercase mb-1">Classes</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $class;?></div>
                        <div class="mt-2 mb-0 text-muted text-xs"> -->
                          <!-- <span class="text-success mr-2"><i class="fa fa-arrow-up"></i> 3.48%</span>
                          <span>Since last month</span> -->
                        <!-- </div>
                      </div>
                      <div class="col-auto">
                        <i class="fas fa-chalkboard fa-2x text-primary"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div> -->
              <!-- Class Arm Card -->
              <?php 
  // $query1=mysqli_query($conn,"SELECT * from tblclassarms");                       
  // $classArms = mysqli_num_rows($query1);
  ?>
              <!-- <div class="col-xl-3 col-md-6 mb-4">
                <div class="card h-100">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-uppercase mb-1">Class Arms</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $classArms;?></div>
                        <div class="mt-2 mb-0 text-muted text-xs"> -->
                          <!-- <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
                          <span>Since last years</span> -->
                        <!-- </div>
                      </div>
                      <div class="col-auto">
                        <i class="fas fa-code-branch fa-2x text-success"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div> -->
              
              <!-- Std Att Card  -->
              <?php 
  $query1=mysqli_query($conn,"SELECT * from tblattendance");                       
  $totAttendance = mysqli_num_rows($query1);
  ?>
              <div class="col-xl-3 col-md-6 mb-4">
                <div class="card h-100">
                  <div class="card-body" style="background-color: #14213D; border-radius: 10px;">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class="text-xs text-white font-weight-bold text-uppercase mb-1">Total Student Attendance</div>
                        <div class="h5 mb-0 font-weight-bold text-white"><?php echo $totAttendance;?></div>
                        <div class="mt-2 mb-0 text-muted text-xs">
                          <!-- <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i> 1.10%</span>
                          <span>Since yesterday</span> -->
                        </div>
                      </div>
                      <div class="col-auto">
                        <i class="fas fa-calendar fa-2x" style="color: #FCA311"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Teachers Card  -->
              <?php 
              $query1=mysqli_query($conn,"SELECT * from tblclassteacher");                       
              $classTeacher = mysqli_num_rows($query1);
              ?>
                          <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card h-100">
                              <div class="card-body" style="background-color: #14213D; border-radius: 10px;">
                                <div class="row no-gutters align-items-center">
                                  <div class="col mr-2">
                                    <div class="text-xs text-white font-weight-bold text-uppercase mb-1">Class Instructors</div>
                                    <div class="h5 mb-0 font-weight-bold text-white"><?php echo $classTeacher;?></div>
                                    <div class="mt-2 mb-0 text-muted text-xs">
                                      <!-- <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
                                      <span>Since last years</span> -->
                                    </div>
                                  </div>
                                  <div class="col-auto">
                                    <i class="fas fa-chalkboard-teacher fa-2x" style="color: #FCA311;"></i>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
            

                          <!-- Session and Terms Card  -->
              <?php 
              // $query1=mysqli_query($conn,"SELECT * from tblsessionterm");                       
              // $sessTerm = mysqli_num_rows($query1);
              ?>
                          <!-- <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card h-100">
                              <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                  <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1">Session & Terms</div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $sessTerm;?></div>
                                    <div class="mt-2 mb-0 text-muted text-xs"> -->
                                      <!-- <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
                                      <span>Since last years</span> -->
                                    <!-- </div>
                                  </div>
                                  <div class="col-auto">
                                    <i class="fas fa-calendar-alt fa-2x text-warning"></i>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div> -->


                          <!-- Terms Card  -->
              <?php 
              // $query1=mysqli_query($conn,"SELECT * from tblterm");                       
              // $termonly = mysqli_num_rows($query1);
              ?>
                          <!-- <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card h-100">
                              <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                  <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1">Terms</div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $termonly;?></div>
                                    <div class="mt-2 mb-0 text-muted text-xs"> -->
                                      <!-- <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
                                      <span>Since last years</span> -->
                                    <!-- </div>
                                  </div>
                                  <div class="col-auto">
                                    <i class="fas fa-th fa-2x text-info"></i>
                                  </div>
                                </div>
                              </div>  
                            </div>
                          </div> -->
                          <div class="container">
                          <div class="row">
                              <div class="col-lg-8">
                                  <div class="card shadow mb-4">
                                      <div class="card-header py-3">
                                          <h6 class="m-0 font-weight-bold" style="color: #FCA311;">Bar Chart</h6>
                                      </div>
                                      <div class="card-body" style="border-radius: 10px;">
                                      <canvas id="myBarChart"></canvas>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <script>
                      // Fetch data and generate the chart
                      fetch('fetch_chart_data.php')
                          .then(response => response.json())
                          .then(data => {
                              var ctx = document.getElementById('myBarChart').getContext('2d');
                              var myChart = new Chart(ctx, {
                                  type: 'bar',
                                  data: {
                                      labels: ['Students', 'Instructors', 'Total Attendance'],
                                      datasets: [{
                                          label: 'Data Overview',
                                          data: [data.students, data.instructors, data.attendance],
                                          backgroundColor: [
                                              'rgba(54, 162, 235, 0.2)',
                                              'rgba(255, 206, 86, 0.2)',
                                              'rgba(75, 192, 192, 0.2)'
                                          ],
                                          borderColor: [
                                              'rgba(54, 162, 235, 1)',
                                              'rgba(255, 206, 86, 1)',
                                              'rgba(75, 192, 192, 1)'
                                          ],
                                          borderWidth: 1
                                      }]
                                  },
                                  options: {
                                      scales: {
                                          y: {
                                              beginAtZero: true
                                          }
                                      }
                                  }
                              });
                          });
                  </script>

            <!--Row-->

            <!-- <div class="row">
              <div class="col-lg-12 text-center">
                <p>Do you like this template ? you can download from <a href="https://github.com/indrijunanda/RuangAdmin"
                    class="btn btn-primary btn-sm" target="_blank"><i class="fab fa-fw fa-github"></i>&nbsp;GitHub</a></p>
              </div>
            </div> -->

          </div>
          <!---Container Fluid-->
        </div>
        <!-- Footer -->
        <?php include 'includes/footer.php';?>
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
    <script src="../vendor/chart.js/Chart.min.js"></script>
    <script src="js/demo/chart-bar-demo.js"></script>
    <script src="js/demo/chart.js"></script>

    <!-- JavaScript for DateTime -->
  <script>
    function updateTimeAndDate() {
        var now = new Date();
        var options = { 
            weekday: 'long', 
            year: 'numeric', 
            month: 'long', 
            day: 'numeric', 
            hour: '2-digit', 
            minute: '2-digit', 
            second: '2-digit' 
        };
        var dateTime = now.toLocaleDateString('en-US', options);
        document.getElementById('dateTime').innerHTML = dateTime;
    }

    setInterval(updateTimeAndDate, 1000);
    updateTimeAndDate();
  </script>

  </body>

  </html>