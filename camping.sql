-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 06:29 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `camping`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id_accounts` int(10) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id_accounts`, `username`, `password`) VALUES
(1, 'admin', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberID` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberID`, `name`, `email`, `mobile`, `username`, `password`, `address`) VALUES
(1, 'sippakorn', 'sippakorn3866@gmail.com', '0648193866', 'op03', '9876', '268');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `Address` text NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `TotalPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerName`, `Address`, `ProductID`, `Quantity`, `OrderDate`, `TotalPrice`) VALUES
(239, 'เพลง', 'บางเเค', 2, 3, '2023-03-26', '1695.00'),
(240, 'เพลง', 'บางเเค', 2, 3, '2023-03-26', '1695.00'),
(241, 'เพลง', 'บางเเค', 2, 3, '2023-03-26', '1695.00'),
(242, 'เพลง', 'บางเเค', 2, 3, '2023-03-26', '1695.00'),
(243, 'เพลง', '268', 1, 3, '2023-03-26', '2550.00'),
(244, 'เพลง', 'บางเเค', 21, 3, '2023-03-26', '7500.00'),
(245, 'eiei', 'bangkae', 1, 2, '2023-03-27', '1700.00'),
(246, 'เพลง', 'บางเเค', 6, 3, '2023-03-27', '11985.00'),
(247, 'เพลง', 'บางเเค', 3, 2, '2023-03-27', '2900.00'),
(248, 'eiei', 'บางเเค', 1, 5, '2023-03-27', '4250.00'),
(249, 'pleng', 'bangkae', 1, 3, '2023-03-27', '2550.00'),
(250, 'pleng', 'bangkae', 1, 2, '2023-03-27', '1700.00'),
(251, 'pleng', 'bangkae', 15, 2, '2023-03-27', '5180.00'),
(252, 'pleng', 'bangkae', 23, 5, '2023-03-27', '1795.00');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` int(20) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `MobilePhone` varchar(20) NOT NULL,
  `SlipPayment` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentID`, `OrderID`, `MobilePhone`, `SlipPayment`, `Email`) VALUES
