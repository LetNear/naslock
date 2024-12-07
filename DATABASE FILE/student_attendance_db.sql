-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2024 at 07:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_attendance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`) VALUES
(1, 'Admin', '', 'admin@mail.com', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `Id` int(10) NOT NULL,
  `admissionNo` varchar(255) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `sessionTermId` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `dateTimeTaken` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `tblattendance` (`Id`, `admissionNo`, `classId`, `classArmId`, `sessionTermId`, `status`, `dateTimeTaken`) VALUES
(162, 'ASDFLKJ', '1', '2', '1', '1', '2020-11-01'),
(163, 'HSKSDD', '1', '2', '1', '1', '2020-11-01'),
(164, 'JSLDKJ', '1', '2', '1', '1', '2020-11-01'),
(172, 'HSKDS9EE', '1', '4', '1', '1', '2020-11-01'),
(171, 'JKADA', '1', '4', '1', '0', '2020-11-01'),
(170, 'JSFSKDJ', '1', '4', '1', '1', '2020-11-01'),
(173, 'ASDFLKJ', '1', '2', '1', '1', '2020-11-19'),
(174, 'HSKSDD', '1', '2', '1', '1', '2020-11-19'),
(175, 'JSLDKJ', '1', '2', '1', '1', '2020-11-19'),
(176, 'JSFSKDJ', '1', '4', '1', '0', '2021-07-15'),
(177, 'JKADA', '1', '4', '1', '0', '2021-07-15'),
(178, 'HSKDS9EE', '1', '4', '1', '0', '2021-07-15'),
(179, 'ASDFLKJ', '1', '2', '1', '0', '2021-09-27'),
(180, 'HSKSDD', '1', '2', '1', '1', '2021-09-27'),
(181, 'JSLDKJ', '1', '2', '1', '1', '2021-09-27'),
(182, 'ASDFLKJ', '1', '2', '1', '0', '2021-10-06'),
(183, 'HSKSDD', '1', '2', '1', '0', '2021-10-06'),
(184, 'JSLDKJ', '1', '2', '1', '1', '2021-10-06'),
(185, 'ASDFLKJ', '1', '2', '1', '0', '2021-10-07'),
(186, 'HSKSDD', '1', '2', '1', '0', '2021-10-07'),
(187, 'JSLDKJ', '1', '2', '1', '0', '2021-10-07'),
(188, 'AMS110', '4', '6', '1', '1', '2021-10-07'),
(189, 'AMS133', '4', '6', '1', '0', '2021-10-07'),
(190, 'AMS135', '4', '6', '1', '0', '2021-10-07'),
(191, 'AMS144', '4', '6', '1', '1', '2021-10-07'),
(192, 'AMS148', '4', '6', '1', '0', '2021-10-07'),
(193, 'AMS151', '4', '6', '1', '1', '2021-10-07'),
(194, 'AMS159', '4', '6', '1', '1', '2021-10-07'),
(195, 'AMS161', '4', '6', '1', '1', '2021-10-07'),
(196, 'AMS110', '4', '6', '1', '1', '2022-06-06'),
(197, 'AMS133', '4', '6', '1', '0', '2022-06-06'),
(198, 'AMS135', '4', '6', '1', '0', '2022-06-06'),
(199, 'AMS144', '4', '6', '1', '1', '2022-06-06'),
(200, 'AMS148', '4', '6', '1', '0', '2022-06-06'),
(201, 'AMS151', '4', '6', '1', '1', '2022-06-06'),
(202, 'AMS159', '4', '6', '1', '1', '2022-06-06'),
(203, 'AMS161', '4', '6', '1', '1', '2022-06-06'),
(204, 'AMS110', '4', '6', '1', '0', '2024-09-20'),
(205, 'AMS133', '4', '6', '1', '0', '2024-09-20'),
(206, 'AMS135', '4', '6', '1', '0', '2024-09-20'),
(207, 'AMS144', '4', '6', '1', '0', '2024-09-20'),
(208, 'AMS148', '4', '6', '1', '0', '2024-09-20'),
(209, 'AMS151', '4', '6', '1', '0', '2024-09-20'),
(210, 'AMS159', '4', '6', '1', '0', '2024-09-20'),
(211, 'AMS161', '4', '6', '1', '0', '2024-09-20'),
(212, 'AMS110', '4', '6', '1', '0', '2024-09-21'),
(213, 'AMS133', '4', '6', '1', '0', '2024-09-21'),
(214, 'AMS135', '4', '6', '1', '0', '2024-09-21'),
(215, 'AMS144', '4', '6', '1', '0', '2024-09-21'),
(216, 'AMS148', '4', '6', '1', '0', '2024-09-21'),
(217, 'AMS151', '4', '6', '1', '0', '2024-09-21'),
(218, 'AMS159', '4', '6', '1', '0', '2024-09-21'),
(219, 'AMS161', '4', '6', '1', '0', '2024-09-21'),
(220, 'AMS110', '4', '6', '1', '0', '2024-09-22'),
(221, 'AMS133', '4', '6', '1', '0', '2024-09-22'),
(222, 'AMS135', '4', '6', '1', '0', '2024-09-22'),
(223, 'AMS144', '4', '6', '1', '0', '2024-09-22'),
(224, 'AMS148', '4', '6', '1', '0', '2024-09-22'),
(225, 'AMS151', '4', '6', '1', '0', '2024-09-22'),
(226, 'AMS159', '4', '6', '1', '0', '2024-09-22'),
(227, 'AMS161', '4', '6', '1', '0', '2024-09-22');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendancelogs`
--

