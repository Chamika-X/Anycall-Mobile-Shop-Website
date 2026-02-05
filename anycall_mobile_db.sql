-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2024 at 02:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anycall_mobile_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `verification` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `verification`, `fname`, `lname`) VALUES
('chamika9933@gmail.com', '6708c2f8cb6de', 'Chamika', 'Rathnayake'),
('nipunadhananjaya181@gmail.com', '6708c347f075d', 'Nipuna', 'Dhananjaya'),
('tharinduwijayarathne87@gmail.com', '6708df271e80a', 'Nipuna', 'Dhananjaya');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Xiaomi'),
(4, 'Sony '),
(5, 'OnePlus'),
(6, 'Nokia '),
(7, 'Microsoft '),
(8, 'Infinix'),
(9, 'Oppo '),
(10, 'Vivo'),
(11, 'Realme'),
(12, 'ZTE');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Mobile Phones'),
(2, 'Tablets & IPads'),
(3, 'Mobile Accessories '),
(4, 'Smart Watches '),
(5, 'Earphones'),
(6, 'Headsets '),
(7, 'Fitness Trackers '),
(8, 'Tablet');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `from` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `to` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `from`, `to`, `content`, `date`, `status`) VALUES
(1, 'chamika9933@gmail.com', 'cintpss7@gmail.com', 'hi', '2024-10-07 14:31:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `postal_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `postal_code`) VALUES
(1, 'Kandy', '20000'),
(2, 'Colombo', '11000');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `name`) VALUES
(1, 'Gold'),
(2, 'Silver'),
(3, 'Graphite'),
(4, 'Blue'),
(5, 'Jet Black'),
(6, 'Rose Gold');

-- --------------------------------------------------------

--
-- Table structure for table `condition`
--

CREATE TABLE `condition` (
  `id` int(11) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `condition`
--

INSERT INTO `condition` (`id`, `name`) VALUES
(1, 'Brandnew'),
(2, 'Used');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`) VALUES
(1, 'Kandy'),
(2, 'Colombo');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `feed` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_email`, `product_id`, `feed`, `date`) VALUES
(2, 'tharinduwijayarathna8206@gmail.com', 11, 'Good Product ', '2021-10-29 03:02:23'),
(6, 'tharinduwijayarathne87@gmail.com', 11, 'Good Product. Highly Recommended.', '2021-11-02 04:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`code`, `product_id`) VALUES
('66c5af0d86176.jpeg', 10),
('66c5af1a1ae0e.jpeg', 10),
('6708c37ff166c.jpeg', 10),
('6708d59626682.jpeg', 10),
('6179b5319d7e2.jpeg', 11),
('6179b531abadb.jpeg', 11),
('6179b531b1eb8.jpeg', 11),
('6708df7c0beb0.jpeg', 11),
('6179b5d54f52f.jpeg', 12),
('6179b5d55ad12.jpeg', 12),
('6179b5d56a081.jpeg', 12),
('6179b72a70a8f.jpeg', 13),
('6179b72a8401f.jpeg', 13),
('6179b72a9acd9.jpeg', 13),
('6179b7d22ae8d.jpeg', 14),
('6179b7d23825b.jpeg', 14),
('6179b7d23e614.jpeg', 14),
('6179b9da0c39f.jpeg', 15),
('6179b9da28a43.jpeg', 15),
('6179b9da341e0.jpeg', 15),
('6179baee50e1e.jpeg', 16),
('6179baee5e633.jpeg', 16),
('6179baee6825c.jpeg', 16),
('6179bb9aef7f9.jpeg', 17),
('6179bb9b0c337.jpeg', 17),
('6179bb9b15a3c.jpeg', 17),
('6179bd992796b.jpeg', 18),
('6179bd993509f.jpeg', 18),
('6179bd993b635.jpeg', 18),
('6179befd5ced9.jpeg', 19),
('6179befd71e29.jpeg', 19),
('6179befd7fcc3.jpeg', 19),
('6179c0167b143.jpeg', 20),
('6179c016a5b8f.jpeg', 20),
('6179c016b26fa.jpeg', 20),
('6179c13fd4f32.jpeg', 21),
('6179c13fe47ae.jpeg', 21),
('6179c13feae35.jpeg', 21),
('6182b489264be.jpeg', 26),
('6182b48937e2e.jpeg', 26),
('6182b4896aa41.jpeg', 26),
('6182b48985320.jpeg', 26),
('618430a5f119b.jpeg', 27),
('6708d1c543396.jpeg', 27),
('6708d1ceaf182.jpeg', 27),
('6708d1d3c2407.jpeg', 27);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `user_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` datetime DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `province_id`, `district_id`, `city_id`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 1, 1, 1),
(5, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`id`, `name`) VALUES
(1, 'Iphone X'),
(2, 'Galaxy S10'),
(3, 'Galaxy M52 5G'),
(4, 'Redmi 10 Prime'),
(5, 'X70 Pro Plus'),
(6, 'Realme 8i'),
(7, 'Realme GT master'),
(8, 'Nord 2'),
(9, 'Iphone 13'),
(10, 'Galaxy S20'),
(11, 'Iphone 8'),
(12, 'XZ3'),
(13, 'Xperia iii'),
(14, 'Mi 11'),
(15, 'Iphone 6S'),
(16, 'Iphone 11 Pro '),
(17, 'Galaxy S21 Ultra'),
(18, 'Galaxy Note 20 '),
(19, 'Earbuds 2'),
(20, 'Iphone 12'),
(21, '7'),
(22, '15');

-- --------------------------------------------------------

--
-- Table structure for table `model_has_brand`
--

