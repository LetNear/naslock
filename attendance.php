<?php
include 'Includes/dbcon.php'; // Include database connection

// Check if the RFID is provided (e.g., from an RFID reader input or a form)
if (isset($_POST['rfidNumber'])) {
    $rfidNumber = $_POST['rfidNumber'];
    
    // Query the student details based on RFID number
    $query = mysqli_query($conn, "SELECT * FROM tblstudents WHERE rfidNumber = '$rfidNumber'");
    $student = mysqli_fetch_assoc($query);

    if ($student) {
        // Student found, store details in variables
        $studentId = $student['studentId'];
        $fullName = $student['fullName'];
        $course = $student['course'];
        $year = $student['year'];
        $pcNumber = $student['pcNumber'];
    } else {
        // No student found with this RFID
        echo "<div class='alert alert-danger'>Student not found.</div>";
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="img/logo/NASLockLogo.png" rel="icon">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>NASLock</title>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/ruang-admin.min.css" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <style>
    /* General page styling */
body {
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #14213d, #2D374C, #414859, #7F7F7F, #9D8865, #B78F43, #FCA311);
    color: white;
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    position: relative;
}

/* Header section containing logo, time, and date */
.header-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 90%;
    max-width: 1200px;
    background: rgba(20, 33, 61, 0.9); /* Semi-transparent dark background */
    border-radius: 10px;
    padding: 10px 20px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
    margin-bottom: 20px;
}

/* NASLock logo styling */
.header-container .logo img {
    height: 50px;
    width: auto;
}

/* Time and Date container styling */
.header-container .time-container {
    text-align: right;
    color: #fca311;
}

#time {
    font-size: 1.8rem;
    font-weight: bold;
    margin: 0;
}

#date {
    font-size: 1rem;
    margin: 0;
}

/* Attendance section */
.attendance-section {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    width: 90%;
    max-width: 1200px;
    margin-top: 20px;
}

/* RFID Section - Common Styling */
.rfid-section {
    background-color: #fca311;
    color: #14213d;
    padding: 20px;
    border-radius: 10px;
    width: 48%;
    text-align: center;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.rfid-section h2 {
    margin-bottom: 15px;
    font-size: 1.5rem;
}

.rfid-input label {
    display: block;
    margin-bottom: 8px;
    font-size: 1.2rem;
}

.rfid-input input {
    width: 80%;
    padding: 10px;
    font-size: 1rem;
    border-radius: 5px;
    border: 1px solid #ddd;
}

.rfid-input button {
    margin-top: 10px;
    padding: 10px 20px;
    font-size: 1rem;
    border: none;
    border-radius: 5px;
    background-color: #14213d;
    color: #fff;
    cursor: pointer;
}

.rfid-input button:hover {
    background-color: #fca311;
    color: #14213d;
}

/* Exit button */
.exit-button {
    position: absolute;
    top: 20px;
    right: 20px;
    background-color: #fca311;
    color: #14213d;
    border: none;
    font-size: 1.2rem;
    padding: 10px;
    border-radius: 50%;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
}

.exit-button:hover {
    background-color: #14213d;
    color: #fca311;
}

/* RFID Message */
.rfid-message {
    text-align: center;
    font-size: 1.2rem;
    margin-top: 20px;
    color: #fca311;
}

/* Style for tables */
.table {
    width: 100%;
    margin-top: 20px;
    border-collapse: collapse;
    background-color: #fff;
    color: #14213d;
    border-radius: 5px;
    overflow: hidden;
}

.table thead th {
    background-color: #14213d;
    color: #fca311;
    padding: 10px;
    text-align: left;
    font-size: 1rem;
}

.table tbody td {
    padding: 10px;
    border: 1px solid #ddd;
    font-size: 0.9rem;
}

.table-striped tbody tr:nth-of-type(odd) {
    background-color: #f9f9f9;
}

.table tbody tr:hover {
    background-color: #f1f1f1;
}

/* Responsive Design */
@media (max-width: 768px) {
    .header-container {
        flex-direction: column;
        align-items: center;
        text-align: center;
    }

    .attendance-section {
        flex-direction: column;
        gap: 20px;
    }

    .rfid-section {
        width: 100%;
    }

    .exit-button {
        top: 10px;
        right: 10px;
        padding: 8px;
        font-size: 1rem;
    }
}
</style>

</head>
<body>

    <!-- Logo and Time/Date Container -->
    <div class="header-container">
        <div class="logo">
            <img src="img/logo/Naslock.png" alt="NASLock Logo">
        </div>
        <div class="time-container">
            <h1 id="time"></h1>
            <p id="date"></p>
        </div>
    </div>

    <!-- Exit button placed at the top right corner -->
    <div class="exit-button-container">
        <button onclick="window.location.href='index.php'" class="exit-button">
        <i class='bx bx-x bx-spin'></i>
        </button>
    </div>


            <div class="rfid-message">
                <p>Please tap the RFID card to proceed with time in and time out</p>
            </div>

   <!-- Main attendance section containing student and instructor RFID sections -->
 <div class="attendance-section">
    <div class="rfid-section student-section">
        <h2>Student Attendance</h2>
        <div class="rfid-input">

            <!-- Form for submitting RFID -->
                <form method="post" action="attendance.php">
                    <label for="student-rfid">Enter RFID:</label>
                    <input type="text" name="rfidNumber" required>
                    <button type="submit">Submit</button>
                </form>
                <!-- <label for="student-rfid">Student RFID No.</label>
                <input type="text" id="student-rfid" placeholder=""> -->
            </div>

            <div id="alert-message"></div>

    
        <?php if (isset($student)) { ?>
        <!-- Display student information -->
        <div class="student-info">
            <h2>Student Information</h2>
            <p><strong>Student ID:</strong> <?php echo $studentId; ?></p>
            <p><strong>Full Name:</strong> <?php echo $fullName; ?></p>
            <p><strong>Course:</strong> <?php echo $course; ?></p>
            <p><strong>Year:</strong> <?php echo $year; ?></p>
            <p><strong>PC Number:</strong> <?php echo $pcNumber; ?></p>
        </div>
        <?php } ?>

    </div>

    <div class="rfid-section instructor-section">
        <h2>Instructor Attendance</h2>
        <div class="rfid-input">
        <label for="instructor-rfid">Instructor RFID No.</label>
                <input type="text" id="instructor-rfid" placeholder="">
            </div>
    </div>
</div>



    <script>
        // JavaScript to update the time and date dynamically
        function updateTime() {
            const timeElement = document.getElementById('time');
            const dateElement = document.getElementById('date');
            const now = new Date();

            // Format time as HH:MM:SS AM/PM
            let hours = now.getHours();
            let minutes = now.getMinutes();
            let seconds = now.getSeconds();
            const ampm = hours >= 12 ? 'PM' : 'AM';
            hours = hours % 12;
            hours = hours ? hours : 12; // If hour is 0, set it to 12
            minutes = minutes < 10 ? '0' + minutes : minutes;
            seconds = seconds < 10 ? '0' + seconds : seconds;

            const timeString = `${hours}:${minutes}:${seconds} ${ampm}`;
            timeElement.textContent = timeString;

            // Format date
            const options = { year: 'numeric', month: 'long', day: 'numeric', weekday: 'long' };
            const dateString = now.toLocaleDateString('en-US', options);
            dateElement.textContent = dateString;
        }

        setInterval(updateTime, 1000); // Update every second
    </script>
</body>
</html>
