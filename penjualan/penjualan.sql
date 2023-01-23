-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 06:07 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `pass`, `email`, `alamat`) VALUES
(1, 'ana', '123', 'ana@gmail.com', 'patokan'),
(3, 'toyib', '123', 'toybi@gmail.com', 'Patokan'),
(4, 'toyib', '123', 'toyibers123@gmail.com', 'Patokan, Kraksaan'),
(5, 'Tegar', '123', 'tegar15@gmail.com', ''),
(6, 'rdtrd', '12345', 'luftft@gmai.com', 'uh'),
(7, 'tegar', '12345', 'asdsaj', 'saa');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `IDProduk` int(11) NOT NULL,
  `KodeProduk` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NamaProduk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Satuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Harga` int(11) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`IDProduk`, `KodeProduk`, `NamaProduk`, `Satuan`, `Harga`, `Stok`, `CreateDate`) VALUES
(3, 'BR001', 'Sabun', 'Pcs', 2000, 1, '2023-01-11 10:12:30'),
(5, 'BR002', 'Mie Goreng', 'Dus', 2500, 3, '2023-01-11 10:21:27'),
(6, 'BR003', 'Sampo', 'Pcs', 3000, 2, '2023-01-11 10:23:12'),
(7, 'BR004', 'Gas Elpiji', 'Kg', 25000, 20, '2023-01-11 10:24:19'),
(8, 'BR005', 'Odol', 'Dus', 3, 5, '2023-01-11 11:33:58'),
(9, 'br007', 'Pasta Gigi', 'Pcs', 10000, 10, '2023-01-11 12:07:54'),
(11, 'BR0009', 'Beras', 'Kg', 25000, 20, '2023-01-12 12:05:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`IDProduk`),
  ADD UNIQUE KEY `KodeProduk` (`KodeProduk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `IDProduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
