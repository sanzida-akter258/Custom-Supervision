-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2021 at 07:58 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `import_export`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `email`, `password`, `phone`) VALUES
('Mostafizur Rahman', 'fuad@gmail.com', '247', '01624801503'),
('Rafiqul Jakir', 'rj@gmail.com', '276', '01879074212'),
('SanzidaAkter', 'sanzida@gmail.com', '258', '01995744537'),
('Tonima Islam', 'tonima@gmail.com', '263', '01319305402');

-- --------------------------------------------------------

--
-- Table structure for table `apply_for_clearence`
--

CREATE TABLE `apply_for_clearence` (
  `name_of_vessel` varchar(40) NOT NULL,
  `date` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `trade_license` varchar(30) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  `i_e_product_id` varchar(30) NOT NULL,
  `product_weight` varchar(30) NOT NULL,
  `i_e_country` varchar(30) NOT NULL,
  `total_tax_amount` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apply_for_clearence`
--

INSERT INTO `apply_for_clearence` (`name_of_vessel`, `date`, `user_id`, `trade_license`, `product_type`, `i_e_product_id`, `product_weight`, `i_e_country`, `total_tax_amount`) VALUES
('the ship', '2021-09-23', '101', ' EH485', 'Vehicles', 'im309', '3000kg', 'Japan', '15K'),
('queen marry', '2021-08-09', '101', ' EH485', 'Steel', 'im310', '2500kg', 'USA', '20k'),
('the ship', '2021-08-03', '105', ' EW485', 'Steel', 'im310', '1700kg', 'China', '15K'),
('queen marry', '2021-09-15', '102', ' ED485', 'Plastics', 'im306', '1600kg', 'China', '2.6k'),
('the ship', '2022-01-13', '201', 'WE458', 'Iron', 'ex309', '500kg', 'USA', '120k');

-- --------------------------------------------------------

--
-- Table structure for table `exported_country`
--

CREATE TABLE `exported_country` (
  `ex_country` varchar(30) NOT NULL,
  `ex_product_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exported_country`
--

INSERT INTO `exported_country` (`ex_country`, `ex_product_type`) VALUES
('japan', 'Electronics'),
('Brazil', 'Vehicles'),
('Japan', 'cotton'),
('China', 'cotton');

-- --------------------------------------------------------

--
-- Table structure for table `exported_product`
--

CREATE TABLE `exported_product` (
  `exporter_id` varchar(30) NOT NULL,
  `ex_product_id` varchar(30) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  `exported_country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exported_product`
--

INSERT INTO `exported_product` (`exporter_id`, `ex_product_id`, `product_type`, `exported_country`) VALUES
('201', 'ex785', 'Electronics', 'japan'),
('201', 'ex586', 'Vehicles', 'Brazil'),
('201', 'ex896', 'cotton', 'Japan'),
('201', 'ex402', 'cotton', 'China');

-- --------------------------------------------------------

--
-- Table structure for table `exporter`
--

CREATE TABLE `exporter` (
  `exporter_id` varchar(10) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `trade_license` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exporter`
--

INSERT INTO `exporter` (`exporter_id`, `company_name`, `trade_license`, `phone`, `email`, `password`) VALUES
('205', 'Defoin Bangladesh Korea Limite', 'WF482', '01879521478', 'defoin@gmail.com', 'defoin'),
('202', 'Dream Plus International Ltd.', 'ET482', '01578248795', 'dpi@gmail.com', 'dpi'),
('206', 'JAEXIMCO HOLDING (BD) PVT LTD', 'AR895', '01879521478', 'jaex@gmail.com', 'jaex'),
('201', 'JMI Export Import Co. Ltd.', 'WE458', '01875214785', 'jmi@gmail.com', 'jmi'),
('203', 'Muhammad Export Import Co.', 'EF582', '01875214785', 'muhammad@gmail.com', 'muhammad'),
('204', 'Trust Infinity Firms Banglades', 'ED789', '01879521478', 'tifb@gmail.com', 'tifb');

-- --------------------------------------------------------

--
-- Table structure for table `ex_customs`
--

CREATE TABLE `ex_customs` (
  `name_of_vessel` varchar(30) NOT NULL,
  `date_of_exported` varchar(30) NOT NULL,
  `exporter_id` varchar(30) NOT NULL,
  `trade_license` varchar(30) NOT NULL,
  `product_type` varchar(30) DEFAULT NULL,
  `ex_product_id` varchar(30) DEFAULT NULL,
  `exporter_country` varchar(30) DEFAULT NULL,
  `total_tax_amount` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ex_customs`
--

INSERT INTO `ex_customs` (`name_of_vessel`, `date_of_exported`, `exporter_id`, `trade_license`, `product_type`, `ex_product_id`, `exporter_country`, `total_tax_amount`) VALUES
('queen marry', '2021-09-15', '201', ' WE458', 'Electronics', 'ex785', 'japan', '20k'),
('the ship', '2021-11-11', '201', ' WE458', 'Vehicles', 'ex586', 'Brazil', '1.5k'),
('queen marry', '2022-01-20', '201', 'WE458', 'cotton', 'ex896', 'Japan', '20k'),
('santa maría', '2021-11-18', '201', ' WE458', 'cotton', 'ex402', 'China', '20k');

-- --------------------------------------------------------

--
-- Table structure for table `ex_warehouse`
--

CREATE TABLE `ex_warehouse` (
  `exporter_id` varchar(30) NOT NULL,
  `ex_product_id` varchar(30) NOT NULL,
  `product_weight` varchar(30) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ex_warehouse`
--

INSERT INTO `ex_warehouse` (`exporter_id`, `ex_product_id`, `product_weight`, `product_type`, `country`) VALUES
('201', 'ex785', '1000kg', 'Electronics', 'japan'),
('201', 'ex586', '1600kg', 'Vehicles', 'Brazil'),
('201', 'ex896', '1000kg', 'cotton', 'Japan'),
('201', 'ex402', '1000kg', 'cotton', 'China');

-- --------------------------------------------------------

--
-- Table structure for table `imported_country`
--

CREATE TABLE `imported_country` (
  `country` varchar(30) NOT NULL,
  `product_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `imported_country`
--

INSERT INTO `imported_country` (`country`, `product_type`) VALUES
('Japan', 'Electronics'),
('China', 'Cotton'),
('Brazil', 'Plastics'),
('Bhutan', 'Mineral fuels'),
('japan', 'Electronics'),
('Brazil', 'cotton'),
('Japan', 'Electronics'),
('China', 'Cotton'),
('Brazil', 'Plastics'),
('Bhutan', 'Mineral fuels'),
('USA', 'Precious Gems'),
('China', 'Plastics'),
('Canada', 'Steel'),
('England', 'Plastics'),
('China', 'Steel'),
('Japan', 'Precious Gems'),
('China', 'Iron'),
('Japan', 'Vehicles'),
('USA', 'Steel');

-- --------------------------------------------------------

--
-- Table structure for table `imported_product`
--

CREATE TABLE `imported_product` (
  `importer_id` varchar(30) NOT NULL,
  `im_product_id` varchar(30) NOT NULL,
  `product_type` varchar(40) NOT NULL,
  `imported_country` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `imported_product`
--

INSERT INTO `imported_product` (`importer_id`, `im_product_id`, `product_type`, `imported_country`) VALUES
('101', 'im_145', 'Electronics', 'japan'),
('101', 'im_309', 'cotton', 'Brazil'),
('101', 'im302', 'Electronics', 'Japan'),
('102', 'im303', 'Cotton', 'China'),
('103', 'im306', 'Plastics', 'Brazil'),
('104', 'im307', 'Mineral fuels', 'Bhutan'),
('102', 'im308', 'Precious Gems', 'USA'),
('102', 'im306', 'Plastics', 'China'),
('103', 'im310', 'Steel', 'Canada'),
('104', 'im306', 'Plastics', 'England'),
('105', 'im310', 'Steel', 'China'),
('105', 'im308', 'Precious Gems', 'Japan'),
('101', 'im305', 'Iron', 'China'),
('101', 'im309', 'Vehicles', 'Japan'),
('101', 'im310', 'Steel', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `importer`
--

CREATE TABLE `importer` (
  `importer_id` varchar(10) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `trade_license` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `importer`
--

INSERT INTO `importer` (`importer_id`, `company_name`, `trade_license`, `phone`, `email`, `password`) VALUES
('105', 'Bangladesh Impex Gallery', 'EW485', '019658745825', 'impex@gmail.com', 'impex'),
('103', 'Messrs Lace Corner', 'DR785', '01875962478', 'messrs@gmail.com', 'messrs'),
('101', 'Muhammad Export Import Co.', 'EH485', '0145785698', 'muhammad@gmail.com', 'muhammad'),
('102', 'Rahmans Original Trade', 'ED485', '01825647895', 'rahmans@gmail.com', 'rahmans'),
('104', 'UNCO Express Bangladesh', 'ER4851', '01878548562', 'unco@gmail.com', 'unco');

-- --------------------------------------------------------

--
-- Table structure for table `im_customs_clearance`
--

CREATE TABLE `im_customs_clearance` (
  `name_of_vessel` varchar(40) NOT NULL,
  `date_of_arrival` varchar(30) NOT NULL,
  `importer_id` varchar(30) NOT NULL,
  `trade_license` varchar(30) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  `im_product_id` varchar(30) NOT NULL,
  `importer_country` varchar(30) NOT NULL,
  `total_tax_amount` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `im_customs_clearance`
--

INSERT INTO `im_customs_clearance` (`name_of_vessel`, `date_of_arrival`, `importer_id`, `trade_license`, `product_type`, `im_product_id`, `importer_country`, `total_tax_amount`) VALUES
('Oasis class', '2021-11-02', '101', 'EH485', 'Electronics', 'im302', 'Japan', '15K'),
('Queen Mary', '2021-08-20', '101', 'EH485', 'cotton', 'im_309', 'Brazil', '1.5k');

-- --------------------------------------------------------

--
-- Table structure for table `im_warehouse`
--

CREATE TABLE `im_warehouse` (
  `importer_id` varchar(30) NOT NULL,
  `im_product_id` varchar(30) NOT NULL,
  `product_weight` varchar(30) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `im_warehouse`
--

INSERT INTO `im_warehouse` (`importer_id`, `im_product_id`, `product_weight`, `product_type`, `country`) VALUES
('101', 'im_145', '150kg', 'Electronics', 'japan'),
('102', 'im303', '1800kg', 'Cotton', 'China'),
('103', 'im306', '1600kg', 'Plastics', 'Brazil'),
('104', 'im307', '1900kg', 'Mineral fuels', 'Bhutan'),
('102', 'im308', '1800kg', 'Precious Gems', 'USA'),
('102', 'im306', '1600kg', 'Plastics', 'China'),
('103', 'im310', '1380kg', 'Steel', 'Canada'),
('104', 'im306', '1400kg', 'Plastics', 'England'),
('105', 'im310', '1700kg', 'Steel', 'China'),
('105', 'im308', '1680kg', 'Precious Gems', 'Japan'),
('101', 'im305', '1600kg', 'Iron', 'China'),
('101', 'im309', '3000kg', 'Vehicles', 'Japan'),
('101', 'im310', '2500kg', 'Steel', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `product_in_warehouse`
--

CREATE TABLE `product_in_warehouse` (
  `importer_id` varchar(30) NOT NULL,
  `im_product_id` varchar(30) NOT NULL,
  `exporter_id` varchar(30) NOT NULL,
  `ex_product_id` varchar(30) NOT NULL,
  `product_weight` varchar(30) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_in_warehouse`
--

INSERT INTO `product_in_warehouse` (`importer_id`, `im_product_id`, `exporter_id`, `ex_product_id`, `product_weight`, `product_type`, `country`) VALUES
('102', 'im302', '', '', '300kg', 'Electronics', 'China'),
('103', 'im303', '', '', '500kg', 'Cotton', 'China'),
('104', 'im304', '', '', '100kg', 'Toys', 'China'),
('105', 'im305', '', '', '2000kg', 'Iron', 'China'),
('106', 'im306', '', '', '300kg', 'Plastics', 'China'),
('107', 'im307', '', '', '1000kg', 'Mineral fuels', 'China'),
('108', 'im308', '', '', '50kg', 'Precious Gems', 'China'),
('109', 'im309', '', '', '3000kg', 'Vehicles', 'China'),
('110', 'im310', '', '', '1000kg', 'Steel', 'China'),
('', '', '201', 'ex401', '70kg', 'jewellery', 'China'),
('', '', '202', 'ex402', '50kg', 'phone', 'China'),
('', '', '203', 'ex403', '200kg', 'beef', 'China'),
('', '', '204', 'ex404', '4000kg', 'steel', 'China'),
('', '', '205', 'ex405', '500kg', 'cotton', 'China'),
('', '', '206', 'ex406', '5000kg', 'car', 'China'),
('', '', '207', 'ex407', '500kg', 'sugar', 'China'),
('', '', '208', 'ex408', '30kg', 'diamonds', 'China'),
('', '', '209', 'ex409', '1000kg', 'rice', 'China'),
('', '', '210', 'ex410', '500kg', 'fish', 'China'),
('101', 'im302', '', '', '520kg', 'Electronics', 'China'),
('', '', '201', 'ex401', '500kg', 'beef', 'China'),
('', '', '201', 'ex405', '45kg', 'cotton', 'China'),
('', '', '201', 'ex407', '500kg', 'sugar', ''),
('101', 'im310', '', '', '1200kg', 'Steel', 'Brazil'),
('101', 'im306', '', '', '800kg', ' 	Plastics', 'China'),
('101', 'im302', '', '', '1200kg', 'Electronics', 'India'),
('101', ' 	im304', '', '', '1000kg', 'Toys', 'japan'),
('101', ' 	im304', '', '', '1000kg', 'Toys', 'japan'),
('101', 'im309', '', '', '45kg', 'cotton', 'Brazil'),
('', '', '202', 'ex407', '500kg', 'sugar', 'Canada'),
('', '', '202', 'ED405', '105kg', 'Electronics', 'japan'),
('', '', '202', 'ex452', '12kg', 'Electronics', 'japan'),
('', '', '202', 'ex452', '12kg', 'Electronics', 'japan'),
('', '', '202', 'ex403', '500kg', 'cotton', 'japan'),
('', '', '202', 'im309', '1200kg', 'Electronics', 'Bhutan'),
('', '', '201', 'im305', '1000kg', 'Electronics', 'japan'),
('', '', '202', 'ex402', '500kg', 'Electronics', 'japan'),
('', '', '201', 'ex403', '420kg', 'Vehicles', 'Brazil');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_fee`
--

CREATE TABLE `warehouse_fee` (
  `product_type` varchar(30) NOT NULL,
  `percentage` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `warehouse_fee`
--

INSERT INTO `warehouse_fee` (`product_type`, `percentage`) VALUES
('Machineries', '5'),
('Electronics', '3'),
('Cotton', '2'),
('Toys', '2'),
('Iron', '5'),
('Mineral fuels', '4'),
('Vehicles', '8'),
('Steel', '2'),
('Precious Gems', '5'),
('Plastics', '3'),
('phone', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `exporter`
--
ALTER TABLE `exporter`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `exporter_id` (`exporter_id`);

--
-- Indexes for table `importer`
--
ALTER TABLE `importer`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
