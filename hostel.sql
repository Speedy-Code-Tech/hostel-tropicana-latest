-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2024 at 04:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

CREATE TABLE `borrower` (
  `borrower_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `borrower_history`
--

CREATE TABLE `borrower_history` (
  `id` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_borrowed` date DEFAULT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `whereplace` text DEFAULT NULL,
  `returndate` date DEFAULT NULL,
  `quantity` int(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `tagid` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `item_created` date NOT NULL DEFAULT current_timestamp(),
  `expiry` date DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `conditions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrower_history`
--

INSERT INTO `borrower_history` (`id`, `item`, `name`, `date_borrowed`, `contactno`, `whereplace`, `returndate`, `quantity`, `category`, `tagid`, `room`, `status`, `item_created`, `expiry`, `unit`, `conditions`) VALUES
(138, 'Flour', 'Princess Shane Garcia', '1970-01-01', '', '', '0000-00-00', 16, 'Supplies', '65ac92d422144', 'Supplies Room', 'Added', '2024-01-21', '2025-01-21', '10kg', NULL),
(139, 'Flour', 'Princess Shane Garcia', NULL, NULL, NULL, NULL, 4, 'Flour', 'Supplies Room', 'Supplies Room', 'Delivered', '2024-01-21', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `tagid` varchar(255) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `quantity` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `tagid` varchar(255) NOT NULL,
  `supplyname` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_history`
--

CREATE TABLE `return_history` (
  `id` int(11) NOT NULL DEFAULT 0,
  `item` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_borrowed` timestamp NOT NULL DEFAULT current_timestamp(),
  `contactno` varchar(255) DEFAULT NULL,
  `whereplace` text DEFAULT NULL,
  `returndate` date DEFAULT NULL,
  `quantity` int(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `tagid` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `item_created` date NOT NULL DEFAULT current_timestamp(),
  `expiry` date DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `conditions` text DEFAULT NULL,
  `eventname` varchar(50) NOT NULL,
  `function` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `return_history`
--

INSERT INTO `return_history` (`id`, `item`, `name`, `date_borrowed`, `contactno`, `whereplace`, `returndate`, `quantity`, `category`, `tagid`, `room`, `status`, `item_created`, `expiry`, `unit`, `conditions`, `eventname`, `function`) VALUES
(162, 'Fork', 'Administrator', '2023-12-11 02:05:09', '09423291288', 'try', '2023-12-12', 56, 'Tools', '6575f4ebcb7ed', 'Tools Room', 'Borrowed', '2023-12-11', NULL, NULL, NULL, '', ''),
(163, 'Fork', 'Administrator', '2023-12-11 02:05:09', '09423291288', 'try', '2023-12-12', 50, 'Tools', '6575f4ebcb7ed', 'Tools Room', 'Returned', '2023-12-11', NULL, NULL, NULL, '', ''),
(164, 'Fork', 'Administrator', '2023-12-11 02:05:09', '09423291288', 'try', '2023-12-12', 6, 'Tools', '6575f4ebcb7ed', 'Tools Room', 'Returned', '2023-12-11', NULL, NULL, NULL, '', ''),
(165, 'Chef\'s Knife', 'Administrator', '2023-12-11 02:09:04', '09423291288', 'try', '2023-12-12', 56, 'Tools', '6575f508185fa', 'Tools Room', 'Borrowed', '2023-12-11', NULL, NULL, NULL, '', ''),
(166, 'Chef\'s Knife', 'Administrator', '2023-12-11 02:09:04', '09423291288', 'try', '2023-12-12', 56, 'Tools', '6575f508185fa', 'Tools Room', 'Returned', '2023-12-11', NULL, NULL, NULL, '', ''),
(167, 'Spatula', 'Administrator', '2023-12-11 02:14:39', '09423291288', 'try', '2023-12-12', 32, 'Tools', '6575f5433331c', 'Tools Room', 'Borrowed', '2023-12-11', NULL, NULL, NULL, '', ''),
(168, 'Spatula', 'Administrator', '2023-12-11 02:16:29', '09423291288', 'try', '2023-12-12', 32, 'Tools', '6575f5433331c', 'Tools Room', 'Borrowed', '2023-12-11', NULL, NULL, NULL, '', ''),
(169, 'Spatula', 'Administrator', '2023-12-11 02:16:29', '09423291288', 'try', '2023-12-12', 32, 'Tools', '6575f5433331c', 'Tools Room', 'Returned', '2023-12-11', NULL, NULL, NULL, '', ''),
(170, 'Coffee Maker', 'Princess Shane Garcia', '2023-12-11 05:50:35', '09653324571', 'lalang', '2023-12-14', 2, 'Equipment', '6575f573f061b', 'Equipment Room', 'Borrowed', '2023-12-11', NULL, NULL, NULL, '', ''),
(171, 'Coffee Maker', 'Princess Shane Garcia', '2023-12-11 05:50:35', '09653324571', 'lalang', '2023-12-14', 1, 'Equipment', '6575f573f061b', 'Equipment Room', 'Returned', '2023-12-11', NULL, NULL, NULL, '', ''),
(172, 'Juice', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 7, 'Supplies', '65797e939bdbe', 'Supplies Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(173, 'Soft Drinks', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 79, 'Supplies', '65797ea44fe1a', 'Supplies Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(174, 'Water', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 190, 'Supplies', '65797eab9b483', 'Supplies Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(175, 'Coffee Beans', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 14, 'Supplies', '65797eb30db19', 'Supplies Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(176, 'Banana Ketchup', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 13, 'Supplies', '65797ebe78d17', 'Supplies Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(177, 'Kitchen Knife', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 16, 'Tools', '65797ec90828f', 'Tools Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(178, 'Food Smasher', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 7, 'Tools', '65797ece32bc1', 'Tools Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(179, 'Whisk', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 1, 'Tools', '65797ed3d8303', 'Tools Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(180, 'Spatula', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 11, 'Tools', '65797ed706ed5', 'Tools Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(181, 'Spoon', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 123, 'Tools', '65797ededd94f', 'Tools Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(182, 'Fork', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 100, 'Tools', '65797ee5736c6', 'Tools Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(183, 'Bread Toaster', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 5, 'Equipment', '65797f03d4395', 'Equipment Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(184, 'Blender', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 6, 'Equipment', '65797f0c80bf1', 'Equipment Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(185, 'Stove', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 9, 'Equipment', '65797f127f1bc', 'Equipment Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(186, 'Freezer', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 5, 'Equipment', '65797f22dfe48', 'Equipment Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(187, 'Refrigerator', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 6, 'Equipment', '65797f2a7d5d0', 'Equipment Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(188, 'Food Processor', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 2, 'Equipment', '65797f374f5bd', 'Equipment Room', NULL, '2023-12-13', NULL, NULL, NULL, '', ''),
(189, 'Kitchen Knife', 'Trixie Mae T. Roseta', '2023-12-13 09:54:59', NULL, 'Graduation', '2023-12-27', 3, 'Tools', '65797ec90828f', 'Tools Room', 'Borrowed', '2023-12-13', NULL, NULL, NULL, '', ''),
(190, 'Whisk', 'Trixie Mae T. Roseta', '2023-12-13 10:01:05', '09954839122', 'Graduation', '2023-12-30', 1, 'Tools', '65797ed3d8303', 'Tools Room', 'Borrowed', '2023-12-13', NULL, NULL, NULL, '', ''),
(191, 'Kitchen Knife', 'Trixie Mae T. Roseta', '2023-12-13 09:54:59', NULL, 'Graduation', '2023-12-13', 3, 'Tools', '65797ec90828f', 'Tools Room', 'Returned', '2023-12-13', NULL, NULL, NULL, '', ''),
(192, 'Whisk', 'Trixie Mae T. Roseta', '2023-12-13 10:01:05', '09954839122', 'Graduation', '2023-12-13', 1, 'Tools', '65797ed3d8303', 'Tools Room', 'Returned', '2023-12-13', NULL, NULL, NULL, '', ''),
(193, 'Fork', 'Trixie Mae T. Roseta', '2023-12-13 10:02:27', '09954839178', 'Graduation', '2023-12-23', 20, 'Tools', '65797ee5736c6', 'Tools Room', 'Borrowed', '2023-12-13', NULL, NULL, NULL, '', ''),
(194, 'Fork', 'Trixie Mae T. Roseta', '2023-12-13 10:02:27', '09954839178', 'Graduation', '2023-12-13', 12, 'Tools', '65797ee5736c6', 'Tools Room', 'Returned', '2023-12-13', NULL, NULL, NULL, '', ''),
(195, 'Hammer', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 1, 'Tools', '65a6b1886f306', 'Tools Room', NULL, '2024-01-16', NULL, NULL, NULL, '', ''),
(196, 'Flour', 'Administrator', '0000-00-00 00:00:00', '', '', '0000-00-00', 1, 'Supplies', '65a6bdc9b6800', 'Supplies Room', 'Added', '2024-01-16', NULL, NULL, NULL, '', ''),
(197, 'Book', 'Administrator', '0000-00-00 00:00:00', '', '', '0000-00-00', 1, 'Supplies', '65abdf4cbae3f', 'Supplies Room', 'Added', '2024-01-20', '0000-00-00', 'mL', NULL, '', ''),
(198, 'Jester', 'Administrator', '0000-00-00 00:00:00', '', '', '0000-00-00', 1, 'Supplies', '65abdf984d172', 'Supplies Room', 'Added', '2024-01-20', '0000-00-00', 'mL', NULL, '', ''),
(199, 'update', 'Administrator', '2024-01-19 16:00:00', '', '', '0000-00-00', 5, 'Supplies', '65abe14b9d51b', 'Supplies Room', 'Added', '2024-01-20', '0000-00-00', '2024-01-20', NULL, '', ''),
(200, 'Sample', 'Administrator', '0000-00-00 00:00:00', '', '', '0000-00-00', 5, 'Supplies', '65abe263aa4ac', 'Supplies Room', 'Added', '2024-01-20', '0000-00-00', 'mL', NULL, '', ''),
(201, 'Sample', 'Administrator', '0000-00-00 00:00:00', '', '', '0000-00-00', 4, 'Supplies', '65abe29da9018', 'Supplies Room', 'Added', '2024-01-20', '0000-00-00', 'mL', NULL, '', ''),
(202, 'edwwwwwe', 'Administrator', '0000-00-00 00:00:00', '', '', '0000-00-00', 1, 'Supplies', '65abe2a923ad5', 'Supplies Room', 'Added', '2024-01-20', '0000-00-00', 'pc', NULL, '', ''),
(203, 'asdfs', 'Administrator', '0000-00-00 00:00:00', '', '', '0000-00-00', 2, 'Supplies', '65abe9e79c058', 'Supplies Room', 'Added', '2024-01-20', '0000-00-00', 'mL', NULL, '', ''),
(204, 'Sample', 'Administrator', '0000-00-00 00:00:00', '', '', '0000-00-00', 1, 'Supplies', '65abea5ea7560', 'Supplies Room', 'Added', '2024-01-20', '0000-00-00', 'mLBrand New', NULL, '', ''),
(205, 'Sample', 'Administrator', '0000-00-00 00:00:00', 'contact', 'where', '0000-00-00', 1, 'Supplies', '65abebb1b032b', 'Supplies Room', 'Added', '2024-01-20', '0000-00-00', '2024-02-01100', NULL, '', ''),
(206, 'MAC', 'Administrator', '0000-00-00 00:00:00', 'contact', 'where', '0000-00-00', 1, 'Supplies', '65abebba12f21', 'Supplies Room', 'Added', '2024-01-20', '0000-00-00', '2024-01-2710', NULL, '', ''),
(207, 'Aqua', 'Administrator', '0000-00-00 00:00:00', 'contact', 'where', '0000-00-00', 1, 'Supplies', '65abecd653765', 'Supplies Room', 'Added', '2024-01-20', '2024-01-30', '100mL', NULL, '', ''),
(208, 'Perfume', 'Administrator', '0000-00-00 00:00:00', '', '', '0000-00-00', 1, 'Supplies', '65abed025b435', 'Supplies Room', 'Added', '2024-01-20', '2024-01-27', '100mL', NULL, '', ''),
(209, 'Brand New Car', 'Administrator', '0000-00-00 00:00:00', '', '', '0000-00-00', 1, 'Supplies', '65abeed35a718', 'Supplies Room', 'Added', '2024-01-20', '2024-01-21', '100mL', NULL, '', ''),
(210, 'Insect Killer', 'Administrator', '0000-00-00 00:00:00', '', '', '0000-00-00', 17, 'Supplies', '65ac8c9620f4c', 'Supplies Room', 'Added', '2024-01-21', '2025-01-21', '600mL', NULL, '', ''),
(211, 'Insect Killer', 'Administrator', '2024-01-21 03:17:24', NULL, 'hmm', NULL, 2, 'Supplies', '65ac8c9620f4c', 'Supplies Room', 'Consumed', '2024-01-21', NULL, NULL, NULL, '', ''),
(212, 'Insect Killer', 'Administrator', '2024-01-21 03:18:25', NULL, 'hmm', NULL, 5, 'Supplies', '65ac8c9620f4c', 'Supplies Room', 'Consumed', '2024-01-21', NULL, NULL, NULL, '', ''),
(213, 'Flour', 'Administrator', '0000-00-00 00:00:00', '', '', '0000-00-00', 15, 'Supplies', '65ac918868925', 'Supplies Room', 'Added', '2024-01-21', '2025-01-21', '10kg', NULL, '', ''),
(214, 'Flour', 'Administrator', '2024-01-21 03:38:35', NULL, 'hmm', NULL, 3, 'Supplies', '65ac918868925', 'Supplies Room', 'Consumed', '2024-01-21', NULL, NULL, NULL, '', ''),
(215, 'Dishwasher', '', '0000-00-00 00:00:00', '', '', '0000-00-00', 6, 'Equipment', '65ac91c526d31', 'Equipment Room', NULL, '2024-01-21', NULL, NULL, NULL, '', ''),
(216, 'Flour', 'Princess Shane Garcia', '0000-00-00 00:00:00', '', '', '0000-00-00', 16, 'Supplies', '65ac92d422144', 'Supplies Room', 'Added', '2024-01-21', '2025-01-21', '10kg', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `name`) VALUES
(1, 'Supplies Room'),
(2, 'Tools Room'),
(3, 'Equipment Room');

-- --------------------------------------------------------

--
-- Table structure for table `supp_borrowed`
--

CREATE TABLE `supp_borrowed` (
  `id` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_borrowed` timestamp NOT NULL DEFAULT current_timestamp(),
  `contactno` varchar(255) DEFAULT NULL,
  `whereplace` text DEFAULT NULL,
  `returndate` date DEFAULT NULL,
  `quantity` int(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `tagid` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `item_created` date NOT NULL DEFAULT current_timestamp(),
  `expiry` date DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `conditions` text DEFAULT NULL,
  `eventname` varchar(50) NOT NULL,
  `function` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supp_borrowed`
--

INSERT INTO `supp_borrowed` (`id`, `item`, `name`, `date_borrowed`, `contactno`, `whereplace`, `returndate`, `quantity`, `category`, `tagid`, `room`, `status`, `item_created`, `expiry`, `unit`, `conditions`, `eventname`, `function`) VALUES
(216, 'Flour', 'Princess Shane Garcia', '0000-00-00 00:00:00', '', '', '0000-00-00', 20, 'Supplies', '65ac92d422144', 'Supplies Room', 'Added', '2024-01-21', '2025-01-21', '10kg', NULL, '', '');

--
-- Triggers `supp_borrowed`
--
DELIMITER $$
CREATE TRIGGER `after_insert_supp_borrowed` AFTER INSERT ON `supp_borrowed` FOR EACH ROW BEGIN
    INSERT INTO borrower_history (
        `item`, 
        `name`, 
        `date_borrowed`, 
        `contactno`, 
        `whereplace`, 
        `returndate`, 
        `quantity`, 
        `category`, 
        `tagid`, 
        `room`, 
        `status`, 
        `item_created`,
        `expiry`,
        `unit`,
        `conditions`
    )
    VALUES (
        NEW.`item`, 
        NEW.`name`, 
        NEW.`date_borrowed`, 
        NEW.`contactno`, 
        NEW.`whereplace`, 
        NEW.`returndate`, 
        NEW.`quantity`, 
        NEW.`category`, 
        NEW.`tagid`, 
        NEW.`room`, 
        NEW.`status`, 
        NEW.`item_created`,
        NEW.`expiry`,
        NEW.`unit`,
        NEW.`conditions`
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_after_update_supp_borrowed` AFTER INSERT ON `supp_borrowed` FOR EACH ROW BEGIN
    INSERT INTO return_history (
        id, item, name, date_borrowed, contactno, whereplace,
        returndate, quantity, category, tagid, room, status,
        item_created,expiry,unit, eventname, function
    ) VALUES (
        NEW.id, NEW.item, NEW.name, NEW.date_borrowed, NEW.contactno, NEW.whereplace,
        NEW.returndate, NEW.quantity, NEW.category, NEW.tagid, NEW.room, NEW.status,
        NEW.item_created,NEW.expiry,NEW.unit,NEW.eventname, NEW.function
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cat`
--

CREATE TABLE `tbl_cat` (
  `cat_id` int(11) NOT NULL,
  `cat_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_cat`
--

INSERT INTO `tbl_cat` (`cat_id`, `cat_desc`) VALUES
(1, 'Equipment'),
(2, 'Furniture And Fixture');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_con`
--

CREATE TABLE `tbl_con` (
  `con_id` int(11) NOT NULL,
  `con_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_con`
--

INSERT INTO `tbl_con` (`con_id`, `con_desc`) VALUES
(1, 'Working'),
(2, 'Condemed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `emp_id` int(11) NOT NULL,
  `pos_id` int(11) DEFAULT 1,
  `off_id` int(11) DEFAULT 1,
  `emp_un` varchar(100) DEFAULT NULL,
  `emp_pass` varchar(40) DEFAULT NULL,
  `type_id` int(11) DEFAULT 2,
  `accountname` varchar(255) DEFAULT NULL,
  `office` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`emp_id`, `pos_id`, `off_id`, `emp_un`, `emp_pass`, `type_id`, `accountname`, `office`, `position`, `email`) VALUES
(48, 1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 'Administrator', 'admin', 'Manager', 'admin@gmail.com'),
(57, 1, 1, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 2, 'Princess Shane Garcia', 'Kitchen', 'Cook', 'user@gmail.com'),
(59, 1, 1, 'imman', '6503d1117b8ffdab5ebdad7f7f22e569', 2, 'Immanuel C. Baling', 'Lobby', 'Clerk', 'imman@gmail.com'),
(60, 1, 1, 'meh', '15927d9ab6ea93229b4f22a561664ec1', 2, 'Trixie Mae T. Roseta', 'Supplies Room ', 'Clerk', 'meh@gmail.com'),
(61, 1, 1, 'jp', '3f6d6bd92f0814f435890172083a9b46', 2, 'Jaypee A. Parcon', 'Tools Room', 'Maintenance', 'jparcon@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emp_type`
--

CREATE TABLE `tbl_emp_type` (
  `type_id` int(11) NOT NULL,
  `type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_emp_type`
--

INSERT INTO `tbl_emp_type` (`type_id`, `type_desc`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE `tbl_item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_serno` varchar(50) NOT NULL,
  `item_modno` varchar(50) NOT NULL,
  `item_brand` varchar(50) NOT NULL,
  `item_amount` double NOT NULL,
  `item_purdate` date NOT NULL,
  `emp_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `con_id` int(11) NOT NULL DEFAULT 4,
  `status_id` int(11) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `id` int(11) NOT NULL,
  `tagid` varchar(255) NOT NULL,
  `supplyname` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `Unit` varchar(200) NOT NULL,
  `Expiry` date NOT NULL,
  `brand` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`id`, `tagid`, `supplyname`, `room`, `Unit`, `Expiry`, `brand`, `quantity`) VALUES
(46, '65ac92d422144', 'Flour', 'Supplies Room', '10kg', '2025-01-21', 'KCR', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_status`
--

CREATE TABLE `tbl_item_status` (
  `status_id` int(11) NOT NULL,
  `status_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_item_status`
--

INSERT INTO `tbl_item_status` (`status_id`, `status_desc`) VALUES
(1, 'for repair'),
(2, 'for transfer'),
(3, 'for condemed'),
(4, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_off`
--

CREATE TABLE `tbl_off` (
  `off_id` int(11) NOT NULL,
  `off_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_off`
--

INSERT INTO `tbl_off` (`off_id`, `off_desc`) VALUES
(1, 'PERSONNEL'),
(2, 'SGOD'),
(8, 'AAA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos`
--

CREATE TABLE `tbl_pos` (
  `pos_id` int(11) NOT NULL,
  `pos_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pos`
--

INSERT INTO `tbl_pos` (`pos_id`, `pos_desc`) VALUES
(1, 'Information Technology Officer'),
(2, 'Book Keeper');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request`
--

CREATE TABLE `tbl_request` (
  `req_id` int(11) NOT NULL,
  `req_date` date NOT NULL,
  `item_id` int(11) NOT NULL,
  `req_type_id` int(11) NOT NULL,
  `req_status_id` int(11) NOT NULL DEFAULT 1,
  `req_is_done` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_req_status`
--

CREATE TABLE `tbl_req_status` (
  `req_status_id` int(11) NOT NULL,
  `req_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_req_status`
--

INSERT INTO `tbl_req_status` (`req_status_id`, `req_status_desc`) VALUES
(1, 'pending'),
(2, 'accepted'),
(3, 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_req_type`
--

CREATE TABLE `tbl_req_type` (
  `req_type_id` int(11) NOT NULL,
  `req_type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_req_type`
--

INSERT INTO `tbl_req_type` (`req_type_id`, `req_type_desc`) VALUES
(1, 'repair'),
(2, 'transfer'),
(3, 'condemed'),
(4, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tools`
--

CREATE TABLE `tbl_tools` (
  `id` int(11) NOT NULL,
  `tagid` varchar(255) NOT NULL,
  `toolname` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `accountname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `office` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrower`
--
ALTER TABLE `borrower`
  ADD PRIMARY KEY (`borrower_id`);

--
-- Indexes for table `borrower_history`
--
ALTER TABLE `borrower_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supp_borrowed`
--
ALTER TABLE `supp_borrowed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_con`
--
ALTER TABLE `tbl_con`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `pos_id` (`pos_id`),
  ADD KEY `off_id` (`off_id`);

--
-- Indexes for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `con_id` (`con_id`);

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_off`
--
ALTER TABLE `tbl_off`
  ADD PRIMARY KEY (`off_id`);

--
-- Indexes for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `req_type_id` (`req_type_id`),
  ADD KEY `req_status_id` (`req_status_id`);

--
-- Indexes for table `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
  ADD PRIMARY KEY (`req_status_id`);

--
-- Indexes for table `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
  ADD PRIMARY KEY (`req_type_id`);

--
-- Indexes for table `tbl_tools`
--
ALTER TABLE `tbl_tools`
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
-- AUTO_INCREMENT for table `borrower`
--
ALTER TABLE `borrower`
  MODIFY `borrower_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `borrower_history`
--
ALTER TABLE `borrower_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supp_borrowed`
--
ALTER TABLE `supp_borrowed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_con`
--
ALTER TABLE `tbl_con`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_off`
--
ALTER TABLE `tbl_off`
  MODIFY `off_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
  MODIFY `req_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
  MODIFY `req_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_tools`
--
ALTER TABLE `tbl_tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD CONSTRAINT `tbl_employee_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tbl_emp_type` (`type_id`),
  ADD CONSTRAINT `tbl_employee_ibfk_2` FOREIGN KEY (`pos_id`) REFERENCES `tbl_pos` (`pos_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_employee_ibfk_3` FOREIGN KEY (`off_id`) REFERENCES `tbl_off` (`off_id`);

--
-- Constraints for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD CONSTRAINT `tbl_item_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`),
  ADD CONSTRAINT `tbl_item_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `tbl_cat` (`cat_id`),
  ADD CONSTRAINT `tbl_item_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `tbl_item_status` (`status_id`),
  ADD CONSTRAINT `tbl_item_ibfk_5` FOREIGN KEY (`con_id`) REFERENCES `tbl_con` (`con_id`);

--
-- Constraints for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD CONSTRAINT `tbl_request_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `tbl_item` (`item_id`),
  ADD CONSTRAINT `tbl_request_ibfk_2` FOREIGN KEY (`req_type_id`) REFERENCES `tbl_req_type` (`req_type_id`),
  ADD CONSTRAINT `tbl_request_ibfk_3` FOREIGN KEY (`req_status_id`) REFERENCES `tbl_req_status` (`req_status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
