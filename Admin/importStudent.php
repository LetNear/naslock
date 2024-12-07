<?php 
session_start();
$con = mysqli_connect('localhost', 'root', 'admin123', 'student_attendance_db');

if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}

require '../Vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\IOFactory;

if (isset($_POST['save_excel_data'])) {
    $fileName = $_FILES['excelFile']['name'];
    $file_ext = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));

    $allowed_ext = ['xls', 'csv', 'xlsx'];

    if (in_array($file_ext, $allowed_ext)) {
        $inputFileNamePath = $_FILES['excelFile']['tmp_name'];

        try {
            $spreadsheet = IOFactory::load($inputFileNamePath);
            $data = $spreadsheet->getActiveSheet()->toArray();

            $count = 0;
            $msg = false;

            foreach ($data as $row) {
                if ($count > 0) { // Skip header row
                    $no = mysqli_real_escape_string($con, $row[0]);
                    $studentId = mysqli_real_escape_string($con, $row[1]);
                    $fullname = mysqli_real_escape_string($con, $row[2]);
                    $sex = mysqli_real_escape_string($con, $row[3]);
                    $course = mysqli_real_escape_string($con, $row[4]);
                    $year = mysqli_real_escape_string($con, $row[5]);
                    $contactNo = mysqli_real_escape_string($con, $row[6]);
                    $email = mysqli_real_escape_string($con, $row[7]);

                    $tblstudentsQuery = "INSERT INTO tblstudents (studentId, fullname, sex, course, year, contactNo, email) 
                                         VALUES ('$studentId', '$fullname', '$sex', '$course', '$year', '$contactNo', '$email')";

                    $result = mysqli_query($con, $tblstudentsQuery);

                    if ($result) {
                        $msg = true;
                    }
                } else {
                    $count++;
                }
            }

            if ($msg) {
                $_SESSION['message'] = "Successfully Imported";
            } else {
                $_SESSION['message'] = "Not Imported";
            }
            header('Location: createStudents.php');
            exit(0);

        } catch (Exception $e) {
            $_SESSION['message'] = "Error Loading File: " . $e->getMessage();
            header('Location: createStudents.php');
            exit(0);
        }
    } else {
        $_SESSION['message'] = "Invalid File";
        header('Location: createStudents.php');
        exit(0);
    }
}
?>
