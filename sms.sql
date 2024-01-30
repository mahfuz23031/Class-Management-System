-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2023 at 01:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`fname`, `lname`, `username`, `email`, `phone`, `password`, `type`) VALUES
('Mahfuzur', 'Rahman', 'admin', 'mahfuzking@gmail.com', '01791261135', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
('MST. Jannatul', 'Ferdous', 'jannat', 'jannat@gamil.com', '01712345612', 'c3ac70501ad99a467f14f62dd4642391', 'teacher'),
('Mahfuzur', 'Rahman', 'mahfuz', 'mahfuzking555@gmail.com', '01791261135', 'e31dd3474905d4269cd24fbd23195c64', 'student'),
('Rudro', 'pranta', 'rudro', 'mahfuz@gmail.com', '0179126113', '9dcff95efdb3db63c77fc28bcecb697b', 'student'),
('Dr. Sujon', 'Ali', 'sujon', 'sujon@gmail.com', '0178934567', '730056bfa3536c8c6f7e70e896963d61', 'teacher'),
('rafiea', 'nusrat', 'rafiea', 'rafiea@gmail.com', '01791261135', 'e31dd3474905d4269cd24fbd23195c64', 'student'),
('Dr. Uzzal Kumer', 'Prodhan', 'uzzal', 'uzzal@gmail.com', '01792341567', 'd41d8cd98f00b204e9800998ecf8427e', 'teacher'),
('Rafiea ', 'Nusrat', 'nusrat', 'r@gmail.com', '01683364783', '23908ccbb8ff74c2759400f4a35dab9b', 'student'),
('Dr. Seikh sujan', 'Ali', 'sujan', 'sujan@gmail.com', '01723456178', '93e05a041435c083504c986de85caba1', 'teacher'),
('@', 'Rahman', 'rahman', 'rahman@gmail.com', '01876453245', 'e9b74cd3c4c1600ee591fd56360b89db', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `roll` varchar(10) NOT NULL,
  `batch` int(10) NOT NULL,
  `course` varchar(100) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id`, `name`, `roll`, `batch`, `course`, `file`) VALUES
(1, 'mahfuz', '19102005', 13, 'Communication Engineering', '19102005.doc'),
(2, 'mahfuz', '19102005', 13, 'DSP', '19102005.doc'),
(3, 'Sumon', '21102004', 15, 'Digital Logic Design', '21102004.doc'),
(4, 'Smita moni roy', '19102032', 13, 'Communication Engineering', '19102032.doc'),
(6, 'Rafiea Nusrat', '19102033', 13, 'Communication Engineering', '19102033.pptx'),
(7, 'Rudro Pantra', '19102041', 13, 'Communication Engineering', '19102041.pptx'),
(8, 'ismail hossen', '19102002', 13, 'Communication Engineering', '19102002.pptx');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `sid` int(30) NOT NULL,
  `name` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `batch` int(12) NOT NULL,
  `status` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`sid`, `name`, `course_name`, `batch`, `status`, `date`, `id`) VALUES
(19102005, 'Mahfuzur Rahman', 'Communication Engineering', 13, 'Present', '2023-02-15', 30),
(19102033, 'Rafiea Nusrat', 'Communication Engineering', 13, 'Absent', '2023-02-15', 31),
(19102005, 'Mahfuzur Rahman', 'Communication Engineering', 13, 'Present', '2023-02-15', 32),
(19102033, 'Rafiea Nusrat', 'Communication Engineering', 13, 'Present', '2023-02-15', 33),
(19102005, 'Mahfuzur Rahman', 'Communication Engineering', 13, 'Present', '2023-02-16', 34),
(19102033, 'Rafiea Nusrat', 'Communication Engineering', 13, 'Present', '2023-02-16', 35),
(19102005, 'Mahfuzur Rahman', 'DSP', 13, 'Present', '2023-02-16', 36),
(19102033, 'Rafiea Nusrat', 'DSP', 13, 'Present', '2023-02-16', 37),
(18102015, 'Abu  Rayhan', 'Communication Engineering', 13, 'Present', '2023-02-16', 38),
(18102018, 'Anik kumer', 'Communication Engineering', 13, 'Present', '2023-02-16', 39),
(19102001, 'Labib  Hossain', 'Communication Engineering', 13, 'Present', '2023-02-16', 40),
(19102002, 'Md. Ismail Hossain', 'Communication Engineering', 13, 'Present', '2023-02-16', 41),
(19102003, 'Md. Touhidul Islam  Rifat', 'Communication Engineering', 13, 'Present', '2023-02-16', 42),
(19102005, 'Mahfuzur Rahman', 'Communication Engineering', 13, 'Present', '2023-02-16', 43),
(19102006, 'Md. Rabiul Islam Rabbi', 'Communication Engineering', 13, 'Present', '2023-02-16', 44),
(19102007, 'Md Sumon Mia', 'Communication Engineering', 13, 'Present', '2023-02-16', 45),
(19102008, 'Anindita Acharjee', 'Communication Engineering', 13, 'Present', '2023-02-16', 46),
(19102010, 'Johura Akter', 'Communication Engineering', 13, 'Absent', '2023-02-16', 47),
(19102012, 'Mehedi khan Rakib', 'Communication Engineering', 13, 'Present', '2023-02-16', 48),
(19102017, 'Mafia  Akter', 'Communication Engineering', 13, 'Present', '2023-02-16', 49),
(19102018, 'Sakib Shahon', 'Communication Engineering', 13, 'Absent', '2023-02-16', 50),
(19102019, 'Md. Rahat Ibne Yusuf', 'Communication Engineering', 13, 'Present', '2023-02-16', 51),
(19102020, 'Md. Abdul Kadir', 'Communication Engineering', 13, 'Present', '2023-02-16', 52),
(19102033, 'Rafiea Nusrat', 'Communication Engineering', 13, 'Absent', '2023-02-16', 53),
(18102015, 'Abu  Rayhan', 'Communication Engineering', 13, 'Present', '2023-02-18', 54),
(18102018, 'Anik kumer', 'Communication Engineering', 13, 'Absent', '2023-02-18', 55),
(19102001, 'Labib  Hossain', 'Communication Engineering', 13, 'Present', '2023-02-18', 56),
(19102002, 'Md. Ismail Hossain', 'Communication Engineering', 13, 'Present', '2023-02-18', 57),
(19102003, 'Md. Touhidul Islam  Rifat', 'Communication Engineering', 13, 'Absent', '2023-02-18', 58),
(19102005, 'Mahfuzur Rahman', 'Communication Engineering', 13, 'Present', '2023-02-18', 59),
(19102006, 'Md. Rabiul Islam Rabbi', 'Communication Engineering', 13, 'Present', '2023-02-18', 60),
(19102007, 'Md Sumon Mia', 'Communication Engineering', 13, 'Present', '2023-02-18', 61),
(19102008, 'Anindita Acharjee', 'Communication Engineering', 13, 'Absent', '2023-02-18', 62),
(19102010, 'Johura Akter', 'Communication Engineering', 13, 'Present', '2023-02-18', 63),
(19102012, 'Mehedi khan Rakib', 'Communication Engineering', 13, 'Present', '2023-02-18', 64),
(19102017, 'Mafia  Akter', 'Communication Engineering', 13, 'Present', '2023-02-18', 65),
(19102018, 'Sakib Shahon', 'Communication Engineering', 13, 'Absent', '2023-02-18', 66),
(19102019, 'Md. Rahat Ibne Yusuf', 'Communication Engineering', 13, 'Present', '2023-02-18', 67),
(19102020, 'Md. Abdul Kadir', 'Communication Engineering', 13, 'Absent', '2023-02-18', 68),
(19102033, 'Rafiea Nusrat', 'Communication Engineering', 13, 'Present', '2023-02-18', 69),
(18102015, 'Abu  Rayhan', 'Communication Engineering', 13, 'Present', '2023-02-19', 70),
(18102018, 'Anik kumer', 'Communication Engineering', 13, 'Present', '2023-02-19', 71),
(19102001, 'Labib  Hossain', 'Communication Engineering', 13, 'Present', '2023-02-19', 72),
(19102002, 'Md. Ismail Hossain', 'Communication Engineering', 13, 'Present', '2023-02-19', 73),
(19102003, 'Md. Touhidul Islam  Rifat', 'Communication Engineering', 13, 'Present', '2023-02-19', 74),
(19102005, 'Mahfuzur Rahman', 'Communication Engineering', 13, 'Absent', '2023-02-19', 75),
(19102006, 'Md. Rabiul Islam Rabbi', 'Communication Engineering', 13, 'Present', '2023-02-19', 76),
(19102007, 'Md Sumon Mia', 'Communication Engineering', 13, 'Present', '2023-02-19', 77),
(19102008, 'Anindita Acharjee', 'Communication Engineering', 13, 'Present', '2023-02-19', 78),
(19102010, 'Johura Akter', 'Communication Engineering', 13, 'Absent', '2023-02-19', 79),
(19102012, 'Mehedi khan Rakib', 'Communication Engineering', 13, 'Present', '2023-02-19', 80),
(19102017, 'Mafia  Akter', 'Communication Engineering', 13, 'Present', '2023-02-19', 81),
(19102018, 'Sakib Shahon', 'Communication Engineering', 13, 'Present', '2023-02-19', 82),
(19102019, 'Md. Rahat Ibne Yusuf', 'Communication Engineering', 13, 'Present', '2023-02-19', 83),
(19102020, 'Md. Abdul Kadir', 'Communication Engineering', 13, 'Absent', '2023-02-19', 84),
(19102033, 'Rafiea Nusrat', 'Communication Engineering', 13, 'Present', '2023-02-19', 85),
(18102015, 'Abu  Rayhan', 'DSP', 13, 'Present', '2023-02-19', 86),
(18102018, 'Anik kumer', 'DSP', 13, 'Present', '2023-02-19', 87),
(19102001, 'Labib  Hossain', 'DSP', 13, 'Absent', '2023-02-19', 88),
(19102002, 'Md. Ismail Hossain', 'DSP', 13, 'Present', '2023-02-19', 89),
(19102003, 'Md. Touhidul Islam  Rifat', 'DSP', 13, 'Present', '2023-02-19', 90),
(19102005, 'Mahfuzur Rahman', 'DSP', 13, 'Present', '2023-02-19', 91),
(19102006, 'Md. Rabiul Islam Rabbi', 'DSP', 13, 'Present', '2023-02-19', 92),
(19102007, 'Md Sumon Mia', 'DSP', 13, 'Absent', '2023-02-19', 93),
(19102008, 'Anindita Acharjee', 'DSP', 13, 'Present', '2023-02-19', 94),
(19102010, 'Johura Akter', 'DSP', 13, 'Present', '2023-02-19', 95),
(19102012, 'Mehedi khan Rakib', 'DSP', 13, 'Present', '2023-02-19', 96),
(19102017, 'Mafia  Akter', 'DSP', 13, 'Absent', '2023-02-19', 97),
(19102018, 'Sakib Shahon', 'DSP', 13, 'Present', '2023-02-19', 98),
(19102019, 'Md. Rahat Ibne Yusuf', 'DSP', 13, 'Present', '2023-02-19', 99),
(19102020, 'Md. Abdul Kadir', 'DSP', 13, 'Present', '2023-02-19', 100),
(19102033, 'Rafiea Nusrat', 'DSP', 13, 'Present', '2023-02-19', 101),
(21102001, 'Farjana Afroj', 'Digital Logic Design', 15, 'Present', '2023-02-19', 102),
(21102002, 'Lamia Akter Munni', 'Digital Logic Design', 15, 'Absent', '2023-02-19', 103),
(21102003, 'Ashraful Alam', 'Digital Logic Design', 15, 'Present', '2023-02-19', 104),
(21102004, 'Jinia  Taslim', 'Digital Logic Design', 15, 'Absent', '2023-02-19', 105),
(21102005, 'Umme Jami', 'Digital Logic Design', 15, 'Present', '2023-02-19', 106),
(18102015, 'Abu  Rayhan', 'Communication Engineering', 13, 'Present', '2023-02-20', 107),
(18102018, 'Anik kumer', 'Communication Engineering', 13, 'Present', '2023-02-20', 108),
(19102001, 'Labib  Hossain', 'Communication Engineering', 13, 'Present', '2023-02-20', 109),
(19102002, 'Md. Ismail Hossain', 'Communication Engineering', 13, 'Absent', '2023-02-20', 110),
(19102003, 'Md. Touhidul Islam  Rifat', 'Communication Engineering', 13, 'Present', '2023-02-20', 111),
(19102005, 'Mahfuzur Rahman', 'Communication Engineering', 13, 'Present', '2023-02-20', 112),
(19102006, 'Md. Rabiul Islam Rabbi', 'Communication Engineering', 13, 'Absent', '2023-02-20', 113),
(19102007, 'Md Sumon Mia', 'Communication Engineering', 13, 'Present', '2023-02-20', 114),
(19102008, 'Anindita Acharjee', 'Communication Engineering', 13, 'Present', '2023-02-20', 115),
(19102010, 'Johura Akter', 'Communication Engineering', 13, 'Present', '2023-02-20', 116),
(19102012, 'Mehedi khan Rakib', 'Communication Engineering', 13, 'Present', '2023-02-20', 117),
(19102017, 'Mafia  Akter', 'Communication Engineering', 13, 'Present', '2023-02-20', 118),
(19102018, 'Sakib Shahon', 'Communication Engineering', 13, 'Absent', '2023-02-20', 119),
(19102019, 'Md. Rahat Ibne Yusuf', 'Communication Engineering', 13, 'Present', '2023-02-20', 120),
(19102020, 'Md. Abdul Kadir', 'Communication Engineering', 13, 'Present', '2023-02-20', 121),
(19102033, 'Rafiea Nusrat', 'Communication Engineering', 13, 'Present', '2023-02-20', 122);

-- --------------------------------------------------------

--
-- Table structure for table `course_content`
--

CREATE TABLE `course_content` (
  `id` int(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content_file` varchar(255) NOT NULL,
  `batch` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_content`
--

INSERT INTO `course_content` (`id`, `title`, `content_file`, `batch`, `course`, `username`) VALUES
(25, 'lec-3', '25.pptx', '13', 'Communication Engineering', 'jannat'),
(26, 'lecture4', '26.pptx', '13', 'Communication Engineering', 'jannat'),
(30, 'lec-1', '30.doc', '13', 'DSP', 'sujan'),
(31, 'lec-1', '31.doc', '15', 'Digital Logic Design', 'jannat');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `sid` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `batch` int(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`sid`, `fname`, `lname`, `dept`, `mail`, `batch`, `phone`) VALUES
(19102005, 'Mahfuzur', 'Rahman', 'CSE', 'mahfuzking@gmail.com', 13, '1791261135'),
(19102033, 'Rafiea', 'Nusrat', 'CSE', 'rafiea@gmail.com', 13, '1700925399'),
(19102002, 'Md. Ismail', 'Hossain', 'CSE', 'ismail@gmail.com', 13, '1731427552'),
(19102003, 'Md. Touhidul Islam ', 'Rifat', 'CSE', 'touhid@gmail.com', 13, '1683364793'),
(19102006, 'Md. Rabiul Islam', 'Rabbi', 'CSE', 'rabbi@gmail.com', 13, '1683364796'),
(19102007, 'Md Sumon', 'Mia', 'CSE', 'sumon@gmail.com', 13, '1683364797'),
(19102008, 'Anindita', 'Acharjee', 'CSE', 'ani@gmail.com', 13, '1683364798'),
(19102010, 'Johura', 'Akter', 'CSE', 'johura@gmail.com', 13, '1683364710'),
(19102012, 'Mehedi', 'khan Rakib', 'CSE', 'rakib@yahoo.com', 13, '1683364712'),
(19102017, 'Mafia ', 'Akter', 'CSE', 'mafi@gmail.com', 13, '1983364717'),
(19102018, 'Sakib', 'Shahon', 'CSE', 'sakib@gmail.com', 13, '1983364718'),
(19102001, 'Labib ', 'Hossain', 'CSE', 'labib@gmail.com', 13, '1983364701'),
(19102019, 'Md. Rahat', 'Ibne Yusuf', 'CSE', 'rahat@gmail.com', 13, '1983364719'),
(19102020, 'Md. Abdul', 'Kadir', 'CSE', 'kadir@gmail.com', 13, '1883364720'),
(18102015, 'Abu ', 'Rayhan', 'CSE', 'rayhan@gmail.com', 13, '1883364715'),
(18102018, 'Anik', 'kumer', 'CSE', 'anik@gmail.com', 13, '1812356712'),
(21102001, 'Farjana', 'Afroj', 'CSE', 'farjana@gmail.com', 15, '1700525301'),
(21102002, 'Lamia', 'Akter Munni', 'CSE', 'munni@yahoo.com', 15, '1700525302'),
(21102003, 'Ashraful', 'Alam', 'CSE', 'alam@yahoo.com', 15, '1700525303'),
(21102004, 'Jinia ', 'Taslim', 'CSE', 'jinia@gmail.com', 15, '1700525304'),
(21102005, 'Umme', 'Jami', 'CSE', 'jami@gmail.com', 15, '1700525305');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `batch` int(255) NOT NULL,
  `sem` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `fname`, `lname`, `username`, `dept`, `mail`, `batch`, `sem`, `course_name`, `course_code`) VALUES
(5, 'MST. Jannatul', 'Ferdous', 'jannat', '', 'jannat@gamil.com', 13, 7, 'Communication Engineering', 'CSE-409'),
(6, 'MST. Jannatul', 'Ferdous', 'jannat', '', 'jannat@gamil.com', 14, 5, 'Data communication', 'cse-311'),
(7, 'MST. Jannatul', 'Ferdous', 'jannat', '', 'jannat@gamil.com', 16, 1, 'Electrical Engineering', 'EEE-111'),
(14, 'Dr. Seikh sujan', 'Ali', 'sujan', '', 'sujan@gmail.com', 13, 7, 'DSP', 'CSE-421'),
(15, 'MST. Jannatul', 'Ferdous', 'jannat', '', 'jannat@gamil.com', 15, 3, 'Digital Logic Design', 'CSE-211'),
(16, 'MST. Jannatul', 'Ferdous', 'jannat', '', 'jannat@gamil.com', 12, 8, 'VLSI', 'CSE-411'),
(17, 'MST. Jannatul', 'Ferdous', 'jannat', '', 'jannat@gamil.com', 12, 8, 'VLSI', 'MATH-167');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_content`
--
ALTER TABLE `course_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `course_content`
--
ALTER TABLE `course_content`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
