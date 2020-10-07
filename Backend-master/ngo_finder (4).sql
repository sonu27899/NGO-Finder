-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2020 at 07:57 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngo_finder`
--

-- --------------------------------------------------------

--
-- Table structure for table `donor_tbl`
--

CREATE TABLE `donor_tbl` (
  `donor_email` varchar(100) NOT NULL,
  `donor_name` varchar(50) NOT NULL,
  `donor_password` varchar(100) NOT NULL,
  `donor_gender` varchar(10) NOT NULL,
  `donor_contact` varchar(10) NOT NULL,
  `donor_address` varchar(500) NOT NULL,
  `donor_PAN_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor_tbl`
--

INSERT INTO `donor_tbl` (`donor_email`, `donor_name`, `donor_password`, `donor_gender`, `donor_contact`, `donor_address`, `donor_PAN_no`) VALUES
('d@gmail.com', 'dinesh', 'Dshah@12', 'male', '9988776521', 'ahmedabad', 'EFGHE2345A'),
('jay@gmail.com', 'Jay Shah', 'Jayshah@12', 'male', '8460868620', 'Ahmedabad', 'EFHEF3214E'),
('m@gmail.com', 'Mshah@123', 'mu shah', 'male', '9988776654', 'ahmedabad', 'ERTHA2345Q'),
('parth@gmail.com', 'Parth', 'PARTH@1234', 'male', '8899765143', 'ahmedabad', 'TYHUE1256E'),
('pratik@gmail.com', 'Pratik@123', 'pratik shah', 'male', '9737948857', 'ahmedabad', 'EFJUR1234R'),
('pratikshah@gmail.com', 'Pratik Shah', 'P@shah123', 'male', '9723456121', '56/670 Parasnagar,solaroad,narapura,ahmedabad-380063.', 'EFGTH1234Q'),
('rutu@gmail.com', 'Rutvik', 'Rutu@1234', 'male', '8899324152', 'ahmedabad', 'JKHGB3498T'),
('s@gmail.com', 'Sanket@1234', 'sanket shah', 'male', '9988765421', 'ahmedabad', 'Efgth2190u'),
('smit@gmail.com', 'smit shah', 'Smit@1234', 'male', '8877665123', 'ahmedabad', 'GHJTY1234W'),
('t@gmail.com', 'Tshah@123', 'tenik', 'male', '9871234098', 'ahmedabad', 'EFKIL2345T'),
('yash@gmail.com', 'y@123', 'yash', 'male', '9876543123', 'ahmedabad', 'EFG2345671'),
('yj@gmail.com', 'yash shah', 'Yshah@12', 'male', '9988776123', 'ahmedabad', 'EFGJR1234T');

-- --------------------------------------------------------

--
-- Table structure for table `map_tbl`
--

CREATE TABLE `map_tbl` (
  `place` varchar(50) CHARACTER SET latin1 NOT NULL,
  `lat` decimal(10,6) NOT NULL,
  `lng` decimal(10,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `map_tbl`
--

INSERT INTO `map_tbl` (`place`, `lat`, `lng`) VALUES
('ahmedabad', '23.201026', '72.585022'),
('baroda', '23.033863', '72.585022');

-- --------------------------------------------------------

--
-- Table structure for table `ngo_contact_tbl`
--

CREATE TABLE `ngo_contact_tbl` (
  `fk_ngo_email` varchar(50) NOT NULL,
  `contact_for_donor` varchar(15) NOT NULL,
  `ngo_website` varchar(50) NOT NULL,
  `ngo_facebook` varchar(50) DEFAULT NULL,
  `ngo_instagram` varchar(50) DEFAULT NULL,
  `ngo_twitter` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo_contact_tbl`
--

