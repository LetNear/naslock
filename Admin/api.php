<?php
header("Content-Type: application/json");

$servername = "localhost";
$username = "root";
$password = "admin123";
$dbname = "student_attendance_db";

// Connect to MySQL
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die(json_encode(["error" => "Database connection failed"]));
}

// Get request method
$method = $_SERVER['REQUEST_METHOD'];

// Handle API requests
switch ($method) {
    case 'POST':
        // Read input data
        $input = json_decode(file_get_contents("php://input"), true);
        
        if (isset($input['rfid']) || isset($input['fingerprint'])) {
            $user_id = $input['user_id'] ?? null;
            $action = $input['action'] ?? 'Time In';
            $timestamp = date("Y-m-d H:i:s");

            // Log attendance
            $sql = "INSERT INTO attendance_logs (user_id, action, timestamp) VALUES ('$user_id', '$action', '$timestamp')";
            
            if ($conn->query($sql)) {
                echo json_encode(["success" => "Attendance logged"]);
            } else {
                echo json_encode(["error" => "Failed to log attendance"]);
            }
        } else {
            echo json_encode(["error" => "Invalid input"]);
        }
        break;

    case 'GET':
        // Fetch attendance logs
        $result = $conn->query("SELECT * FROM attendance_logs");
        $logs = $result->fetch_all(MYSQLI_ASSOC);
        echo json_encode($logs);
        break;

    default:
        echo json_encode(["error" => "Unsupported request method"]);
}
$conn->close();
?>