CREATE TABLE `model_has_brand` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_brand`
--

INSERT INTO `model_has_brand` (`id`, `brand_id`, `model_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 1, 11),
(4, 1, 15),
(5, 1, 9),
(6, 1, 16),
(7, 3, 14),
(8, 3, 4),
(9, 5, 8),
(10, 11, 6),
(11, 11, 7),
(12, 10, 5),
(13, 2, 3),
(14, 2, 18),
(15, 2, 10),
(16, 2, 17),
(17, 4, 12),
(18, 4, 13),
(19, 2, 19),
(20, 1, 20),
(21, 1, 21);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `model_has_brand_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `color_id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `heading` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `condition_id` int(11) NOT NULL,
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status_id` int(11) NOT NULL,
  `datetime_added` datetime DEFAULT NULL,
  `delivery_fee_colombo` double DEFAULT NULL,
  `delivery_fee_other` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `model_has_brand_id`, `title`, `color_id`, `price`, `qty`, `heading`, `description`, `condition_id`, `user_email`, `status_id`, `datetime_added`, `delivery_fee_colombo`, `delivery_fee_other`) VALUES
(10, 1, 1, 'Apple Iphone X 64GB (US)', 1, 148000, 14, 'Brandnew Apple iphone X. Imported from USA with all original accessories.  3 Years Apple Warranty', 'NETWORK	Technology	\r\nGSM / HSPA / LTE\r\nLAUNCH	Announced	2017, September 12\r\nStatus	Available. Released 2017, November 03\r\nBODY	Dimensions	143.6 x 70.9 x 7.7 mm (5.65 x 2.79 x 0.30 in)\r\nWeight	174 g (6.14 oz)\r\nBuild	Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame\r\nSIM	Nano-SIM\r\n 	IP67 dust/water resistant (up to 1m for 30 mins)\r\nApple Pay (Visa, MasterCard, AMEX certified)\r\nDISPLAY	Type	Super Retina OLED, HDR10, Dolby Vision, 625 nits (HBM)\r\nSize	5.8 inches, 84.4 cm2 (~82.9% screen-to-body ratio)\r\nResolution	1125 x 2436 pixels, 19.5:9 ratio (~458 ppi density)\r\nProtection	Scratch-resistant glass, oleophobic coating\r\n 	Wide color gamut\r\n3D Touch\r\nTrue-tone\r\nPLATFORM	OS	iOS 11.1.1, upgradable to iOS 15.1\r\nChipset	Apple A11 Bionic (10 nm)\r\nCPU	Hexa-core 2.39 GHz (2x Monsoon + 4x Mistral)\r\nGPU	Apple GPU (three-core graphics)\r\nMEMORY	Card slot	No\r\nInternal	64GB 3GB RAM, 256GB 3GB RAM\r\n 	NVMe\r\nMAIN CAMERA	Dual	12 MP, f/1.8, 28mm (wide), 1/3\", 1.22µm, dual pixel PDAF, OIS\r\n12 MP, f/2.4, 52mm (telephoto), 1/3.4\", 1.0µm, PDAF, OIS, 2x optical zoom\r\nFeatures	Quad-LED dual-tone flash, HDR (photo/panorama), panorama, HDR\r\nVideo	4K@24/30/60fps, 1080p@30/60/120/240fps\r\nSELFIE CAMERA	Dual	7 MP, f/2.2, 32mm (standard)\r\nSL 3D, (depth/biometrics sensor)\r\nFeatures	HDR\r\nVideo	1080p@30fps', 1, 'tharinduwijayarathne87@gmail.com', 2, '2021-10-28 01:50:33', 150, 200),
(11, 1, 4, 'Apple Iphone 6s (64GB) US', 2, 26000, 12, 'The iPhone 6S has a similar design to the iPhone 6 but includes updated hardware, including a strengthened 7000 series aluminium alloy chassis and upgraded Apple A9 system-on-chip, a new 12-megapixel rear camera that can record up to 4K video at 30fps at first in the series', 'NETWORK	Technology	\r\nGSM / CDMA / HSPA / EVDO / LTE\r\nLAUNCH	Announced	2015, September 09. Released 2015, September 25\r\nStatus	Discontinued\r\nBODY	Dimensions	138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)\r\nWeight	143 g (5.04 oz)\r\nBuild	Glass front (Gorilla Glass), aluminum back, aluminum frame\r\nSIM	Nano-SIM\r\n 	Apple Pay (Visa, MasterCard, AMEX certified)\r\nDISPLAY	Type	IPS LCD\r\nSize	4.7 inches, 60.9 cm2 (~65.6% screen-to-body ratio)\r\nResolution	750 x 1334 pixels, 16:9 ratio (~326 ppi density)\r\nProtection	Ion-strengthened glass, oleophobic coating\r\n 	3D Touch\r\nPLATFORM	OS	iOS 9, upgradable to iOS 15.1\r\nChipset	Apple A9 (14 nm)\r\nCPU	Dual-core 1.84 GHz Twister\r\nGPU	PowerVR GT7600 (six-core graphics)\r\nMEMORY	Card slot	No\r\nInternal	16GB 2GB RAM, 32GB 2GB RAM, 64GB 2GB RAM, 128GB 2GB RAM\r\nMAIN CAMERA	Single	12 MP, f/2.2, 29mm (standard), 1/3\", 1.22µm, PDAF\r\nFeatures	Dual-LED dual-tone flash, HDR\r\nVideo	4K@30fps, 1080p@60fps,1080p@120fps, 720p@240fps\r\nSELFIE CAMERA	Single	5 MP, f/2.2, 31mm (standard)\r\nFeatures	Face detection, HDR, panorama\r\nVideo	720p@30fps\r\nSOUND	Loudspeaker	Yes\r\n3.5mm jack	Yes\r\n 	16-bit/44.1kHz audio\r\nCOMMS	WLAN	Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nBluetooth	4.2, A2DP, LE\r\nGPS	Yes, with A-GPS, GLONASS, GALILEO, QZSS\r\nNFC	Yes (Apple Pay only)\r\nRadio	No\r\nUSB	Lightning, USB 2.0', 1, 'tharinduwijayarathne87@gmail.com', 1, '2021-10-28 01:53:13', 100, 220),
(12, 1, 6, 'Apple Iphone 11 Pro 128GB (US)', 4, 250000, 15, 'The phone comes with a 5.80-inch touchscreen display with a resolution of 1125x2436 pixels at a pixel density of 458 pixels per inch (ppi). iPhone 11 Pro is powered by a hexa-core Apple A13 Bionic processor. It comes with 4GB of RAM. The iPhone 11 Pro runs iOS 13 and is powered by a 3046mAh non-removable battery.', 'NETWORK	Technology	\nGSM / CDMA / HSPA / EVDO / LTE\nLAUNCH	Announced	2019, September 10\nStatus	Available. Released 2019, September 20\nBODY	Dimensions	144 x 71.4 x 8.1 mm (5.67 x 2.81 x 0.32 in)\nWeight	188 g (6.63 oz)\nBuild	Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame\nSIM	Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China\n 	IP68 dust/water resistant (up to 4m for 30 mins)\nApple Pay (Visa, MasterCard, AMEX certified)\nDISPLAY	Type	Super Retina XDR OLED, HDR10, Dolby Vision, 800 nits (HBM), 1200 nits (peak)\nSize	5.8 inches, 84.4 cm2 (~82.1% screen-to-body ratio)\nResolution	1125 x 2436 pixels, 19.5:9 ratio (~458 ppi density)\nProtection	Scratch-resistant glass, oleophobic coating\n 	Wide color gamut\nTrue-tone\nPLATFORM	OS	iOS 13, upgradable to iOS 15.1\nChipset	Apple A13 Bionic (7 nm+)\nCPU	Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)\nGPU	Apple GPU (4-core graphics)\nMEMORY	Card slot	No\nInternal	64GB 4GB RAM, 256GB 4GB RAM, 512GB 4GB RAM\n 	NVMe\nMAIN CAMERA	Triple	12 MP, f/1.8, 26mm (wide), 1/2.55\", 1.4µm, dual pixel PDAF, OIS\n12 MP, f/2.0, 52mm (telephoto), 1/3.4\", 1.0µm, PDAF, OIS, 2x optical zoom\n12 MP, f/2.4, 120˚, 13mm (ultrawide), 1/3.6\"\nFeatures	Dual-LED dual-tone flash, HDR (photo/panorama)\nVideo	4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.\nSELFIE CAMERA	Dual	12 MP, f/2.2, 23mm (wide), 1/3.6\"\nSL 3D, (depth/biometrics sensor)\nFeatures	HDR\nVideo	4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS\nSOUND	Loudspeaker	Yes, with stereo speakers\n3.5mm jack	No\nCOMMS	WLAN	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\nBluetooth	5.0, A2DP, LE\nGPS	Yes, with A-GPS, GLONASS, GALILEO, QZSS\nNFC	Yes\nRadio	No\nUSB	Lightning, USB 2.0', 2, 'tharinduwijayarathne87@gmail.com', 1, '2021-10-28 01:55:57', 250, 350),
(13, 1, 2, 'Samsung Galaxy S10 6GB 64GB (US)', 2, 75000, 3, 'The Galaxy S10 packs in a 3400mAh battery and manages to deliver over one day of battery life. It sports a triple camera setup at the back onsisting of a 12-megapixel telephoto camera, 12-megapixel wide-angle camera and 16-megapixel ultra wide camera.', 'NETWORK	Technology	\nGSM / CDMA / HSPA / EVDO / LTE\nLAUNCH	Announced	2019, February 20\nStatus	Available. Released 2019, March 08\nBODY	Dimensions	149.9 x 70.4 x 7.8 mm (5.90 x 2.77 x 0.31 in)\nWeight	157 g (5.54 oz)\nBuild	Glass front (Gorilla Glass 6), glass back (Gorilla Glass 5), aluminum frame\nSIM	Single SIM (Nano-SIM) or Hybrid Dual SIM (Nano-SIM, dual stand-by)\n 	IP68 dust/water resistant (up to 1.5m for 30 mins)\nDISPLAY	Type	Dynamic AMOLED, HDR10+\nSize	6.1 inches, 93.2 cm2 (~88.3% screen-to-body ratio)\nResolution	1440 x 3040 pixels, 19:9 ratio (~550 ppi density)\nProtection	Corning Gorilla Glass 6\n 	Always-on display\nPLATFORM	OS	Android 9.0 (Pie), upgradable to Android 11, One UI 3.0\nChipset	Exynos 9820 (8 nm) - EMEA/LATAM\nQualcomm SM8150 Snapdragon 855 (7 nm) - USA/China\nCPU	Octa-core (2x2.73 GHz Mongoose M4 & 2x2.31 GHz Cortex-A75 & 4x1.95 GHz Cortex-A55) - EMEA/LATAM\nOcta-core (1x2.84 GHz Kryo 485 & 3x2.42 GHz Kryo 485 & 4x1.78 GHz Kryo 485) - USA/China\nGPU	Mali-G76 MP12 - EMEA/LATAM\nAdreno 640 - USA/China\nMEMORY	Card slot	microSDXC (uses shared SIM slot) - dual SIM model only\nInternal	128GB 6GB RAM, 128GB 8GB RAM, 512GB 8GB RAM\n 	UFS 2.1\nMAIN CAMERA	Triple	12 MP, f/1.5-2.4, 26mm (wide), 1/2.55\", 1.4µm, Dual Pixel PDAF, OIS\n12 MP, f/2.4, 52mm (telephoto), 1/3.6\", 1.0µm, AF, OIS, 2x optical zoom\n16 MP, f/2.2, 12mm (ultrawide), 1/3.1\", 1.0µm, Super Steady video\nFeatures	LED flash, auto-HDR, panorama\nVideo	4K@60fps (no EIS), 4K@30fps, 1080p@30/60/240fps, 720p@960fps, HDR10+, stereo sound rec., gyro-EIS & OIS\nSELFIE CAMERA	Single	10 MP, f/1.9, 26mm (wide), 1/3\", 1.22µm, Dual Pixel PDAF\nFeatures	Dual video call, Auto-HDR\nVideo	4K@30/60fps, 1080p@30fps\nSOUND	Loudspeaker	Yes, with stereo speakers\n3.5mm jack	Yes\n 	32-bit/384kHz audio\nTuned by AKG', 1, 'tharinduwijayarathne87@gmail.com', 1, '2021-10-28 02:01:38', 150, 250),
(14, 1, 13, 'Samsung Galaxy M52 5G 6GB ', 5, 80000, 12, 'From its 120Hz AMOLED screen, fast Snapdragon 778G processor to 5G connectivity, the Galaxy M52 does have many features to appeal to the masses. It looks great.', 'NETWORK	Technology	\nGSM / HSPA / LTE / 5G\nLAUNCH	Announced	2021, September 24\nStatus	Available. Released 2021, October 03\nBODY	Dimensions	164.2 x 76.4 x 7.4 mm (6.46 x 3.01 x 0.29 in)\nWeight	173 g (6.10 oz)\nSIM	Hybrid Dual SIM (Nano-SIM, dual stand-by)\nDISPLAY	Type	Super AMOLED Plus, 120Hz\nSize	6.7 inches, 108.4 cm2 (~86.4% screen-to-body ratio)\nResolution	1080 x 2400 pixels, 20:9 ratio (~393 ppi density)\nPLATFORM	OS	Android 11, One UI 3.1\nChipset	Qualcomm SM7325 Snapdragon 778G 5G (6 nm)\nCPU	Octa-core (4x2.4 GHz Kryo 670 & 4x1.8 GHz Kryo 670)\nGPU	Adreno 642L\nMEMORY	Card slot	microSDXC (uses shared SIM slot)\nInternal	128GB 6GB RAM, 128GB 8GB RAM\nMAIN CAMERA	Triple	64 MP, f/1.8, 26mm (wide), PDAF\n12 MP, f/2.2, 123˚, (ultrawide)\n5 MP, f/2.4, (macro)\nFeatures	LED flash, panorama, HDR\nVideo	4K@30fps, 1080p@30fps\nSELFIE CAMERA	Single	32 MP, f/2.2, (wide)\nVideo	1080p@30fps\nSOUND	Loudspeaker	Yes\n3.5mm jack	No\nCOMMS	WLAN	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct, hotspot\nBluetooth	5.0, A2DP, LE\nGPS	Yes, with A-GPS, GLONASS, GALILEO, BDS, QZSS\nNFC	Yes\nRadio	Unspecified\nUSB	USB Type-C 2.0, USB On-The-Go\nFEATURES	Sensors	Fingerprint (side-mounted), accelerometer, gyro, proximity, compass\nBATTERY	Type	Li-Ion 5000 mAh, non-removable\nCharging	Fast charging 25W\nMISC	Colors	Icy Blue, Blazing Black, White\nModels	SM-M526BR, SM-M526BR/DS\nSAR EU	0.79 W/kg (head)     1.40 W/kg (body)   ', 1, 'tharinduwijayarathne87@gmail.com', 1, '2021-10-28 02:04:26', 150, 300),
(15, 1, 15, 'Samsung Galaxy S20 6GB (US)', 1, 160000, 10, 'Samsung Galaxy S20 is powered by a 2GHz octa-core Samsung Exynos 990 processor that features 2 cores clocked at 2.73GHz, 2 cores clocked at 2.5GHz and 4 cores clocked at 2GHz. It comes with 8GB of RAM. The Samsung Galaxy S20 runs Android 10 and is powered by a 4000mAh non-removable battery.', 'NETWORK	Technology	\nGSM / CDMA / HSPA / EVDO / LTE\nLAUNCH	Announced	2020, February 11\nStatus	Available. Released 2020, March 06\nBODY	Dimensions	151.7 x 69.1 x 7.9 mm (5.97 x 2.72 x 0.31 in)\nWeight	163 g (5.75 oz)\nBuild	Glass front (Gorilla Glass 6), glass back (Gorilla Glass 6), aluminum frame\nSIM	Single SIM (Nano-SIM and/or eSIM) or Hybrid Dual SIM (Nano-SIM, dual stand-by)\n 	IP68 dust/water resistant (up to 1.5m for 30 mins)\nDISPLAY	Type	Dynamic AMOLED 2X, 120Hz, HDR10+, 1200 nits (peak)\nSize	6.2 inches, 93.8 cm2 (~89.5% screen-to-body ratio)\nResolution	1440 x 3200 pixels, 20:9 ratio (~563 ppi density)\nProtection	Corning Gorilla Glass 6\n 	Always-on display\n120Hz@FHD/60Hz@QHD refresh rate\nPLATFORM	OS	Android 10, upgradable to Android 11, One UI 3.0\nChipset	Exynos 990 (7 nm+) - Global\nQualcomm SM8250 Snapdragon 865 5G (7 nm+) - USA\nCPU	Octa-core (2x2.73 GHz Mongoose M5 & 2x2.50 GHz Cortex-A76 & 4x2.0 GHz Cortex-A55) - Global\nOcta-core (1x2.84 GHz Kryo 585 & 3x2.42 GHz Kryo 585 & 4x1.8 GHz Kryo 585) - USA\nGPU	Mali-G77 MP11 - Global\nAdreno 650 - USA\nMEMORY	Card slot	microSDXC (uses shared SIM slot)\nInternal	128GB 8GB RAM\n 	UFS 3.0\nMAIN CAMERA	Triple	12 MP, f/1.8, 26mm (wide), 1/1.76\", 1.8µm, Dual Pixel PDAF, OIS\n64 MP, f/2.0, 29mm (telephoto), 1/1.72\", 0.8µm, PDAF, OIS, 1.1x optical zoom, 3x hybrid zoom\n12 MP, f/2.2, 13mm, 120˚ (ultrawide), 1/2.55\" 1.4µm, Super Steady video\nFeatures	LED flash, auto-HDR, panorama\nVideo	8K@24fps, 4K@30/60fps, 1080p@30/60/240fps, 720p@960fps, HDR10+, stereo sound rec., gyro-EIS & OIS\nSELFIE CAMERA	Single	10 MP, f/2.2, 26mm (wide), 1/3.24\", 1.22µm, Dual Pixel PDAF\nFeatures	Dual video call, Auto-HDR\nVideo	4K@30/60fps, 1080p@30fps\nSOUND	Loudspeaker	Yes, with stereo speakers\n3.5mm jack	No\n 	32-bit/384kHz audio', 1, 'tharinduwijayarathne87@gmail.com', 1, '2021-10-28 02:13:06', 150, 300),
(16, 1, 16, 'Samsung S21 Ultra 8GB (US)', 1, 180000, 13, 'The Galaxy S21 Ultra comes in a sleeker design and offers faster performance from Qualcomm\'s Snapdragon 888 chip. And, unlike the regular Galaxy S21, you don\'t have to make nearly as many trade-offs. You get a better main 108MP camera, a glass back (instead of plastic), more RAM, and a higher-res display.', 'NETWORK	Technology	\nGSM / CDMA / HSPA / EVDO / LTE / 5G\nLAUNCH	Announced	2021, January 14\nStatus	Available. Released 2021, January 29\nBODY	Dimensions	165.1 x 75.6 x 8.9 mm (6.5 x 2.98 x 0.35 in)\nWeight	227 g (Sub6), 229 g (mmWave) (8.01 oz)\nBuild	Glass front (Gorilla Glass Victus), glass back (Gorilla Glass Victus), aluminum frame\nSIM	Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM and/or eSIM, dual stand-by)\n 	IP68 dust/water resistant (up to 1.5m for 30 mins)\nStylus support\nDISPLAY	Type	Dynamic AMOLED 2X, 120Hz, HDR10+, 1500 nits (peak)\nSize	6.8 inches, 112.1 cm2 (~89.8% screen-to-body ratio)\nResolution	1440 x 3200 pixels, 20:9 ratio (~515 ppi density)\nProtection	Corning Gorilla Glass Victus\n 	Always-on display\nPLATFORM	OS	Android 11, One UI 3.1\nChipset	Exynos 2100 (5 nm) - International\nQualcomm SM8350 Snapdragon 888 5G (5 nm) - USA/China\nCPU	Octa-core (1x2.9 GHz Cortex-X1 & 3x2.80 GHz Cortex-A78 & 4x2.2 GHz Cortex-A55) - International\nOcta-core (1x2.84 GHz Kryo 680 & 3x2.42 GHz Kryo 680 & 4x1.80 GHz Kryo 680) - USA/China\nGPU	Mali-G78 MP14 - International\nAdreno 660 - USA/China\nMEMORY	Card slot	No\nInternal	128GB 12GB RAM, 256GB 12GB RAM, 512GB 12GB RAM, 512GB 16GB RAM\n 	UFS 3.1\nMAIN CAMERA	Quad	108 MP, f/1.8, 24mm (wide), 1/1.33\", 0.8µm, PDAF, Laser AF, OIS\n10 MP, f/4.9, 240mm (periscope telephoto), 1/3.24\", 1.22µm, dual pixel PDAF, OIS, 10x optical zoom\n10 MP, f/2.4, 72mm (telephoto), 1/3.24\", 1.22µm, dual pixel PDAF, OIS, 3x optical zoom\n12 MP, f/2.2, 13mm (ultrawide), 1/2.55\", 1.4µm, dual pixel PDAF, Super Steady video\nFeatures	LED flash, auto-HDR, panorama\nVideo	8K@24fps, 4K@30/60fps, 1080p@30/60/240fps, 720p@960fps, HDR10+, stereo sound rec., gyro-EIS\nSELFIE CAMERA	Single	40 MP, f/2.2, 26mm (wide), 1/2.8\", 0.7µm, PDAF\nFeatures	Dual video call, Auto-HDR\nVideo	4K@30/60fps, 1080p@30fps\nSOUND	Loudspeaker	Yes, with stereo speakers\n3.5mm jack	No\n 	32-bit/384kHz audio\nTuned by AKG', 1, 'tharinduwijayarathne87@gmail.com', 1, '2021-10-28 02:17:42', 300, 600),
(17, 1, 14, 'Samsung Galaxy Note 20 8GB ', 4, 190000, 24, 'The phone comes with a 6.70-inch touchscreen display with a resolution of 1080x2400 pixels and an aspect ratio of 20:9. Samsung Galaxy Note 20 is powered by a 2.4GHz octa-core Samsung Exynos 990 processor that features 4 cores clocked at 2.4GHz and 4 cores clocked at 1.8GHz. It comes with 8GB of RAM.', 'NETWORK	Technology	\nGSM / CDMA / HSPA / EVDO / LTE\nLAUNCH	Announced	2020, August 05\nStatus	Available. Released 2020, August 21\nBODY	Dimensions	161.6 x 75.2 x 8.3 mm (6.36 x 2.96 x 0.33 in)\nWeight	192 g (6.77 oz)\nBuild	Glass front (Gorilla Glass 5), plastic back\nSIM	Single SIM (Nano-SIM and/or eSIM) or Hybrid Dual SIM (Nano-SIM, dual stand-by)\n 	IP68 dust/water resistant (up to 1.5m for 30 mins)\nStylus, 26ms latency (Bluetooth integration, accelerometer, gyro)\nDISPLAY	Type	Super AMOLED Plus, HDR10+\nSize	6.7 inches, 108.4 cm2 (~89.2% screen-to-body ratio)\nResolution	1080 x 2400 pixels, 20:9 ratio (~393 ppi density)\nProtection	Corning Gorilla Glass 5\n 	Always-on display\nPLATFORM	OS	Android 10, upgradable to Android 11, One UI 3.0\nChipset	Exynos 990 (7 nm+) - Global\nQualcomm SM8250 Snapdragon 865 5G+ (7 nm+) - USA\nCPU	Octa-core (2x2.73 GHz Mongoose M5 & 2x2.50 GHz Cortex-A76 & 4x2.0 GHz Cortex-A55) - Global\nOcta-core (1x3.0 GHz Kryo 585 & 3x2.42 GHz Kryo 585 & 4x1.8 GHz Kryo 585) - USA\nGPU	Mali-G77 MP11 - Global\nAdreno 650 - USA\nMEMORY	Card slot	No\nInternal	256GB 8GB RAM\n 	UFS 3.0\nMAIN CAMERA	Triple	12 MP, f/1.8, 26mm (wide), 1/1.76\", 1.8µm, Dual Pixel PDAF, OIS\n64 MP, f/2.0, 27mm (telephoto), 1/1.72\", 0.8µm, PDAF, OIS, 3x hybrid zoom\n12 MP, f/2.2, 120˚, 13mm (ultrawide), 1/2.55\", 1.4µm\nFeatures	LED flash, auto-HDR, panorama\nVideo	8K@24fps, 4K@30/60fps, 1080p@30/60/240fps, 720p@960fps, HDR10+, stereo sound rec., gyro-EIS & OIS\nSELFIE CAMERA	Single	10 MP, f/2.2, 26mm (wide), 1/3.2\", 1.22µm, Dual Pixel PDAF\nFeatures	Dual video call, Auto-HDR\nVideo	4K@30/60fps, 1080p@30fps\nSOUND	Loudspeaker	Yes, with stereo speakers\n3.5mm jack	No\n 	32-bit/384kHz audio\nTuned by AKG', 1, 'tharinduwijayarathne87@gmail.com', 1, '2021-10-28 02:20:34', 150, 300),
(18, 1, 8, 'Xiaomi Redmi Note 10 Prime 8GB ', 5, 95000, 10, 'The Redmi 10 Prime is a bit overpriced but it\'s worth buying because as of now, we don\'t have any other better smartphone at Rs 12,000. It does have a massive 6000mAh battery, good camera, FHD+ display, 18W fast charging support, and much more.', 'ETWORK	Technology	\nGSM / HSPA / LTE\nLAUNCH	Announced	2021, September 03\nStatus	Available. Released 2021, September 07\nBODY	Dimensions	161.2 x 75.6 x 9.6 mm (6.35 x 2.98 x 0.38 in)\nWeight	192 g (6.77 oz)\nSIM	Dual SIM (Nano-SIM, dual stand-by)\n 	Dust & splash proof\nDISPLAY	Type	LCD, 90Hz\nSize	6.5 inches, 102.0 cm2 (~83.7% screen-to-body ratio)\nResolution	1080 x 2400 pixels, 20:9 ratio (~405 ppi density)\nProtection	Corning Gorilla Glass 3\nPLATFORM	OS	Android 11, MIUI 12.5\nChipset	MediaTek Helio G88 (12nm)\nCPU	Octa-core (2x2.0 GHz Cortex-A75 & 6x1.8 GHz Cortex-A55)\nGPU	Mali-G52 MC2\nMEMORY	Card slot	microSDXC (dedicated slot)\nInternal	64GB 4GB RAM, 128GB 6GB RAM\n 	eMMC 5.1\nMAIN CAMERA	Quad	50 MP, f/1.8, (wide), PDAF\n8 MP, f/2.2, 120˚ (ultrawide)\n2 MP, f/2.4, (macro)\n2 MP, f/2.4 (depth)\nFeatures	LED flash, HDR, panorama\nVideo	1080p@30fps\nSELFIE CAMERA	Single	8 MP, f/2.0, (wide)\nVideo	1080p@30fps\nSOUND	Loudspeaker	Yes, with stereo speakers\n3.5mm jack	Yes\n 	24-bit/192kHz audio\nCOMMS	WLAN	Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot\nBluetooth	5.1, A2DP, LE\nGPS	Yes, with A-GPS, GLONASS, GALILEO, BDS\nNFC	No\nInfrared port	Yes\nRadio	FM radio\nUSB	USB Type-C 2.0', 1, 'tharinduwijayarathne87@gmail.com', 1, '2021-10-28 02:29:05', 200, 300),
(19, 1, 7, 'Xiaomi Mi 11 8GB  128GB(US)', 6, 165000, 5, 'Xiaomi Mi 11 is powered by an octa-core Qualcomm Snapdragon 888 processor. It comes with 8GB of RAM. The Xiaomi Mi 11 runs Android 11 and is powered by a 4,600mAh non-removable battery. ... The Xiaomi Mi 11 runs MIUI 12 is based on Android 11 and packs 128GB of inbuilt storage.', 'NETWORK	Technology	\nGSM / CDMA / HSPA / EVDO / LTE / 5G\nLAUNCH	Announced	2021, March 29\nStatus	Available. Released 2021, April 02\nBODY	Dimensions	164.3 x 74.6 x 8.4 mm (6.47 x 2.94 x 0.33 in)\nWeight	234 g (8.25 oz)\nBuild	Glass front (Gorilla Glass Victus), ceramic back, aluminum frame\nSIM	Dual SIM (Nano-SIM, dual stand-by)\n 	IP68 dust/water resistant (up to 1.5m for 30 mins)\nDISPLAY	Type	AMOLED, 1B colors, 120Hz, HDR10+, Dolby Vision, 900 nits (HBM), 1700 nits (peak)\nSize	6.81 inches, 112.0 cm2 (~91.4% screen-to-body ratio)\nResolution	1440 x 3200 pixels, 20:9 ratio (~515 ppi density)\nProtection	Corning Gorilla Glass Victus\nPLATFORM	OS	Android 11, MIUI 12.5\nChipset	Qualcomm SM8350 Snapdragon 888 5G (5 nm)\nCPU	Octa-core (1x2.84 GHz Kryo 680 & 3x2.42 GHz Kryo 680 & 4x1.80 GHz Kryo 680)\nGPU	Adreno 660\nMEMORY	Card slot	No\nInternal	256GB 8GB RAM, 256GB 12GB RAM, 512GB 12GB RAM\n 	UFS 3.1\nMAIN CAMERA	Triple	50 MP, f/2.0, 24mm (wide), 1/1.12\", 1.4µm, Dual Pixel PDAF, Laser AF, OIS\n48 MP, f/4.1, 120mm (periscope telephoto), 1/2.0\", 0.8µm, PDAF, OIS, 5x optical zoom\n48 MP, f/2.2, 12mm, 128˚ (ultrawide), 1/2.0\", 0.8µm, PDAF\nFeatures	Dual-LED flash, HDR, panorama, 1.1” AMOLED selfie display\nVideo	8K@24fps, 4K@30/60fps, 1080p@30/60/120/240/960/1920fps, gyro-EIS, HDR10+ rec.\nSELFIE CAMERA	Single	20 MP, f/2.2, 27mm (wide), 1/3.4\", 0.8µm\nFeatures	HDR, panorama\nVideo	1080p@30/60fps, 720p@120fps, gyro-EIS\nSOUND	Loudspeaker	Yes, with stereo speakers\n3.5mm jack	No\n 	24-bit/192kHz audio\nTuned by Harman Kardon\nCOMMS	WLAN	Wi-Fi 802.11 a/b/g/n/ac/6e, dual-band, Wi-Fi Direct, DLNA, hotspot\nBluetooth	5.2, A2DP, LE, aptX HD\nGPS	Yes, with dual-band A-GPS, GLONASS, GALILEO, QZSS, NavIC, BDS (tri-band)\nNFC	Yes\nInfrared port	Yes\nRadio	No\nUSB	USB Type-C 2.0, USB On-The-Go\nFEATURES	Sensors	Fingerprint (under display, optical), accelerometer, gyro, proximity, compass, color spectrum\nBATTERY	Type	Li-Po 5000 mAh, non-removable\nCharging	Fast charging 67W, 100% in 36 min (advertised)\nFast wireless charging 67W, 100% in 39 min (advertised)\nReverse wireless charging 10W\nQuick Charge 4+\nPower Delivery 3.0', 1, 'tharinduwijayarathne87@gmail.com', 1, '2021-10-28 02:35:01', 150, 250),
(20, 1, 12, 'Vivo X70 Pro Plus 8GB (C)', 1, 170000, 15, 'The smartphone consists of quad-camera: 50 MP (wide) + 8 MP (periscope telephoto) + 12 (telephoto) + 48 MP (ultrawide). On the front, there is a single camera consist of 32 MP (wide).', 'NETWORK	Technology	\nGSM / CDMA / HSPA / EVDO / LTE / 5G\nLAUNCH	Announced	2021, September 09\nStatus	Available. Released 2021, September 17\nBODY	Dimensions	164.5 x 75.2 x 8.9 mm (6.48 x 2.96 x 0.35 in)\nWeight	209 g / 213 g (7.37 oz)\nSIM	Dual SIM (Nano-SIM, dual stand-by)\n 	IP68 dust/water resistant (up to 1.5m for 30 mins)\nDISPLAY	Type	LTPO AMOLED, 1B colors, 120Hz, HDR10+, 500 nits (typ), 1000 nits (HBM), 1500 nits (peak)\nSize	6.78 inches, 111.4 cm2 (~90.1% screen-to-body ratio)\nResolution	1440 x 3200 pixels, 20:9 ratio (~517 ppi density)\nPLATFORM	OS	Android 11, Funtouch OS 12 (International), OriginOS 1.0 (China)\nChipset	Qualcomm SM8350 Snapdragon 888+ 5G (5 nm)\nCPU	Octa-core (1x3.0 GHz Kryo 680 & 3x2.42 GHz Kryo 680 & 4x1.80 GHz Kryo 680\nGPU	Adreno 660\nMEMORY	Card slot	No\nInternal	256GB 8GB RAM, 256GB 12GB RAM, 512GB 12GB RAM\n 	UFS 3.1', 1, 'tharinduwijayarathne87@gmail.com', 1, '2021-10-28 02:39:42', 150, 300),
(21, 1, 9, 'OnePlus Nord 2 8GB (US)', 1, 120000, 10, 'A worthy successor for the first OnePlus Nord on all counts, and arguably the best, value-for-money phone OnePlus currently offers. The OnePlus Nord 2 is a surprisingly powerful phone that not just offers better value for money than the OnePlus 9 series phones, but also flaunts a couple of extra features.', 'NETWORK	Technology	\nGSM / HSPA / LTE / 5G\nLAUNCH	Announced	2021, July 22\nStatus	Available. Released 2021, July 28\nBODY	Dimensions	158.9 x 73.2 x 8.3 mm (6.26 x 2.88 x 0.33 in)\nWeight	189 g (6.67 oz)\nBuild	Glass front (Gorilla Glass 5), glass back (Gorilla Glass 5), plastic frame\nSIM	Dual SIM (Nano-SIM, dual stand-by)\nDISPLAY	Type	Fluid AMOLED, 90Hz, HDR10+\nSize	6.43 inches, 99.8 cm2 (~85.8% screen-to-body ratio)\nResolution	1080 x 2400 pixels, 20:9 ratio (~409 ppi density)\nProtection	Corning Gorilla Glass 5\nPLATFORM	OS	Android 11, OxygenOS 11.3\nChipset	MediaTek MT6893 Dimensity 1200 5G (6 nm)\nCPU	Octa-core (1x3.0 GHz Cortex-A78 & 3x2.6 GHz Cortex-A78 & 4x2.0 GHz Cortex-A55)\nGPU	Mali-G77 MC9\nMEMORY	Card slot	No\nInternal	128GB 6GB RAM, 128GB 8GB RAM, 256GB 12GB RAM\n 	UFS 3.1\nMAIN CAMERA	Triple	50 MP, f/1.9, 24mm (wide), 1/1.56\", 1.0µm, PDAF, OIS\n8 MP, f/2.3, 119˚ (ultrawide)\n2 MP, f/2.4, (monochrome)\nFeatures	Dual-LED flash, HDR, panorama\nVideo	4K@30fps, 1080p@30/60/240fps, gyro-EIS\nSELFIE CAMERA	Single	32 MP, f/2.5, (wide), 1/2.8\", 0.8µm\nFeatures	Auto HDR\nVideo	1080p@30fps, gyro-EIS\nSOUND	Loudspeaker	Yes, with stereo speakers', 1, 'tharinduwijayarathne87@gmail.com', 1, '2021-10-28 02:44:39', 150, 300),
(26, 1, 10, 'Realme 8i 12GB 128GB ', 1, 23123, 12, 'OS -Android 11, Realme UI 2.0\nChipset - Mediatek Helio G96 (12 nm)\nCPU - Octa-core (2x2.05 GHz Cortex-A76 & 6x2.0 GHz Cortex-A55)\nGPU - Mali-G57 MC2', 'NETWORK	Technology	\nGSM / HSPA / LTE\nLAUNCH	Announced	2021, September 09\nStatus	Available. Released 2021, September 14\nBODY	Dimensions	164.1 x 75.5 x 8.5 mm (6.46 x 2.97 x 0.33 in)\nWeight	194 g (6.84 oz)\nBuild	Glass front, plastic frame, plastic back\nSIM	Dual SIM (Nano-SIM, dual stand-by)\nDISPLAY	Type	IPS LCD, 120Hz, 600 nits (peak)\nSize	6.6 inches, 104.8 cm2 (~84.6% screen-to-body ratio)\nResolution	1080 x 2412 pixels, 20:9 ratio (~400 ppi density)\nPLATFORM	OS	Android 11, Realme UI 2.0\nChipset	Mediatek Helio G96 (12 nm)\nCPU	Octa-core (2x2.05 GHz Cortex-A76 & 6x2.0 GHz Cortex-A55)\nGPU	Mali-G57 MC2\nMEMORY	Card slot	microSDXC (dedicated slot)\nInternal	64GB 4GB RAM, 128GB 4GB RAM, 128GB 6GB RAM\n 	UFS 2.1\nMAIN CAMERA	Quad	50 MP, f/1.8, 26mm (wide), 1/2.76\", 0.64µm, PDAF\n2 MP, f/2.4, (macro)\n2 MP, f/2.4, (depth)\nFeatures	LED flash, HDR, panorama\nVideo	1080p@30fps', 1, 'tharinduwijayarathne87@gmail.com', 1, '2021-11-03 19:51:48', 150, 350),
(27, 5, 19, 'Samsung Earbuds 2 (Genuine)', 5, 25000, 10, 'Get lost in what you love. Galaxy Buds2 open a new world of sound with well-balanced audio, lightweight comfort fit, Active Noise Cancellation and seamless connectivity to your Galaxy phone and watch.1 Intuitive controls and powerful sound keep you immersed when working out, gaming or jamming to your beats.\r\n\r\n', 'Specifications\r\nDesign\r\nColors\r\nGalaxy Buds2 earbuds in Olive.\r\nOlive\r\n\r\nGalaxy Buds2 earbuds in Lavender.\r\nLavender\r\n\r\nGalaxy Buds2 earbuds in White.\r\nWhite\r\n\r\nGalaxy Buds2 earbuds in Graphite.\r\nGraphite\r\n\r\nDimensions & Weight\r\nIllustration of Galaxy Buds2 earbuds to show dimensions.\r\nEarbud\r\nDimensions: 17.0 x 20.9 x 21.1mm\r\nWeight: 5.0g\r\n\r\nIllustration of Galaxy Buds2 charging case, seen closed and from the top to show dimensions.Illustration of Galaxy Buds2 charging case, seen closed and from the side to show dimensions.\r\nCharging Case\r\nDimensions: 50.2 x 50.0 x 27.8mm\r\nWeight: 41.2g\r\n\r\nPerformance\r\nChipset\r\nBES2500ZP\r\nOS\r\nRTOS\r\nSpeaker\r\nDynamic 2 Way : Woofer & Tweeter\r\nMic\r\n3 Mics + VPU\r\nConnectivity\r\nBluetooth : 5.2\r\nBT Profile : HFP, A2DP, AVRCP\r\nCodec : Scalable (Samsung proprietary), AAC, SBC\r\nBattery\r\nPlay time\r\n5h / TTL 20h (ANC ON)\r\n*Bixby voice wake-up OFF\r\n\r\n 7.5h / TTL 29h (ANC Off)\r\nTalk time\r\n3.5h / TTL 13h (ANC ON) 3.5h / TTL 14h (ANC Off)\r\nQuick charging\r\n40min play / 3min charging (Wired, Wireless, D2D)\r\n60min play / 5min charging (Wired, Wireless, D2D)\r\n150min play / 10min charging (Wired, Wireless)\r\n*ANC off condition\r\n*In case of wireless charging, Galaxy Buds2 should be put on the center of the charger in ordinary temperature\r\n*Charging time is based on that battery power in earbuds is less than 30% when start charging\r\n*Based on internal testing. Audio playback time tested by pairing a pre-production Galaxy Buds2 to a recently released Galaxy smartphone. Actual battery life and charging time may vary by usage conditions, number of times charged and many other factors.\r\n*Play time may vary based on settings.\r\n\r\nSensor\r\nAccelerometer, Gyro, Proximity, Hall, Touch, VPU(Voice Pickup Unit)\r\nCompatibility\r\nAndroid\r\nDevices running Android 7.0 higher, with over 1.5GB of RAM\r\n\r\nPC Buds Manager\r\nDownloadable thru MS App. Store (Avail. above Win 10)\r\n\r\nConvenience\r\nAuto Switch, Bixby voice wake-up', 1, 'tharinduwijayarathne87@gmail.com', 1, '2021-11-05 00:42:37', 150, 300);

-- --------------------------------------------------------

--
-- Table structure for table `profile_img`
--

CREATE TABLE `profile_img` (
  `code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `name`) VALUES