(83, 0, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn3866@gmail.'),
(84, 0, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn3866@gmail.'),
(85, 242, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn3866@gmail.'),
(86, 242, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn3866@gmail.'),
(87, 243, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn3866@gmail.'),
(88, 243, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn3866@gmail.'),
(89, 243, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn3866@gmail.'),
(90, 243, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn3866@gmail.'),
(91, 244, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn3866@gmail.'),
(92, 245, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn3866@gmail.'),
(93, 246, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn3866@gmail.'),
(94, 246, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn3866@gmail.'),
(95, 246, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn3866@gmail.'),
(96, 246, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn3866@gmail.'),
(97, 247, '0648193866', 'สกรีนช็อต 2023-03-04', 'sippakorn7640@gmail.'),
(98, 247, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn3866@gmail.'),
(99, 249, '0648193866', 'สกรีนช็อต 2023-03-08', 'sippakorn3866@gmail.'),
(100, 250, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn7640@gmail.'),
(101, 250, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn7640@gmail.'),
(102, 250, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn7640@gmail.'),
(103, 250, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn7640@gmail.'),
(104, 250, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn7640@gmail.'),
(105, 250, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn7640@gmail.'),
(106, 252, '0648193866', 'สกรีนช็อต 2023-03-02', 'sippakorn3866@gmail.');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_ID` int(20) NOT NULL,
  `product_Name` varchar(50) NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_detail` varchar(50) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_ID`, `product_Name`, `product_price`, `product_detail`, `image`) VALUES
(1, 'กระโจมวิปัสสนา นั่งสมาธิ', 850, 'นั่งสมาธิได้ 1 คน', 'Samadhi.jpg'),
(2, 'เต็นท์ Mini Camp', 565, 'นอนได้ 1-2 คน', 'Mini-CampTents.jpg'),
(3, 'เต็นท์ Colour P3', 1450, 'นอนได้ 3-4 คน', 'Colour-P3.jpg'),
(4, 'เต็นท์ LaiArmy P4 ลายพรางทหาร', 1650, 'นอนได้ 3-5 คน', 'LaiArmy-P4.jpg'),
(5, 'เต็นท์ Freedom 5', 2990, 'นอนได้ 5 คน', 'Freedom-5.jpg'),
(6, 'เต็นท์ Aurora V', 3995, 'นอนได้ 5-6 คน', 'Aurora-V.jpg'),
(7, 'เต็นท์ครอบครัวสนามเดินป่า Lagoona JR', 6999, 'นอนได้ 6-8 คน', 'Lagoona-JR.jpg'),
(8, 'เต็นท์ลูกเสือ Scout Shelter', 5350, 'นอนได้ 10 คน', 'Scout-Shelter.jpg'),
(9, 'เต็นท์รีสอร์ท 1 Tent Resort I', 14000, 'นอนได้ 12 คน', 'Resort-II-Tent-1.jpg'),
(10, 'เต็นท์รีสอร์ท PARADISE Tent', 21500, 'สำหรับครอบครัว', 'resort-tent.jpg'),
(11, 'ถุงนอนราคาถูก SleepingBag 80', 420, 'ถุงนอนราคาถูก รุ่น SleepingBag 80 ถุงนอนราคาถูก', 'SleepingBag-Camping.jpg'),
(12, 'ถุงนอน Polar Sheild 350 Plus', 1650, 'ถุงนอน รุ่น Polar Sheild 350 Plus เป็นถุงนอนอย่างด', 'Polar-Sheild-350-Plus.jpg'),
(13, 'ถุงนอน Emperor 1000', 8500, 'ถุงนอนขนเป็ด รุ่น Emperor 1000 เป็นถุงนอนอย่างดี', 'Emperor-1000.jpg'),
(14, 'เก้าอี้สนาม Folding Arm Chair', 690, 'ก้าอี้สนาม รุ่น Folding Arm Chair ราคาถูก พกพาสะดว', 'Folding-ArmChair.jpg'),
(15, 'เก้าอี้สนามเดินป่า King Size Ranger (ปรับระดับได้)', 2590, 'เก้าอี้สนามเดินป่า รุ่น King Size Ranger ราคาถูก ', 'King-Size-Blue.jpg'),
(16, 'กระเป๋ากันน้ำ Ocean Pack 6L', 400, 'ถุงกระเป๋ากันน้ำ Ocean Pack ขนาด 6 ลิตร', 'OceanPack-6L.jpg'),
(17, 'กระเป๋ากันน้ำ Ocean Pack 15L', 620, 'ถุงกระเป๋ากันน้ำ Ocean Pack ขนาด 15 ลิตร', 'OceanPack15L.jpg'),
(18, 'กระเป๋ากันน้ำ Ocean Pack 20L', 680, 'ถุงกระเป๋ากันน้ำ Ocean Pack ขนาด 20 ลิตร', 'OceanPack20L.jpg'),
(19, 'กระเป๋ากันน้ำ Ocean Pack 30L', 720, 'ถุงกระเป๋ากันน้ำ Ocean Pack ขนาด 30 ลิตร ', 'OceanPack 30L.jpg'),
(20, 'กระเป๋ากันน้ำ Ocean Pack 40L', 820, 'ถุงกระเป๋ากันน้ำ Ocean Pack ขนาด 40 ลิตร', 'Ocean-Pack-40L.jpg'),
(21, 'Fire Maple FMS-108 Stove', 2500, 'เตาขนาดใหญ่ เหมาะสำหรับงานหนัก ใหญ่ขนาดทำกับข้าวได', 'Fire Maple.webp'),
(22, 'Solo Stove Yukon + Stand', 20500, 'เตาขนาดใหญ่ที่สุดของ Solo Stove กว้าง 30นิ้ว', 'Solo Stove Yukon.webp'),
(23, 'ชุดหัวเตาพร้อมแก็สขนาดพกพา', 359, 'ชุดหัวเตาพร้อมแก็สขนาดพกพา แถมฟรี! กระเป๋าจัดเก็บ', 'camping.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id_accounts`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id_accounts` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `memberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PaymentID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
