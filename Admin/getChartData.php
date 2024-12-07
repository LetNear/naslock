<?php
include '../Includes/dbcon.php';

// Example query to get data from database
$query = "SELECT DATE(attendanceDate) as date, COUNT(*) as attendance_count FROM tblattendance GROUP BY date";
$result = $conn->query($query);

$data = [];

while($row = $result->fetch_assoc()) {
    $data[] = $row;
}

echo json_encode($data);
?>
