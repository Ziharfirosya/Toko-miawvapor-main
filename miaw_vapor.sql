-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 07:00 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miaw_vapor`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `head` varchar(50) NOT NULL,
  `content` varchar(100) NOT NULL,
  `text_color` enum('text-dark','text-light') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `product_id`, `image`, `head`, `content`, `text_color`) VALUES
(4, 1, '53e59c813fd2885edb125af0cacd108b.jpg', 'Thelema DNA 250C', 'Lost Vape Thelema Quest 200W box mod memiliki fitur Quest 2.0 Chipset dan dilengkapi dengan layar wa', 'text-dark'),
(5, 1, '8dacd62d2b8217b5109aa39351801908.png', 'Hexohm V3', 'Buat kalian yang ingin mencoba mod dengan power yang maksimal dan juga dapat memecah flavour dengan ', 'text-light'),
(9, 3, '8300f9078531d29bf4debeb271295e52.png', 'Dot Aio V2 Carbon Fiber 75W by DOTMOD', 'The dotAIO V2’s updated 2.0 ml tank features the same blend of ease of use and performance as the or', 'text-light'),
(13, 4, '825605924b48f4056a97eec6a92a0d7c.jpg', 'Reload E RDA Dual Coil 24MM by RELOAD VAPOR USA', 'Reload E RDA merupakan atomizer terbaru yang dirilis oleh Reload Vapor USA. RDA ini mengadaptasi sys', 'text-light');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `subtotal`) VALUES
(2, 1, 1, 205000),
(10, 1, 6, 625000),
(13, 1, 1, 1050000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` text NOT NULL,
  `status` enum('waiting','paid','delivered','cancel') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `date`, `invoice`, `total`, `name`, `address`, `phone`, `status`) VALUES
(1, 9, '2023-12-12', '920231212143947', 1050000, 'zen lampung', 'faefqfqfaefqf', '0797070909', 'delivered'),
(2, 9, '2023-12-14', '920231214093943', 4400000, 'fajar', 'lido cigombong', '082124055488', 'paid'),
(3, 6, '2023-12-15', '620231215172541', 1500000, 'Dwiki', 'jkt', '32131232123', 'paid'),
(4, 6, '2023-12-15', '620231215182817', 1500000, 'test', 'test lagi', '321321312', 'waiting');

-- --------------------------------------------------------

--
-- Table structure for table `orders_confirm`
--

