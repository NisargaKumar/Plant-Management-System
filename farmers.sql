-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2024 at 11:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmers`
--

-- --------------------------------------------------------

--
-- Table structure for table `addagroproducts`
--

CREATE TABLE `addagroproducts` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `productdesc` text NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addagroproducts`
--

INSERT INTO `addagroproducts` (`username`, `email`, `pid`, `productname`, `productdesc`, `price`) VALUES
('Nandini Rao', 'nandinirao@gmail.com', 4, 'Mysore Sandalwood', 'Renowned for its aromatic heartwood, Mysore Sandalwood is a fragrant tree with cultural significance and valued essential oils.', 45),
('Krishnamurthy Iyengar', 'krishnaiyengar@gmail.com', 5, 'Saffron Marigold', 'A vibrant marigold variety with saffron-colored petals, adding a touch of warmth and richness to any garden.', 30),
('Lakshmi Menon', 'lakshmimenon@gmail.com', 6, 'Royal Jasmine', 'A regal and fragrant jasmine variety, known for its elegant white blossoms and aromatic allure, fit for a royal garden.', 50),
('Ranganathan Subramanian', 'rangasub@gmail.com', 7, 'Turmeric Tulsi:', 'A unique blend of medicinal herbs, combining the healing properties of tulsi with the golden hues of turmeric leaves.', 60),
('Sarojini Das', 'sarudas@gmail.com', 8, 'Himalayan Rhododendron:', 'Found in the lofty Himalayan mountains, this rhododendron boasts stunning clusters of vibrant flowers, painting the landscape with hues of pink and red.', 70),
('Ganeshwar Prasad', 'ganiraj@gmail.com', 9, 'Kashmiri Lavender:', 'A delicate lavender variety cultivated in the serene landscapes of Kashmir, offering soothing fragrance and calming purple blooms.', 100),
('Anna Josh', 'annajosh1@gmail.com', 10, 'Ayurvedic Ashwagandha', 'Known for its medicinal properties, this ashwagandha plant is a key herb in Ayurveda, promoting vitality and overall well-being.', 150),
('Govindarajan Iyengar', 'govindaIyenggara@gmail.com', 11, 'Malabar Pepper Vine', 'Hailing from the Malabar Coast, this pepper vine features spicy black peppercorns, adding a kick to culinary delights.', 35),
('MohiniPatel', 'patel2mohini@gmail.com', 12, ' Ganges Lotus Blossom', 'Symbolizing purity and enlightenment, the Ganges Lotus Blossom unfolds its pristine petals in the sacred waters of the Ganges River.\r\n', 59),
('Raghunandan Mukherjee', 'ragunanda41@gmail.com', 13, 'Nilgiri Eucalyptus', 'Native to the Nilgiri Hills, this eucalyptus variety boasts refreshing leaves, contributing to its invigorating scent and potential health benefits.', 49);

-- --------------------------------------------------------

--
-- Table structure for table `farming`
--

CREATE TABLE `farming` (
  `fid` int(11) NOT NULL,
  `farmingtype` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farming`
--

INSERT INTO `farming` (`fid`, `farmingtype`) VALUES
(1, 'Spice Farming and Aromatic Crop Cultivation'),
(2, 'Apiculture and Honey Production'),
(4, 'Crop Farming and Arable Agriculture'),
(5, 'Horticulture and Vegetable Cultivation'),
(6, 'Viticulture and Grape Farming'),
(8, 'Medicinal and Aromatic Plant Farming'),
(9, 'Floriculture and Ornamental Plant Cultivation');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `rid` int(11) NOT NULL,
  `farmername` varchar(50) NOT NULL,
  `adharnumber` varchar(20) NOT NULL,
  `age` int(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phonenumber` varchar(12) NOT NULL,
  `address` varchar(50) NOT NULL,
  `farming` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`rid`, `farmername`, `adharnumber`, `age`, `gender`, `phonenumber`, `address`, `farming`) VALUES
(9, 'Nandini Rao', '8932154671027', 35, 'female', '7045986321', 'Mysuru', 'Spice Farming and Aromatic Crop Cultivation'),
(10, 'Krishnamurthy Iyengar  ', '987654321012', 39, 'male', '7890123456', 'Bengaluru', 'Crop Farming and Arable Agriculture'),
(11, 'Lakshmi Menon', '876543210987', 40, 'female', '6543210987', 'Chennai', 'Apiculture and Honey Production'),
(12, 'Ranganathan Subramanian', '765432109876', 45, 'male', '5432109876', 'Mumbai', 'Horticulture and Vegetable Cultivation'),
(13, 'Sarojini Das', '654321098765', 50, 'female', '4321098765', 'Kolkata', 'Horticulture and Vegetable Cultivation'),
(14, 'Ganeshwar Prasad', '543210987654', 55, 'male', '9210987654', 'Jaipur', 'Viticulture and Grape Farming'),
(15, 'Anna Josh', '432109876543', 30, 'female', '9876543210', 'Pune', 'Medicinal and Aromatic Plant Farming'),
(16, 'Govindarajan Iyengar', '321098765432', 31, 'male', '9876543232', 'Hyderabad', 'Spice Farming and Aromatic Crop Cultivation'),
(17, 'Mohini Patel', '210987654321', 47, 'female', '9876543210', 'Ahmedabad', 'Viticulture and Grape Farming'),
(18, 'Raghunandan', '109876543210', 62, 'male', '8765432109', 'Nilgiri', 'Floriculture and Ornamental Plant Cultivation');

