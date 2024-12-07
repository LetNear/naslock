<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "admin123";
$dbname = "student_attendance_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query to get the number of students
$studentQuery = "SELECT COUNT(*) as studentCount FROM tblstudents";
$studentResult = $conn->query($studentQuery);
$studentData = $studentResult->fetch_assoc();

// Query to get the number of instructors
$instructorQuery = "SELECT COUNT(*) as instructorCount FROM tblinstructor";
$instructorResult = $conn->query($instructorQuery);
$instructorData = $instructorResult->fetch_assoc();

// Query to get total student attendance from tblviewattendance
$attendanceQuery = "SELECT COUNT(*) as totalAttendance FROM tblviewattendance";
$attendanceResult = $conn->query($attendanceQuery);
$attendanceData = $attendanceResult->fetch_assoc();

$conn->close();

// Output the data as JSON for the frontend
echo json_encode(array(
    "students" => $studentData['studentCount'],
    "instructors" => $instructorData['instructorCount'],
    "attendance" => $attendanceData['totalAttendance']
));
?>
