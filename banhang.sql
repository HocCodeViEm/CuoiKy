/*
MySQL Backup
Database: banhang
Backup Time: 2024-11-24 08:42:21
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `banhang`.`category`;
DROP TABLE IF EXISTS `banhang`.`order_details`;
DROP TABLE IF EXISTS `banhang`.`orders`;
DROP TABLE IF EXISTS `banhang`.`product`;
DROP TABLE IF EXISTS `banhang`.`user`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `order_id` (`order_id`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `number` float NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `content` longtext NOT NULL,
  `id_category` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `hoten` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(28) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
BEGIN;
LOCK TABLES `banhang`.`category` WRITE;
DELETE FROM `banhang`.`category`;
INSERT INTO `banhang`.`category` (`id`,`name`,`created_at`,`updated_at`,`image`) VALUES (1, 'Xe Mercedes', '2024-11-24 07:57:37', '2024-11-24 07:57:37', 'images/bg/mec.png'),(2, 'Xe Porsche', '2024-11-24 07:57:37', '2024-11-24 07:57:37', 'images/bg/por.png'),(3, 'Xe BMW', '2024-11-24 07:57:37', '2024-11-24 07:57:37', 'images/bg/bmw.png'),(38, 'Xe Lamborghini', '2024-11-24 07:57:37', '2024-11-24 07:57:37', 'images/bg/lambor.png')
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `banhang`.`order_details` WRITE;
DELETE FROM `banhang`.`order_details`;
INSERT INTO `banhang`.`order_details` (`id`,`order_id`,`product_id`,`id_user`,`num`,`price`,`status`) VALUES (149, 143, 2, 7, 3, 2200000000, 'Đã hủy'),(150, 143, 4, 7, 1, 2200000000, 'Đã hủy'),(151, 143, 12, 7, 1, 2200000000, 'Đã hủy'),(152, 143, 14, 7, 1, 2200000000, 'Đã hủy'),(153, 144, 12, 8, 11, 2200000000, 'Đã nhận hàng')
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `banhang`.`orders` WRITE;
DELETE FROM `banhang`.`orders`;
INSERT INTO `banhang`.`orders` (`id`,`fullname`,`phone_number`,`email`,`address`,`note`,`order_date`) VALUES (143, 'Hoàng Minh Hải', '0376987960', 'boyruck1711@gmail,com', '68.65.120.213, viet nam', '', '2024-11-18 08:37:06'),(144, 'DEMO', '0376987960', 'DEMO@gmail.com', 'DEMO', 'DEMO', '2024-11-18 08:37:06')
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `banhang`.`product` WRITE;
DELETE FROM `banhang`.`product`;
INSERT INTO `banhang`.`product` (`id`,`title`,`price`,`number`,`thumbnail`,`content`,`id_category`,`created_at`,`updated_at`) VALUES (1, '\r\nC 200 Avantgarde', 1599000000, 20, 'uploads/mec1.jpg', 'Đây là phiên bản tiêu chuẩn của dòng C-Class, thiết kế trẻ trung và thanh lịch, được trang bị động cơ EQ Boost tiết kiệm nhiên liệu, cùng hệ thống treo Comfort êm ái​\n.', 1, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(2, 'C 200 Avantgarde Plus', 1849000000, 50, 'uploads/mec2.jpg', 'Nâng cấp so với bản Avantgarde, xe có thiết kế gần giống S-Class với nội thất rộng rãi, trang bị gói ngoại thất Avantgarde, hệ thống đèn LED High Performance, và nhiều công nghệ hiện đại​.', 1, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(4, 'C 300 AMG', 2089000000, 30, 'uploads/mec3.jpg', 'Phiên bản thể thao với gói ngoại thất AMG, động cơ mạnh mẽ hơn và nội thất hiện đại, tích hợp nhiều tính năng cao cấp.', 1, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(5, 'E 180', 2099000000, 10, 'uploads/mec4.jpg', 'Thuộc dòng E-Class, E 180 tập trung vào sự tiện nghi và sang trọng, với không gian rộng rãi và động cơ tiết kiệm nhiên liệu.', 1, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(8, 'E 300 AMG', 2999000000, 10, 'uploads/mec5.jpg', 'Phiên bản cao cấp của E-Class với phong cách thể thao từ AMG, hiệu năng mạnh mẽ và công nghệ đỉnh cao.', 1, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(9, '718 Cayman', 3790000000, 46, 'uploads/pc1.png', 'Xe coupe thể thao 2 cửa, mang lại trải nghiệm lái mạnh mẽ với động cơ đặt giữa, thiết kế khí động học đẹp mắt.\n\n', 2, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(10, '718 Cayman S', 4690000000, 44, 'uploads/pc2.png', 'Phiên bản nâng cấp của Cayman, với động cơ mạnh hơn, trải nghiệm lái thể thao ấn tượng hơn.', 2, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(12, '718 Boxster', 4020000000, 15, 'uploads/pc3.png', 'Xe thể thao mui trần, mang lại cảm giác lái phấn khích cùng thiết kế thời thượng.', 2, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(13, '718 Boxster S', 5020000000, 20, 'uploads/pc4.png', 'Nâng cấp động cơ và tính năng so với bản Boxster, hướng đến trải nghiệm thể thao tối ưu.', 2, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(14, '718 Cayman Style Edition', 4000000000, 5, 'uploads/pc5.png', 'Phiên bản đặc biệt với phong cách thiết kế độc đáo, hướng đến sự khác biệt và cá tính.', 2, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(16, 'BMW 320i M Sport LCI', 1799000000, 30, 'uploads/bmw1.png', 'Sedan hạng sang với thiết kế thể thao, động cơ mạnh mẽ và công nghệ tiên tiến.', 3, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(17, 'BMW 330i M Sport LCI', 2379000000, 10, 'uploads/bmw2.png', 'Phiên bản nâng cấp của dòng 3-Series với hiệu năng cao và ngoại thất phong cách M Sport.', 3, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(18, 'BMW 430i Gran Coupe', 2999000000, 10, 'uploads/bmw3.png', 'Xe coupe 4 cửa với thiết kế thể thao và không gian tiện nghi.', 3, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(19, 'BMW 4 Series Mui Trần', 3099000000, 46, 'uploads/bmw4.png', 'Dòng xe mui trần với thiết kế sang trọng, cảm giác lái phấn khích.', 3, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(20, 'BMW 520i M Sport', 2979000000, 44, 'uploads/bmw5.png', 'Phiên bản M Sport của dòng 5-Series, tập trung vào hiệu suất và tính thể thao', 3, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(21, 'Lamborghini Huracán Tecnica', 6989680000, 15, 'uploads/lb1.jpg', 'Đẳng cấp tạo Đây là phiên bản đặc biệt của dòng Huracán, trang bị động cơ V10 5.2L, công suất 631 mã lực và mô-men xoắn 565 Nm. Xe có thiết kế khí động học với cánh gió sau cố định, tối ưu hóa lực ép mặt đường.', 38, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(26, 'Lamborghini Revuelto', 22621100000, 100, 'uploads/lb2.jpg', 'Là siêu xe hybrid V12 đầu tiên của Lamborghini, kết hợp động cơ V12 với ba motor điện, cho tổng công suất hơn 1.000 mã lực. Revuelto được định hình như một \"kẻ thay đổi cuộc chơi\" trong làng siêu xe, với thiết kế hiện đại và hiệu suất vượt trội.', 38, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(28, 'Lamborghini Urus (SUV)', 5159650000, 90, 'uploads/lb3.jpg', 'SUV cao cấp của Lamborghini, trang bị động cơ V8 tăng áp kép 4.0L, công suất 641 mã lực, tăng tốc 0-100 km/h trong 3,6 giây. Urus kết hợp thiết kế mạnh mẽ của Lamborghini với khả năng vận hành đa dụng của SUV.', 38, '2024-11-24 07:57:37', '2024-11-24 07:57:37'),(29, 'Lamborghini Centenario', 43900000000, 20, 'uploads/lb4.jpg', 'Siêu xe giới hạn với chỉ 40 chiếc trên toàn thế giới, kỷ niệm sinh nhật 100 năm của nhà sáng lập Ferruccio Lamborghini. Trang bị động cơ V12 hút khí tự nhiên, công suất 770 mã lực, đây là một trong những mẫu xe hiếm nhất của hãng.', 38, '2024-11-24 07:57:37', '2024-11-24 07:57:37')
;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `banhang`.`user` WRITE;
DELETE FROM `banhang`.`user`;
INSERT INTO `banhang`.`user` (`id_user`,`hoten`,`username`,`password`,`phone`,`email`) VALUES (7, 'admin', 'adminhai', 'hai123', '0376987960', 'boyruck1711@gmail.com'),(8, 'hoanghai', 'hoanghai', '123', '0376987960', 'boyruck1711@gmail.com'),(55, 'hai', 'hai123', '1', '0376987960', 'boyruck1711@gmail.com'),(57, '123', '123', '1', '0376987960', 'boyruck1711@gmail.com'),(58, 'hai1', '134', '159357', '0376987960', 'boyruck1711@gmail.com'),(59, 'Trần Trọng Thuận', 'thuantran', 'thuantran', '0941619162', 'thuanhaha@gmail.com')
;
UNLOCK TABLES;
COMMIT;
