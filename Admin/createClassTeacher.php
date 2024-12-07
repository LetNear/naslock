<?php 
error_reporting(0);
include '../Includes/dbcon.php';
include '../Includes/session.php';

//------------------------SAVE--------------------------------------------------

if(isset($_POST['save'])){

  $firstName = $_POST['firstName'];
  $lastName = $_POST['lastName'];
  $emailAddress = $_POST['emailAddress'];
  $phoneNo = $_POST['phoneNo'];
  $instructorId = $_POST['instructorId'];
  $program = $_POST['program'];
  $fingerprintData = $_POST['fingerprintData'];
  $subject = $_POST['subject'];  // Added subject
  $timeschedule = $_POST['timeschedule']; // Added schedule
  $dateCreated = date("Y-m-d");

  $query = mysqli_query($conn, "SELECT * FROM tblinstructor WHERE emailAddress = '$emailAddress'");
  $ret = mysqli_fetch_array($query);

  $sampPass = "pass123";
  $sampPass_2 = md5($sampPass);

  if ($ret > 0) {
    $statusMsg = "<div class='alert alert-danger' style='margin-right:700px;'>This Email Address Already Exists!</div>";
  } else {
      $query = mysqli_query($conn, "INSERT INTO tblinstructor (firstName, lastName, instructorId, program, emailAddress, password, phoneNo, fingerprintData, subject, timeschedule, dateCreated) 
          VALUES ('$firstName', '$lastName', '$instructorId', '$program', '$emailAddress', '$sampPass_2', '$phoneNo', '$fingerprintData', '$subject', '$timeschedule', '$dateCreated')");
      
      if ($query) {
        $statusMsg = "<div class='alert alert-success' style='margin-right:700px;'>Instructor Created Successfully!</div>";
      } else {
        $statusMsg = "<div class='alert alert-danger' style='margin-right:700px;'>An error occurred!</div>";
      }
  }
}


//---------------------------------------EDIT-------------------------------------------------------------

if (isset($_GET['id']) && isset($_GET['action']) && $_GET['action'] == "edit") {
  $id = $_GET['id'];

  $query = mysqli_query($conn, "SELECT * FROM tblinstructor WHERE Id = '$id'");
  $row = mysqli_fetch_array($query);

    //------------UPDATE-----------------------------

    if (isset($_POST['update'])) {
      $firstName = $_POST['firstName'];
      $lastName = $_POST['lastName'];
      $emailAddress = $_POST['emailAddress'];
      $phoneNo = $_POST['phoneNo'];
      $instructorId = $_POST['instructorId'];
      $program = $_POST['program'];
      $fingerprintData = $_POST['fingerprintData'];
      $subject = $_POST['subject'];  // Added subject
      $timeschedule = $_POST['timeschedule']; // Added schedule
      $dateCreated = date("Y-m-d");

      $query = mysqli_query($conn, "UPDATE tblinstructor SET firstName = '$firstName', lastName = '$lastName', instructorId = '$instructorId', program = '$program', emailAddress = '$emailAddress', phoneNo = '$phoneNo', fingerprintData = '$fingerprintData', subject = '$subject', timeschedule = '$timeschedule', dateCreated = '$dateCreated' WHERE Id = '$id'");
        
      if ($query) {
          echo "<script type = \"text/javascript\">
                  window.location = (\"createClassTeacher.php\")
                </script>";
      } else {
          $statusMsg = "<div class='alert alert-danger' style='margin-right:700px;'>An error occurred!</div>";
      }
  }
}


//--------------------------------DELETE------------------------------------------------------------------

if (isset($_GET['id']) && isset($_GET['action']) && $_GET['action'] == "delete") {
  $id = $_GET['id'];

  $query = mysqli_query($conn, "DELETE FROM tblinstructor WHERE Id = '$id'");

  if ($query == TRUE) {
      echo "<script type = \"text/javascript\">
              window.location = (\"createClassTeacher.php\")
            </script>"; 
  } else {
      $statusMsg = "<div class='alert alert-danger' style='margin-right:700px;'>An error occurred!</div>"; 
  }
}
?>

<?php
// PHP to handle form submission and enrollment status
if (isset($_POST['submit'])) {
    // Check if the fingerprint has been successfully enrolled
    if ($_POST['fingerprint_status'] === 'enrolled') {
        echo "<script>alert('Fingerprint registered successfully! You can capture another fingerprint.');</script>";
    } else {
        echo "<script>alert('Please enroll your fingerprint first!');</script>";
    }
}
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
            <h1 class="h3 mb-0" style="color: #14213D;">Create Instructor</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Create Instructor</li>
            </ol>
          </div>

          <div class="row">
    <div class="col-lg-12">
        <div class="card mb-4">
            <?php
            if (isset($_SESSION['message'])) {
                echo "<h4>" . $_SESSION['message'] . "</h4>";
                unset($_SESSION['message']);
            }
            ?>
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold" style="color: #FCA311;">Filter by Grade Year and Semester</h6>
            </div>
            <div class="card-body">
                <form action="filterResults.php" method="GET">
                    <!-- Grade Year Filter -->
                    <div class="form-group">
                        <label for="gradeYear">Grade Year<span class="text-danger ml-2">*</span></label>
                        <select class="form-control" name="gradeYear" id="gradeYear" required>
                            <option value="">Select Grade Year</option>
                            <option value="1">1st Year</option>
                            <option value="2">2nd Year</option>
                            <option value="3">3rd Year</option>
                            <option value="4">4th Year</option>
                        </select>
                    </div>
                    <!-- Semester Filter -->
                    <div class="form-group">
                        <label for="semester">Semester<span class="text-danger ml-2">*</span></label>
                        <select class="form-control" name="semester" id="semester" required>
                            <option value="">Select Semester</option>
                            <option value="1">1st Semester</option>
                            <option value="2">2nd Semester</option>
                        </select>
                    </div>
                    <button type="submit" name="filter" class="btn" style="background-color: #FCA311;">Filter</button>
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
                  <h6 class="m-0 font-weight-bold" style="color: #FCA311">Create Instructor</h6>
                    <?php echo $statusMsg; ?>
                </div>


                <div class="card-body">
                  <form method="post">
                   <div class="form-group row mb-3">
                        <div class="col-xl-6">
                        <label class="form-control-label">Firstname<span class="text-danger ml-2">*</span></label>
                        <input type="text" class="form-control" required name="firstName" value="<?php echo $row['firstName'];?>" id="exampleInputFirstName">
                        </div>

                        <div class="col-xl-6">
                        <label class="form-control-label">Lastname<span class="text-danger ml-2">*</span></label>
                      <input type="text" class="form-control" required name="lastName" value="<?php echo $row['lastName'];?>" id="exampleInputFirstName" >
                        </div>
                    </div>

                    <div class="form-group row mb-3">
                        <div class="col-xl-6">
                            <label class="form-control-label">Instructor ID<span class="text-danger ml-2">*</span></label>
                            <input type="text" class="form-control" required name="instructorId" value="<?php echo $row['instructorId'];?>" id="exampleInputInstructorId">
                        </div>

                        <div class="col-xl-6">
                        <label class="form-control-label">Program<span class="text-danger ml-2">*</span></label>
                          <select class="form-control" required name="program" id="exampleInputProgram">
                              <option value="" disabled selected>Select a Program</option>
                              <option value="BSIT" <?php if($row['program'] == 'BSIT') echo 'selected'; ?>>BSIT</option>
                              <option value="BSCS" <?php if($row['program'] == 'BSCS') echo 'selected'; ?>>BSCS</option>
                              <option value="BLIS" <?php if($row['program'] == 'BLIS') echo 'selected'; ?>>BLIS</option>
                              <option value="BSIS" <?php if($row['program'] == 'BSIS') echo 'selected'; ?>>BSIS</option>
                          </select>
                        </div>
                    </div>

                    <div class="form-group row mb-3">
                        <div class="col-xl-6">
                        <label class="form-control-label">Email Address<span class="text-danger ml-2">*</span></label>
                        <input type="email" class="form-control" required name="emailAddress" value="<?php echo $row['emailAddress'];?>" id="exampleInputFirstName" >
                        </div>

                        <div class="col-xl-6">
                        <label class="form-control-label">Phone No<span class="text-danger ml-2">*</span></label>
                      <input type="text" class="form-control" name="phoneNo" value="<?php echo $row['phoneNo'];?>" id="exampleInputFirstName" >
                        </div>
                    </div>

                    <div class="form-group row mb-3">
                        <div class="col-xl-6">
                            <label class="form-control-label">Subject<span class="text-danger ml-2">*</span></label>
                            <select class="form-control" required name="subject" id="exampleInputSubject">
                                <option value="" disabled selected>Select a subject</option>
                                <option value="IPT2" <?php if($row['subject'] == 'IPT2') echo 'selected'; ?>>Integrative Programming and Technologies 2</option>
                            </select>
                        </div>
                        
                        
                        <div class="col-xl-6">
                              <label class="form-control-label">Schedule Day<span class="text-danger ml-2">*</span></label>
                              <select class="form-control" required name="schedule" id="exampleInputSchedule">
                                  <option value="" disabled selected>Select a day</option>
                                  <option value="Monday">Monday</option>
                                  <option value="Tuesday">Tuesday</option>
                                  <option value="Wednesday">Wednesday</option>
                                  <option value="Thursday">Thursday</option>
                                  <option value="Friday">Friday</option>
                                  <option value="Saturday">Saturday</option>
                                  <option value="Sunday">Sunday</option>
                              </select>
                          </div>
                        </div>

                        <div class="form-group row mb-3">
                            <div class="col-xl-6">
                                <label class="form-control-label">Start Time<span class="text-danger ml-2">*</span></label>
                                <select class="form-control" required name="start_time" id="exampleInputStartTime">
                                    <option value="" disabled selected>Select Start Time</option>
                                    <?php
                                        $times = ['06:00 AM', '07:00 AM', '08:00 AM', '09:00 AM', '10:00 AM', '11:00 AM', '12:00 PM', '01:00 PM', '02:00 PM', '03:00 PM', '04:00 PM', '05:00 PM'];
                                        foreach($times as $time) {
                                            echo '<option value="'.$time.'"'.($row['start_time'] == $time ? ' selected' : '').'>'.$time.'</option>';
                                        }
                                    ?>
                                </select>
                            </div>

                            <div class="col-xl-6">
                                <label class="form-control-label">End Time<span class="text-danger ml-2">*</span></label>
                                <select class="form-control" required name="end_time" id="exampleInputEndTime">
                                    <option value="" disabled selected>Select End Time</option>
                                    <?php
                                        $times = ['06:00 AM', '07:00 AM', '08:00 AM', '09:00 AM', '10:00 AM', '11:00 AM', '12:00 PM', '01:00 PM', '02:00 PM', '03:00 PM', '04:00 PM', '05:00 PM'];
                                        foreach($times as $time) {
                                            echo '<option value="'.$time.'"'.($row['end_time'] == $time ? ' selected' : '').'>'.$time.'</option>';
                                        }
                                    ?>
                                </select>
                            </div>
                        </div>



                        <!-- Capture Fingerprint Button -->
                        <div class="form-group row mb-3">
                            <div class="col-xl-6">
                                <label class="form-control-label">Fingerprint Data<span class="text-danger ml-2">*</span></label>
                                <button type="button" class="btn form-control" id="exampleInputFingerprintData" style="background-color: #14213D; color: white;" onclick="captureFingerprint()">
                                    <?php echo isset($row['fingerprintData']) ? $row['fingerprintData'] : 'Capture Fingerprint'; ?>
                                </button>
                            </div>
                        </div>

                         <!-- Modal Pop-up for Fingerprint Enrollment -->
<!-- Include Bootstrap and Bootstrap Icons -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"> -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

<div class="container mt-5">
    <!-- Modal for Fingerprint Capture -->
    <div class="modal fade" id="fingerprintModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content shadow-lg">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Register Fingerprint</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center">
                    <p class="lead">Click the button below to register your fingerprint.</p>
                    <button class="btn-gradient btn-lg" id="captureButton" onclick="captureFingerprint()">Capture Fingerprint</button>
                    <button class="btn-submit btn-lg mt-3" type="submit">Submit</button>
                    <div id="captureFeedback" class="mt-3"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <!-- Modal for Fingerprint Enrollment -->
    <div class="modal fade" id="fingerprintEnrollModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content shadow-lg">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Fingerprint Enrollment</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center">
                    <p class="lead">Place your finger on the sensor to enroll.</p>
                    <button class="btn-enroll btn-lg" id="enrollButton" onclick="enrollFingerprint()" disabled>
                        <i class="bi bi-fingerprint"></i> Enroll Fingerprint
                    </button>
                    <div id="enrollFeedback" class="mt-3"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- CSS to Improve UI -->
<style>
    .modal-content {
        border-radius: 12px;
        padding: 20px;
        background: #f9f9f9;
    }

    .modal-header {
        border-bottom: none;
        padding-bottom: 0;
    }

    .modal-title {
        font-size: 24px;
        font-weight: bold;
        color: #4a4a4a;
    }

    .lead {
        font-size: 18px;
        color: #6c757d;
    }

    .btn-close {
        background-color: transparent;
        border: none;
        font-size: 24px;
    }

    .btn-close:hover {
        color: #14213D;
    }

    .btn-enroll {
        background-color: #FCA311;
        border: none;
        border-radius: 30px;
        color: #fff;
        padding: 12px 24px;
        font-size: 18px;
        transition: background 0.3s ease;
    }

    .btn-enroll:hover {
        background-color: #28a745;
    }

    .btn-enrolled {
        background-color: #28a745;
    }

    .shadow-lg {
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
    }

    .text-center {
        text-align: center;
    }

    .spinner-border {
        width: 1.5rem;
        height: 1.5rem;
        display: none; /* Initially hidden */
    }
</style>

<!-- JavaScript to Handle Fingerprint Capture and Enrollment -->
<script>
    function captureFingerprint() {
        var captureButton = document.getElementById("captureButton");
        var feedbackElement = document.getElementById("captureFeedback");

        // Change button text and disable it
        captureButton.innerHTML = "Register Fingerprint";
        captureButton.disabled = true;
        feedbackElement.innerHTML = "<span class='spinner-border spinner-border-sm' role='status' aria-hidden='true'></span> Capturing fingerprint...";

        // Immediately switch to the enrollment modal
        document.getElementById("enrollButton").disabled = false;
        $('#fingerprintModal').modal('hide');
        $('#fingerprintEnrollModal').modal('show');
    }

    function enrollFingerprint() {
        var enrollButton = document.getElementById("enrollButton");
        var feedbackElement = document.getElementById("enrollFeedback");

        // Change button text to "Enrolling..." and disable it
        enrollButton.innerHTML = "Enrolling...";
        enrollButton.disabled = true;
        feedbackElement.innerHTML = "<span class='spinner-border spinner-border-sm' role='status' aria-hidden='true'></span> Enrolling...";

        // Simulate the fingerprint scanning process
        setTimeout(function() {
            // After enrollment, update feedback and button state
            feedbackElement.innerHTML = "Fingerprint Enrolled Successfully!";
            enrollButton.innerHTML = "Enroll Fingerprint"; // Reset button text
            enrollButton.classList.add("btn-enrolled"); // Change style for the "enrolled" state
        }, 1000); // Simulated enrollment time
    }
</script>

<!-- Include Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


                    <button type="submit" name="<?php if(isset($_GET['id'])){ echo "update";} else{ echo "save";}?>" class="btn" style="background-color: #FCA311; color: white;">Save</button>
                  </form>
                </div>
              </div>
            </div>
          </div>

          <!-- Display Instructors Table -->
          <div class="row">
            <div class="col-lg-12">
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold" style="color: #FCA311">All Instructors</h6>
                </div>
                <div class="table-responsive p-3">
                  <table class="table align-items-center table-flush table-hover">
                    <thead class="thead-light">
                      <tr>
                        <th>#</th>
                        <th>Instructor ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Program</th>
                        <th>Email Address</th>
                        <th>Phone No</th>
                        <th>Subject</th>
                        <th>Time Schedule</th>
                        <th>Fingerprint Data</th>
                        <th>Date Created</th>
                        <th>Delete</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php
                      $query = "SELECT tblinstructor.Id, tblinstructor.instructorID, tblinstructor.firstName, tblinstructor.lastName, 
                                tblinstructor.program, tblinstructor.emailAddress, tblinstructor.phoneNo, tblinstructor.fingerprintData, 
                                tblinstructor.subject, tblinstructor.timeschedule, tblinstructor.dateCreated FROM tblinstructor";
                      $rs = $conn->query($query);
                      $num = $rs->num_rows;
                      $sn = 0;
                      if ($num > 0) { 
                        while ($rows = $rs->fetch_assoc()) {
                          $sn++;
                          echo "
                          <tr>
                              <td>" . $sn . "</td>
                              <td>" . $rows['instructorID'] . "</td>
                              <td>" . $rows['firstName'] . "</td>
                              <td>" . $rows['lastName'] . "</td>
                              <td>" . $rows['program'] . "</td>
                              <td>" . $rows['emailAddress'] . "</td>
                              <td>" . $rows['phoneNo'] . "</td>
                              <td>" . $rows['fingerprintData'] . "</td>
                              <td>" . $rows['subject'] . "</td>
                              <td>" . $rows['timeschedule'] . "</td>
                              <td>" . $rows['dateCreated'] . "</td>
                              <td><a class='btn text-white' style='background-color: #14213D;' href='?action=edit&id=".$rows['Id']."'><i class='fas fa-fw fa-edit' style='color: #FCA311;'></i></a>
                              <a class='btn text-white' style='background-color: #14213D;' href='?action=delete&id=".$rows['Id']."'><i class='fas fa-fw fa-trash' style='color: #FCA311;'></i></a>
                          </tr>";
                        }
                      } else {
                        echo "<div class='alert alert-danger' role='alert'>
                                No Record Found!
                              </div>";
                      }
                      ?>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!---Container Fluid-->
      </div>

      <!-- Footer -->
        <?php include 'Includes/footer.php';?>
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

</body>

</html>