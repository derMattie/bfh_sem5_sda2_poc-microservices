-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 04, 2020 at 06:03 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marketpos-2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart_inprogress`
--

CREATE TABLE `cart_inprogress` (
  `CID` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `customer_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_number` double NOT NULL,
  `rewards` float DEFAULT NULL,
  `street_address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`customer_id`, `email`, `password`, `first_name`, `last_name`, `phone_number`, `rewards`, `street_address`, `city`, `state`, `zip_code`) VALUES
(1, 'johnnyfran20002@gmail.com', 'passwood', 'Johnny', 'Tejada', 6463214487, 33, '10005 Hawk Drive ', 'Queens', 'NY', 12321),
(2, 'tylerherro23@gmail.com', 'password', 'Tyler', 'Herro', 3475436578, 90, '12th Street', 'New York', 'NY', 9874),
(3, 'bronny45@hotmail.com', 'lebron', 'Bronny', 'James', 2124567656, 44, '21 Wood Street', 'Woodhaven', 'VT', 7384),
(4, 'kyrieirving2@hotmail.com', 'kyrie', 'Kyrie', 'Irving', 2123434567, 14, '74 2nd Ave', 'New York', 'NY', 12343),
(6, 'michaelj23@gmail.com', 'jordan', 'Michael', 'Jordan', 2125468796, 44, '14th Street', 'Chicago ', 'IL', 76854),
(7, 'cp3@yahoo.com', 'phzsuns', 'Chris', 'Paul', 8452341004, 0, '346 Broad St', 'Los Angeles', 'CA', 90212),
(9, 'bgates19@hotmail.com', 'apple', 'Bill', 'Gates', 3479845093, 0, '109 19th Street', 'Sacramento', 'CA', 29343);

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE `employee_info` (
  `employee_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `pin_number` int(11) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `user_id` double DEFAULT NULL,
  `phone_number` double NOT NULL,
  `SSN` double DEFAULT NULL,
  `street_address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `company_name` varchar(50) NOT NULL,
  `number_of_stores` varchar(11) DEFAULT NULL,
  `user_type` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`employee_id`, `email`, `password`, `pin_number`, `first_name`, `last_name`, `user_id`, `phone_number`, `SSN`, `street_address`, `city`, `state`, `zip_code`, `start_date`, `company_name`, `number_of_stores`, `user_type`, `customer_id`) VALUES