INSERT INTO `ngo_contact_tbl` (`fk_ngo_email`, `contact_for_donor`, `ngo_website`, `ngo_facebook`, `ngo_instagram`, `ngo_twitter`) VALUES
('charitylife@gmail.com', '9456252384', 'https://www.charitylife.com', 'charitylife', 'charitylife', '@charitylife'),
('childcare@gmail.com', '9172417400', 'https://www.childcare.com', 'https://www.facebook.com/shrenik.dalal.71/', 'https://www.instagram.com/shre_nik._dalal/?hl=en', 'https://twitter.com/Shrenik_09'),
('clayton@gmail.com', '9846362209', 'https://www.clayton.org', 'clayton', 'clayton', '@clayton'),
('disha@gmail.com', '9363037641', 'http://www.disha.org', 'dishafoundation', 'dishafoundation', '@dishafoundation'),
('interaction@gmail.com', '9463529277', 'https://www.interaction.org', 'interaction', 'interaction', '@interaction'),
('ngosolutions@gmail.com', '9163419352', 'https://www.ngosolutions.org', 'ngosolutions', 'ngosolutions', '@ngosolutions'),
('phelpingp@gmail.com', '9346230083', 'https://www.phelpingp.org', 'phelpingp', 'phelping', '@phelpingp'),
('prayas@gmail.com', '8354099054', 'https://prayas.org', 'prayas', 'prayas', '@prayas'),
('sanghamithra@gmail.com', '9364524882', 'https://www.sanghamithra.org', 'sanghamithra', 'sanghamithra', '@sanghamithra'),
('senehasa@gmail.com', '9473620242', 'https://www.senehasa.org', 'senehasa', 'senehasa', '@senehasa'),
('smilefoundation@gmail.com', '9362523990', 'https://www.smilefoundation.org', 'smilefoundation', 'smilefoundation', '@smilefoundation'),
('trishav@gmail.com', '9473521862', 'https://www.trishav.org', 'trishav', 'trishav', '@trishav'),
('vidya@gmail.com', '8946352922', 'https://www.vidya.org', 'vidya', 'vidya', '@vidya');

-- --------------------------------------------------------

--
-- Table structure for table `ngo_details_tbl`
--

