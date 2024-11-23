-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2024 at 11:48 AM
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
-- Database: `banhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Xe Mercedes', '2021-07-07 11:50:15', '2021-11-07 08:07:44'),
(2, 'Xe Porsche', '2021-07-07 11:50:15', '2021-07-22 16:07:29'),
(3, 'Xe BMW', '2021-07-07 11:50:15', '2021-07-22 16:12:25'),
(38, 'Xe Bugatti', '2021-07-13 10:57:52', '2021-07-13 10:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `fullname`, `phone_number`, `email`, `address`, `note`, `order_date`) VALUES
(143, 'Hoàng Minh Hải', '0376987960', 'boyruck1711@gmail,com', '68.65.120.213, viet nam', '', '2024-11-18 08:37:06'),
(144, 'DEMO', '0376987960', 'DEMO@gmail.com', 'DEMO', 'DEMO', '2024-11-18 08:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `id_user`, `num`, `price`, `status`) VALUES
(149, 143, 2, 7, 3, 2200000000, 'Đã hủy'),
(150, 143, 4, 7, 1, 2200000000, 'Đã hủy'),
(151, 143, 12, 7, 1, 2200000000, 'Đã hủy'),
(152, 143, 14, 7, 1, 2200000000, 'Đã hủy'),
(153, 144, 12, 8, 11, 2200000000, 'Đã nhận hàng');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `number` float NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `content` longtext NOT NULL,
  `id_category` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `number`, `thumbnail`, `content`, `id_category`, `created_at`, `updated_at`) VALUES
(1, '\r\nC 200 Avantgarde', 2500000000, 20, 'uploads/mec1.jpg', 'Đẳng cấp tạo nên thương hiệu', 1, '2021-07-07 17:41:08', '2021-08-15 16:41:50'),
(2, 'C 200 Avantgarde Plus', 2200000000, 50, 'uploads/mec2.jpg', 'Đẳng cấp tạo nên thương hiệu', 1, '2021-07-07 17:41:08', '2021-08-15 16:53:50'),
(4, 'C 300 AMG', 2200000000, 30, 'uploads/mec3.jpg', 'Đẳng cấp tạo nên thương hiệu', 1, '2021-07-07 17:25:47', '2021-08-15 16:12:51'),
(5, 'E 180', 2200000000, 10, 'uploads/mec4.jpg', 'Đẳng cấp tạo nên thương hiệu', 1, '2021-07-07 18:36:37', '2021-08-15 16:24:51'),
(8, 'E 300 AMG', 2200000000, 10, 'uploads/mec5.jpg', 'Đẳng cấp tạo nên thương hiệu', 1, '2021-07-11 16:07:58', '2021-08-15 16:44:51'),
(9, '718 Cayman', 2200000000, 46, 'uploads/pc1.png', 'Đẳng cấp tạo nên thương hiệu', 2, '2021-07-11 16:38:58', '2021-08-15 16:02:52'),
(10, '718 Cayman S', 2200000000, 44, 'uploads/pc2.png', 'Đẳng cấp tạo nên thương hiệu', 2, '2021-07-11 16:12:59', '2021-08-15 16:18:52'),
(12, '718 Boxster', 2200000000, 15, 'uploads/pc3.png', 'Đẳng cấp tạo nên thương hiệu', 2, '2021-07-13 10:20:53', '2021-08-15 16:45:54'),
(13, '718 Boxster S', 2200000000, 20, 'uploads/pc4.png', 'Đẳng cấp tạo nên thương hiệu', 2, '2021-07-07 17:41:08', '2021-08-15 16:40:53'),
(14, '718 Cayman Style Edition', 2200000000, 5, 'uploads/pc5.png', 'Đẳng cấp tạo nên thương hiệu', 2, '2021-07-07 17:41:08', '2021-08-15 16:00:55'),
(16, 'BMW 320i M Sport LCI', 2200000000, 30, 'uploads/bmw1.png', 'Đẳng cấp tạo nên thương hiệu', 3, '2021-07-07 17:25:47', '2021-08-15 16:17:55'),
(17, 'BMW 330i M Sport LCI', 2200000000, 10, 'uploads/bmw2.png', 'Đẳng cấp tạo nên thương hiệu', 3, '2021-07-07 18:36:37', '2021-08-15 16:35:55'),
(18, 'BMW 430i Gran Coupe', 2200000000, 10, 'uploads/bmw3.png', 'Đẳng cấp tạo nên thương hiệu', 3, '2021-07-11 16:07:58', '2021-08-15 16:48:55'),
(19, 'BMW 4 Series Mui Trần', 2200000000, 46, 'uploads/bmw4.png', 'Đẳng cấp tạo nên thương hiệu', 3, '2021-07-11 16:38:58', '2021-08-15 16:03:56'),
(20, 'BMW 520i M Sport', 2200000000, 44, 'uploads/bmw5.png', 'Đẳng cấp tạo nên thương hiệu', 3, '2021-07-11 16:12:59', '2021-08-15 16:20:56'),
(21, 'Lamborghini Huracán Tecnica', 6989675000, 15, 'uploads/lb1.jpg', 'Đẳng cấp tạo nên thương hiệu', 38, '2021-07-13 10:20:53', '2021-08-15 16:42:56'),
(26, 'Lamborghini Revuelto', 22621130000, 100, 'uploads/lb2.jpg', 'Đẳng cấp tạo nên thương hiệu', 38, '2021-08-15 08:36:27', '2021-08-15 16:57:56'),
(28, 'Lamborghini Urus (SUV)', 5159651000, 90, 'uploads/lb3.jpg', 'Đẳng cấp tạo nên thương hiệu', 38, '2021-08-15 08:25:31', '2021-08-15 16:13:57'),
(29, 'Lamborghini Centenario', 43900000000, 20, 'uploads/lb4.jpg', 'Đẳng cấp tạo nên thương hiệu', 38, '2021-08-15 08:19:32', '2021-08-15 16:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `hoten` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(28) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `hoten`, `username`, `password`, `phone`, `email`) VALUES
(7, 'admin', 'adminhai', 'hai123', '0376987960', 'boyruck1711@gmail.com'),
(8, 'hoanghai', 'hoanghai', '123', '0376987960', 'boyruck1711@gmail.com'),
(55, 'hai', 'hai123', '1', '0376987960', 'boyruck1711@gmail.com'),
(57, '123', '123', '1', '0376987960', 'boyruck1711@gmail.com'),
(58, 'hai1', '134', '159357', '0376987960', 'boyruck1711@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
