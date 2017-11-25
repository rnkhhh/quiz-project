-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2017 at 06:28 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(4) NOT NULL,
  `cat_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`) VALUES
(1, 'PHP'),
(2, 'JAVA'),
(3, 'CPP');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `questions` varchar(300) NOT NULL,
  `option_1` varchar(100) NOT NULL,
  `option_2` varchar(100) NOT NULL,
  `option_3` varchar(100) NOT NULL,
  `option_4` varchar(100) NOT NULL,
  `ans` int(4) NOT NULL,
  `cat_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `questions`, `option_1`, `option_2`, `option_3`, `option_4`, `ans`, `cat_id`) VALUES
(1, 'What does PHP stands for?', 'PHP: Hypertext Preprocessor', 'Private Home Page', 'Personal Hypertext Preprocessor', 'None Of Them', 0, 1),
(2, 'How do you write "Hello World" in PHP', 'echo "Hello World";', '"Hello World";', 'document.write("Hello World");', 'system.out.println("Hello World");', 0, 1),
(3, 'All variables in PHP start with which symbol?', '!', '$', '#', '@', 1, 1),
(4, 'Who is the father of PHP?', 'Rasmus Lerdorf', ' Willam Makepiece', ' Drek Kolkevi', ' List Barely', 0, 1),
(7, 'Which of the following php statement/statements will store 111 in variable num? i) int $num = 111; ii) int mum = 111; iii) $num = 111; iv) 111 = $num;', ' Both (i) and (ii)', 'All of the mentioned.', 'Only (iii)', 'Only (i)', 2, 1),
(8, ' Which of following variables can be assigned a value to it? (i) $3hello (ii) $_hello (iii) $this (iv) $This', 'All of the mentioned', 'Only (ii)', '(ii), (iii) and (iv)', '(ii) and (iv)', 0, 1),
(9, 'If $a = 12 what will be returned when ($a == 12) ? 5 : 1 is executed?', '12', '1', 'Error', '5', 3, 1),
(10, ' Which of the below statements is equivalent to $add += $add ?', '$add = $add', '$add = $add +$add', '$add = $add + 1', '$add = $add + $add + 1', 1, 1),
(11, ' Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', ' func_get_argc()', 'get_argv()', 'get_argc()', 1, 1),
(12, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 1, 1),
(13, 'What is the range of data type short in Java?', ' -128 to 127', '-32768 to 32767', '-2147483648 to 2147483647', 'None of the mentioned', 1, 3),
(14, 'Which data type value is returned by all transcendental math functions?', ' int', 'float', 'double', 'long', 2, 3),
(15, 'When does Exceptions in Java arises in code sequence?', 'Run Time', 'Compilation Time', 'Can Occur Any Time', 'None of the mentioned', 0, 3),
(16, 'Which of these keywords is used to manually throw an exception?', 'try', 'finally', 'throw', 'catch', 2, 3),
(17, 'Which of these operators can be used to concatenate two or more String objects?', '&amp;', '+', '+=', '||', 1, 3),
(18, 'Which of the following statement is correct?', 'reverse() method reverses all characters.', 'reverseall() method reverses all characters.', 'replace() method replaces first occurrence of a character in invoking string with another character.', 'replace() method replaces last occurrence of a character in invoking string with another character', 0, 3),
(19, 'What will s2 contain after following lines of code?  StringBuffer s1 = &ldquo;one&rdquo;;  StringBuffer s2 = s1.append(&ldquo;two&rdquo;)', 'one ', 'two', 'onetwo', 'twoone', 2, 3),
(20, ' Which of these method of class StringBuffer is used to get the length of sequence of characters?', 'length()', 'capacity()', 'Length()', 'Capacity()', 0, 3),
(21, 'Which of these can be used to fully abstract a class from its implementation?', 'Objects', 'Packages', 'Interfaces', 'None of the Mentioned.', 2, 3),
(22, ' Which of these keywords is used by a class to use an interface defined previously?', 'import', 'implements', 'Import', 'Implements', 1, 3),
(23, 'What is data hiding ?', 'It is related with hiding internal object details', 'It is related with showing internal object details ', ' It is related with datatypes ', 'None of above', 0, 4),
(24, 'Which is more memory efficient ?', 'structure  ', ' union', 'both use same memory', ' depends on a programmer', 0, 4),
(25, ' Data members and member functions are enclosed within ?', 'union ', 'structure ', 'class', ' array', 2, 4),
(26, 'When a structure refers to itself, it is known as ?', 'encapsulated structure', ' nested structure ', 'recursive structure ', 'self-referential structure', 3, 4),
(27, ' When one class inherits from the base class, then the original class is called ?', 'derived class', ' base class ', 'sub class ', 'basic class', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `pass`, `img`) VALUES
(1, 'Rnkh', 'rnkh@gmail.com', '161297', '2016-09-05_00.33.30.jpg'),
(2, 'ansh', 'ansh@gmail.com', '161616', ''),
(3, 'rpr', 'rpr@gmail.com', '1616', 'rnkhhh.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