--
-- Triggers `register`
--
DELIMITER $$
CREATE TRIGGER `deletion` BEFORE DELETE ON `register` FOR EACH ROW INSERT INTO trig VALUES(null,OLD.rid,'FARMER DELETED',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insertion` AFTER INSERT ON `register` FOR EACH ROW INSERT INTO trig VALUES(null,NEW.rid,'Farmer Inserted',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updation` AFTER UPDATE ON `register` FOR EACH ROW INSERT INTO trig VALUES(null,NEW.rid,'FARMER UPDATED',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`) VALUES
(1, 'testuser'),
(2, 'devuser2'),
(3, 'user3');

-- --------------------------------------------------------

--
-- Table structure for table `trig`
--

CREATE TABLE `trig` (
  `id` int(11) NOT NULL,
  `fid` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trig`
--

INSERT INTO `trig` (`id`, `fid`, `action`, `timestamp`) VALUES
(1, '2', 'FARMER UPDATED', '2021-01-19 23:04:44'),
(2, '2', 'FARMER DELETED', '2021-01-19 23:04:58'),
(3, '8', 'Farmer Inserted', '2021-01-19 23:16:52'),
(4, '8', 'FARMER UPDATED', '2021-01-19 23:17:17'),
(5, '8', 'FARMER DELETED', '2021-01-19 23:18:54'),
(6, '9', 'Farmer Inserted', '2024-01-28 00:39:50'),
(7, '10', 'Farmer Inserted', '2024-01-28 00:44:00'),
(8, '11', 'Farmer Inserted', '2024-01-28 00:48:16'),
(9, '12', 'Farmer Inserted', '2024-01-28 00:50:16'),
(10, '13', 'Farmer Inserted', '2024-01-28 01:12:12'),
(11, '14', 'Farmer Inserted', '2024-01-28 01:14:24'),
(12, '15', 'Farmer Inserted', '2024-01-28 01:24:45'),
(13, '16', 'Farmer Inserted', '2024-01-28 01:27:15'),
(14, '14', 'FARMER UPDATED', '2024-01-28 01:27:35'),
(15, '15', 'FARMER UPDATED', '2024-01-28 01:27:46'),
(16, '16', 'FARMER UPDATED', '2024-01-28 01:27:58'),
(17, '15', 'FARMER UPDATED', '2024-01-28 01:28:08'),
(18, '16', 'FARMER UPDATED', '2024-01-28 01:28:20'),
(19, '17', 'Farmer Inserted', '2024-01-28 01:33:18'),
(20, '18', 'Farmer Inserted', '2024-01-28 01:35:23'),
(21, '18', 'FARMER UPDATED', '2024-01-28 01:36:47'),
(22, '19', 'Farmer Inserted', '2024-01-28 01:37:22'),
(23, '19', 'FARMER DELETED', '2024-01-28 01:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(7, 'John Doe', 'user1@gmail.com', 'scrypt:32768:8:1$Zfk6P6r53WHV58mb$236839f37b555c8a0dff923db0a71d6b9365e75c42a430768c7f1b47d427f54f69aa8744d2be9b782fb790b3412ac3ba3ceb8ad378ab16d458ccf1e27c56df23'),
(9, 'Jane Smith', 'user2@gmail.com', 'scrypt:32768:8:1$OXJFj0hv8JsgdDzE$cc4a33792de9d36a56ac9a9f300bd4d062eab7ffb50a75e8aa0be1c745b421ffbb780c39e88c56531a0b7d6fe8c2eed9e4a67a574886fb4d06c7733b41fd53df'),
(10, 'Nandini Rao', 'cust1@gmail.com', 'scrypt:32768:8:1$QGZdhimXyIyPQQUU$63fab0555136df79828fc5b01828dcba4bd0f89f1eecccaf98e8c6bdf8652d29c925b7507a727bd0c869f32b86e4474cb2c255624451f6a5277355346f241e20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addagroproducts`
--
ALTER TABLE `addagroproducts`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `farming`
--
ALTER TABLE `farming`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trig`
--
ALTER TABLE `trig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addagroproducts`
--
ALTER TABLE `addagroproducts`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `farming`
--
ALTER TABLE `farming`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `trig`
--
ALTER TABLE `trig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