(1, 'johnnyfran20002@gmail.com', 'passwood', 231, 'Johnny', 'Tejada', 214564056, 6463214487, 756434736, '10005 Hawk Drive', 'Queens', 'NY', 11105, '2020-11-02', 'Walmart', '3', 1, 1),
(2, 'tylerherro23@gmail.com', 'herro', 112, 'Tyler', 'Herro', 435678987, 3475436897, 123456789, '12th Street', 'New York', 'NY', 9873, '2019-07-01', 'Shop Rite', NULL, 2, 2),
(3, 'bronny45@hotmail.com', 'lebron', 113, 'Bronny', 'James', 112323454, 2124568745, 78234325, '21 Wood Street', 'Woodhaven', 'VT', 12321, '2019-03-02', 'Walmart', NULL, 2, 3),
(4, 'usher54@aim.com', 'usher', 555, 'Usher', 'Man', 345432345, 8454342212, 958674345, '76 Cross Street', 'Houston', 'NY', 85743, '2020-12-05', 'Walmart', NULL, 2, NULL),
(5, 'chrisbrown@gmail.com', 'pass', 111, 'Chris', 'Brown', 111111111, 7187654783, 746378273, '19 West Street', 'Denver', 'CL', 43454, '2019-07-03', 'Walmart', NULL, 2, NULL),
(6, 'kyrieirving2@hotmail.com', 'kyrie', 705, 'Kyrie', 'Irving', 123456789, 2129857843, 123456789, '71 2nd Ave', 'New York', 'NY', 12343, '2017-07-03', 'Tops', '4', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `gift_card`
--

CREATE TABLE `gift_card` (
  `gift_id` int(11) NOT NULL,
  `promo_number` double NOT NULL,
  `card_balance` float NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gift_card`
--

INSERT INTO `gift_card` (`gift_id`, `promo_number`, `card_balance`, `ticket_id`, `customer_id`) VALUES
(3, 26576, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_list`
--

CREATE TABLE `item_list` (
  `ITID` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OID` int(11) NOT NULL,
  `OTID` int(11) NOT NULL,
  `stock_amount` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders_ticket`
--

CREATE TABLE `orders_ticket` (
  `OTID` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `tax` float DEFAULT NULL,
  `tax_rate` float DEFAULT NULL,
  `cash` float DEFAULT NULL,
  `credit` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory`
--

CREATE TABLE `product_inventory` (
  `product_id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `productType` varchar(50) NOT NULL,
  `productSubType` varchar(50) NOT NULL,
  `unit_price` float NOT NULL,
  `cost` float NOT NULL,
  `in_stock` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_inventory`
--

INSERT INTO `product_inventory` (`product_id`, `brand`, `description`, `productName`, `productType`, `productSubType`, `unit_price`, `cost`, `in_stock`, `vendor_id`) VALUES
(1, 'Fat Free', 'Half and Half', 'Dairy Pure', 'Dairy', 'Milk', 8.99, 6.99, 10, 1),
(2, 'Organic Whole Milk', 'Organic Vitamin D Milk', 'Horizon', 'Dairy', 'Milk', 10.45, 8.99, 3, 1),
(3, 'Cheddar Sliced Cheese', 'Natural Medium', 'Sargento', 'Dairy', 'Cheese', 7.89, 5.15, 5, 1),
(4, 'Irish Cheddar', 'Reverse Cheddar Cheese', 'Kerrygold Cheddar', 'Dairy', 'Cheese', 9.99, 6.99, 65, 1),
(5, 'Organic Banana', '2lbs', 'Dole', 'Produce', 'Banana', 4.99, 3.45, 56, 1),
(6, 'Strawberries', '1lb package', 'Driscolls', 'Produce', 'Strawberries', 8.95, 6.99, 45, 1),
(7, 'Red Cherry Tomato', '10.5oz package', 'Cherry', 'Produce', 'Tomato', 5.59, 3.99, 21, 1),
(8, 'Organic Red Grape Tomatoes', '10 oz package', 'Brandywine', 'Produce', 'Tomato', 8.99, 5.75, 2, 1),
(9, ' Sht Cuts Grlld Ital Chic Strip', '22oz', 'Perdue chicken breast', 'Poultry', 'ChickenBreast', 7.49, 6.99, 7, 2),
(10, ' Sht Cuts Grlld Ital Chic Legs', '22oz', 'Perdue chicken legs', 'Poultry', 'ChickenLeg', 7.49, 6.99, 12, 2),
(12, ' Five Star Beef', '16oz', 'Tyson steaks', 'Beef', 'Steak', 10.49, 9.99, 19, 2),
(13, ' Five Star Flanks', '30oz', 'Tyson flanks', 'Beef', 'Flank', 14.49, 12.99, 60, 2),
(14, ' Bush', '2oz', 'Bushs Black Beans', 'DryGoods', 'Beans', 4.49, 2.99, 20, 2),
(15, ' Heinz', '5oz', 'Heinz Baked Beans', 'DryGoods', 'Beans', 5.49, 4.99, 60, 2),
(16, ' Goya', '4oz', 'Goya Black Beans', 'DryGoods', 'Beans', 6.99, 5.99, 6, 2),
(17, ' Hormel Foods', '3oz', 'Canned Spam', 'DryGoods', 'Cans', 3.49, 2.99, 50, 2),
(18, ' Dole', '3oz', 'Doles Canned Tropical Fruit', 'DryGoods', 'Cans', 4.49, 2.99, 60, 2),
(19, ' Campbells', '3oz', 'Campbells Canned Soup', 'DryGoods', 'Cans', 3.49, 2.99, 50, 2),
(20, ' Healthy Choice', '4oz', 'Healthy Choice Canned Peas', 'DryGoods', 'Cans', 3.65, 2.89, 50, 2),
(21, ' Heckers', '4lb', 'Heckers All Purpose Flour', 'DryGoods', 'Flour', 10.99, 9.99, 68, 2),
(22, ' Bobs Red Mill', '4lb', 'Bobs Red Mill All Purpose Flour', 'DryGoods', 'Flour', 12.99, 10.99, 32, 2),
(23, ' King Arthur', '4lb', 'King Arthur All Purpose Flour', 'DryGoods', 'Flour', 13.99, 12.99, 54, 2),
(24, ' Pillsbury', '4oz', 'Pillsburrys Best All Purpose Flour', 'DryGoods', 'Flour', 12.99, 11.99, 61, 2),
(25, ' Domino', '5oz', 'Domino Sugar', 'DryGoods', 'Sugar', 6.99, 5.99, 6, 2),
(26, ' NJOY', '5oz', 'NJOY Pure Cane Sugar', 'DryGoods', 'Sugar', 7.99, 6.99, 62, 2),
(27, ' Anthonys', '5oz', 'Organic Cane Sugar by Anthonys', 'DryGoods', 'Sugar', 7.99, 6.99, 62, 2),
(28, ' Pedigree', '7lb', 'Pedigrees Roasted Chicken ', 'PetFood', 'Dog', 10.99, 9.99, 64, 2),
(29, ' Blue Wilderness', '7lb', 'Blue Wilderness Salmon', 'PetFood', 'Dog', 6.99, 5.99, 6, 2),
(30, ' Cesars', '5oz', 'Cesars Filet', 'PetFood', 'Dog', 4.99, 3.99, 63, 2),
(31, ' Meow Mix', '7lb', 'Meow Mix Dry Chicken', 'PetFood', 'Cat', 6.99, 5.99, 7, 2),
(32, ' Purina', '7lb', 'Purina Salmon Flavor', 'PetFood', 'Cat', 6.99, 5.99, 73, 2),
(33, ' American Journey', '7lb', 'American Journey turkey and Chicken', 'PetFood', 'Cat', 8.99, 7.99, 45, 2),
(34, ' Nine Lives', '7lb', 'Nine Lives Daily Essentials ', 'PetFood', 'Cat', 6.99, 5.99, 73, 2),
(35, ' Barilla', '5oz', 'Barilla Spaghetti', 'Pasta', 'Spaghetti', 6.99, 5.99, 62, 2),
(36, ' De Cecco', '5oz', 'De Cecco Spaghetti', 'Pasta', 'Spaghetti', 8.99, 6.99, 64, 2),
(37, ' Whole Foods', '5oz', 'Whole Foods 365 Spaghetti', 'Pasta', 'Spaghetti', 7.99, 6.99, 63, 2),
(38, ' Palmini', '5oz', 'Palmini Low Carb Lasagna', 'Pasta', 'Lasagna', 8.99, 6.99, 64, 2),
(39, ' Palmini', '5oz', 'Palmini Low Carb Lasagna', 'Pasta', 'Lasagna', 12.99, 10.99, 64, 2),
(40, ' Chef Boyardee', '5oz', 'Chef Boyardee Lasagna', 'Pasta', 'Lasagna', 9.99, 8.99, 64, 2),
(41, ' Quinoa', '7oz', 'Quinoa Mac and Cheese', 'Pasta', 'Macaroni', 13.99, 12.99, 644, 2),
(42, ' Mrs Leepers', '7oz', 'Mrs Leepers Gluten free Mac and Cheese', 'Pasta', 'Macaroni', 14.99, 13.99, 634, 2),
(43, ' Kraft', '7oz', 'Kraft Macaroni and Cheese', 'Pasta', 'Macaroni', 14.99, 13.99, 264, 2),
(44, ' Velveeta', '7oz', 'Velveeta Macaroni', 'Pasta', 'Macaroni', 13.99, 12.99, 1624, 2),
(45, ' Ronzoni', '7oz', 'Ronzoni Rigatoni', 'Pasta', 'Rigatoni', 12.99, 11.99, 14, 2),
(46, ' Organic', '7oz', 'Organic Brown Rigatoni', 'Pasta', 'Rigatoni', 15.99, 12.99, 114, 2),
(47, ' Ronzoni', '7oz', 'Garafalo Rigatoni', 'Pasta', 'Rigatoni', 13.99, 12.99, 134, 2),
(48, ' Angel Soft', '2lb', 'Angel Soft Single Sheet', 'Bathroom', 'ToiletPaper', 12.99, 11.99, 16, 2),
(49, ' Charmin Ultrta', '2lb', 'Charmin Ultrta Soft', 'Bathroom', 'ToiletPaper', 15.99, 14.99, 164, 2),
(50, ' Charmin Ultrta', '2lb', 'Charmin Ultrta Strong', 'Bathroom', 'ToiletPaper', 16.99, 15.99, 1645, 2),
(51, ' Green Forest', '2lb', 'Green Forest Two Ply', 'Bathroom', 'ToiletPaper', 16.99, 15.99, 124, 2),
(52, ' Soft Soap', '2oz', 'Soft Soap Fresh Breeze', 'Bathroom', 'HandSoap', 13.99, 12.99, 14, 2),
(53, ' Dial', '2oz', 'Dial Coconut Water', 'Bathroom', 'HandSoap', 10.99, 9.99, 16, 2),
(54, ' Meyers', '4lb', 'Meyers Clean Day', 'Bathroom', 'HandSoap', 11.99, 10.99, 23, 2),
(55, ' Bounty', '4lb', 'Bounty Quicker Picker Upper', 'Bathroom', 'PaperTowels', 15.99, 14.99, 23, 2),
(56, ' Marcal', '4lb', 'Marcal Double Sheet', 'Bathroom', 'PaperTowels', 18.99, 17.99, 23, 2),
(57, ' Brawny', '4lb', 'Brawny XL', 'Bathroom', 'PaperTowels', 12.99, 11.99, 23, 2),
(58, ' Sparkle', '4lb', 'Sparkle Ultra Strong', 'Bathroom', 'PaperTowels', 14.99, 13.99, 23, 2),
(59, ' Glad', '4lb', 'Glad Guarenteed Strong', 'Bathroom', 'GarbageBags', 15.99, 14.99, 23, 2),
(60, ' Hefty', '4lb', 'Hefty Extra Strong', 'Bathroom', 'GarbageBags', 14.99, 13.99, 23, 2),
(61, ' Kirkland', '4lb', 'Kirkland Drawstring Bag', 'Bathroom', 'GarbageBags', 16.99, 15.99, 23, 2),
(62, ' Glad', '4lb', 'Glad Force Flex', 'Bathroom', 'GarbageBags', 15.99, 14.99, 23, 2);

-- --------------------------------------------------------

--
-- Table structure for table `registers_table`
--

CREATE TABLE `registers_table` (
  `register_id` int(11) NOT NULL,
  `open_total` float NOT NULL,
  `close_total` float DEFAULT NULL,
  `register_num` int(11) NOT NULL,
  `open_emp_id` int(11) NOT NULL,
  `close_emp_id` int(11) DEFAULT NULL,
  `open_time` datetime NOT NULL,
  `close_time` datetime DEFAULT NULL,
  `drop_time` datetime DEFAULT NULL,
  `drop_emp_id` int(11) DEFAULT NULL,
  `drop_total` float DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `return_table`
--

CREATE TABLE `return_table` (
  `RTID` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `refunds` float NOT NULL,
  `exchanges` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `SID` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tax_table`
--

CREATE TABLE `tax_table` (
  `TTID` int(11) NOT NULL,
  `tax_year` year(4) NOT NULL,
  `state_tax` float NOT NULL,
  `county_tax` float NOT NULL,
  `city_rate` float NOT NULL,
  `tax_rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tax_table`
--

INSERT INTO `tax_table` (`TTID`, `tax_year`, `state_tax`, `county_tax`, `city_rate`, `tax_rate`) VALUES
(1, 2020, 0.04, 0.04, 0.08, 0.08);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_system`
--

CREATE TABLE `ticket_system` (
  `ticket_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `time` time NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` float NOT NULL,
  `total` float NOT NULL,
  `cost` float NOT NULL,
  `discount` float DEFAULT NULL,
  `tax` float NOT NULL,
  `tax_rate` float NOT NULL,
  `cash` float NOT NULL,
  `credit` float NOT NULL,
  `cart_purchase` tinyint(1) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendorinfo`
--

CREATE TABLE `vendorinfo` (
  `vendor_id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `department` varchar(100) NOT NULL,
  `street_address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `phone_number` double NOT NULL,
  `fax_number` double NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendorinfo`
--

INSERT INTO `vendorinfo` (`vendor_id`, `company_name`, `department`, `street_address`, `city`, `state`, `zip_code`, `phone_number`, `fax_number`, `email`) VALUES
(1, 'Krasdale Foods Inc', 'Frozen and Dairy', '400 Food Center Dr', 'Bronx', 'NY', 10474, 7183781100, 9146975200, 'web-inquires@krasdalefoods.com'),
(2, 'J & J NY Distributors', 'Poultry', '1343 Lafayette Ave', 'Bronx', 'NY', 10474, 7185890517, 7185890517, 'info@jjnycorp.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `CID` (`CID`);

--
-- Indexes for table `cart_inprogress`
--
ALTER TABLE `cart_inprogress`
  ADD PRIMARY KEY (`CID`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`);

--
-- Indexes for table `gift_card`
--
ALTER TABLE `gift_card`
  ADD PRIMARY KEY (`gift_id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `item_list`
--
ALTER TABLE `item_list`
  ADD PRIMARY KEY (`ITID`),
  ADD KEY `CID` (`CID`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OID`),
  ADD KEY `OTID` (`OTID`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders_ticket`
--
ALTER TABLE `orders_ticket`
  ADD PRIMARY KEY (`OTID`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `product_inventory`
--
ALTER TABLE `product_inventory`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `registers_table`
--
ALTER TABLE `registers_table`
  ADD PRIMARY KEY (`register_id`),
  ADD KEY `fk_open_emp_id` (`open_emp_id`),
  ADD KEY `fk_close_emp_id` (`close_emp_id`),
  ADD KEY `fk_drop_emp_id` (`drop_emp_id`);

--
-- Indexes for table `return_table`
--
ALTER TABLE `return_table`
  ADD PRIMARY KEY (`RTID`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`SID`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `tax_table`
--
ALTER TABLE `tax_table`
  ADD PRIMARY KEY (`TTID`);

--
-- Indexes for table `ticket_system`
--
ALTER TABLE `ticket_system`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `vendorinfo`
--
ALTER TABLE `vendorinfo`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `cart_inprogress`
--
ALTER TABLE `cart_inprogress`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `employee_info`
--
ALTER TABLE `employee_info`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `gift_card`
--
ALTER TABLE `gift_card`
  MODIFY `gift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_list`
--
ALTER TABLE `item_list`
  MODIFY `ITID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;

--
-- AUTO_INCREMENT for table `orders_ticket`
--
ALTER TABLE `orders_ticket`
  MODIFY `OTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `product_inventory`
--
ALTER TABLE `product_inventory`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `registers_table`
--
ALTER TABLE `registers_table`
  MODIFY `register_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `return_table`
--
ALTER TABLE `return_table`
  MODIFY `RTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_table`
--
ALTER TABLE `tax_table`
  MODIFY `TTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_system`
--
ALTER TABLE `ticket_system`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `vendorinfo`
--
ALTER TABLE `vendorinfo`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_4` FOREIGN KEY (`product_id`) REFERENCES `product_inventory` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cart_ibfk_5` FOREIGN KEY (`CID`) REFERENCES `cart_inprogress` (`CID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cart_inprogress`
--
ALTER TABLE `cart_inprogress`
  ADD CONSTRAINT `cart_inprogress_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket_system` (`ticket_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cart_inprogress_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer_info` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD CONSTRAINT `employee_info_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_info` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `gift_card`
--
ALTER TABLE `gift_card`
  ADD CONSTRAINT `gift_card_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket_system` (`ticket_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `gift_card_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer_info` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `item_list`
--
ALTER TABLE `item_list`
  ADD CONSTRAINT `item_list_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `cart_inprogress` (`CID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `item_list_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_inventory` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`OTID`) REFERENCES `orders_ticket` (`OTID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product_inventory` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orders_ticket`
--
ALTER TABLE `orders_ticket`
  ADD CONSTRAINT `orders_ticket_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee_info` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `orders_ticket_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendorinfo` (`vendor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_inventory`
--
ALTER TABLE `product_inventory`
  ADD CONSTRAINT `product_inventory_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendorinfo` (`vendor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `registers_table`
--
ALTER TABLE `registers_table`
  ADD CONSTRAINT `fk_close_emp_id` FOREIGN KEY (`close_emp_id`) REFERENCES `employee_info` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_drop_emp_id` FOREIGN KEY (`drop_emp_id`) REFERENCES `employee_info` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_open_emp_id` FOREIGN KEY (`open_emp_id`) REFERENCES `employee_info` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `return_table`
--
ALTER TABLE `return_table`
  ADD CONSTRAINT `return_table_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket_system` (`ticket_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee_info` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ticket_system`
--
ALTER TABLE `ticket_system`
  ADD CONSTRAINT `ticket_system_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_info` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ticket_system_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee_info` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;