-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2022 at 06:51 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dlr`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Admin_ID` int(2) NOT NULL,
  `Username` varchar(8) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Fname` varchar(10) NOT NULL,
  `Lname` varchar(10) NOT NULL,
  `A_AirLineCode` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `Username`, `Password`, `Fname`, `Lname`, `A_AirLineCode`) VALUES
(1, 'Danah89', 'Danah88', 'Danah', 'Aldowssary', '65CD30'),
(2, 'Noura1', 'Noura1111', 'Noura', 'Alsamman', '65CD30'),
(3, 'Abdulazi', 'Abdulaziz3', 'Abdulaziz', 'Saad', '65CD30'),
(4, 'Munirah3', 'Munira333', 'Munira', 'Mohammed', '65CD30');

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

DROP TABLE IF EXISTS `airline`;
CREATE TABLE `airline` (
  `Name` varchar(30) NOT NULL,
  `Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`Name`, `Code`) VALUES
('DLR_Airplane', '65CD30');

-- --------------------------------------------------------

--
-- Table structure for table `airplane`
--

DROP TABLE IF EXISTS `airplane`;
CREATE TABLE `airplane` (
  `Reg_No` int(11) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `First_Seats` int(11) NOT NULL,
  `Economy_Seats` int(11) NOT NULL,
  `Airline_Code` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airplane`
--

INSERT INTO `airplane` (`Reg_No`, `Type`, `First_Seats`, `Economy_Seats`, `Airline_Code`) VALUES
(1, 'Airplane A220', 50, 110, '65CD30'),
(2, 'Airplane E321', 75, 130, '65CD30'),
(3, 'Airplane 750Q', 100, 170, '65CD30'),
(4, 'Airplane DZ-1', 60, 100, '65CD30'),
(5, '750AirBus ', 140, 200, '65CD30'),
(6, 'Airplane W70', 90, 190, '65CD30'),
(7, 'AirBus-MM1', 90, 190, '65CD30');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `Bill` varchar(50) NOT NULL,
  `B_TicketNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Bill`, `B_TicketNo`) VALUES
('(Jameela habib,2022-04-07,MasterCard)', 0),
('(Jameela habib,2022-04-08,MasterCard)', 2),
('(Saud yousef,2022-04-10,MasterCard)', 5),
('(Saud yousef,2022-04-10,MasterCard)', 6),
('(Raghad althukair,2022-04-10,Cash)', 7),
('(Abdulrahman Ali,2022-04-10,MasterCard)', 8),
('(Abdulrahman Ali,2022-04-10,MasterCard)', 9),
('(Lujain Alothman,2022-04-10,Visa)', 10),
('(Lujain Alothman,2022-04-10,Mada)', 11),
('(Raghad althukair,2022-04-10,MasterCard)', 12);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
CREATE TABLE `flight` (
  `Flight_No` int(11) NOT NULL,
  `Flight_Price` int(11) NOT NULL,
  `Dep_Date` date NOT NULL,
  `Dep_Time` time NOT NULL,
  `Arr_Time` time NOT NULL,
  `Arr_Date` date NOT NULL,
  `Dep_City` char(8) NOT NULL,
  `Arr_City` char(8) NOT NULL,
  `AirP_RegNo` varchar(6) NOT NULL,
  `Class` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`Flight_No`, `Flight_Price`, `Dep_Date`, `Dep_Time`, `Arr_Time`, `Arr_Date`, `Dep_City`, `Arr_City`, `AirP_RegNo`, `Class`) VALUES
(52, 250, '2022-03-17', '17:00:00', '18:00:00', '2022-03-17', 'Jeddah', 'Riyadh', '1', 'Economy'),
(53, 900, '2022-12-24', '15:30:00', '17:00:00', '2022-12-24', 'Dammam', 'Jeddah', '1', 'First'),
(54, 260, '2022-05-10', '12:00:00', '14:00:00', '2022-05-10', 'Medina', 'Dammam', '1', 'Economy'),
(55, 650, '2022-04-11', '12:00:00', '13:00:00', '2022-04-11', 'Dammam', 'Jeddah', '1', 'First'),
(56, 350, '2022-05-02', '17:00:00', '21:00:00', '2022-05-02', 'Medina', 'Al-\'Ula', '1', 'Economy'),
(57, 250, '2022-06-19', '19:00:00', '20:25:00', '2022-06-19', 'Medina', 'Buraidah', '1', 'Economy'),
(58, 400, '2022-09-12', '22:00:00', '00:25:00', '2022-09-12', 'Medina', 'Yanbu', '1', 'Economy'),
(59, 750, '2022-08-01', '17:00:00', '18:00:00', '2022-08-01', 'Dammam', 'Riyadh', '2', 'First'),
(60, 750, '2022-08-01', '17:00:00', '18:00:00', '2022-08-01', 'Dammam', 'Medina', '2', 'First'),
(65, 300, '2022-08-12', '19:30:00', '21:00:00', '2022-08-12', 'Riyadh', 'Jeddah', '1', 'Economy'),
(66, 300, '2022-08-13', '19:30:00', '21:00:00', '2022-08-13', 'Riyadh', 'Jeddah', '2', 'Economy'),
(67, 300, '2022-08-12', '19:30:00', '21:00:00', '2022-08-12', 'Riyadh', 'Jeddah', '5', 'Economy'),
(68, 300, '2022-08-12', '19:30:00', '21:00:00', '2022-08-12', 'Riyadh', 'Dammam', '7', 'Economy'),
(69, 300, '2022-09-09', '19:30:00', '21:00:00', '2022-09-09', 'Riyadh', 'Dammam', '5', 'Economy');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
CREATE TABLE `passenger` (
  `ID_num` int(20) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Phonenum` varchar(10) NOT NULL,
  `Gender` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`ID_num`, `Username`, `Password`, `Fname`, `Lname`, `Email`, `Phonenum`, `Gender`) VALUES