(1, 'Central'),
(2, 'Western');

-- --------------------------------------------------------

--
-- Table structure for table `recent`
--

CREATE TABLE `recent` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `recent`
--

INSERT INTO `recent` (`id`, `product_id`, `user_email`) VALUES
(16, 20, 'tharinduwijayarathna8206@gmail.com'),
(41, 12, 'tharinduwijayarathne87@gmail.com'),
(42, 11, 'tharinduwijayarathne87@gmail.com'),
(43, 10, 'tharinduwijayarathne87@gmail.com'),
(44, 13, 'tharinduwijayarathne87@gmail.com'),
(45, 16, 'tharinduwijayarathne87@gmail.com'),
(46, 15, 'tharinduwijayarathne87@gmail.com'),
(47, 18, 'tharinduwijayarathne87@gmail.com'),
(48, 10, 'tharinduwijayarathne87@gmail.com'),
(49, 12, 'tharinduwijayarathne87@gmail.com'),
(50, 14, 'tharinduwijayarathne87@gmail.com'),
(51, 20, 'tharinduwijayarathne87@gmail.com'),
(52, 17, 'tharinduwijayarathne87@gmail.com'),
(53, 11, 'tharinduwijayarathne87@gmail.com'),
(54, 21, 'tharinduwijayarathne87@gmail.com'),
(55, 11, 'tharinduwijayarathne87@gmail.com'),
(56, 19, 'tharinduwijayarathne87@gmail.com'),
(57, 11, 'tharinduwijayarathne87@gmail.com'),
(58, 26, 'tharinduwijayarathne87@gmail.com'),
(59, 27, 'tharinduwijayarathne87@gmail.com'),
(60, 12, 'tharinduwijayarathne87@gmail.com'),
(61, 10, 'tharinduwijayarathne87@gmail.com'),
(62, 19, 'tharinduwijayarathne87@gmail.com'),
(63, 10, 'cintpss7@gmail.com'),
(64, 11, 'cintpss7@gmail.com'),
(65, 10, 'chamika9933@gmail.com'),
(66, 12, 'chamika9933@gmail.com'),
(67, 11, 'chamika9933@gmail.com'),
(68, 11, 'chamika9933@gmail.com'),
(69, 12, 'chamika9933@gmail.com'),
(70, 11, 'chamika9933@gmail.com'),
(71, 12, 'chamika9933@gmail.com'),
(72, 14, 'cintpss7@gmail.com'),
(73, 17, 'cintpss7@gmail.com'),
(74, 11, 'cintpss7@gmail.com'),
(75, 11, 'cintpss7@gmail.com'),
(76, 12, 'cintpss7@gmail.com'),
(77, 13, 'cintpss7@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Active'),
(2, 'Deactive');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mobile` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `verification_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `fname`, `lname`, `password`, `mobile`, `register_date`, `verification_code`, `status_id`) VALUES
('test@gmail.com', 'Test', 'test', 'YNJ31bMQ', NULL, NULL, '6708ceebd9b4e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_has_address`
--

CREATE TABLE `user_has_address` (
  `id` int(11) NOT NULL,
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `line1` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `line2` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cart_product1_idx` (`product_id`),
  ADD KEY `fk_cart_user1_idx` (`user_id`) USING BTREE;

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_chat_status` (`status`),
  ADD KEY `FK_chat_users` (`from`),
  ADD KEY `FK_chat_users_2` (`to`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `condition`
--
ALTER TABLE `condition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_feedback_user1_idx` (`user_email`),
  ADD KEY `fk_feedback_product1_idx` (`product_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`code`),
  ADD KEY `fk_images_product1_idx` (`product_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_invoice_product1_idx` (`product_id`),
  ADD KEY `fk_invoice_user1_idx` (`user_email`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_location_province1_idx` (`province_id`),
  ADD KEY `fk_location_district1_idx` (`district_id`),
  ADD KEY `fk_location_city1_idx` (`city_id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_brand`
--
ALTER TABLE `model_has_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_model_has_brand_brand1_idx` (`brand_id`),
  ADD KEY `fk_model_has_brand_model1_idx` (`model_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_category1_idx` (`category_id`),
  ADD KEY `fk_product_model_has_brand1_idx` (`model_has_brand_id`),
  ADD KEY `fk_product_color1_idx` (`color_id`),
  ADD KEY `fk_product_condition1_idx` (`condition_id`),
  ADD KEY `fk_product_status1_idx` (`status_id`),
  ADD KEY `fk_product_admin1_idx` (`user_email`);

--
-- Indexes for table `profile_img`
--
ALTER TABLE `profile_img`
  ADD PRIMARY KEY (`code`),
  ADD KEY `FK__user` (`user_email`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recent`
--
ALTER TABLE `recent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_recent_product1_idx` (`product_id`),
  ADD KEY `fk_recent_user1_idx` (`user_email`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`),
  ADD KEY `fk_user_status` (`status_id`);

--
-- Indexes for table `user_has_address`
--
ALTER TABLE `user_has_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_has_address_user1_idx` (`user_email`),
  ADD KEY `fk_user_has_address_location1_idx` (`location_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_watchlist_product1_idx` (`product_id`),
  ADD KEY `fk_watchlist_user1_idx` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `condition`
--
ALTER TABLE `condition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `model_has_brand`
--
ALTER TABLE `model_has_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `recent`
--
ALTER TABLE `recent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `user_has_address`
--
ALTER TABLE `user_has_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_cart_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_cart_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`);

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `FK_chat_status` FOREIGN KEY (`status`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `FK_chat_users` FOREIGN KEY (`from`) REFERENCES `user` (`email`),
  ADD CONSTRAINT `FK_chat_users_2` FOREIGN KEY (`to`) REFERENCES `user` (`email`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk_feedback_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_feedback_user1` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fk_images_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `fk_invoice_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_invoice_user1` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `fk_location_city1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `fk_location_district1` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`),
  ADD CONSTRAINT `fk_location_province1` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`);

--
-- Constraints for table `model_has_brand`
--
ALTER TABLE `model_has_brand`
  ADD CONSTRAINT `fk_model_has_brand_brand1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `fk_model_has_brand_model1` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_admin1` FOREIGN KEY (`user_email`) REFERENCES `admin` (`email`),
  ADD CONSTRAINT `fk_product_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `fk_product_color1` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`),
  ADD CONSTRAINT `fk_product_condition1` FOREIGN KEY (`condition_id`) REFERENCES `condition` (`id`),
  ADD CONSTRAINT `fk_product_model_has_brand1` FOREIGN KEY (`model_has_brand_id`) REFERENCES `model_has_brand` (`id`),
  ADD CONSTRAINT `fk_product_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

--
-- Constraints for table `profile_img`
--
ALTER TABLE `profile_img`
  ADD CONSTRAINT `FK__user` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`);

--
-- Constraints for table `recent`
--
ALTER TABLE `recent`
  ADD CONSTRAINT `fk_recent_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_recent_user1` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

--
-- Constraints for table `user_has_address`
--
ALTER TABLE `user_has_address`
  ADD CONSTRAINT `fk_user_has_address_location1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `fk_user_has_address_user1` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `fk_watchlist_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_watchlist_user1` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
