-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2024 at 10:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintable`
--

CREATE TABLE `admintable` (
  `userid` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admintable`
--

INSERT INTO `admintable` (`userid`, `password`) VALUES
('admin', 'admin'),
('seeree', 'seeree');

-- --------------------------------------------------------

--
-- Table structure for table `instructiontable`
--

CREATE TABLE `instructiontable` (
  `instruction` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructiontable`
--

INSERT INTO `instructiontable` (`instruction`) VALUES
('Finish exam within the time allotted'),
('Each Question is allotted 30 seconds of time'),
('Attempt all questions before submitting'),
('each q 1 mark.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `questiontable`
--

CREATE TABLE `questiontable` (
  `question` varchar(200) NOT NULL,
  `a` varchar(40) DEFAULT NULL,
  `b` varchar(40) DEFAULT NULL,
  `c` varchar(40) DEFAULT NULL,
  `d` varchar(40) DEFAULT NULL,
  `answer` varchar(1) DEFAULT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questiontable`
--

INSERT INTO `questiontable` (`question`, `a`, `b`, `c`, `d`, `answer`, `subject`) VALUES
('bhbbxed3ed', 'exwx', 'ec', 'r4f', '4rf4', 'b', '.net'),
('ergr44tg', '4t5g4g45tg4', '54', 'g', '5t', 'd', '.net'),
('In which language is Python written?', 'English', 'PHP', 'C', 'All of the above', 'c', 'Python'),
('In which year was the Python 3.0 version developed?', '2008', '2000', '2010', '2005', 'a', 'Python'),
('In which year was the Python language developed?', '1995', '1972', '1981', '1989', 'd', 'Python'),
('neth5yhe5', 'h35h5yh', '56hy5y', '56hy5', '56h5', 'a', '.net'),
('Number of primitive data types in Java are?', '6', '7', '8', '9', 'c', 'Java'),
('What do we use to define a block of code in Python language?', 'Key', 'Brackets', 'Indentation', 'None of these', 'c', 'Python'),
('What is php?', 'a programming language.', 'ef', 'ewf', 'we', 'a', 'PHP'),
('What is the extension of compiled java classes?', '.txt', '.js', '.class', '.java', 'c', 'Java'),
('What is the extension of java code files?', '.js', '.txt', '.class', '.java', 'd', 'Java'),
('What is the maximum possible length of an identifier?', '16', '32', '64', 'None of these above', 'd', 'Python'),
('What is the method inside the class in python language?', 'Object', 'Function', 'Attribute', 'Argument', 'b', 'Python'),
('Which character is used in Python to make a single line comment?', '/', '//', '#', '!', 'c', 'Python'),
('Which component is used to compile, debug and execute the java programs?', 'JRE', 'JIT', 'JDK', 'JVM', 'c', 'Java'),
('Which environment variable is used to set the java path?', 'MAVEN_Path', 'JavaPATH', 'JAVA', 'JAVA_HOME', 'd', 'Java'),
('Which of the following declarations is incorrect?', '_x = 2', '__x = 3', '__xyz__ = 5', 'None of these', 'd', 'Python'),
('Which of the following is not a keyword in Python language?', 'val', 'raise', 'try', 'with', 'a', 'Python'),
('Which of the following is not an OOPS concept in Java?', 'Polymorphism', 'Inheritance', 'Compilation', 'Encapsulation', 'c', 'Java'),
('Which of these are selection statements in Java?', 'break', 'continue', 'for()', 'if()', 'd', 'Java'),
('Which of these cannot be used for a variable name in Java?', 'identifier & keyword', 'identifier', 'keyword', 'none of the mentioned', 'c', 'Java'),
('Which one of the following is not a Java feature?', 'Object-oriented', 'Use of pointers', 'Portable', 'Dynamic and Extensible', 'b', 'Java'),
('Which one of the following is the correct extension of the Python file?', '.py', '.python', '.p', 'None of these', 'a', 'Python'),
('Who developed the Python language?', 'Zim Den', 'Guido van Rossum', 'Niene Stom', 'Wick van Rossum', 'b', 'Python'),
('Who invented Java Programming?', 'Guido van Rossum', 'James Gosling', 'Dennis Ritchie', 'Bjarne Stroustrup', 'b', 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `resultstable`
--

CREATE TABLE `resultstable` (
  `username` varchar(15) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `questions` int(11) NOT NULL,
  `attempted` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resultstable`
--

INSERT INTO `resultstable` (`username`, `subject`, `questions`, `attempted`, `correct`, `wrong`, `time`) VALUES
('a', 'php', 1, 1, 0, 1, '2024-04-30 20:02:54'),
('a', 'php', 1, 1, 1, 0, '2024-04-30 20:03:09'),
('a', 'Java', 10, 10, 0, 10, '2024-04-30 20:04:59'),
('abc@gmail.com', '.net', 3, 2, 0, 2, '2024-06-01 13:28:30'),
('abc@gmail.com', 'Java', 10, 7, 3, 4, '2024-06-01 13:29:15'),
('akash', 'PHP', 2, 2, 1, 1, '2024-05-05 10:09:09'),
('akash', 'Java', 10, 7, 6, 1, '2024-05-05 10:10:45'),
('bikram', 'Python', 11, 3, 0, 3, '2024-03-29 20:12:39'),
('bikram', 'Python', 11, 11, 0, 11, '2024-04-04 15:26:24'),
('bikram', 'Python', 11, 9, 2, 7, '2024-04-30 12:20:16'),
('bikram', 'Python', 11, 4, 0, 4, '2024-05-10 10:59:29'),
('sarin', 'Python', 11, 11, 9, 2, '2022-07-14 18:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `studenttable`
--

CREATE TABLE `studenttable` (
  `userid` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studenttable`
--

INSERT INTO `studenttable` (`userid`, `password`, `name`) VALUES
('a', '123', 'a'),
('abc@gmail.com', '1234', 'abc'),
('akash', 'akash', 'akash'),
('bikram', '12345678', 'bikram'),
('nirmal', '12345678', 'nirmal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admintable`
--
ALTER TABLE `admintable`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `questiontable`
--
ALTER TABLE `questiontable`
  ADD PRIMARY KEY (`question`,`subject`);

--
-- Indexes for table `resultstable`
--
ALTER TABLE `resultstable`
  ADD PRIMARY KEY (`username`,`time`);

--
-- Indexes for table `studenttable`
--
ALTER TABLE `studenttable`
  ADD PRIMARY KEY (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
