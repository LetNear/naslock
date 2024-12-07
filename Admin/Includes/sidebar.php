<ul class="navbar-nav sidebar sidebar-light accordion " id="accordionSidebar">
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php" style="background-color: #14213D;">
        <div class="sidebar-brand-icon">
            <img src="img/logo/NASLockLogo.png">
        </div>
        <div class="sidebar-brand-text mx-3" style="color: #FCA311;">NASLock</div>
    </a>
    <hr class="sidebar-divider my-0">
    <li class="nav-item active">
        <a class="nav-link" href="index.php">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>
    <hr class="sidebar-divider">
    <div class="sidebar-heading">
        Instructor
    </div>
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrapassests" aria-expanded="true" aria-controls="collapseBootstrapassests">
            <i class="fas fa-chalkboard-teacher"></i>
            <span>Manage Instructor</span>
        </a>
        <div id="collapseBootstrapassests" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Manage Instructor</h6>
                <a class="collapse-item" href="createClassTeacher.php">Create Instructor</a>
                <a class="collapse-item" href="laboratorySchedule.php">Laboratory Schedule</a>
            </div>
        </div>
    </li>
    <hr class="sidebar-divider">
    <div class="sidebar-heading">
        Students
    </div>
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap2" aria-expanded="true" aria-controls="collapseBootstrap2">
            <i class="fas fa-user-graduate"></i>
            <span>Manage Students</span>
        </a>
        <div id="collapseBootstrap2" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Manage Students</h6>
                <a class="collapse-item" href="createStudents.php">Create Students</a>
            </div>
        </div>
    </li>


    <!-- New Attendance Section -->
    <hr class="sidebar-divider">
    <div class="sidebar-heading">
        Attendance
    </div>
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseAttendance" aria-expanded="true" aria-controls="collapseAttendance">
            <i class="fas fa-calendar-check"></i>
            <span>Manage Attendance</span>
        </a>
        <div id="collapseAttendance" class="collapse" aria-labelledby="headingAttendance" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Attendance Actions</h6>
                <a class="collapse-item" href="viewStudentAttendance.php">Student Attendance</a>
                <a class="collapse-item" href="attendanceLogs.php">Attendance Logs</a>
                <a class="collapse-item" href="report.php">Report</a>
            </div>
        </div>
    </li>

    <hr class="sidebar-divider">
</ul>