(1, 'Raghad5', 'Raghad555', 'Raghad', 'althukair', 'jam.98@gmail.com', '052441556', 'F'),
(3, 'lujain4', 'Lujain444', 'Lujain', 'Alothman', 'kk20@gmail.com', '551248639', 'F'),
(4, 'Abdulrahman2', 'Abdulrahman12', 'Abdulrahman', 'Ali', 'A2Ali@hotmail.com', '551829910', 'M'),
(5, 'Qassim3', 'Qassim991', 'Qassim', 'Ahmed', 'Qassim3A@hotmail.com', '541299887', 'M'),
(6, 'Lamya82', 'Lamya1100', 'Lamya', 'Waleed', 'Lamya82W@gmail.com', '503318255', 'F'),
(7, 'Reema01', 'Rema1232', 'reema', 'khalid', 'reek01@hotmail.com', '544885991', 'F'),
(8, 'Saud990', 'Saud9110', 'Saud', 'yousef', 'Saud11Y@gmail.com', '504339918', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket` (
  `Ticket_No` int(11) NOT NULL,
  `T_flight_No` int(255) NOT NULL,
  `Passenger_ID` int(11) NOT NULL,
  `No_OfTickets` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`Ticket_No`, `T_flight_No`, `Passenger_ID`, `No_OfTickets`) VALUES
(5, 57, 8, 1),
(8, 53, 4, 1),
(9, 59, 4, 1),
(10, 58, 3, 1),
(11, 60, 3, 1),
(12, 59, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `airplane`
--
ALTER TABLE `airplane`
  ADD PRIMARY KEY (`Reg_No`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`Flight_No`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`ID_num`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`Ticket_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `airplane`
--
ALTER TABLE `airplane`
  MODIFY `Reg_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `Flight_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `ID_num` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `Ticket_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