CREATE TABLE `tblattendancelogs` (
  `Id` int(50) NOT NULL,
  `userId` int(50) NOT NULL,
  `fullName` varchar(200) NOT NULL,
  `userType` varchar(200) NOT NULL,
  `rfidNumber` text NOT NULL,
  `date` date NOT NULL,
  `timeIn` time NOT NULL,
  `timeOut` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `Id` int(11) NOT NULL,
  `className` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblclassarms`
--

CREATE TABLE `tblclassarms` (
  `Id` int(11) NOT NULL,
  `classId` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `classArmName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isAssigned` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblclassteacher`
--

CREATE TABLE `tblclassteacher` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNo` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclassteacher`
--

INSERT INTO `tblclassteacher` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`, `phoneNo`, `classId`, `classArmId`, `dateCreated`) VALUES
(1, 'Will', 'Kibagendi', 'teacher2@mail.com', '32250170a0dca92d53ec9624f336ca24', '09089898999', '1', '2', '2022-10-31'),
(4, 'Demola', 'Ade', 'teacher3@gmail.com', '32250170a0dca92d53ec9624f336ca24', '09672002882', '1', '4', '2022-11-01'),
(5, 'Ryan', 'Mbeche', 'teacher4@mail.com', '32250170a0dca92d53ec9624f336ca24', '7014560000', '3', '5', '2022-10-07'),
(6, 'John', 'Keroche', 'teacher@mail.com', '32250170a0dca92d53ec9624f336ca24', '0100000030', '4', '6', '2022-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `tblinstructor`
--

CREATE TABLE `tblinstructor` (
  `Id` int(11) NOT NULL,
  `instructorId` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `program` text NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNo` varchar(20) NOT NULL,
  `subject` text NOT NULL,
  `timeschedule` time NOT NULL,
  `fingerprintData` blob NOT NULL,
  `dateCreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblinstructor`
--

INSERT INTO `tblinstructor` (`Id`, `instructorId`, `firstName`, `lastName`, `program`, `emailAddress`, `password`, `phoneNo`, `subject`, `timeschedule`, `fingerprintData`, `dateCreated`) VALUES
(0, '456465', 'main', 'case', 'BSCS', 'maincase@gmail.com', '32250170a0dca92d53ec9624f336ca24', '09678543856', 'English', '00:00:00', '', '2024-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `tblsessionterm`
--

CREATE TABLE `tblsessionterm` (
  `Id` int(10) NOT NULL,
  `sessionName` varchar(50) NOT NULL,
  `termId` varchar(50) NOT NULL,
  `isActive` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsessionterm`
--

INSERT INTO `tblsessionterm` (`Id`, `sessionName`, `termId`, `isActive`, `dateCreated`) VALUES
(1, '2021/2022', '1', '0', '2022-10-31'),
(3, '2021/2022', '2', '0', '2022-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `Id` int(10) NOT NULL,
  `studentId` varchar(50) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `contactNo` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `rfidNumber` text NOT NULL,
  `pcNumber` text NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`Id`, `studentId`, `fullName`, `sex`, `course`, `year`, `contactNo`, `email`, `password`, `rfidNumber`, `pcNumber`, `dateCreated`) VALUES
(22, '221008248', 'Almasco, Ella Mae P.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(23, '221007501', 'Alvarado, Rhea kristine L.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(24, '221000350', 'Aspa, Djahaira Diana B.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(25, '221008167', 'Belgica, James Angelo A.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(26, '221007995', 'Brazil, Chris Harold S.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(27, '221007531', 'Clavillas, Mira Vanessa C.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(28, '221008043', 'Esplana, Vincent G.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(29, '221007220', 'Esquilador, Ruthiemay T.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(30, '221007135', 'Fabul, Nathaniel Niño A.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(31, '221007994', 'Garin, Zimry Gianne L.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(32, '1904460', 'Guanzon Jr., Orlando Goleta', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(33, '221007739', 'Herrera, Ma. Ana fe A.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(34, 'C21104612', 'Legaspe, Fernando Jr. R.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(35, '221007532', 'Morga, Nathalie Mae B.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(36, '221008058', 'Nueva, Aemann T.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(37, '221001409', 'Orcales, John Louis P.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(38, '221008016', 'Panton, Vince Michael G.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(39, '221001423', 'Perillo, Mark Dale Andrie S.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(40, '221001425', 'Pili, Noli John Sunny V.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(41, '221006964', 'Pontillas, Denniel V.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(42, '221001462', 'Prades, Benz Domini P.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(43, '221006515', 'Rabusa, Keziah Mae R.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(44, '221001466', 'Ramoyan, Hairoh D.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(45, '221007148', 'Salamanque, Cindy S.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(46, '221006005', 'Sanfuego, Angelica C.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(47, 'C21104933', 'Valdez, Maria Alexanderia O.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(48, '221007474', 'Zorilla, Gio Yvan D.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(49, '221001119', 'Abila, Julie B.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(50, '221001123', 'Agonos, Maybelle R.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(51, '221001131', 'Arellas, Kristine C.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(52, '221002015', 'Balane, James M.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(53, '221002049', 'Barrio, Joebert S.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(54, 'C21104655', 'Bazar, Vince Franc M.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(55, '221001161', 'Bergado, Leonard L.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(56, '221001177', 'Brazil, Kristine Joy B.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(57, '221001189', 'Buena, Carl Ivan I.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(58, '221001269', 'Caritos, Brandon R.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(59, '221000849', 'Digay, Feann Faith J.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(60, '221002169', 'Galarza, John Carlo V.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(61, '221001320', 'Gamban, Marc Aron B.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(62, '221001323', 'Gavina, John renz B.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(63, 'C21100988', 'Jacob, Alexa Sophia B.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(64, '221001363', 'Lorzano, John Lloyd C.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(65, '221007858', 'Malota, Cyrus Joseph A.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(66, '221001385', 'Manaog, John Bert O.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(67, '1902991', 'Mejia, John Christian Catimbang', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(68, '221002058', 'Millena, Gio Kyle R.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(69, 'C21102353', 'Navida, Niño Joshua', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(70, '221001946', 'Nolasco, Dion KIer P.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(71, '221001407', 'Obrero, Christian Oliver M.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(72, '221002057', 'Obrero, Emmanuelle Christian M.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(73, '221001416', 'Parañal, John Joseph P.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(74, '221001422', 'Peregrino, Jey Kyle E.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(75, '221001461', 'Pornillos, Greg B.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(76, '221007144', 'Quingquing, Kyla grace B.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(77, '221001947', 'Relatores, Mary Pons Rica E.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(78, '221001472', 'Sabalboro, Judy ann B.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(79, '221001504', 'Sahurda, Lee Ivan S.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(80, '221007754', 'Surio, Arron C.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(81, '221001610', 'Toldanes, Joy Ann Barbie T.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(82, '221001531', 'Urbina, Anne Psylocke S.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(83, '221007056', 'Acbang, John Patrick A.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(84, 'C20100947', 'Agnes, Ma. Andrea B.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(85, '221008106', 'Aratia, Jhoben S.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(86, '221001711', 'Arcilla, Maria Lourdes S.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(87, '221007490', 'Babila, John Rick L.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(88, '221001144', 'Balbuena, John Gilbert D.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(89, '221007947', 'Baraquiel, Xavier Elijah B.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(90, 'C21104865', 'Bayrante, Reb G.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(91, '221006845', 'Belza, Franklin L.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(92, 'C20101308', 'Brizuela, Jayson L.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(93, '221001253', 'Caigas, John Paul M.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(94, '221007517', 'Casco, Rowena B.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(95, '221007423', 'Cordez, Roland Joseph P.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(96, '221007900', 'Cuerdo, Jhan Anthony B.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(97, 'C21103691', 'Deliva, Dince A.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(98, 'C21105210', 'Dimaiwat, Justin Larry R.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(99, '221007853', 'Dulfo, Czaerina Nicole', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(100, '221007688', 'Escuro, Dominic Martin A.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(101, '221007684', 'Gabiola, Harvey N.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(102, '221007420', 'Galon, Joshua Niel R.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(103, '221001339', 'Jornales, Ivan Joshua A.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(104, '221007973', 'Laresma, Dina O.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(105, '221007972', 'Manzano, Michael Angelo S.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(106, '221001974', 'Mora, Earl Justine A.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(107, 'C21104667', 'Moreno, Jansel noah M.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(108, '221006981', 'Nazaria, Ma. Angelica T.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(109, '221007529', 'Noble, Nicole S.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(110, '221007683', 'Nodado, Mark', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(111, '221007765', 'Olea, Darryl Kyle C.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(112, '221007142', 'Oliveros, John Lawrence N.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(113, '221007954', 'Pajenago, John Mark David S.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(114, '221001419', 'Pera, John Kenneth S.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(115, '221007416', 'Porlante, Bobby-Khen L.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(116, '1501112', 'Reyes, Darryl John Cedeño', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(117, '221006517', 'Rombano, Fiona L.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(118, '221007690', 'Satsatin, Karl Edrian L.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(119, '221006464', 'Tormes, Edelyn P.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(120, '221007071', 'Valenzuela, Marwin C.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(121, '221001543', 'Vargas, David Samuel T.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(122, '221001556', 'Viñas, Judah Paulo L.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(123, '221001133', 'Arnante, Duke Zairus A.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(124, '221001136', 'Ayala, Melissa Y.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(125, '221001139', 'Badong, Mary Wynne B.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(126, '221001154', 'Balingasa, Jason F.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(127, '221001156', 'Barte, Jan Andrew R.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(128, '221001157', 'Bayos, Dominic B.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(129, '221001170', 'Bolalin, Moises Noah Q.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(130, '221001258', 'Cambronero, Ma. Diah G.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(131, '221001270', 'Casano, Daphne Rose C.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(132, '221001278', 'Cepe, Christine Grace R.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(133, '221001807', 'Ciruelos, Mark Conrad B.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(134, '221001566', 'Comploma, Janine R.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(135, '221001281', 'Cuarteros, Donna Mae P.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(136, '221007839', 'Dasmariñas, Sybil E.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(137, '221007898', 'Fabillar, Jeorge N.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(138, '221007841', 'Kingking, Jeanylen D.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(139, '221001342', 'Landagan, Mia B.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(140, '221001344', 'Landong, Ike Renson S.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(141, '221001353', 'Layones, Anne Tonette M.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(142, '1902857', 'Llaban, Leslie Calda', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(143, '221001355', 'Llagas, Joycel C.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(144, '221001357', 'Llorin, Alexa Nicole P.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(145, '221001358', 'Lontayao, Jon Mare Edric P.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(146, '221001564', 'Luzano, Christian Nico B.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(147, '221001382', 'Magistrado, Mhercyrey B.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(148, '221001391', 'Maranion, Carl Lawrence S.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(149, '221001397', 'Naag, Julius Caesar IV A.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(150, '221001399', 'Noblesala, Stephen Andrew C.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(151, '221008224', 'Nomo, Jerry Jr. M.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(152, '221001427', 'Placides, Novie Heralyn B.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(153, '221001500', 'Sabroso, Alexander Edrian O.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(154, '221001526', 'Tipanero, Ian Jay Kyle D.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(155, '221001529', 'Tortoles, Vladimir P.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(156, '221007152', 'Tucay, Ma. Crizel H.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(157, '221001532', 'Valera, Reymelene E.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(158, '221001533', 'Vargas, Renier John L.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(159, '221001581', 'Zorilla, Aprilyn S.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(160, '221001122', 'Abonita, April B.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(161, '221001064', 'Abonita, Jancee Kenn E.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(162, '221001124', 'Ajero, Jamaica B.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(163, '221001135', 'Aurillas, John Kenneth B.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(164, '221001143', 'Balbastre, Ralph Justin T.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(165, '221001145', 'Balilla, Mark Anthony B.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(166, '221001155', 'Baluca, Gilbert M.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(167, '221001164', 'Bermido, Kenneth Louis T.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(168, '221001172', 'Boreta, John Rey S.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(169, '221001251', 'Buquid, Kenneth Leonard M.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(170, '221001274', 'Catorce, Marjon D.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(171, '221001279', 'Cervas, Jahara P.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(172, '221001280', 'Cezar, Michaela M.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(173, '221001290', 'Enimedez, Vincent D.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(174, '221001291', 'Escuro, Eman S.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(175, '221001321', 'Gasgas, Jessenry T.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(176, '221001329', 'Hugo, Kathleen Tess I.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(177, '221001332', 'Illanza, Jerl D.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(178, '221001334', 'Inocencio, Neil A.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(179, '221001364', 'Lucas, Mark Bryan S.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(180, '221007784', 'Nachor, Limuel O.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(181, '221001401', 'Oares, Dave Kale B.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(182, '221001404', 'Obiasca, John Lenard M.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(183, '221001567', 'Olavere, Jared Alron D.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(184, '221001410', 'Oscoro, Cindy T.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(185, '221001412', 'Padua, Julian Paul M.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(186, '221001415', 'Pandes, Cyril Mae L.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(187, '221001464', 'Rabusa, Jolina B.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(188, '221001552', 'Villa, Janwil L.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(189, '221001557', 'Zaballa, Maria Charrey Andrea S.', 'F', 'BSIT', '3', '', '', '', '', '', ''),
(190, '221001558', 'Zorilla, Jethro P.', 'M', 'BSIT', '3', '', '', '', '', '', ''),
(191, 'C21101144', 'Aguilar, Angeline D.', 'F', 'BSIT', '4', '9070299545', 'angelineaguilar32@gmail.com', '', '', '', ''),
(192, 'C21101188', 'Baltazar, Alfred Joseph T.', 'M', 'BSIT', '4', '9398185399', 'alfredtheslugger@gmail.com', '', '', '', ''),
(193, 'C20101377', 'Bera?, Dorothy Mae B.', 'F', 'BSIT', '4', '9472837165', 'dorothymaeberana@gmail.com', '', '', '', ''),
(194, '20111272331', 'Bermido, Maria Alexa Sharmaine M.', 'M', 'BSIT', '4', '9386557252', 'bermlex@gmail.com', '', '', '', ''),
(195, 'C21103644', 'Brazal, Jade T.', 'M', 'BSIT', '4', '9065732005', 'brazaljade20@gmail.com', '', '', '', ''),
(196, 'C21101228', 'Buita, Angel Zurick Fisal B.', 'F', 'BSIT', '4', '9055749257', 'biboybelmonte2@gmail.com', '', '', '', ''),
(197, 'C21101271', 'Cerdon, Joshua C.', 'M', 'BSIT', '4', '9197170584', 'jocerdon@my.cspc.edu.ph', '', '', '', ''),
(198, 'C21101238', 'Decierra, Mark D.', 'M', 'BSIT', '4', '9638246542', 'decierramarkdelgaco@gmail.com', '', '', '', ''),
(199, 'C21101180', 'Del Rosario, Kaela Victoria L.', 'F', 'BSIT', '4', '9989479809', 'kvdelrosario19@gmail.com', '', '', '', ''),
(200, 'C21103647', 'Dela Cruz, Ivy A.', 'F', 'BSIT', '4', '9318916265', 'ivyaustriadelacruz17@gmail.com', '', '', '', ''),
(201, 'C21101285', 'Esquivel, Ma. Danica T.', 'F', 'BSIT', '4', '9305205970', 'madanicaesquivel@gmail.com', '', '', '', ''),
(202, 'C21101299', 'Facistol, Ma. Daniela S.', 'F', 'BSIT', '4', '9973983740', 'facistolmariadaniela@gmail.com', '', '', '', ''),
(203, 'C21101259', 'Fernandez, Jose Enrique J.', 'M', 'BSIT', '4', '9514273089', 'enriquealison13@gmail.com', '', '', '', ''),
(204, 'C21101131', 'Fulledo, Mark Angelo S.', 'M', 'BSIT', '4', '9503162484', 'markangelofulledo@gmail.com', '', '', '', ''),
(205, 'C21101263', 'Inocentes, Clven Jay L.', 'M', 'BSIT', '4', '9854766961', 'clvenjaylavapie@gmail.com', '', '', '', ''),
(206, 'C21101264', 'Lastrollo, MaryGrace M.', 'F', 'BSIT', '4', '9500714699', 'marygracelastrollo9@gmail.com', '', '', '', ''),
(207, 'C21101305', 'Lavilla, Glenn P.', 'M', 'BSIT', '4', '9515789393', 'glennlavilla03@gmail.com', '', '', '', ''),
(208, 'C21101289', 'Lucas, Jessica B.', 'F', 'BSIT', '4', '9511065733', 'lucanasjessica8@gmail.com', '', '', '', ''),
(209, 'C21101173', 'Miguel, Mark Glen S.', 'M', 'BSIT', '4', '9633653901', 'markgsadangmiguel@gmail.com', '', '', '', ''),
(210, '20111272216', 'Neverio, Jovita Z.', 'F', 'BSIT', '4', '9109045040', 'jovneverio@my.cspc.edu.ph', '', '', '', ''),
(211, 'C21102358', 'Onido, Aira B.', 'F', 'BSIT', '4', '9637671268', 'Akabanekakisihika@gmail.com', '', '', '', ''),
(212, 'C21103713', 'Rosales, CrisAngelo L.', 'M', 'BSIT', '4', '9308107478', 'CrisAngeloRosales111@gmail', '', '', '', ''),
(213, 'C21101265', 'Sain, Larry C.', 'M', 'BSIT', '4', '9511036445', 'larrysain0624@gmail.com', '', '', '', ''),
(214, 'C21101133', 'Sombrero, Anne Nicole A.', 'F', 'BSIT', '4', '9463920979', 'annenicolehat23@gmail.com', '', '', '', ''),
(215, 'C21101183', 'Talamor, Jenny A.', 'F', 'BSIT', '4', '9662251064', 'jenny09122053853@gmail.com', '', '', '', ''),
(216, 'C21101257', 'Tigue, Nikki I.', 'F', 'BSIT', '4', '9638466707', 'tiguenikki01@gmail.co', '', '', '', ''),
(217, 'C21101201', 'Villacorta, Jay Mark D.', 'M', 'BSIT', '4', '9915034975', 'javillacorta@my.cspc.edu.ph', '', '', '', ''),
(218, 'C21102298', 'Aguilar, Louie P.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(219, 'C21102305', 'Alfonso, John Paul A.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(220, 'C21102306', 'Almasco, Abegail C.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(221, '20111272384', 'Ama, Dominic V.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(222, 'C21102300', 'Andrade, Argel Aries C.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(223, 'C21102311', 'Baldago, Kyla Mae O.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(224, '20111272114', 'Beloro, Jonathan F.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(225, 'C21101292', 'Bolival, Gelmark R.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(226, 'C21101172', 'Cereno, Melannie L.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(227, 'C21102323', 'Cortez, Artemio Manuel D.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(228, 'C21102330', 'Espano, Kyla Caryl B.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(229, 'C21104296', 'Esquibel, Joan G.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(230, 'C21102338', 'Ilarde, Kyla Marie P.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(231, 'C21102339', 'Isidro, Mary Grace N.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(232, 'C21102502', 'Lachama, John Patrick T.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(233, 'C20102131', 'Lopez, Francis S.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(234, 'C21102344', 'Manansala, John Paul S.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(235, 'C21102347', 'Maniscan, Lee Andrew B.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(236, 'C21102349', 'Martinez, Nino Jofel A.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(237, 'C21104184', 'Martinez, Sheena T.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(238, 'C21102327', 'Mendoza, Noel Andrew D.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(239, 'C21102350', 'Monroy, Marianne O.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(240, 'C21102352', 'Navarro, Maria Cleofe R.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(241, 'C21102354', 'Neverio, Lerma V.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(242, 'C21100469', 'Obia, Angel F.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(243, 'C21102357', 'Olleres, Adrian Samuel S.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(244, '1600255', 'Olos, Gabriel Sale', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(245, 'C21102506', 'Onquit, Gerald B.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(246, 'C21102360', 'Pabon, Sheila Marie P.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(247, '1902719', 'Passion, Michael Joshua Olivares', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(248, 'C21102362', 'Peralta, Romel H.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(249, 'C21102363', 'Periabras, Christine V.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(250, 'C21102365', 'Podawan, Bernardo B.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(251, 'C21102367', 'Redondo, Jack arnel D.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(252, 'C21102378', 'Sayson, Julius S.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(253, 'C21102380', 'Sedeno, Jessie James D.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(254, 'C21101126', 'Solera, Jane T.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(255, 'C21102382', 'Talento, Ma. Lianne Isabel D.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(256, 'C20102304', 'Ailes, Joana Marie S.', 'F', 'BSIT', '4', '9567561708', 'ailesjoana5713@gmail.com', '', '', '', ''),
(257, '1801941', 'Angeles, Fitzkirk John Paris', 'M', 'BSIT', '4', '9055232128', 'Fitzkirkangeles@gmail.com', '', '', '', ''),
(258, 'C21102345', 'Argarin, John Roger V.', 'M', 'BSIT', '4', '9052428036', 'johnrogerargarin@gmail.com', '', '', '', ''),
(259, 'C21102314', 'Bagalihog, Joy C.', 'F', 'BSIT', '4', '9105656521', 'joyieejoy25@gmail.com', '', '', '', ''),
(260, 'C21102496', 'Bano, Fharson B.', 'M', 'BSIT', '4', '9502480153', 'fharson31@gmail.com', '', '', '', ''),
(261, 'C21102316', 'Barrio, Veberly B.', 'F', 'BSIT', '4', '9121552085', 'veberlybarrio817@gmail.com', '', '', '', ''),
(262, 'C21104908', 'Bonao, Arby Darryl L.', 'M', 'BSIT', '4', '9456926390', 'clarrylbonao@yahoo.com', '', '', '', ''),
(263, 'C21102318', 'Bondoy, Monica G.', 'F', 'BSIT', '4', '9207064205', 'bondoymonica@gmail.com', '', '', '', ''),
(264, 'C21102312', 'Broqueza, Marisol R.', 'F', 'BSIT', '4', '9815127399', 'broquezamarisol@gmail.com', '', '', '', ''),
(265, 'C21102313', 'Buquid, Edjim C.', 'M', 'BSIT', '4', '9674385665', 'buquidej@gmail.com', '', '', '', ''),
(266, 'C21101121', 'Cavite, Lea Jean S.', 'F', 'BSIT', '4', '9975124769', 'lecavite@my.cspc.edu.ph', '', '', '', ''),
(267, 'C21102499', 'Colarina, Niel Jay A.', 'M', 'BSIT', '4', '9959075921', 'ColarinaNieljay@gmail.com', '', '', '', ''),
(268, 'C21104411', 'Examinada, Edlyn Joan Marie', 'F', 'BSIT', '4', '9605755218', 'edlyn.examinada@gmail.com', '', '', '', ''),
(269, 'C21103894', 'Fabul, Adrian L.', 'M', 'BSIT', '4', '9662744851', 'adrianfabul28@gmail.com', '', '', '', ''),
(270, '1801194', 'Ignao, Criselle B.', 'F', 'BSIT', '4', '9124502183', 'ignaocriselle85@gmail.com', '', '', '', ''),
(271, 'C21102342', 'Lomeda, John Francis Buffe', 'M', 'BSIT', '4', '9604686389', 'kokoylemonada@gmail.com', '', '', '', ''),
(272, 'C21102351', 'Nagal, John Llenard P.', 'M', 'BSIT', '4', '9567201068', 'nagaljohnllenard@gmail.com', '', '', '', ''),
(273, '1902999', 'Navelino, John Phillip F.', 'M', 'BSIT', '4', '9484506580', '', '', '', '', ''),
(274, 'C21102307', 'Paje, Jan Fredriz S.', 'M', 'BSIT', '4', '9464145840', 'jpnavelino203@gmail.com', '', '', '', ''),
(275, 'C21102361', 'Pastoral, Jesus C.', 'M', 'BSIT', '4', '9487416973', 'jespascer@gmail.com', '', '', '', ''),
(276, 'C21101190', 'Pidoc, Ralph Dexter Rhey A.', 'M', 'BSIT', '4', '9092317038', 'dexterpidoc@gmail.com', '', '', '', ''),
(277, 'C21102370', 'Rempillo, Mike Jr. L.', 'M', 'BSIT', '4', '9305304024', 'mikelayderos0@gmail.com', '', '', '', ''),
(278, 'C21102372', 'Sabido, Crizzalie M.', 'F', 'BSIT', '4', '9557117946', 'cmsabido17@gmail.com', '', '', '', ''),
(279, 'C21101191', 'Sandrino, Cyrus David B.', 'M', 'BSIT', '4', '9466449877', 'sandrinocyrus@gmail.com', '', '', '', ''),
(280, 'C21102375', 'Sangreo, Althea Irish M.', 'F', 'BSIT', '4', '9515375192', 'teyasangreo@gmail.com', '', '', '', ''),
(281, 'C21102377', 'Sapalaran, Rodel Jr. C.', 'M', 'BSIT', '4', '9519616336', 'rodelsapalaran030@gmail.com', '', '', '', ''),
(282, 'C21100464', 'Shirai, John Masahiro B.', 'M', 'BSIT', '4', '9150323682', 'fnaly63@gmail.com', '', '', '', ''),
(283, 'C21102388', 'Valenzuela, Diana Joy C.', 'F', 'BSIT', '4', '9300788945', 'divalenzuela@my.cspc.edu.ph', '', '', '', ''),
(284, 'C21102507', 'Vinas, Lyka Mae Francisquete', 'F', 'BSIT', '4', '9707899870', 'lykamae18vinas@gmail.com', '', '', '', ''),
(285, 'C21102303', 'Abitan, Jomel L.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(286, 'C21102299', 'Alvaro, Jonalyn G.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(287, 'C21102297', 'Amaro, Maria Rica B.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(288, 'C21101163', 'Baldoza, Eileen G.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(289, 'C21104636', 'Bas, Kristian P.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(290, 'C20100157', 'Ca?da, Hernaliza B.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(291, 'C21101220', 'Canonce, Reymond D.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(292, 'C21102326', 'Carpo, John Francis C.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(293, 'C21102498', 'Clorado, Shiela A.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(294, 'C21101303', 'Colarina, Peter Kenjie', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(295, '1400042', 'Cordez, Tradh General', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(296, 'C21102328', 'Dichoso, Christine Joy L.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(297, 'C21101222', 'Divinasflores, Jirah Q.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(298, 'C21102501', 'Espedillon, Marealie C.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(299, 'C21101167', 'Felices, Florence Kyle D.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(300, 'C21102333', 'Follosco, Blessy Hyacinth L.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(301, 'C21101205', 'Gamilo, John Martine L.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(302, 'C21102504', 'Lanzuela, Joseph E.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(303, 'C21102341', 'Lim, Sean Howard N.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(304, 'C21101245', 'Llorin, Mark Anthony A.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(305, 'C21103373', 'Maniscan, Mark Glandestine L.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(306, 'C21102348', 'Margate, Vinz Christian T.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(307, 'C21101290', 'Obias, Mc Angelo B.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(308, '1100734', 'Olaso, Jayson Alix', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(309, 'C21101147', 'Pajenago, Keven Jahn C.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(310, 'C21102366', 'Ranido, Marife O.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(311, 'C21102368', 'Refereza, Marylie L.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(312, 'C21102373', 'Samillano, Niel Marc M.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(313, 'C21102376', 'Sanorjo, Hazel Anne C.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(314, 'C21102381', 'Sernande, Ma.Henna Fe B.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(315, 'C21103064', 'Soreta, April joy B.', 'F', 'BSIT', '4', '', '', '', '', '', ''),
(316, 'C21102383', 'Togores, Kenneth P.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(317, 'C21102389', 'Valenzuela, Marvin L.', 'M', 'BSIT', '4', '', '', '', '', '', ''),
(318, '221002424', 'Africa, John Lloyd N.', 'M', 'BSIT', '3', '9701246965', 'affricajhonloyd70@gmail.com', '', '', '', ''),
(319, '221002106', 'Aguilar, Kristhan B.', 'M', 'BSIT', '3', '9273777796', 'sthanaguilar7@gmail.com', '', '', '', ''),
(320, '221006448', 'Azurin, Zandra Marie D.', 'F', 'BSIT', '3', '9093144972', 'zandramarieazurin@gmail.com', '', '', '', ''),
(321, '221001140', 'Bagacina, Michael Jay C.', 'M', 'BSIT', '3', '9516218946', 'michaeljaycatanguibagacina@gmail.com', '', '', '', ''),
(322, '221001141', 'Bagacina, Richie B.', 'M', 'BSIT', '3', '9673464146', 'richiebetito@gmail.com', '', '', '', ''),
(323, '221007867', 'Barbonio, Rommel E.', 'M', 'BSIT', '3', '9709458187', 'rommel.e.b20@gmail.com', '', '', '', ''),
(324, '221006328', 'Belza, Princess Hyancinth I.', 'F', 'BSIT', '3', '9319488658', 'bprincesshyacinth@gmail.com', '', '', '', ''),
(325, '221006094', 'Belza, Russel Wayne', 'M', 'BSIT', '3', '9184397043', 'rsslwynblzplcds13@gmail.com', '', '', '', ''),
(326, '1903125', 'Blanquera, John Lloyd Paculan', 'M', 'BSIT', '3', '9511065998', 'johnlloydblanquera2306@gmail.com', '', '', '', ''),
(327, '221001929', 'Borela, John Errol N.', 'M', 'BSIT', '3', '9456704123', 'borelaerrol@gmail.com', '', '', '', ''),
(328, '221006265', 'Bueno, Jhana A.', 'F', 'BSIT', '3', '9303477097', 'jhanabueno0204@gmail.com', '', '', '', ''),
(329, '221007131', 'Casquio, John Lloyd M.', 'M', 'BSIT', '3', '9055970479', 'casquiojohnlloyd09@gmail.com', '', '', '', ''),
(330, '221002220', 'Cleofe, Liza Mae B.', 'F', 'BSIT', '3', '9810586557', 'lizamaebuenocleofe@gmail.com', '', '', '', ''),
(331, 'C20101381', 'Delamitas, Justine Karl B.', 'M', 'BSIT', '3', '9564759710', 'kyledelamitas12@gmail.com', '', '', '', ''),
(332, '221006456', 'Gaa, Lenard Anthony A.', 'M', 'BSIT', '3', '9774751081', 'lenardanthonygaa@gmail.com', '', '', '', ''),
(333, '221001341', 'Lagdaan, Shann Arlly P.', 'M', 'BSIT', '3', '9564024886', 'lagdaanshannarlly@gmail.com', '', '', '', ''),
(334, '221002218', 'Llabres, Mark P.', 'M', 'BSIT', '3', '9281840580', 'llabresmark2004@gmail.com', '', '', '', ''),
(335, '221002343', 'Luzadas, Katrina G.', 'F', 'BSIT', '3', '9381636405', 'katrinag.luzadas@gmail.com', '', '', '', ''),
(336, '221006016', 'Maat, Jhonbrix *.', 'M', 'BSIT', '3', '9511367366', 'jhonbrixbislumbre1223@gmail.com', '', '', '', ''),
(337, '221006581', 'Masapol, Janice A.', 'F', 'BSIT', '3', '9306867329', 'Unicemasapol@gmail.com', '', '', '', ''),
(338, '221001608', 'Matias, Akia Joshua S.', 'M', 'BSIT', '3', '9669865306', 'jmatz14@outlook.com', '', '', '', ''),
(339, '221001829', 'Monte, Florian L.', 'F', 'BSIT', '3', '9478261327', 'monteflorian88@gmail.com', '', '', '', ''),
(340, '221006520', 'Moreno, Menard A.', 'M', 'BSIT', '3', '9065741386', 'menardmoreno127@gmail.com', '', '', '', ''),
(341, '221001396', 'Moreno, Vincent Anthony H.', 'M', 'BSIT', '3', '9380269488', 'morenovah@gmail.com', '', '', '', ''),
(342, '221001398', 'Niebres, Jobert C.', 'M', 'BSIT', '3', '9914114108', 'jobertniebres@gmail.com', '', '', '', ''),
(343, '221001602', 'Olvara, Ken Francis I.', 'M', 'BSIT', '3', '9319984913', 'olvara87@gmail.com', '', '', '', ''),
(344, '221002199', 'Pacer, Catherine S.', 'F', 'BSIT', '3', '9701649834', 'pacercatherine@gmail.com', '', '', '', ''),
(345, '221006758', 'Pacleta, Barnett Andrei D.', 'M', 'BSIT', '3', '9517105685', 'andreipacleta@gmail.com', '', '', '', ''),
(346, '221002268', 'Paga, John Lawrence A.', 'M', 'BSIT', '3', '9465094471', 'Johnpaga122@gmail.com', '', '', '', ''),
(347, '221006536', 'Pili, Norman Errol E.', 'M', 'BSIT', '3', '9915528360', 'normanpili13@gmail.com', '', '', '', ''),
(348, 'C21103364', 'Principe, John Niño A.', 'M', 'BSIT', '3', '9385151539', 'principejohn860@gmail.com', '', '', '', ''),
(349, '221001465', 'Ramales, Lyle Mathew S.', 'M', 'BSIT', '3', '9771463329', 'lyleramales49@gmail.com', '', '', '', ''),
(350, '221001573', 'Saltarin, Jeremi E.', 'M', 'BSIT', '3', '9174203249', 'jeremisaltarin17@gmail.com', '', '', '', ''),
(351, '221007520', 'Suyat, Jeremy T.', 'M', 'BSIT', '3', '9948055991', 'suyat003@gmail.com', '', '', '', ''),
(352, '221001525', 'Tienes, Jomel G.', 'M', 'BSIT', '3', '9666578476', 'jomeltienes00@gmail.com', '', '', '', ''),
(353, '221000889', 'Tomagan, Maegil M.', 'M', 'BSIT', '3', '9917794497', 'tomaganmaegil@gmail.com', '', '', '', ''),
(354, '221002134', 'Villamer, Raselle O.', 'M', 'BSIT', '3', '9305695585', 'villamerraselle@gmail.com', '', '', '', ''),
(355, '221001117', 'Abagat, Alexcirus A.', 'M', 'BSIT', '3', '9121326593', 'alexcirusabagat@gmail.com', '', '', '', ''),
(356, '221006755', 'Arididon, Adeline Rose C.', 'M', 'BSIT', '3', '9773733718', 'adelinearididon4@gmail.com', '', '', '', ''),
(357, '221001159', 'Beltran, Ianclark N.', 'F', 'BSIT', '3', '9496182093', 'ianclarkbeltran08@gmail.com', '', '', '', ''),
(358, '221006844', 'Belza, Jeremiah L.', 'M', 'BSIT', '3', '9957749916', 'jeremiahleebelza@gmail.com', '', '', '', ''),
(359, '221006465', 'Bergantin, Mae Anne L.', 'M', 'BSIT', '3', '9458071078', 'maeannebergantin@gmail.com', '', '', '', ''),
(360, '221007012', 'Beriña, Raxine D.', 'M', 'BSIT', '3', '9953407873', 'raxineberina@gmail.com', '', '', '', ''),
(361, '221007130', 'Cambri, Lora jean N.', 'F', 'BSIT', '3', '9126741407', 'lorajeancambri1015@gmail.com', '', '', '', ''),
(362, '221006724', 'Cedron, Danica S.', 'M', 'BSIT', '3', '9917814620', 'cedrondanicasolis@gmail.com', '', '', '', ''),
(363, '221006868', 'Cuarteros, Christine joie *.', 'M', 'BSIT', '3', '9484251437', 'cuarteroschristinejoie@gmail.com', '', '', '', ''),
(364, '221007133', 'Curva, Ma. Maribelle V.', 'M', 'BSIT', '3', '9163483079', 'mamaribellecurva@gmail.com', '', '', '', ''),
(365, '221006654', 'De Lima, Joshua Philip II I.', 'F', 'BSIT', '3', '9935629030', 'josdelima@my.cspc.edu.ph', '', '', '', ''),
(366, '221007013', 'Estorninos, Sophia B.', 'M', 'BSIT', '3', '9309198612', 'sophiaestorninos39@gmail.com', '', '', '', ''),
(367, '221007950', 'Gabatin, Johnpaul C.', 'F', 'BSIT', '3', '9465823368', '', '', '', '', ''),
(368, '221006719', 'Hosana, Joe Harris D.', 'M', 'BSIT', '3', '9278715113', 'joeharrishosana2003@gmail.com', '', '', '', ''),
(369, '221001350', 'Lascano, Kristine B.', 'M', 'BSIT', '3', '9923267678', 'lascanokris0@gmail.com', '', '', '', ''),
(370, '221007763', 'Layron, Debie S.', 'M', 'BSIT', '3', '9508890144', 'debielayron38@gmail.com', '', '', '', ''),
(371, '221001949', 'Marbella, Jeamer B.', 'M', 'BSIT', '3', '9267718797', 'jemarbella@my.cspc.edu.ph', '', '', '', ''),
(372, 'C21100317', 'Mediado, Jhen Siasnin L.', 'F', 'BSIT', '3', '9067060519', 'mediadojhensiasnin@gmail.com', '', '', '', ''),
(373, '221006714', 'Miday, Shella May G.', 'M', 'BSIT', '3', '9456806082', 'shellamaymiday@gmail.com', '', '', '', ''),
(374, '221001393', 'Mirandilla, Alexander N.', 'F', 'BSIT', '3', '9703075742', 'alexandermirandilla246@gmail.com', '', '', '', ''),
(375, '221006409', 'Notorio, Erlan', 'M', 'BSIT', '3', '9319172541', 'colombitayerlan@gmail.com', '', '', '', ''),
(376, '221006972', 'Obrero, Mark Ronel L.', 'F', 'BSIT', '3', '9095592346', 'ronelobrero23@gmail.com', '', '', '', ''),
(377, '221001070', 'Orcega, Sheryn Mae T.', 'M', 'BSIT', '3', '9917196476', 'orcegasheryn@gmail.com', '', '', '', ''),
(378, '221006779', 'Ortega, Joseph G.', 'M', 'BSIT', '3', '9456918685', 'jmo2974@gmail.com', '', '', '', ''),
(379, '221006887', 'Osea, Ricardo F.', 'M', 'BSIT', '3', '9519814163', 'osearicardo18@gmail.com', '', '', '', ''),
(380, '221006919', 'Paat, Ronan Gabriel V.', 'M', 'BSIT', '3', '9123371650', 'r07nangab@gmail.com', '', '', '', ''),
(381, '221007175', 'Pasamon, Jinwel I.', 'F', 'BSIT', '3', '9089190873', 'jinwel.pasamon@gmail.com', '', '', '', ''),
(382, '221007097', 'Pentecostes, Rainier A.', 'M', 'BSIT', '3', '9925984863', 'rainierpentecostes@gmail.com', '', '', '', ''),
(383, '221001428', 'Poopalaretnam, Meg Rhyan D.', 'M', 'BSIT', '3', '9919722639', 'megrhyan87@gmail.com', '', '', '', ''),
(384, '221007147', 'Saburnido, Sunshine Q.', 'M', 'BSIT', '3', '9398060368', 'saburnidoshine@gmail.com', '', '', '', ''),
(385, '221001501', 'Saguit, Maybelyn O.', 'M', 'BSIT', '3', '9462830428', 'saguitmaybelyn@gmail.com', '', '', '', ''),
(386, '221006528', 'Sunga, Jhon Francis M.', 'M', 'BSIT', '3', '9914112840', 'jhfrancis504@gmail.com', '', '', '', ''),
(387, '221007198', 'Tomenio, Lealyn A.', 'M', 'BSIT', '3', '9973077334', 'lealyntomenio9@gmail.com', '', '', '', ''),
(388, 'C21102706', 'Valenzuela, Jelyn L.', 'M', 'BSIT', '3', '9467455811', 'yhenvalenzuela019@gmail.com', '', '', '', ''),
(389, '221007977', 'Villamero, Mechelle R.', 'M', 'BSIT', '3', '9484504422', 'mevillamero@my.cspc.edu.ph', '', '', '', ''),
(390, '221001555', 'Villanueva, Abigail C.', 'M', 'BSIT', '3', '9772370942', 'abigailvillanueva601@gmail.com', '', '', '', ''),
(391, '2410038', 'Abalos, Ronel L.', 'M', 'BSIT', '1', '9692485167', 'abalosronel19@gmail.com', '', '', '', ''),
(392, '2410045', 'Abante, Daryl M.', 'M', 'BSIT', '1', '9122498850', 'darylabante38@gmail.com', '', '', '', ''),
(393, '2410716', 'Andalis, Junilyn B.', 'F', 'BSIT', '1', '9161612528', 'junilynandalis6@gmail.com', '', '', '', ''),
(394, '2410717', 'Andayog, Jay Clifford V.', 'M', 'BSIT', '1', '9073546874', 'cliffordandayogjay@gmail.com', '', '', '', ''),
(395, '2410738', 'Balares, Janet B.', 'F', 'BSIT', '1', '9919593861', 'janetbalares4@gmail.com', '', '', '', ''),
(396, '2410743', 'Bañaria, Jaika Mae N.', 'F', 'BSIT', '1', '9982782033', 'banariajai@gmail.com', '', '', '', ''),
(397, '2410778', 'Berido, Keaneth Dave S.', 'M', 'BSIT', '1', '9926225483', 'keanethdaveberido@gmail.com', '', '', '', ''),
(398, '2410788', 'Bermido, Christian A.', 'M', 'BSIT', '1', '9380046163', 'christianbermido00000@gmail.com', '', '', '', ''),
(399, '2410798', 'Biag, John Mon Angelo O.', 'M', 'BSIT', '1', '9539920159', 'biagjohnmonangelo@gmail.com', '', '', '', ''),
(400, '2411975', 'Bisenio, Christine Mae O.', 'F', 'BSIT', '1', '9810584245', 'Tinaybisenio@gmail.com', '', '', '', ''),
(401, '2410852', 'Camasis, Axl P.', 'M', 'BSIT', '1', '9278212269', 'camasisaxl@gmail.com', '', '', '', ''),
(402, '232000023', 'Cañaveral Jr., Leonardo C.', 'M', 'BSIT', '2', '9519084822', 'linardcenteno20@gmail.com', '', '', '', ''),
(403, '2410855', 'Canonce, Sam D.', 'M', 'BSIT', '1', '9776714630', '', '', '', '', ''),
(404, '2410869', 'Cometa, Andrei E.', 'M', 'BSIT', '1', '9924737569', 'cometaandrei7@gmail.com', '', '', '', ''),
(405, '2410902', 'Dato, Leizel B.', 'F', 'BSIT', '1', '9655525020', 'leizeldato23@gmail.com', '', '', '', ''),
(406, '2412846', 'Docot, John Lloyd T.', 'M', 'BSIT', '1', '9511036118', 'docotjohnlloyd@gmail.com', '', '', '', ''),
(407, '2410943', 'Duterte, Gwen Stephany B.', 'M', 'BSIT', '1', '9810593013', 'stephanyduterte@gmail.com', '', '', '', ''),
(408, '2410951', 'Escolano, Marx Arian N.', 'M', 'BSIT', '1', '9911025157', 'escolanomarxarian@gmail.com', '', '', '', ''),
(409, '2412848', 'Fermante, Joseph Airon T.', 'M', 'BSIT', '1', '9817011282', 'fermantejosephairon@gmail.com', '', '', '', ''),
(410, '2410954', 'Fernandez, Bryan Kenneth G.', 'M', 'BSIT', '1', '9512740648', 'bryanfearnandez@gmail.com', '', '', '', ''),
(411, '2410956', 'Galan, Maria Carla C.', 'F', 'BSIT', '1', '9506778631', 'mariacarlagalan77@gmail.com', '', '', '', ''),
(412, '2410958', 'Gelvero, Marku T.', 'M', 'BSIT', '1', '9853422491', 'markumama@gmail.com', '', '', '', ''),
(413, '2411430', 'Ignacio, Jelo F.', 'M', 'BSIT', '1', '9659453916', '', '', '', '', ''),
(414, '2410969', 'Lacoste, Clint Edgar C.', 'M', 'BSIT', '1', '9973986599', 'clintedgarlacoste@gmail.com', '', '', '', ''),
(415, '2410972', 'Largo, Justin T.', 'M', 'BSIT', '1', '9663226733', 'justinlargo9@gmail.com', '', '', '', ''),
(416, '2410981', 'Ledesma, Angelica B.', 'F', 'BSIT', '1', '9998369753', 'angelica.ledesma111406@gmail.com', '', '', '', ''),
(417, '2410983', 'Leynes, Amira V.', 'F', 'BSIT', '1', '9676396865', 'amiraleynes1@gmail.com', '', '', '', ''),
(418, '2410986', 'Llagas, Kriza Althea R.', 'F', 'BSIT', '1', '9815124781', 'llagaskrizaalthea@gmail.com', '', '', '', ''),
(419, '2410989', 'Lorzano, Jastine Mae G.', 'F', 'BSIT', '1', '9638466854', 'jastinemaegabardalorzano@gmail.com', '', '', '', ''),
(420, '2411010', 'Marcelino, Kurt Lexie C.', 'M', 'BSIT', '1', '9611450383', 'kurtlexiec.marcelino@gmail.com', '', '', '', ''),
(421, '2411015', 'Miranda, Anna Beatrice F.', 'F', 'BSIT', '1', '9914114333', 'mirandaannabeatrice@gmail.com', '', '', '', ''),
(422, '1100150', 'Nagales, Alex Junio', 'M', 'BSIT', '2', '9095763009', 'Alex.nagalex@gmail.com', '', '', '', ''),
(423, '2411021', 'Namoro, Yeshia Kaye C.', 'F', 'BSIT', '1', '9911440103', 'yeshiaa9@gmail.com', '', '', '', ''),
(424, '2411022', 'Nardo, Cathlyn A.', 'F', 'BSIT', '1', '9662704445', '', '', '', '', ''),
(425, '2411024', 'Negrillo, Joemel, Jr. A.', 'M', 'BSIT', '1', '9463920385', 'joemel.negrillo18@gmail.com', '', '', '', ''),
(426, '2411029', 'Olicia, Liezlie Faith V.', 'F', 'BSIT', '1', '9364742452', 'olicialiezlie@gmail.com', '', '', '', ''),
(427, '2411044', 'Panton, Bryan E.', 'M', 'BSIT', '1', '9394755004', 'tuanbryan45@gmail.com', '', '', '', ''),
(428, '2411054', 'Prelligera, Alexander Mari V.', 'M', 'BSIT', '1', '9668704403', 'amvprelligera174@gmail.com', '', '', '', ''),
(429, '2411066', 'Remolacio, Antoniña L.', 'F', 'BSIT', '1', '9128091851', 'antoninalagarto094@gmail.com', '', '', '', ''),
(430, '1100567', 'Saniel, Sammy Morillo', 'M', 'BSIT', '3', '9303992004', 'sasaniel@my.cspc.edu.ph', '', '', '', ''),
(431, '2411102', 'Sergio, Jan Clifford D.', 'M', 'BSIT', '1', '9955994252', 'jancliffordsergio@gmail.com', '', '', '', ''),
(432, '2411104', 'Siguenza, Govanni A.', 'M', 'BSIT', '1', '9637678231', 'Govanisiguenza@gmail.com', '', '', '', ''),
(433, '2411123', 'Tapel, Danica Mae M.', 'F', 'BSIT', '1', '9957325946', 'tapeldanicamae@gmail.com', '', '', '', ''),
(434, '2411146', 'Valenzuela Jr., Noel T.', 'M', 'BSIT', '1', '9487473989', 'noelvalenzuelajr.14@gmail.com', '', '', '', ''),
(435, '2411175', 'Yaguel, Jonard S.', 'M', 'BSIT', '1', '9516215475', 'jonardyaguel@gmail.com', '', '', '', ''),
(436, '2411177', 'Yorobe, Giffen N.', 'M', 'BSIT', '1', '9605931992', 'giffenyorobe.62905@gmail.com', '', '', '', ''),
(437, '221006452', 'Alcantara, Christian Carl E.', 'M', 'BSIT', '3', '9514494409', 'christiancarl.alcantara202002@gmail.com', '', '', '', ''),
(438, '221001125', 'Aleman, Angelyn P.', 'F', 'BSIT', '3', '9486480505', 'angelynaleman16@gmail.com', '', '', '', ''),
(439, 'C20102036', 'Amparado, Ken Jette T.', 'M', 'BSIT', '3', '9955888945', '', '', '', '', ''),
(440, '221001130', 'Arco, John Lhester B.', 'M', 'BSIT', '3', '9761702900', 'johnlhesterborlagdanarco@gmail.com', '', '', '', ''),
(441, '221001138', 'Bables, Von Aries P.', 'M', 'BSIT', '3', '9102190255', 'Vonariesb@gmail.com', '', '', '', ''),
(442, '221007129', 'Baque, John Lloyd L.', 'M', 'BSIT', '3', '9637267212', 'johnlloydbaque@gmail.com', '', '', '', ''),
(443, '221001174', 'Boringot, Rudy Jr. M.', 'M', 'BSIT', '3', '9388911483', 'boringotr@gmail.com', '', '', '', ''),
(444, '221001175', 'Borja, Rey T.', 'M', 'BSIT', '3', '9616563885', 'reyborja853@gmail.com', '', '', '', ''),
(445, '221007801', 'Britanico, Ryan Christopher Q.', 'M', 'BSIT', '3', '9568127903', 'ryan.06.2001@gmail.com', '', '', '', ''),
(446, '221001190', 'Buenconsejo, Gwyneth Layosa', 'F', 'BSIT', '3', '9923268146', 'gwbuenconsejo@my.cspc.edu.ph', '', '', '', ''),
(447, '221008018', 'Cabebe, Christian Ron', 'M', 'BSIT', '3', '9386050184', 'christiancabebe01@gmail.com', '', '', '', ''),
(448, '221001267', 'Capistrano, Sean Matthew C.', 'M', 'BSIT', '3', '9634565119', 'secapistrano@my.cspc.edu.ph', '', '', '', ''),
(449, '221001807', 'Ciruelos, Mark Conrad B.', 'M', 'BSIT', '3', '9463597833', 'markconradbuenociruelos@gmail.com', '', '', '', ''),
(450, '221001286', 'Desquitado, Yuri G.', 'M', 'BSIT', '3', '9617309365', 'yuridesquitado027@gmail.com', '', '', '', ''),
(451, '221001293', 'Escuro, Angeline C.', 'F', 'BSIT', '3', '9481302363', 'angelineescuro7@gmail.com', '', '', '', ''),
(452, '221001296', 'Frondozo, Christine Joy H.', 'F', 'BSIT', '3', '9690857739', 'christinefrondozo29@gmail.com', '', '', '', ''),
(453, '221007836', 'Froyalde, Grazela Khrystal S.', 'F', 'BSIT', '3', '9569409432', 'fgrazellakhrystal@gmail.com', '', '', '', ''),
(454, '221001322', 'Gastilo, Frances M.', 'M', 'BSIT', '3', '9070362535', 'francesgastilo9@gmail.com', '', '', '', ''),
(455, '221006133', 'Gastilo, Loida B.', 'M', 'BSIT', '3', '9203993238', 'Gastiloloida05@gmail.com', '', '', '', ''),
(456, '221008127', 'Gonzaga, Christian Jay C.', 'M', 'BSIT', '3', '9515706553', 'christianjaygonzaga5@gmail.com', '', '', '', ''),
(457, '221008042', 'Gultiano, Lander jade S.', 'M', 'BSIT', '3', '9271603950', 'landergultiano22@gmail.com', '', '', '', ''),
(458, '221007138', 'Kingking, Herlene Rose B.', 'F', 'BSIT', '3', '9219212375', 'herlenekingking@gmail.com', '', '', '', ''),
(459, '221001948', 'Libreja, Francine Louise N.', 'F', 'BSIT', '3', '9511132251', 'francinialouisiana@gmail.com', '', '', '', ''),
(460, '221001392', 'Melitante, Alexander S.', 'M', 'BSIT', '3', '9951311435', 'melitantealexander3@gmail.com', '', '', '', ''),
(461, '221007745', 'Nachor, Blessing C.', 'F', 'BSIT', '3', '9304287312', 'nablessing@my.cspc.edu.ph', '', '', '', ''),
(462, '221006391', 'Pornillos, Christopher T.', 'M', 'BSIT', '3', '9361394261', 'christopherpornillos@gmail.com', '', '', '', ''),
(463, '221007145', 'Rabino, Jorhi Rainwater S.', 'M', 'BSIT', '3', '9061315743', 'jorhirainwater31@gmail.com', '', '', '', ''),
(464, '221007191', 'Rancapollo, Andrea nicole -.', 'F', 'BSIT', '3', '9055973697', 'Nicolerado06@gmail.com', '', '', '', ''),
(465, '221007519', 'Ricabuerta, Jerald B.', 'M', 'BSIT', '3', '9381992165', 'jeralricabuerta16@gmail.com', '', '', '', ''),
(466, '221001469', 'Robrigado, Mikylla T.', 'F', 'BSIT', '3', '9460696241', 'robrigadomikylla@gmail.com', '', '', '', ''),
(467, '221001470', 'Roxas, Loren d.', 'M', 'BSIT', '3', '9811903940', 'lorenroxas199@gmail.com', '', '', '', ''),
(468, '221001998', 'Sabater, Joshua F.', 'M', 'BSIT', '3', '9635002746', 'sabater.joshua16@gmail.com', '', '', '', ''),
(469, '221001547', 'Velasco, Christian Paul E.', 'M', 'BSIT', '3', '9511134777', 'Christianpaulvelasco95@gmail.com', '', '', '', ''),
(470, '221006369', 'Velasquez, Justine B.', 'M', 'BSIT', '3', '9163742303', 'justin.velasquez2103@gmail.com', '', '', '', ''),
(471, '2410047', 'Abarro, Johnlery A.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(472, '2412542', 'Abinal, Joland G', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(473, '2410049', 'Alberto Jr., Elmar B.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(474, '2410718', 'Antioquia, Ian Nash D.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(475, '2410728', 'Awa, Ma. Felisa B.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(476, '2410746', 'Barra, Karl Dave B.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(477, '2410765', 'Baylon, Tobey Ludwig B', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(478, '2410786', 'Beriña Jr., Raul B.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(479, '2410808', 'Bolalin, Jud Aci Dassler A.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(480, '232000019', 'Camasis, Cherrylyn Sofa', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(481, '2410871', 'Cornelio, Kenneth Jay M.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(482, '2410875', 'Coronel, Rosie A.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(483, '2410905', 'Dayag, Francis Adrian S.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(484, '2410928', 'Dela Torre, Jervi B.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(485, '2410942', 'Durante, Richangel Adrian S.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(486, '2410946', 'Elevado, John Paul R.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(487, '2410947', 'Ella, Kiara Lohan V.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(488, '2410948', 'Eloreta, Jake Roi B.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(489, '2410952', 'Estadilla, Gabriel M.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(490, '2410961', 'Guinoo, Marl Vincent P.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(491, '2411429', 'Ibo, Allan Gabriel O', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(492, '2410975', 'Lascano, Justine Rico C.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(493, '2410979', 'Laynes, Janel I.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(494, '2410982', 'Leron, Clariz I.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(495, '2411432', 'Manaog, Aira Geahna M.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(496, '2411019', 'Montion, Charlotte M.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(497, '2411023', 'Nasol, Darwin C.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(498, '2411433', 'Navida, Vianne Louie E', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(499, '2411434', 'Nollora, Jayson L.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(500, '2410275', 'Omambac, Mark Ernest M.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(501, '2411035', 'Orante, Daniella Rushel N.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(502, '2411048', 'Pecundo, Martina Eugene E.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(503, '2411055', 'Priela, Shey-Ann B.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(504, '2411059', 'Ramboyong, Roselle V.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(505, '2411067', 'Rendon, John Paul M.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(506, '2411076', 'Saliente, Marie Belle O', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(507, '2411089', 'Segubiense, James Dominic A.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(508, '2412861', 'Simbulan, Merly R.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(509, '2411108', 'Sto. Domingo Jr., Ruben E.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(510, '2411121', 'Talania, Jayson V.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(511, '2411129', 'Tomas, Vic Anthony S.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(512, '2411130', 'Tombado, Alhea T.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(513, '2411139', 'Undecimo, Aljhune F.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(514, '2411147', 'Valera, Jon Andrei C.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(515, '2411151', 'Villamer, Esielen B', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(516, '2412168', 'Acbang, Carl Anthony S.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(517, '2410048', 'Agravante, Anika O.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(518, '2410050', 'Alipio, Jusminne S.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(519, '2410719', 'Aringo, Chestone M.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(520, '2410771', 'Benico, John Rhys B.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(521, '2410774', 'Benosa, Carl Vincent S.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(522, '2410285', 'Berdol, Jan Harold V.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(523, '2410792', 'Bermido, Gabriel Jose L.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(524, '2410795', 'Bernas, Jonh Andrie P.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(525, '2410857', 'Casano, Zaimon B.', 'M', 'BSIT', '1', '', '', '', '', '', '');
INSERT INTO `tblstudents` (`Id`, `studentId`, `fullName`, `sex`, `course`, `year`, `contactNo`, `email`, `password`, `rfidNumber`, `pcNumber`, `dateCreated`) VALUES
(526, '2412622', 'Cay, Adrian E.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(527, '2410866', 'Cimini, John Andrey P.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(528, '2412625', 'Colico, Arjay O.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(529, '2411428', 'Cornelio, Roland D.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(530, '2410927', 'De La Torre, John Louis T', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(531, '2410949', 'Elpedes, Mia Cassidy Jolieth B.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(532, '2410950', 'Equitan, Jossa T.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(533, '2410957', 'Gatpandan, Charles Xyrone P.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(534, '2410962', 'Hermoso, Vincent L.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(535, '2410965', 'Ibo, Jonabel L.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(536, '2411431', 'Indico, Monique M.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(537, '2412850', 'Jacob, Yvonne Ericka P.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(538, '2410977', 'Lastrollo, Pia Jane R.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(539, '2411506', 'Llagas, Mark Andrew B.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(540, '2412852', 'Mata, Albert Jerome P.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(541, '2411156', 'Miñulas, Analiza B.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(542, '2411018', 'Mondejar, Angelo Jay P.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(543, '2411435', 'Oarde, John Carlo C.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(544, '2411436', 'Penolio, Uriel R.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(545, '2411057', 'Rabino, Angel Charm S.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(546, '2411060', 'Raña, Ma. Franchezka S.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(547, '2412856', 'Razon, Christian A.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(548, '2411062', 'Regino, John Paul L.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(549, '2411070', 'Robosa, Gener B.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(550, '2412079', 'Rull, Justin H', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(551, '2411074', 'Sacueza, Kyle Yvan V.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(552, '2411085', 'Sarza, Rey E.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(553, '2411088', 'Segarra, Kenneth Stefen G.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(554, '2411107', 'Sombrero, Joven Joshua N.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(555, '2411111', 'Sumpay, Carmel G.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(556, '2411125', 'Tolentino, Alby Avery A.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(557, '2411140', 'Valencia, Carlos Miguel N.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(558, '2411142', 'Valenzuela Jr., Edwin C.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(559, '2411150', 'Veras, Joshua Paul D.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(560, '2411173', 'Villarin, Benjie M.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(561, '2412585', 'Alaraz, Earl Crismar B.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(562, '2412586', 'Aninang, Jamilla H.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(563, '2412587', 'Arcilla, Justine Lee M.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(564, '2412588', 'Azarcon, Adrian C.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(565, '2412600', 'Baladia, Albert Jr. Lacanaria', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(566, '2410735', 'Balaguer, Ian Cedrick M.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(567, '2412601', 'Barela, Jhon Lloyd B.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(568, '2410763', 'Barra, Rhieza B.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(569, '2410766', 'Bea, Charlotte T.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(570, '2412602', 'Benosa, Karen O.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(571, '2412605', 'Beralde, Ace F.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(572, '2410800', 'Biasca, Jeremie S.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(573, '2412607', 'Bolante, Shannel Queen L.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(574, '2410810', 'Bonganay, Jan Andrei M.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(575, '2412608', 'Brizuela, James Rey B.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(576, '2410843', 'Bustos, Jeric Neil M.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(577, '2410848', 'Cabal, Chelsea Elyce M.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(578, '2410850', 'Cahulogan, Cristine May R.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(579, '2412623', 'Cereno, Ana R.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(580, '2412624', 'Cerilo, Zyrus Vien D.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(581, '2412649', 'Cuevas, Princess Catherine S.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(582, '2410941', 'Duay, Richel S.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(583, '2412849', 'Haber, Mark Gerald L.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(584, '2410963', 'Ibarreta, Clarize L.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(585, '2412851', 'Lagrimas, Anghel L.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(586, '2410971', 'Lara, Renz Kylle S.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(587, '2410984', 'Listangco, Andrei S.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(588, '2411009', 'Mamansag, Dancel M.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(589, '2411011', 'Martinez, Reece Henri A.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(590, '2411017', 'Molina, Mark Yien A.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(591, '2412853', 'Morillo, Nelessa P.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(592, '221007970', 'Pacer, Gwen Xavier J.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(593, '2411046', 'Pascua, Melchor Emmanuel C.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(594, '2412855', 'Perez, Princess Rose R', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(595, '2411052', 'Policarpio, Jian Eves B.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(596, '2411061', 'Rañon, Ma. Phoebe N.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(597, '2412858', 'Rico, Gwen Stephane M.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(598, '2411072', 'Romano, John Kenneth H.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(599, '2411082', 'Sapian, Angel thom A.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(600, '2412860', 'Satuito, Maria Vera Mae O.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(601, '2411081', 'Silava, Mark Joshua F.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(602, '2411119', 'Talamor, John Mark A.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(603, '2412862', 'Tercero, Princis Diana D.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(604, '2411148', 'Vargas, Jesalyn C.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(605, '2410044', 'Abanes, Francine Joy A.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(606, '2410720', 'Armillo, Edith S.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(607, '2410726', 'Atos, Danielle Cherisse M.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(608, '2410740', 'Baldoza, Jasmine T', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(609, '2410784', 'Beriña, Hazel E.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(610, '2410803', 'Blanco, John Carl B.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(611, '2410806', 'Boaquiña, Jerico B.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(612, '2410814', 'Bricenio, Rafael B.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(613, '2410840', 'Burce, Jua N.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(614, '2410846', 'Cabal, Bea Bianca M.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(615, '2410864', 'Cedron, Anna Marlly', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(616, '2410926', 'De la Cruz, Janelle D.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(617, '2410933', 'Delloson, Nicole A.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(618, '2410937', 'Dimacali Jr., Edgardo I.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(619, '2410939', 'Doctolero, Axl Rama H.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(620, '2410960', 'Gorobao, Jesel Mae C.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(621, '2410966', 'Imperial, Benedic P.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(622, '2410970', 'Lagatic, Aris Robert S.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(623, '2410978', 'Laurza, Eddbert R.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(624, '2410987', 'Lomapag, Kyla N.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(625, '2411012', 'Martirez, Kyle Daniel F.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(626, '2411016', 'Molina, Jhazmine M.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(627, '2411020', 'Morata, Luther John S.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(628, '2411971', 'Nual, Cris Ivan M.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(629, '2411028', 'Olicia, Emmanuel R.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(630, '2411037', 'Pabelonia, Rizza V.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(631, '2412854', 'Pandes, Angel Nicole', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(632, '2411042', 'Panit, Mary Danielle O.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(633, '2411049', 'Penetrante, John Michael T.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(634, '2411050', 'Peñones, April D.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(635, '2411051', 'Platilla, Marcela Ciamel L.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(636, '2411065', 'Relleve, Jillian Mae G.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(637, '2411437', 'Roman, Jessica S.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(638, '2411438', 'Sacdal, Aljanmar N.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(639, '2412859', 'Santor, Jomare M.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(640, '2411092', 'Segui, Ryza Joy S.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(641, '2411113', 'Tabornal, Russel Jade A.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(642, '2411118', 'Tagum, Francis Jay L', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(643, '2411439', 'Tanay, Euniece I.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(644, '2411131', 'Tominio, Angel S.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(645, '2411134', 'Trajada, Junel O.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(646, '2411144', 'Valenzuela Jr., Melchor Jr. D.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(647, '2411152', 'Villanueva, Allysa B.', 'F', 'BSIT', '1', '', '', '', '', '', ''),
(648, '2411176', 'Yaldua, Rey Zaijian R.', 'M', 'BSIT', '1', '', '', '', '', '', ''),
(649, '', '', '', '', '', '', '', '', '', '', ''),
(650, '', '', '', '', '', '', '', '', '', '', ''),
(651, '', '', '', '', '', '', '', '', '', '', ''),
(652, '', '', '', '', '', '', '', '', '', '', ''),
(653, '', '', '', '', '', '', '', '', '', '', ''),
(654, '', '', '', '', '', '', '', '', '', '', ''),
(655, '', '', '', '', '', '', '', '', '', '', ''),
(656, '', '', '', '', '', '', '', '', '', '', ''),
(657, '', '', '', '', '', '', '', '', '', '', ''),
(658, '', '', '', '', '', '', '', '', '', '', ''),
(659, '', '', '', '', '', '', '', '', '', '', ''),
(660, '', '', '', '', '', '', '', '', '', '', ''),
(661, '', '', '', '', '', '', '', '', '', '', ''),
(662, '', '', '', '', '', '', '', '', '', '', ''),
(663, '', '', '', '', '', '', '', '', '', '', ''),
(664, '', '', '', '', '', '', '', '', '', '', ''),
(665, '', '', '', '', '', '', '', '', '', '', ''),
(666, '', '', '', '', '', '', '', '', '', '', ''),
(667, '', '', '', '', '', '', '', '', '', '', ''),
(668, '', '', '', '', '', '', '', '', '', '', ''),
(669, '', '', '', '', '', '', '', '', '', '', ''),
(670, '', '', '', '', '', '', '', '', '', '', ''),
(671, '', '', '', '', '', '', '', '', '', '', ''),
(672, '', '', '', '', '', '', '', '', '', '', ''),
(673, '', '', '', '', '', '', '', '', '', '', ''),
(674, '', '', '', '', '', '', '', '', '', '', ''),
(675, '', '', '', '', '', '', '', '', '', '', ''),
(676, '', '', '', '', '', '', '', '', '', '', ''),
(677, '', '', '', '', '', '', '', '', '', '', ''),
(678, '', '', '', '', '', '', '', '', '', '', ''),
(679, '', '', '', '', '', '', '', '', '', '', ''),
(680, '', '', '', '', '', '', '', '', '', '', ''),
(681, '', '', '', '', '', '', '', '', '', '', ''),
(682, '', '', '', '', '', '', '', '', '', '', ''),
(683, '', '', '', '', '', '', '', '', '', '', ''),
(684, '', '', '', '', '', '', '', '', '', '', ''),
(685, '', '', '', '', '', '', '', '', '', '', ''),
(686, '', '', '', '', '', '', '', '', '', '', ''),
(687, '1900981', 'Elai Sergio', 'F', 'BSIT', '4', '09703081214', 'elaisergio@gmail.com', '', '54321', '4', '2024-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `tblterm`
--

CREATE TABLE `tblterm` (
  `Id` int(10) NOT NULL,
  `termName` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblterm`
--

INSERT INTO `tblterm` (`Id`, `termName`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Third');

-- --------------------------------------------------------

--
-- Table structure for table `tblviewattendance`
--

CREATE TABLE `tblviewattendance` (
  `Id` int(10) NOT NULL,
  `studentId` varchar(50) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `rfidNumber` text NOT NULL,
  `attendanceDate` date NOT NULL,
  `timeIn` time NOT NULL DEFAULT current_timestamp(),
  `timeOut` time NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblattendancelogs`
--
ALTER TABLE `tblattendancelogs`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclassarms`
--
ALTER TABLE `tblclassarms`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclassteacher`
--
ALTER TABLE `tblclassteacher`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblsessionterm`
--
ALTER TABLE `tblsessionterm`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblterm`
--
ALTER TABLE `tblterm`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblviewattendance`
--
ALTER TABLE `tblviewattendance`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblattendance`
--
ALTER TABLE `tblattendance`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `tblattendancelogs`
--
ALTER TABLE `tblattendancelogs`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblclassarms`
--
ALTER TABLE `tblclassarms`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblclassteacher`
--
ALTER TABLE `tblclassteacher`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblsessionterm`
--
ALTER TABLE `tblsessionterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=688;

--
-- AUTO_INCREMENT for table `tblterm`
--
ALTER TABLE `tblterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblviewattendance`
--
ALTER TABLE `tblviewattendance`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
