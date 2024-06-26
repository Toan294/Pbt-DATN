-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th5 05, 2023 lúc 05:27 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_pc`
--

-- --------------------------------------------------------
DROP DATABASE IF EXISTS web_pc;
CREATE DATABASE web_pc;
USE web_pc;
--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `modify_date` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id`, `create_date`, `is_active`, `modify_date`, `password`, `username`, `role_id`) VALUES
(1, '2023-05-01', 1, '2023-05-27', '$2a$10$8u4b.UhMGLoKB4UUGED3ZOPBQCF2jh9VSRqCeGqoXNTMshs3zACli', 'admin', 1),
(2, '2023-05-01', 1, '2023-05-28', '$2a$10$wGrHJdgHvTaqlNxxreKtNO4rttRSUgRFZ4LfYeBCRfPFUCvZ5pYCa', 'nvt', 3),
(4, '2023-05-01', 1, '2023-05-01', '123456', 'toan123', 3),
(5, '2023-05-01', 1, '2023-05-01', '$2a$10$wt9PMeccQR5I.qyX2.lseOtu5BvRd9019bHnD.m02N1gQ/wkL9koa', 'kh01', 3),
(6, '2023-05-01', 1, '2023-05-01', '$2a$10$wt9PMeccQR5I.qyX2.lseOtu5BvRd9019bHnD.m02N1gQ/wkL9koa', 'kh02', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_detail`
--

CREATE TABLE `account_detail` (
  `id` bigint(20) NOT NULL,
  `birthdate` datetime NOT NULL,
  `email` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `address` varchar(265) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account_detail`
--

INSERT INTO `account_detail` (`id`, `birthdate`, `email`, `fullname`, `gender`, `phone`, `account_id`, `address`) VALUES
(1, '2022-08-27 00:00:00', 'admin@gmail.com', 'Admin', 'Nam', '0366202468', 1, 'Hà Nội 36 phố phường'),
(2, '2023-04-28 00:00:00', 'minhminhnc@gmail.com', 'Nghiêm Văn Trường', 'Nữ', '0978641896', 2, 'xxx, Phường Ngọc Thụy, Quận Long Biên, Thành phố Hà Nội'),
(4, '1996-08-07 00:00:00', 'hunghv070896@gmail.com', 'Hoàng Văn Hưng', 'Nam', '0364690214', 4, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute`
--

CREATE TABLE `attribute` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `price` double NOT NULL,
  `size` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `cache` int(11) NOT NULL,
  `name` varchar(270) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute`
--

INSERT INTO `attribute` (`id`, `create_date`, `modify_date`, `price`, `size`, `stock`, `product_id`, `cache`, `name`) VALUES
(114, '2023-04-27', '2023-04-27', 21890000, 39, 10, 36, 0, 'Laptop 01'),
(115, '2023-04-27', '2023-04-27', 13990000, 39, 20, 37, 0, 'Laptop 02'),
(116, '2023-04-27', '2023-04-27', 14490000, 39, 12, 38, 0, 'Laptop 03'),
(117, '2023-04-27', '2023-04-27', 33000000, 39, 10, 39, 0, 'Laptop 04'),
(118, '2023-04-28', '2023-04-28', 5000000, 39, 20, 40, 0, 'Manhinh 01'),
(119, '2023-04-28', '2023-04-28', 13000000, 39, 10, 41, 0, 'Manhinh 02'),
(120, '2023-04-28', '2023-04-28', 15000000, 39, 10, 42, 0, 'Manhinh 03'),
(121, '2023-04-28', '2023-04-28', 13280000, 39, 10, 43, 0, 'PC 01'),
(122, '2023-04-28', '2023-04-28', 15290000, 39, 10, 44, 0, 'PC 02'),
(123, '2023-04-28', '2023-04-28', 8000000, 39, 10, 45, 0, 'PC 03'),
(124, '2023-05-05', '2023-05-05', 26000000, 39, 10, 46, 0, 'PC-All 01'),
(125, '2023-05-05', '2023-05-05', 12000000, 39, 15, 47, 0, 'PC-All 02'),
(126, '2023-05-05', '2023-05-05', 20000000, 39, 15, 48, 0, 'PC-All 03'),
(127, '2023-05-05', '2023-05-05', 25500000, 39, 15, 49, 0, 'PC-All 04'),
(128, '2023-05-05', '2023-05-05', 5700000, 39, 15, 50, 0, 'Linhkien 01'),
(129, '2023-05-05', '2023-05-05', 700000, 39, 15, 51, 0, 'Linhkien 02'),
(130, '2023-05-05', '2023-05-05', 3500000, 39, 15, 52, 0, 'Linhkien 03'),
(131, '2023-05-05', '2023-05-05', 250000, 39, 15, 53, 0, 'Linhkien 04'),
(132, '2023-05-05', '2023-05-05', 450000, 39, 15, 54, 0, 'Phukien 01'),
(133, '2023-05-05', '2023-05-05', 630000, 39, 15, 55, 0, 'Phukien 02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `create_date`, `description`, `image`, `is_active`, `modify_date`, `name`) VALUES
(1, '2023-04-25', '', 'laptop.jpg', b'1', '2023-04-25', ''),
(2, '2023-04-25', '', 'phukien.jpg', b'1', '2023-04-25', ''),
(3, '2023-06-01', '', 'manhinh.jpg', b'1', '2023-05-21', ''),
(4, '2023-06-01', '', 'pc.jpg', b'1', '2023-05-01', ''),
(5, '2023-05-05', '', 'phukien.jpg', b'1', '2023-05-05', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_item`
--

CREATE TABLE `cart_item` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `attribute_id` bigint(20) DEFAULT NULL,
  `last_price` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_item`
--

INSERT INTO `cart_item` (`id`, `quantity`, `account_id`, `attribute_id`, `last_price`, `is_active`) VALUES
(39, 0, 2, 116, 168000, 0),
(40, 0, 1, 125, 240000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `create_date`, `description`, `is_active`, `modify_date`, `name`) VALUES
(1, '2023-05-01', 'Linh kiện chính hãng', b'1', '2023-05-01', 'Linh kiện máy tính'),
(2, '2023-05-01', 'Màn hình chính hãng', b'1', '2023-05-01', 'Màn hình máy tính'),
(3, '2022-05-01', 'Máy tính - Máy chủ chính hãng', b'1', '2023-05-01', 'Máy tính - Máy chủ'),
(4, '2023-04-27', 'LapTop chính hãng', b'1', '2023-04-27', 'LapTop'),
(5, '2023-04-28', 'Gaming Gear chính hãng', b'1', '2023-04-28', 'Gaming Gear');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `create_date`, `image_link`, `is_active`, `modify_date`, `name`, `product_id`) VALUES
(205, '2023-04-27', 'Laptop_1.1.jpg', b'1', '2023-04-27', 'main', 36),
(206, '2023-04-27', 'Laptop_1.2.jpg', b'1', '2023-04-27', 'other', 36),
(207, '2023-04-27', 'Laptop_1.3.jpg', b'1', '2023-04-27', 'other', 36),
(208, '2023-04-27', 'Laptop_1.4.jpg', b'1', '2023-04-27', 'other', 36),
(209, '2023-04-27', 'Laptop_2.1.jpg', b'1', '2023-04-27', 'other', 37),
(210, '2023-04-27', 'Laptop_2.2.jpg', b'1', '2023-04-27', 'other', 37),
(211, '2023-04-27', 'Laptop_2.3.jpg', b'1', '2023-04-27', 'main', 37),
(212, '2023-04-27', 'Laptop_2.4.jpg', b'1', '2023-04-27', 'other', 37),
(213, '2023-04-27', 'Laptop_2.5.jpg', b'1', '2023-04-27', 'other', 37),
(214, '2023-04-27', 'Laptop_3.1.jpg', b'1', '2023-04-27', 'main', 38),
(215, '2023-04-27', 'Laptop_3.2.jpg', b'1', '2023-04-27', 'other', 38),
(216, '2023-04-27', 'Laptop_3.3.jpg', b'1', '2023-04-27', 'other', 38),
(217, '2023-04-28', 'Laptop_3.4.jpg', b'1', '2023-04-28', 'other', 38),
(218, '2023-04-28', 'Laptop_4.1.jpg', b'1', '2023-04-28', 'main', 39),
(219, '2023-04-28', 'Laptop_4.2.jpg', b'1', '2023-04-28', 'other', 39),
(220, '2023-04-28', 'Laptop_4.3.jpg', b'1', '2023-04-28', 'other', 39),
(221, '2023-04-28', 'Laptop_4.4.jpg', b'1', '2023-04-28', 'other', 39),
(222, '2023-04-28', 'Laptop_4.5.jpg', b'1', '2023-04-28', 'other', 39),
(223, '2023-04-28', 'Laptop_4.6.jpg', b'1', '2023-04-28', 'other', 39),
(224, '2023-04-28', 'MH_1.1.jpg', b'1', '2023-04-28', 'main', 40),
(225, '2023-04-28', 'MH_1.2.jpg', b'1', '2023-04-28', 'other', 40),
(226, '2023-04-28', 'MH_1.3.jpg', b'1', '2023-04-28', 'other', 40),
(227, '2023-04-28', 'MH_1.4.jpg', b'1', '2023-04-28', 'other', 40),
(228, '2023-04-28', 'MH_2.1.jpg', b'1', '2023-04-28', 'main', 41),
(229, '2023-04-28', 'MH_2.2.jpg', b'1', '2023-04-28', 'other', 41),
(230, '2023-04-28', 'MH_2.3.jpg', b'1', '2023-04-28', 'other', 41),
(231, '2023-04-28', 'MH_2.4.jpg', b'1', '2023-04-28', 'other', 41),
(232, '2023-04-28', 'MH_3.1.jpg', b'1', '2023-04-28', 'main', 42),
(233, '2023-04-28', 'MH_3.2.jpg', b'1', '2023-04-28', 'other', 42),
(234, '2023-04-28', 'MH_3.3.jpg', b'1', '2023-04-28', 'other', 42),
(235, '2023-04-28', 'MH_3.4.jpg', b'1', '2023-04-28', 'other', 42),
(236, '2023-04-28', 'MH_3.5.jpg', b'1', '2023-04-28', 'other', 42),
(237, '2023-05-05', 'PC_1.1.jpg', b'1', '2023-05-05', 'other', 43),
(238, '2023-05-05', 'PC_1.2.jpg', b'1', '2023-05-05', 'main', 43),
(239, '2023-05-05', 'PC_1.3.jpg', b'1', '2023-05-05', 'other', 43),
(240, '2023-05-05', 'PC_1.4.jpg', b'1', '2023-05-05', 'other', 43),
(241, '2023-05-05', 'PC_2.1.jpg', b'1', '2023-05-05', 'main', 44),
(242, '2023-05-05', 'PC_2.2.jpg', b'1', '2023-05-05', 'other', 44),
(243, '2023-05-05', 'PC_3.1.jpg', b'1', '2023-05-05', 'main', 45),
(244, '2023-05-05', 'PC_3.2.jpg', b'1', '2023-05-05', 'other', 45),
(245, '2023-05-05', 'PC_3.3.jpg', b'1', '2023-05-05', 'other', 45),
(246, '2023-05-05', 'MT_MC_1.1.jpg', b'1', '2023-05-05', 'main', 46),
(247, '2023-05-05', 'MT_MC_1.2.jpg', b'1', '2023-05-05', 'other', 46),
(248, '2023-05-05', 'MT_MC_1.3.jpg', b'1', '2023-05-05', 'other', 46),
(249, '2023-05-05', 'MT_MC_1.4.jpg', b'1', '2023-05-05', 'other', 46),
(250, '2023-05-05', 'MT_MC_1.5.jpg', b'1', '2023-05-05', 'other', 46),
(251, '2023-05-05', 'MT_MC_2.1.jpg', b'1', '2023-05-05', 'main', 47),
(252, '2023-05-05', 'MT_MC_2.2.jpg', b'1', '2023-05-05', 'other', 47),
(253, '2023-05-05', 'MT_MC_2.3.jpg', b'1', '2023-05-05', 'other', 47),
(254, '2023-05-05', 'MT_MC_2.4.jpg', b'1', '2023-05-05', 'other', 47),
(255, '2023-05-05', 'MT_MC_3.1.jpg', b'1', '2023-05-05', 'main', 48),
(256, '2023-05-05', 'MT_MC_3.2.jpg', b'1', '2023-05-05', 'other', 48),
(257, '2023-05-05', 'MT_MC_3.3.jpg', b'1', '2023-05-05', 'other', 48),
(258, '2023-05-05', 'MT_MC_3.4.jpg', b'1', '2023-05-05', 'other', 48),
(259, '2023-05-05', 'MT_MC_3.5.jpg', b'1', '2023-05-05', 'other', 48),
(260, '2023-05-05', 'MT_MC_4.1.jpg', b'1', '2023-05-05', 'main', 49),
(261, '2023-05-05', 'MT_MC_4.2.jpg', b'1', '2023-05-05', 'other', 49),
(262, '2023-05-05', 'Linh_Kien1.1.jpg', b'1', '2023-05-05', 'main', 50),
(263, '2023-05-05', 'Linh_Kien1.2.jpg', b'1', '2023-05-05', 'other', 50),
(264, '2023-05-05', 'Linh_Kien2.1.jpg', b'1', '2023-05-05', 'main', 51),
(265, '2023-05-05', 'Linh_Kien3.1.jpg', b'1', '2023-05-05', 'main', 52),
(266, '2023-05-05', 'Linh_Kien4.1.jpg', b'1', '2023-05-05', 'main', 53),
(267, '2023-05-05', 'Phukien1.1.jpg', b'1', '2023-05-05', 'main', 54),
(268, '2023-05-05', 'Phukien1.2.jpg', b'1', '2023-05-05', 'main', 54),
(269, '2023-05-05', 'Phukien2.1.jpg', b'1', '2023-05-05', 'main', 55);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `deliver` tinyint(1) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `content`, `read`, `deliver`, `order_id`, `type`, `product_id`) VALUES
(72, 'Đơn hàng 10081 vừa được tạo, xác nhận ngay nào', 0, 1, 10081, 1, NULL),
(73, 'Đơn hàng 10082 vừa được tạo, xác nhận ngay nào', 0, 1, 10082, 1, NULL),
(74, 'Đơn hàng 10082 vừa hủy, kiểm tra ngay nào', 0, 1, 10082, 2, NULL),
(75, 'Đơn hàng 10083 vừa được tạo, xác nhận ngay nào', 0, 1, 10083, 1, NULL),
(76, 'Đơn hàng 10083 vừa hủy, kiểm tra ngay nào', 0, 1, 10083, 2, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `is_pending` tinyint(1) NOT NULL,
  `modify_date` date NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  `ship_date` date DEFAULT NULL,
  `total` double NOT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `order_status_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `voucher_id` bigint(20) DEFAULT NULL,
  `encode_url` varchar(255) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL,
  `code` varchar(1000) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `shipment` varchar(1000) DEFAULT NULL,
  `payment` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `address`, `create_date`, `fullname`, `is_pending`, `modify_date`, `note`, `phone`, `ship_date`, `total`, `account_id`, `order_status_id`, `email`, `voucher_id`, `encode_url`, `seen`, `code`, `description`, `shipment`, `payment`) VALUES
(10081, '34A,Ngọc Thụy, Quận Long Biên, Thành phố Hà Nội', '2023-04-28', 'Nghiêm Văn Trường', 1, '2023-05-05', 'mua hàng nhé =))', '0697856354', '2023-05-06', 134400, 2, 4, 'Nghiemtruong@gmail.com', 6, 'MTAwODE=', 0, 'A12232', NULL, 'ViettelPost', 'Thanh toán khi giao hàng(COD)'),
(10082, '76K, Phường Trúc Bạch, Quận Ba Đình, Thành phố Hà Nội', '2023-04-28', 'Nguyễn  Minh', 0, '2023-04-28', 'mua hàng', '0697856354', '2023-05-03', 168000, 2, 5, 'minhminhnc@gmail.com', NULL, 'MTAwODI=', 0, NULL, 'Gojek - ko nhu cầu', NULL, 'Thanh toán khi giao hàng(COD)'),
(10083, '85 đường ngọc lâm, Phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', '2023-05-05', 'Nghiêm Trường', 0, '2023-05-05', 'mua hàng', '0697856354', '2023-05-10', 240000, 2, 5, 'nvt@gmail.com', NULL, 'MTAwODM=', 0, NULL, 'Gojek - ko thích', NULL, 'Thanh toán khi giao hàng(COD)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL,
  `origin_price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `sell_price` double NOT NULL,
  `attribute_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `origin_price`, `quantity`, `sell_price`, `attribute_id`, `order_id`) VALUES
(90, 210000, 1, 168000, 116, 10081),
(91, 210000, 1, 168000, 116, 10082),
(92, 300000, 1, 240000, 125, 10083);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_status`
--

INSERT INTO `order_status` (`id`, `create_date`, `description`, `name`, `update_date`) VALUES
(1, '2023-05-01', 'Đơn hàng tạo mới', 'Chờ xác nhận', '2023-05-01'),
(2, '2023-04-01', 'Đơn hàng đang được xử lí', 'Đang xử lí', '2023-04-01'),
(3, '2023-03-03', 'Đơn hàng đang vận chuyển', 'Đang vận chuyển', '2023-03-04'),
(4, '2023-03-05', 'Đơn hàng giao thành công', 'Đã giao', '2023-03-08'),
(5, '2023-04-08', 'Đơn hàng đã hủy', 'Đã hủy', '2023-06-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `create_date` date NOT NULL,
  `description` varchar(1000) NOT NULL,
  `modify_date` date NOT NULL,
  `name` longtext NOT NULL,
  `view` bigint(20) NOT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `sale_id` bigint(20) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `code`, `create_date`, `description`, `modify_date`, `name`, `view`, `brand_id`, `sale_id`, `is_active`) VALUES
(36, 'LT01', '2023-04-27', 'CPU: AMD Ryzen 7-4800H. 
Ổ cứng: 512GB PCIe® 3.0 NVMe™ M.2 SSD.
VGA: NVIDIA GeForce RTX 3050 Ti 4GB GDDR6.
Màn hình: 15.6-inch FHD (1920 x 1080) 16:9,144Hz,IPS-level,250nits,1:1000, 45% NTSC, 62.5% SRGB, anti-glare display.
Pin: 4-cell, 56WHrs.
Cân nặng: 2.10 Kg.
Màu sắc: Xám.
Tính năng: Bàn phím LED RGB.
OS: Windows 11 Home', '2023-04-28', 'Laptop Asus ROG Strix G153 G513IE-HN246W )', 1, 4, 1, 1),
(37, 'LT02', '2023-04-27', 'i5-1235U | 8GB RAM | 512GB SSD | Intel Iris Xe Graphics | 14 inch FHD IPS | Led Keyboard | Windows 11 | Steel Gray', '2023-04-28', 'Laptop Acer Aspire 5 A514-55-5954', 1, 4, 2, 1),
(38, 'LT03', '2023-04-27', 'i5 1235U | 8GB RAM | 512GB SSD | 15.6 INCH FHD | WIN11 | OFFICEHS21 | ĐEN', '2023-04-28', 'Laptop DELL INSPIRON 3520', 1, 4, 2, 1),
(39, 'LT04', '2023-05-05', 'AMD Ryzen 7-7735HS | 16GB | SSD 512GB | RTX 4060 | 15.6 inch 2K 165Hz', '2023-05-05', 'Laptop gaming LENOVO Legion 5 15ARP8 83EF0002US', 1, 4, 2, 1),
(40, 'MH01', '2023-04-27', '23.8 inch | 16:09 |	FHD 1920x1080 |	75Hz | IPS', '2023-04-27', 'Màn hình Acer EK241Y', 1, 2, 1, 1),
(41, 'MH02', '2023-04-28', '23.8 inch | 16:09 |	FHD 1920x1080 |	75Hz | IPS', '2023-04-28', 'Màn hình Asus ProArt', 1, 2, 1, 1),
(42, 'MH03', '2023-04-28', '32 inch | 16:09 | 4k | 60Hz | IPS', '2023-04-28', 'Màn hình Dell S3221QS', 1, 2, 2, 1),
(43, 'PC01', '2023-04-28', 'I3-12100 | 4GB RAM | 256GB SSD | WL+BT | Office | Win11', '2023-04-28', 'Asus Pro E500 G7', 2, 3, 2, 1),
(44, 'PC02', '2023-04-28', 'Core i5-13400 | Intel B760 | 8GB | 512GB SSD | Intel UHD Graphics 730', '2023-04-28', 'PC Lenovo ThinkCentre Neo 50T Gen4 12JB001HVA', 1, 3, 1, 1),
(45, 'PC03', '2023-04-28', 'I3-12100 | 4GB RAM | 256GB SSD | WL+BT | Office | Win11', '2023-04-28', 'Máy Tính Đồng Bộ Dell Vostro 3710', 1, 3, 3, 1),
(46, 'MTMC01', '2023-04-28', 'R3-7330U | 8GB | 256GB | SSD | 23.8" | Full HD | IPS | Windows 11 Home', '2023-04-28', 'LENOVO IdeaCentre AIO 3 24ALC6', 1, 3, 1, 1),
(47, 'MTMC02', '2023-05-05', 'Core-i5 | 8GB | 512GB | SSD | 23.8" | Full HD | IPS | Windows 10 Home SL', '2023-05-05', 'PC Table HP', 1, 3, 3, 1),
(48, 'MTMC03', '2023-05-05', 'Core-i3 | 8GB | 1TB | HDD | 23.8" | Full HD | IPS | Windows 10 Home ', '2023-05-05', 'PC Dell 5400 42INAI0540001', 1, 3, 2, 1),
(49, 'MTMC04', '2023-05-05', 'Core-i5 | 8GB | 512GB | SSD | 23.8" | Full HD | IPS | Windows 11 ', '2023-05-05', 'PC Asus V241EAK-WA209W', 1, 3, 2, 1),
(50, 'LK01', '2023-05-05', 'Core-i5 | 8GB | 512GB | SSD | 23.8" | Full HD | IPS | Windows 11 ', '2023-05-05', 'Mainboard', 1, 1, 2, 1),
(51, 'LK02', '2023-05-05', 'ĐỌC 545MB/S - GHI 465MB/S ', '2023-05-05', 'Ổ cứng SSD WD GREEN 240GB SATA 2.5 inch', 1, 1, 2, 1),
(52, 'LK03', '2023-05-05', 'ĐỌC 7450MB/S - GHI 6900MB/S ', '2023-05-05', 'Ổ cứng SSD SAMSUNG 990 Pro 1TB PCIE NVME 4.0X4', 1, 1, 2, 1),
(53, 'LK04', '2023-05-05', 'MÀU TRẮNG/QUẠT THỔI ', '2023-05-05', 'Quạt tản nhiệt MONTECH AX 120 PWM WHITE', 1, 1, 2, 1),
(54, 'PK01', '2023-05-05', '6400 DPI | 220 IPS | 1000 Hz | 10 triệu lần nhấn ', '2023-05-05', 'Chuột Razer DeathAdder Essential-Ergonomic Wired_RZ01-03850100-R3M1', 1, 5, 2, 1),
(55, 'PK02', '2023-05-05', 'PWM3325 | Wireless 2.4Ghz/Bluetooth/có dây USB | Huano 20 triệu lần nhấn ', '2023-05-05', 'Chuột Không Dây Gaming Fuhlen D90S V3', 1, 5, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`id`, `category_id`, `product_id`) VALUES
(102, 4, 36),
(103, 3, 37),
(104, 3, 38),
(105, 3, 39),
(106, 3, 40),
(107, 4, 41),
(108, 3, 42),
(109, 4, 43),
(110, 4, 44),
(111, 3, 45),
(112, 4, 46),
(113, 4, 47),
(114, 4, 48),
(115, 4, 49),
(116, 4, 50),
(117, 4, 51),
(118, 4, 52),
(119, 4, 53),
(120, 4, 54),
(121, 4, 55);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `create_date`, `modify_date`, `name`) VALUES
(1, '2023-05-01', '2023-05-01', 'ADMIN'),
(3, '2023-05-01', '2023-05-01', 'CUS');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sales`
--

INSERT INTO `sales` (`id`, `create_date`, `description`, `discount`, `is_active`, `modify_date`, `name`) VALUES
(1, '2023-05-01', 'Chương trình mặc định', 0, b'1', '2023-05-01', 'Mặc định'),
(2, '2023-05-01', 'Thông thường', 20, b'1', '2023-05-01', 'Thông thường'),
(3, '2023-05-01', 'Siêu giảm giá', 30, b'1', '2023-05-01', 'Siêu giảm giá');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint(20) NOT NULL,
  `code` varchar(12) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vouchers`
--

INSERT INTO `vouchers` (`id`, `code`, `count`, `create_date`, `discount`, `expire_date`, `is_active`) VALUES
(1, 'LAP2024', 5, '2023-05-07', 50, '2024-06-30', 1),
(2, 'PC2024', 5, '2023-05-01', 30, '2024-06-01', 0),
(3, 'PK2024', 2, '2023-05-10', 30, '2024-05-30', 1),
(4, 'MOUSE2024', 3, '2023-03-02', 30, '2024-04-02', 1),
(5, 'TC2024', 1, '2023-04-02', 60, '2024-06-02', 1),
(6, 'NVT2024', 10, '2023-04-25', 10, '2024-05-25', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_k8h1bgqoplx0rkngj01pm1rgp` (`username`),
  ADD KEY `FKt3wava8ssfdspnh3hg4col3m1` (`role_id`);

--
-- Chỉ mục cho bảng `account_detail`
--
ALTER TABLE `account_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9ova18pr7v2oy5naxm6godxg3` (`account_id`);

--
-- Chỉ mục cho bảng `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdmxq368cv2u55c08l151uhwer` (`product_id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKr73mlc9qnqbuohor52oa82e8u` (`account_id`),
  ADD KEY `FKqqnwtpr34wi90lptk7a4pd66` (`attribute_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKghwsjbjo7mg3iufxruvq6iu3q` (`product_id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4gbdnyp7alt2qobudy7oo1nwp` (`order_id`),
  ADD KEY `FK557oqdnctfria015no3n7ev72` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKagh5svlor3slbay6tq5wqor1o` (`account_id`),
  ADD KEY `FK2n7p8t83wo7x0lep1q06a6cvy` (`order_status_id`),
  ADD KEY `FKdimvsocblb17f45ikjr6xn1wj` (`voucher_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbpibmme3f3wayg5vs7pbnnmaw` (`attribute_id`),
  ADD KEY `FKrws2q0si6oyd6il8gqe2aennc` (`order_id`);

--
-- Chỉ mục cho bảng `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_57ivhy5aj3qfmdvl6vxdfjs4p` (`code`),
  ADD KEY `FKa3a4mpsfdf4d2y6r8ra3sc8mv` (`brand_id`),
  ADD KEY `FKorwhur7undd0tdqkijmpf7882` (`sale_id`);

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdswxvx2nl2032yjv609r29sdr` (`category_id`),
  ADD KEY `FK5w81wp3eyugvi2lii94iao3fm` (`product_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_30ftp2biebbvpik8e49wlmady` (`code`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `account_detail`
--
ALTER TABLE `account_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10084;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `FKt3wava8ssfdspnh3hg4col3m1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `account_detail`
--
ALTER TABLE `account_detail`
  ADD CONSTRAINT `FK9ova18pr7v2oy5naxm6godxg3` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`);

--
-- Các ràng buộc cho bảng `attribute`
--
ALTER TABLE `attribute`
  ADD CONSTRAINT `FKdmxq368cv2u55c08l151uhwer` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `FKqqnwtpr34wi90lptk7a4pd66` FOREIGN KEY (`attribute_id`) REFERENCES `attribute` (`id`),
  ADD CONSTRAINT `FKr73mlc9qnqbuohor52oa82e8u` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`);

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FKghwsjbjo7mg3iufxruvq6iu3q` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `FK4gbdnyp7alt2qobudy7oo1nwp` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `FK557oqdnctfria015no3n7ev72` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK2n7p8t83wo7x0lep1q06a6cvy` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`),
  ADD CONSTRAINT `FKagh5svlor3slbay6tq5wqor1o` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  ADD CONSTRAINT `FKdimvsocblb17f45ikjr6xn1wj` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `FKbpibmme3f3wayg5vs7pbnnmaw` FOREIGN KEY (`attribute_id`) REFERENCES `attribute` (`id`),
  ADD CONSTRAINT `FKrws2q0si6oyd6il8gqe2aennc` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FKa3a4mpsfdf4d2y6r8ra3sc8mv` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `FKorwhur7undd0tdqkijmpf7882` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`);

--
-- Các ràng buộc cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `FK5w81wp3eyugvi2lii94iao3fm` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FKdswxvx2nl2032yjv609r29sdr` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;


