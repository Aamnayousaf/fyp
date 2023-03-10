-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2023 at 04:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatanalyzer`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `weightage` int(50) NOT NULL,
  `category` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `keyword`, `weightage`, `category`) VALUES
(1, 'madam', 9, 'official'),
(2, 'sir', 9, 'official'),
(3, 'professor', 9, 'official'),
(4, 'teacher', 9, 'official'),
(5, 'professors', 9, 'official'),
(6, 'teachers', 9, 'official'),
(7, 'respected', 8, 'official'),
(8, 'respect', 8, 'official'),
(9, 'authorize', 8, 'official'),
(10, 'approve', 6, 'official'),
(11, 'approved', 6, 'official'),
(12, 'appoint', 7, 'official'),
(13, 'appointed', 7, 'official'),
(14, 'director', 8, 'official'),
(15, 'supervisor', 8, 'official'),
(16, 'hire', 5, 'official'),
(17, 'legal', 6, 'official'),
(18, 'assignment', 7, 'official'),
(19, 'presentation', 7, 'official'),
(20, 'orientation', 7, 'official'),
(21, 'qualification', 8, 'official'),
(22, 'mam', 9, 'official'),
(23, 'school', 7, 'official'),
(24, 'schools', 7, 'official'),
(25, 'college', 7, 'official'),
(26, 'colleges', 7, 'official'),
(27, 'class', 7, 'official'),
(28, 'classes', 7, 'official'),
(29, 'university', 7, 'official'),
(30, 'universities', 7, 'official'),
(31, 'O-level', 6, 'official'),
(32, 'A-level', 6, 'official'),
(33, 'semester', 7, 'official'),
(34, 'subject', 6, 'official'),
(35, 'administrator', 7, 'official'),
(36, 'Complaint', 5, 'official'),
(37, 'fee', 6, 'official'),
(38, 'salary', 6, 'official'),
(39, 'financial', 6, 'official'),
(40, 'department', 5, 'official'),
(41, 'Pay', 6, 'official'),
(42, 'payment', 6, 'official'),
(43, 'overtime', 4, 'official'),
(44, 'boss', 8, 'official'),
(45, 'office', 7, 'official'),
(46, 'manager', 6, 'official'),
(47, 'organization', 7, 'official'),
(48, 'company', 6, 'official'),
(49, 'project', 7, 'official'),
(50, 'documentation', 7, 'official'),
(51, 'employee', 6, 'official'),
(52, 'ATM', 5, 'official'),
(53, 'bank', 5, 'official'),
(54, 'profit', 4, 'official'),
(55, 'hacking', 4, 'official'),
(56, 'registration', 5, 'official'),
(57, 'earn', 4, 'official'),
(58, 'earned', 4, 'official'),
(59, 'election', 6, 'official'),
(60, 'eligible', 5, 'official'),
(61, 'embassy', 6, 'official'),
(62, 'earning', 4, 'official'),
(63, 'job', 6, 'official'),
(64, 'software house', 6, 'official'),
(65, 'designation', 4, 'official'),
(66, 'engineer', 5, 'official'),
(67, 'architect', 5, 'official'),
(68, 'Hello ', 19, 'normal'),
(69, 'hello', 19, 'normal'),
(70, 'hy', 19, 'normal'),
(71, 'Hy', 19, 'official'),
(72, 'Hi', 19, 'normal'),
(73, 'hi', 19, 'normal'),
(74, 'buy', 14, 'normal'),
(75, 'fruits', 14, 'normal'),
(76, 'vegetables', 14, 'normal'),
(77, 'good', 17, 'normal'),
(78, 'amazing', 17, 'normal'),
(79, 'sister', 16, 'normal'),
(80, 'brother', 16, 'normal'),
(81, 'father', 16, 'normal'),
(82, 'mother', 16, 'normal'),
(83, 'relatives', 14, 'normal'),
(84, 'shopping', 15, 'normal'),
(85, 'outting', 15, 'normal'),
(86, 'fun', 14, 'normal'),
(87, 'sunset', 12, 'normal'),
(88, 'sunlight', 12, 'normal'),
(89, 'window', 11, 'normal'),
(90, 'family', 14, 'normal'),
(91, 'trip', 14, 'normal'),
(92, 'hotel', 14, 'normal'),
(93, 'resturant', 14, 'normal'),
(94, 'mall', 14, 'normal'),
(95, 'families', 14, 'normal'),
(96, 'hotels', 14, 'normal'),
(97, 'malls', 14, 'normal'),
(98, 'buy', 12, 'normal'),
(99, 'dress', 12, 'normal'),
(100, 'dresses', 12, 'normal'),
(101, 'Kitchen', 12, 'normal'),
(102, 'Dinner', 12, 'normal'),
(103, 'lunch', 12, 'normal'),
(104, 'Breakfast', 12, 'normal'),
(105, 'beautiful', 12, 'normal'),
(106, 'handsome', 12, 'normal'),
(107, 'bicycle', 11, 'normal'),
(108, 'car', 11, 'normal'),
(109, 'bike', 11, 'normal'),
(110, 'mosquito', 11, 'normal'),
(111, 'mobile', 13, 'normal'),
(112, 'sim', 12, 'normal'),
(113, 'relationship', 12, 'normal'),
(114, 'handfree', 11, 'normal'),
(115, 'birthday', 13, 'normal'),
(116, 'bluetooth', 12, 'normal'),
(117, 'speaker', 12, 'normal'),
(118, 'music', 12, 'normal'),
(119, 'dance', 12, 'normal'),
(120, 'party', 12, 'normal'),
(121, 'park', 12, 'normal'),
(122, 'parking', 12, 'normal'),
(123, 'garden', 12, 'normal'),
(124, 'wallets', 13, 'normal'),
(125, 'wallpaper', 11, 'normal'),
(126, 'swimming', 13, 'normal'),
(127, 'beach', 12, 'normal'),
(128, 'river', 12, 'normal'),
(129, 'ring', 13, 'normal'),
(130, 'bracelete', 12, 'normal'),
(131, 'snow', 12, 'normal'),
(132, 'play', 12, 'normal'),
(133, 'playing', 12, 'normal'),
(134, 'hungry', 14, 'normal'),
(135, 'stomatch', 13, 'normal'),
(136, 'apologize', 15, 'normal'),
(137, 'promise', 15, 'official'),
(138, 'challenges', 12, 'normal'),
(139, 'challenge', 12, 'normal'),
(140, 'bangles', 11, 'normal'),
(141, 'necklace', 11, 'normal'),
(142, 'joking', 12, 'normal'),
(143, 'jogging', 12, 'normal'),
(144, 'accessories', 11, 'normal'),
(145, 'walk', 11, 'normal'),
(146, 'talk', 11, 'normal'),
(147, 'talking', 11, 'normal'),
(148, 'cook', 12, 'normal'),
(149, 'cooking', 12, 'normal'),
(150, 'clothes', 12, 'normal'),
(151, 'song', 13, 'normal'),
(152, 'sing', 13, 'normal'),
(153, 'singing', 13, 'normal'),
(154, 'singer', 13, 'normal'),
(155, 'bakery', 11, 'normal'),
(156, 'draw', 11, 'normal'),
(157, 'Drama', 12, 'normal'),
(158, 'fashion', 14, 'normal'),
(159, 'editor', 5, 'official'),
(160, 'education', 7, 'official'),
(161, 'educated', 7, 'official'),
(162, 'enjoyment', 11, 'normal'),
(163, 'match', 13, 'normal'),
(164, 'cricket', 13, 'normal'),
(165, 'football', 13, 'normal'),
(166, 'food', 12, 'normal'),
(167, 'photographer', 13, 'normal'),
(168, 'wedding ', 14, 'normal'),
(169, 'cermony', 14, 'normal'),
(170, 'cricketer', 14, 'normal'),
(171, 'Admin', 7, 'official'),
(172, 'principle', 9, 'official'),
(173, 'executive', 7, 'official'),
(174, 'chairman', 9, 'official'),
(175, 'bureaucrat', 8, 'official'),
(176, 'promoted', 7, 'official'),
(177, 'certified', 7, 'official'),
(178, 'captain', 8, 'official'),
(179, 'lawyer', 8, 'official'),
(180, 'judge', 8, 'official'),
(181, 'inspector', 8, 'official'),
(182, 'superintendent', 8, 'official'),
(183, 'governor', 9, 'official'),
(184, 'advertisement', 7, 'official'),
(185, 'marketing', 6, 'official'),
(186, 'developer', 6, 'official'),
(187, 'designer', 6, 'official'),
(195, 'Madam', 9, 'official'),
(196, 'Sir', 9, 'official'),
(197, 'Professor', 9, 'official'),
(198, 'Teacher', 9, 'official'),
(199, 'Professors', 9, 'official'),
(200, 'Teachers', 9, 'official'),
(201, 'Respected', 8, 'official'),
(202, 'Respect', 8, 'official'),
(203, 'Authorize', 8, 'official'),
(204, 'Approve', 6, 'official'),
(205, 'Approved', 6, 'official'),
(206, 'Appoint', 7, 'official'),
(207, 'Appointed', 7, 'official'),
(208, 'Director', 8, 'official'),
(209, 'Supervisor', 8, 'official'),
(210, 'Hire', 5, 'official'),
(211, 'Legal', 6, 'official'),
(212, 'Assignment', 7, 'official'),
(213, 'Presentation', 7, 'official'),
(214, 'Orientation', 7, 'official'),
(215, 'Qualification', 8, 'official'),
(216, 'Mam', 9, 'official'),
(217, 'School', 7, 'official'),
(218, 'Schools', 7, 'official'),
(219, 'College', 7, 'official'),
(220, 'Colleges', 7, 'official'),
(221, 'University', 7, 'official'),
(222, 'Universities', 7, 'official'),
(223, 'Class', 7, 'official'),
(224, 'Classes', 7, 'official'),
(225, 'O-Level', 6, 'official'),
(226, 'A-Level', 6, 'official'),
(227, 'Semester', 7, 'official'),
(228, 'Subject', 6, 'official'),
(229, 'Administrator', 7, 'official'),
(230, 'complaint', 5, 'official'),
(231, 'Fee', 6, 'official'),
(232, 'Salary', 6, 'official'),
(233, 'Finance', 6, 'official'),
(234, 'Financial', 6, 'official'),
(235, 'Department', 5, 'official'),
(236, 'pay', 6, 'official'),
(237, 'Payment', 6, 'official'),
(238, 'Overtime', 4, 'official'),
(239, 'Boss', 8, 'official'),
(240, 'Office', 7, 'official'),
(241, 'Manager', 6, 'official'),
(242, 'Organization', 7, 'official'),
(243, 'Company', 6, 'official'),
(244, 'Project', 7, 'official'),
(245, 'Documentation', 7, 'official'),
(246, 'Employee', 6, 'official'),
(247, 'Bank', 5, 'official'),
(248, 'Profit', 4, 'official'),
(249, 'Hacking', 4, 'official'),
(250, 'Registration', 5, 'official'),
(251, 'Earn', 4, 'official'),
(252, 'Earned', 4, 'official'),
(253, 'Election', 6, 'official'),
(254, 'Eligible', 5, 'official'),
(255, 'Embassy', 6, 'official'),
(256, 'Earning', 4, 'official'),
(257, 'Job', 6, 'official'),
(258, 'Software', 6, 'official'),
(259, 'Software House', 6, 'official'),
(260, 'Hardware', 6, 'official'),
(261, 'Designation', 4, 'official'),
(262, 'Engineer', 5, 'official'),
(263, 'Architect', 5, 'official'),
(264, 'Buy', 14, 'normal'),
(265, 'Fruits', 14, 'normal'),
(266, 'Vegetable', 14, 'normal'),
(267, 'vegetable', 14, 'normal'),
(268, 'Vegetables', 14, 'normal'),
(269, 'Good', 17, 'normal'),
(270, 'Amazing', 17, 'normal'),
(271, 'Sister', 16, 'normal'),
(272, 'Brother', 16, 'normal'),
(273, 'Father', 16, 'normal'),
(274, 'Mother', 16, 'normal'),
(275, 'Relatives', 14, 'normal'),
(276, 'Shopping', 15, 'normal'),
(277, 'Outing', 15, 'normal'),
(278, 'Fun', 14, 'normal'),
(279, 'Sunset', 12, 'normal'),
(280, 'Sunlight', 12, 'normal'),
(281, 'Window', 11, 'normal'),
(282, 'Family', 14, 'normal'),
(283, 'Trip', 14, 'normal'),
(284, 'Hotel', 14, 'normal'),
(285, 'Mall', 14, 'normal'),
(286, 'Resturant', 14, 'normal'),
(287, 'Families', 14, 'normal'),
(288, 'Dress', 12, 'normal'),
(289, 'Dresses', 12, 'normal'),
(290, 'kitchen', 12, 'normal'),
(291, 'dinner', 12, 'normal'),
(292, 'Lunch', 12, 'normal'),
(293, 'breakfast', 12, 'normal'),
(294, 'Beautiful', 11, 'normal'),
(295, 'Handsome', 12, 'normal'),
(296, 'Bicycle', 11, 'normal'),
(297, 'Car', 11, 'normal'),
(298, 'Bike', 11, 'normal'),
(299, 'Mosquito', 11, 'normal'),
(300, 'Mobile', 13, 'normal'),
(301, 'Sim', 12, 'normal'),
(302, 'Handfree', 11, 'normal'),
(303, 'Birthday', 13, 'normal'),
(304, 'Bluetooth', 12, 'normal'),
(305, 'Speaker', 12, 'normal'),
(306, 'Music', 12, 'normal'),
(307, 'Dance', 12, 'normal'),
(308, 'Party', 12, 'normal'),
(309, 'Park', 12, 'normal'),
(310, 'Parking', 12, 'normal'),
(311, 'Garden', 12, 'normal'),
(312, 'Wallets', 13, 'normal'),
(313, 'Wallpaper', 11, 'normal'),
(314, 'Swimming', 13, 'normal'),
(315, 'Beach', 12, 'normal'),
(316, 'River', 12, 'normal'),
(317, 'Ring', 13, 'normal'),
(318, 'Bracelete', 12, 'normal'),
(319, 'Snow', 12, 'normal'),
(320, 'Play', 12, 'normal'),
(321, 'Playing', 12, 'normal'),
(322, 'Hungry', 14, 'normal'),
(323, 'Stomatch', 13, 'normal'),
(324, 'Apologize', 15, 'normal'),
(325, 'Promise', 15, 'normal'),
(326, 'Challenges', 12, 'normal'),
(327, 'Challenge', 12, 'normal'),
(328, 'Bangles', 11, 'normal'),
(329, 'Neckles', 11, 'normal'),
(330, 'Joking', 12, 'normal'),
(331, 'Jogging', 12, 'normal'),
(332, 'Accessories', 11, 'normal'),
(333, 'Walk', 11, 'normal'),
(334, 'Talk', 11, 'normal'),
(335, 'Talking', 11, 'normal'),
(336, 'Cook', 12, 'normal'),
(337, 'Cooking', 12, 'normal'),
(338, 'Clothes', 12, 'normal'),
(339, 'Song', 13, 'normal'),
(340, 'Sing', 13, 'normal'),
(341, 'Singer', 13, 'normal'),
(342, 'Singing', 13, 'normal'),
(343, 'Bakery', 11, 'normal'),
(344, 'Draw', 11, 'normal'),
(345, 'Drama', 12, 'normal'),
(346, 'Fashion', 14, 'normal'),
(347, 'Editor', 5, 'official'),
(348, 'Education', 7, 'official'),
(349, 'Educated', 7, 'official'),
(350, 'Enjoyment', 11, 'normal'),
(351, 'Match', 13, 'normal'),
(352, 'Cricket', 13, 'normal'),
(353, 'Football', 13, 'normal'),
(354, 'Food', 12, 'normal'),
(355, 'Photographer', 13, 'normal'),
(356, 'Wedding', 14, 'normal'),
(357, 'Cermony', 14, 'normal'),
(358, 'Cricketor', 14, 'normal'),
(359, 'admin', 7, 'normal'),
(360, 'Principle', 9, 'official'),
(361, 'Executive', 7, 'official'),
(362, 'Chairman', 9, 'official'),
(363, 'Bureaucrat', 8, 'official'),
(364, 'Promoted', 7, 'official'),
(365, 'Certified', 7, 'official'),
(366, 'Captain', 8, 'official'),
(367, 'Lawyer', 8, 'official'),
(368, 'Judge', 8, 'official'),
(369, 'Inspector', 8, 'official'),
(370, 'Superitendent', 8, 'official'),
(371, 'Governor', 9, 'official'),
(372, 'Advertisement', 7, 'official'),
(373, 'Marketing', 6, 'official'),
(374, 'Developer', 6, 'official'),
(375, 'Designer', 6, 'official'),
(376, 'chair person', 9, 'official'),
(377, 'Chair Person', 9, 'official'),
(378, 'Pictures', 15, 'normal'),
(379, 'pictures', 15, 'normal'),
(380, 'picture', 15, 'normal'),
(381, 'Selfie', 15, 'normal'),
(382, 'selfie', 15, 'normal'),
(383, 'photo', 15, 'normal'),
(384, 'Photo', 15, 'normal'),
(385, 'photos', 15, 'normal'),
(386, 'Photos', 15, 'normal'),
(387, 'Gallery', 14, 'normal'),
(388, 'gallery', 14, 'normal'),
(389, 'Phone', 15, 'normal'),
(390, 'phone', 15, 'normal'),
(391, 'Laptop', 16, 'normal'),
(392, 'CEO', 9, 'official');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