CREATE TABLE `orders_confirm` (
  `id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `note` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_confirm`
--

INSERT INTO `orders_confirm` (`id`, `orders_id`, `account_name`, `account_number`, `nominal`, `note`, `image`) VALUES
(1, 2, 'Fajar ardhiya Nuriman', '077134717410', 4400000, 'sudah lunas', '1c7ce897085b032642088b2682fe92ef.png'),
(2, 3, 'Dwiki', '3213213232', 421124412, 'testt', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `orders_id`, `product_id`, `subtotal`) VALUES
(1, 1, 1, 1050000),
(2, 2, 2, 3500000),
(3, 2, 4, 900000),
(4, 3, 1, 1500000),
(5, 4, 1, 1500000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `edition` enum('reguler','premium') NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `requirements` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `edition`, `image`, `description`, `requirements`) VALUES
(1, 'Thelema DNA 250C', 1500000, 'reguler', '9a6ddb2a1685cbaa4971419759c5d081.jpg', '																																																																						<p>							<b>THE LEGEND CONTINUE</b></p><p>Discover the Lost Vape THELEMA DNA250C Box Mod, featuring the advanced DNA250C Chipset, 1-200W range, and interchangeable battery bays for customization (sold separately). Constructed from quality zinc-alloy, the THELEMA DNA250C Mod offers a dual high amp 18650 battery bay, perfect for maintaining the 200W ceiling when used throughout the day. With batteries sold separately, the THELEMA DNA250C Box Mod can utilize interchangeable battery chassis pieces to allow for customization of the visually striking exterior. Featuring the advanced DNA250C Chipset, the THELEMA Mod has access to VW, TC, and Bypass Modes, delivering satisfying performance to the user via tailored vapor output.						', 'Thelema DNA 250C'),
(2, 'Hexohm v3', 3500000, 'reguler', 'ed2b54e62c340c3b8584d0f6c25c6ca3.jpg', '																					<p>							Buat kalian yang ingin mencoba mod dengan power yang maksimal dan juga dapat memecah flavour dengan sempurna kalian wajib coba Mod Hexohm V3 ini, Dengan Chip terbaru nya yang dapat membuat memecah flavour dari liquid yang kalian pakai dan power nya juga yang sangat-sangat maksimal. Dan tampilan nya yang kece dan juga sangat modern membuat kalian akan merasa bangga menggunakan MOD ini.\r\n\r\nKelebihan dari hexohm yang by Vapezoo ini kalian dapat menikmati Garansi Seumur hidup, Garansi seumur hidup ini membuat kalian tidak akan ribet atau pusing saat hexohm ini bermasalah. Dan untuk claim garansi nya kita akan bantu semaksimal mungkin untuk mengclaim nya\r\n\r\n</p><p>\r\n</p><p><b><br></b></p><p><b>SPESIFIKASI\r\n</b></p><p>\r\n<P>-Min Volts: 3 Volts</P>\r\n<P>-Max Volts: 6 Volts</P>\r\n<P>-Max Amps: 30 Amps</P>\r\n<P>-Max Watts: 180 Watts</P>\r\n<P>-Enclosure: Anodized Aluminum</P>\r\n<P>-Battery Sled: Ultem</P>\r\n<P>-Battery Contacts: Solid brass</P>\r\n<P>-Power Circuit: HEX-T/30-c</P>\r\n<P>-Resistance Range: .10</P>\r\n<P>-Recommended Ohms: .2</P>\r\n', 'Hexohm'),
(3, 'Dot Aio V2 Carbon Fiber 75W by DOTMOD', 3350000, 'reguler', 'e8a512626026b4d4b6aba5751d3fdbfe.jpg', '<p>PRODUCT PARAMETER:</p>\r\n<p>- Size: 77.8* 45.2* 22.7mm</p>\r\n<p>- Material: Aluminium alloy & Plastic & Glass & PCTG</p>\r\n<p>- Battery: single 18650 battery(not included)</p>\r\n<p>- Output: 5-75W</p>\r\n<p>- Temperature range: 200-600/100-315</p>\r\n<p>- Mode: very soft, soft, medium, hard</p>\r\n<p>- Capacity: 2.7ml.</p>\r\n.</p>\r\n<p>PACKAGE CONTENTS:</p>\r\n<p>- DotAIO V2</p>\r\n<p>- 2.0 ml e-juice tank (PCTG)</p>\r\n<p>- Airflow control base</p>\r\n<p>- Tank plug</p>\r\n<p>- Silicone bumper replacement</p>\r\n<p>- 0.3 ohm coil, 0.7 ohm coil</p>\r\n<p>- Drip tips</p>\r\n<p>- O-ringsType-C Charging Cable</p>', 'Dot Aio V2 Carbon Fiber 75W by DOTMOD'),
(4, 'Reload E RDA Dual Coil 24MM by RELOAD VAPOR USA', 900000, 'reguler', 'df73689dc0d0ca6978e72b5140eaeb5c.jpg', '<p>Reload E RDA merupakan atomizer terbaru yang dirilis oleh Reload Vapor USA. RDA ini mengadaptasi system dual coil dengan saluran air flow yang dapat menghasikan rasa yang original karna dapat menurunkan rasa manis dan juga menaikan TH.<p/>\r\n\r\n<p>Parameters :<p/>\r\n<p>- 24mm Diameter<p/>\r\n<p>- 31 mm Tall With Drip Tip<p/>\r\n<p>- Dual Adjustable Air Flow Hit Sides and Bottom  Simultaneously To Maximize Flavors and Minimize Leaking<p/>\r\n<p>- 2 PCS Top Cap Design Ensures Easy Airflow Adjustmentv\r\n<p>- Proprietary 12.5mm Stainless Steel and Heat Resistance PEEK Wide Bore Drip Tip Acts as Top Cap <p/>\r\n<p>- 810 Drip Tip Adapter Included <p/>\r\n<p>- Detachable Bottom Section Allows Thorough Cleaning<p/>\r\n<p>- 24K Gold Plated Screws for Maximum Conductivity<p/>\r\n<p>- Quad Terminal Style Build Deck with Honeycomb Shaped Airfow For Ultra Smooth Vape Experiences<p/>\r\n<p>- 304 SS Construction<p/>\r\n<p>- Peek Insulator<p/>\r\n<p>- Squonk Ready<p/>\r\n\r\n<p>Includes :<p/>\r\n<p>- 1 Reload Essential RDA <p/>\r\n<p>- 1 Customized Reload Allen Driver <p/>\r\n<p>- 1 810 Drip Tip adaptor <p/>\r\n<p>- 2 Proprietary Drip Tips <p/>\r\n<p>- 1 Spare Parts Pack (1 Gold Plated Squonk Pin, 4 extra screws, 1 peek insulator)<p/>', 'Reload E RDA Dual Coil 24MM by RELOAD VAPOR USA'),
(5, 'Mosnter Vape Labs Grape Jam 60ML by Jam Monster', 190000, 'reguler', 'b23442ad4156cc8ee9fae655975ad3c7.jpg', '							<p>MONSTER VAPE LABS</p>\r\n<p>*100% Authentic By CreativLabz</p>\r\n<p>.</p>\r\n<p>Flavour : Grape Jam + Butter + Toast</p>\r\n<p>Grape by Jam Monster is a thick slice of toasted bread served with a side of churned butter and grape jam. It\'s delicious.</p>\r\n<p>.</p>\r\n<p>Level : 3/6MG</p>\r\n<p>Volume : 60ML</p>\r\n<p>PG/VG : 25/75</p>						', 'Mosnter Vape Labs Grape Jam 60ML by Jam Monster'),
(6, 'Paradewa Oatdin Oat Milk Original Pods Friendly 30ml by RCRAFT', 110000, 'reguler', 'd0f76b27826dd4ff7da4b9eb7c6b8ba7.jpg', 'Paradewa Oatdin Oat Milk Original Pods Friendly 30ml by RCRAFT', 'Paradewa Oatdin Oat Milk Original Pods Friendly 30ml by RCRAFT'),
(7, 'Cotton Kendo Gold Edition', 80000, 'reguler', '1d0269ba91da4cb28ad8a11ff45c048c.jpg', '<h2>Cotton Kendo Gold Edition</h2>\r\n\r\n<p>Kendo Gold Edition is an improvement over the original Kendo. Gold Edition wicks even faster than the traditional Kendo and comes in a 1 meter long rope that easily pulls apart making your rebuilds quicker and easier.\r\nGold Edition 20% lebih panjang (1.2m)</p>\r\n\r\n<p>Kapas Premium</p>\r\n<p>1. 100% Japanese Organic Cotton</p>\r\n<p>2. Tidak pakai pemutih</p>\r\n<p>3. Bebas pestisida</p>\r\n<p>4. Tidak berasa kapas waktu di vaping</p>\r\n<p>5. Lebih tahan panas dibanding kapas jepang biasa (tidak mudah gosong)</p>\r\n<p>6. Daya serap liquid lebih tinggi</p>\r\n<p>7. Daya tahan menyimpan liquid lebih lama</p>\r\n<p>8. Langsung dapat digunakan, tdk perlu direbus lagi</p>\r\n<p>9. Cocok digunakan untuk RDA & RDTA, baik utk flavor chaser maupun cloud chaser.</p>', 'Cotton Kendo Gold Edition'),
(8, 'VRK X4 LCD Charger 4 Slot by PREVA X VRK', 340000, 'reguler', '6e424c6b2710ac1652d7e589e1a0dd4b.jpg', '<p>VRK kini juga mengeluarkan versi charger 4 Slot terbaru nya yaitu VRK X4 LCD. Memiliki 4 Slot pengisian membuat kalian dengan mudah dan cepat langsung cas battery kalian semua nya. Charger VRK kini hadir dengan ada nya layar LCD yang bisa memberikan informasi yang sangat penting dari battery kalian saat di charging menggunakan Charger VRK X4 LCD ini. Saat kalian cas battery kalian menggunakan charger VRK X4 LCD ini, LCD dari VRK X4 ini langsung memberi informasi berapa % kapasitas battery kalian saat itu.</p>\r\n<p>.</p>\r\n<p>Memiliki fitur Automatic Smart Temperature, yang dimana akan terus menjaga charger dan battery kalian agar tidak panas saat kalian melakukan charging. Memiliki Auto Cut Off juga yang sangat melindungi battery kalian agar tidak Over Charging. Body yang Compact dan Build Quality yang sangat berkualitas. Charger VRK X4 LCD ini juga sudah mendukung Fast Charging, jadi battery kalian akan cepat terisi penuh nya jika kalian cas dengan charger ini.</p>\r\n<p>.</p>', 'VRK X4 LCD Charger 4 Slot by PREVA X VRK');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Admin', 'admininierror@gmail.com', '12345678', '1'),
(6, 'Dwiki', 'dwiki141414@gmail.com', '$2y$10$miupROlDn31OpKOPZegXquG5K1s8WdEWnAQLy4214fIFhNMfS9mT.', '2'),
(8, 'fajar', 'fajar1@gmail.com', '$2y$10$81aI8T./3XssCeu3uCZTsulFWxDuZDSzC8wtyUllfnQzzDFBzFBh2', '1'),
(10, 'admin', 'admin@gmail.com', '$2y$10$UXtD7Q18slTi4BmKxhXOcOE6o5LYxXofZMQTVucCG.jATpG8m8gem', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_confirm`
--
ALTER TABLE `orders_confirm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders_confirm`
--
ALTER TABLE `orders_confirm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