CREATE TABLE `ngo_details_tbl` (
  `ngo_name` varchar(50) NOT NULL,
  `ngo_logo` varchar(150) NOT NULL,
  `ngo_email` varchar(60) NOT NULL,
  `ngo_password` varchar(25) NOT NULL,
  `ngo_registration_no` varchar(20) NOT NULL,
  `fk_ngo_nop_name` varchar(500) NOT NULL,
  `ngo_address` varchar(250) NOT NULL,
  `ngo_landmark` varchar(50) NOT NULL,
  `ngo_city` varchar(100) NOT NULL,
  `ngo_pincode` varchar(6) NOT NULL,
  `ngo_state` varchar(100) NOT NULL,
  `ngo_contact` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo_details_tbl`
--

INSERT INTO `ngo_details_tbl` (`ngo_name`, `ngo_logo`, `ngo_email`, `ngo_password`, `ngo_registration_no`, `fk_ngo_nop_name`, `ngo_address`, `ngo_landmark`, `ngo_city`, `ngo_pincode`, `ngo_state`, `ngo_contact`) VALUES
('Charity Life', 'ngo_logo-1599920642807.png', 'charitylife@gmail.com', 'charitylife', '84532001', 'Children,Health', '70 , Tankiwala Compound, Rajbhai Lane', 'Gurgoan', 'Delhi', '200981', 'Delhi', '9846724322'),
('Child Care ', 'ngo_logo-1599933071978.png', 'childcare@gmail.com', 'childcare', '3712008', 'Children', '123 , Sant Bhavan, Walbhat Road, Sharma Estate,', 'Goregaon( East)', 'Mumbai', '400063', 'Maharashtra', '9373562349'),
('Clayton', 'ngo_logo-1599921579924.png', 'clayton@gmail.com', 'clayton', '7452011', 'Sports', '9 nd Floor, , Surti Chambers No., Dhobitalao nd Lane,', 'Chira Bazar', 'Hydrabad', '400890', 'Telengana', '8936452800'),
('Disha Foundation', 'ngo_logo-1599920303870.jpg', 'disha@gmail.com', 'disha', '7352008', 'Housing', 'Gr Flr, Kapurbawadi Naka, Gb Rd, Nr Murli Hotel, ', 'Carter Road', 'Banglore', '870078', 'Karnataka', '8364529844'),
('Inter Action', 'ngo_logo-1599921831853.jpg', 'interaction@gmail.com', 'interaction', '4862008', 'Women development and Empowerment', '191 , Girgaon Rd, Opp Gaiwadi, ', 'Girgaon', 'Mumbai', '400098', 'Maharashtra', '9573635200'),
('NGO Solutions', 'ngo_logo-1599923578575.jpg', 'ngosolutions@gmail.com', 'ngosolutions', '5982014', 'Tourism', '75 c, Khandilkar Road, Kabir nagar,', 'Nr IDBI Bank', 'Chennai', '800987', 'TamilNadu', '8173520940'),
('People Helping People', 'ngo_logo-1599921366040.jpg', 'phelpingp@gmail.com', 'phelpingp', '8352001', 'Disaster Management', 'Shop 22, Nisarg, Mahavir Nagar,', '90 Feet Road', 'Kolkata', '790041', 'West Bengal', '8956339276'),
('Prayas', 'ngo_logo-1599921138701.jpg', 'prayas@gmail.com', 'prayas', '4822005', 'Environment and Forests', '23 /, Forjet Hill Road, August Kranti Marg', 'Hill Road', 'Mumbai', '400063', 'Maharashtra', '8365402217'),
('Sangha Mithra', 'ngo_logo-1599920903317.jpg', 'sanghamithra@gmail.com', 'sanghamithra', '37542010', 'Aged/Elderly', '30 , Burjorji Bharucha Rd', 'Nr. Civil Hospital', 'Surat', '395009', 'Gujarat', '8635280086'),
('Senehasa', 'ngo_logo-1599922097170.jpg', 'senehasa@gmail.com', 'senehasa', '2982015', 'Environment and Forests', '592 , Bmc Bldg, Old Prabhadevi Rd, Opp Bengal Chem,', 'Prabhadevi', 'Coimbatore', '700981', 'TamilNadu', '9826238044'),
('Smile Foundation', 'ngo_logo-1599922704627.jpg', 'smilefoundation@gmail.com', 'smile', '6342008', 'Education and Literacy', '41 , Chellapa Gounder St,', 'Kattoor', 'Chandigarh', '690031', 'Punjab', '9472352841'),
('Trishav', 'ngo_logo-1599923035130.jpg', 'trishav@gmail.com', 'trishav', '2092016', 'Education and Literacy', '29 /a/, Sion Sindhi Colony,', 'Opp Guru Kripa Hotel', 'Ahmedabad', '380008', 'Gujarat', '9845628432'),
('Vidya', 'ngo_logo-1599922442121.png', 'vidya@gmail.com', 'vidya', '3942009', 'Children', '49 , Agam vihar, Vivina, Sv Rd,', 'Andheri (west)', 'Mumbai', '400752', 'Maharashtra', '8563026441');

-- --------------------------------------------------------

--
-- Table structure for table `ngo_nop_tbl`
--

CREATE TABLE `ngo_nop_tbl` (
  `fk_ngo_email` varchar(50) NOT NULL,
  `fk_nop_name` varchar(50) NOT NULL,
  `proof_image` varchar(100) NOT NULL,
  `nop_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo_nop_tbl`
--

INSERT INTO `ngo_nop_tbl` (`fk_ngo_email`, `fk_nop_name`, `proof_image`, `nop_description`) VALUES
('childcare@gmial.com', 'Children', 'proof_image-1599919992529.jpg', 'The children are getting care and education by the NGO.'),
('disha@gmail.com', 'Housing', 'proof_image-1599920303954.jpg', 'Ngo volunteers helping the needy people with financial help.'),
('charitylife@gmail.com', 'Health', 'proof_image-1599920643122.jpg', 'Health checkup camp at NGO.'),
('charitylife@gmail.com', 'Children', 'proof_image-1599920643014.png', 'Helping enjoying gifts from people.'),
('sanghamithra@gmail.com', 'Aged/Elderly', 'proof_image-1599920903539.jpg', 'Checkup for elder residents at NGO.'),
('prayas@gmail.com', 'Environment and Forests', 'proof_image-1599921138930.jpg', 'Afforestation camp by NGO volunteers.'),
('phelpingp@gmail.com', 'Disaster Management', 'proof_image-1599921366118.jpg', 'People Tracking on the hill to help other people.'),
('clayton@gmail.com', 'Sports', 'proof_image-1599921580097.jpg', 'Children doing warmup along with trainer.'),
('interaction@gmail.com', 'Women development and Empowerment', 'proof_image-1599921831822.jpg', 'Womwn starting their own business with the help of NGO.'),
('senehasa@gmail.com', 'Environment and Forests', 'proof_image-1599922097233.jpg', 'Afforestation camp at a large scale.'),
('vidya@gmail.com', 'Children', 'proof_image-1599922442279.jpg', 'Adults and children staying happily.,'),
('smilefoundation@gmail.com', 'Education and Literacy', 'proof_image-1599922704669.jpg', 'All children studing at NGO premises.'),
('trishav@gmail.com', 'Education and Literacy', 'proof_image-1599923035412.jpg', 'Happy children after getting books for education.'),
('ngosolutions@gmail.com', 'Tourism', 'proof_image-1599923578658.jpg', 'Ngo taking children to hilly village to explore more about it.                     '),
('childcare@gmail.com', 'Children', 'proof_image-1599933072012.jpg', 'The children are getting care and education by NGO.');

-- --------------------------------------------------------

--
-- Table structure for table `nop_tbl`
--

CREATE TABLE `nop_tbl` (
  `nop_id` int(11) NOT NULL,
  `nop_name` varchar(50) NOT NULL,
  `nop_desc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nop_tbl`
--

INSERT INTO `nop_tbl` (`nop_id`, `nop_name`, `nop_desc`) VALUES
(1, 'Health', 'This NGO helps people can children for the upliftment for their health.'),
(2, 'Aged/Elderly', 'This NGO helps elder peoples for their better life.'),
(3, 'Children', 'This NGO helps children for their better present and future life.'),
(4, 'Education and Literacy', 'This NGO helps children get education for better future.'),
(5, 'Environment and Forests', 'This NGO works for an aim of more and more Afforestation.'),
(6, 'Housing', 'This NGO helps people financially to get or build their houses.'),
(7, 'Sports', 'This NGO let promote Sports amaong young and elder people.'),
(8, 'Tourism', 'This NGO promotes tourism of small and rural places.'),
(9, 'Women development and Empowerment', 'This NGO helps women to start their own business and let them capable by themselves.'),
(10, 'Disaster Management', 'This NGO helps people who are hit by natural disaster and calamities.');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_tbl`
--

CREATE TABLE `transaction_tbl` (
  `transaction_id` int(11) NOT NULL,
  `pay_to_ngo_email` varchar(50) NOT NULL,
  `donate_from_donor_email` varchar(50) NOT NULL,
  `transaction_amt` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `fk_nop_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_tbl`
--

INSERT INTO `transaction_tbl` (`transaction_id`, `pay_to_ngo_email`, `donate_from_donor_email`, `transaction_amt`, `transaction_date`, `fk_nop_name`) VALUES
(16, 'childcare@gmail.com', 'jay@gmail.com', 1000, '2020-07-22', 'Children'),
(17, 'vrudavan@gmail.com', 'jay@gmail.com', 200, '2020-07-22', 'Health'),
(18, 'jaishree@gmail.com', 'jay@gmail.com', 300, '2020-07-22', 'Health'),
(19, 'jaishree@gmail.com', 'jay@gmail.com', 300, '2020-07-22', 'Sports'),
(20, 'childcare@gmail.com', 'pratikshah@gmail.com', 300, '2020-07-23', 'Housing'),
(21, 'childcare@gmail.com', 'pratikshah@gmail.com', 500, '2020-07-23', 'Children'),
(22, 'vrudavan@gmail.com', 'd@gmail.com', 1000, '2020-07-27', 'Health'),
(23, 'hello@gmail.com', 'd@gmail.com', 100, '2020-08-10', 'Health'),
(24, 'childcare@gmail.com', 'd@gmail.com', 700, '2020-08-21', 'Education and Literacy'),
(25, 'childcare@gmail.com', 'd@gmail.com', 1500, '2020-09-13', 'Children');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donor_tbl`
--
ALTER TABLE `donor_tbl`
  ADD PRIMARY KEY (`donor_email`);

--
-- Indexes for table `map_tbl`
--
ALTER TABLE `map_tbl`
  ADD PRIMARY KEY (`place`);

--
-- Indexes for table `ngo_contact_tbl`
--
ALTER TABLE `ngo_contact_tbl`
  ADD PRIMARY KEY (`fk_ngo_email`);

--
-- Indexes for table `ngo_details_tbl`
--
ALTER TABLE `ngo_details_tbl`
  ADD PRIMARY KEY (`ngo_email`);

--
-- Indexes for table `nop_tbl`
--
ALTER TABLE `nop_tbl`
  ADD PRIMARY KEY (`nop_id`);

--
-- Indexes for table `transaction_tbl`
--
ALTER TABLE `transaction_tbl`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nop_tbl`
--
ALTER TABLE `nop_tbl`
  MODIFY `nop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaction_tbl`
--
ALTER TABLE `transaction_tbl`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
