-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2024 at 09:20 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orfos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', '6ed023496fd5c66c002ff68f08fd11fb', 'admin@gmail.com', '', '2024-01-10 08:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, '1111A'),
(2, '2222B'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(18, 52, 'Caprese stuffed chicken', 'A twist on the classic Caprese! Succulent chicken is filled with both fresh and sun dried tomatoes for a flavour packed chicken PLUS melted mozzarella cheese! Cooked in a perfect balsamic reduction, this is the chicken of ', 100.00, '623353652eb53.jpg'),
(19, 54, 'Stuffed Chicken', 'Stuffed Chicken Breasts is a delicious way to turn a creamy dip into an incredible dinner', 450.00, '659edc84551b8.jpg'),
(21, 52, 'Grilled Lemon Herb Mediterranean Chicken Salad', 'this Grilled Lemon Herb Mediterranean Chicken Salad recipe', 180.00, '659eeb7f899c9.jpg'),
(22, 53, 'Creamy Herb Chicken', 'Tender chicken breasts simmered in a flavourful and creamy herb sauce with a hint of garlic', 499.00, '623355ee3f58b.jpg'),
(23, 53, 'Chocolate Pudding Cake', 'An extremely easy and fast to make! Super tasty', 650.00, '659ede8c37b1b.jpg'),
(24, 53, 'Creamy Parmesan Carbonara Chicken ', 'The ultimate twist with Carbonara flavours! Crispy, golden chicken fillets soak up a carbonara inspired sauce for a new chicken recipe ', 700.00, '659edf354d5a8.jpg'),
(26, 54, 'Soft Cinnamon Rolls', 'Cinnamon rolls with a cream cheese glaze are super fluffy and light with a simple homemade dough, and a quick method to get baking!', 340.00, '659eddd8dfd17.jpg'),
(29, 65, 'Chicken Chettinad Curry', 'A fiery curry, Chicken Chettinad is one of the most popular dishes from this region. ', 450.00, '659ee2593ca72.jpg'),
(30, 65, 'Chettinad Fish Fry', 'Fleshy surmai fillets are marinated and wrapped in an exquisite Chettinad masala paste and then pan fried. ', 400.00, '659ee2c235e61.jpg'),
(32, 72, 'Chicken sandwich', ' skinless chicken breast or thigh served between slices of bread, on a bun, or on a roll.', 250.00, '659eed214266b.jpg'),
(33, 66, ' Uttapam', 'Uttapam are savory pancakes with crispy golden edges and a pillowy soft center topped with veggies.', 660.00, '659ee1bd25f55.jpg'),
(34, 60, 'Chana Masala', 'Chana Masala, also known as Chole Masala, is an authentic North Indian style curry made with white chickpeas, freshly powdered spices, onions, tomatoes and herbs', 199.00, '6235f995db263.jpg'),
(35, 60, 'Besan Ladoo', ' these are round sweet balls made by roasting gram flour and ghee together, and then adding sugar to make a thick pasty dough – that is then formed into delicious, melt-in-your-mouth balls.', 200.00, '6235fa361924b.jpg'),
(37, 60, 'Samosa', 'Flaky and crunchy fried samosa are one of the most popular street food snack in North Indian cuisine. They feature a pastry-like crust but are filled with savory potatoes and peas for a hearty, delicious snack.', 120.00, '6237334522669.jpg'),
(38, 50, 'Dosai', 'Rice and wheat are the top two grains consumed by all, ', 150.00, '659eeaad0e671.jpg'),
(39, 50, 'Idly', 'idly is a type of savory rice cake, originating from the Indian subcontinent, popular as a breakfast food in Southern India and in Sri Lanka.', 180.00, '6237371fe35b2.jpg'),
(40, 50, 'Appam', 'Appam is a type of pancake, made with fermented rice batter and coconut milk', 120.00, '659eea3778a53.jpg'),
(41, 55, 'Puttu', ' It is a dish made of steamed cylinders of ground rice layered with coconut shavings, sometimes with a sweet or savory filling. Puttu is served hot with sweet side dishes such as palm sugar or banana', 199.00, '62373a897a4c6.jpg'),
(42, 55, 'Pongal', 'The two varieties of pongal are chakarai pongal, which is sweet, and venn pongal, which is made from clarified butter. The word pongal generally refers to spicy venn pongal and is a common breakfast food.', 160.00, '62373c09a4b04.jpg'),
(43, 50, 'Parota', 'Porottas/Parathas are commonly eaten with vegetable kurma/korma, chicken, fish, mutton, or beef curry.', 100.00, '659eed8c69ada.jpg'),
(44, 56, 'Coconut Rice', 'Coconut rice is a dish prepared by soaking white rice in coconut milk or cooking rice with coconut flakes. As both coconut and the rice-plant are commonly found in the tropics all around the world', 150.00, '623746726eaa1.jpg'),
(45, 56, 'Patrode', 'It is made from colocasia leaves (chevu in Tulu, taro, kesuve or arbi) stuffed with gram or rice flour and flavorings such as spices, tamarind, and jaggery (raw sugar).', 100.00, '62374753e63aa.jpg'),
(46, 56, 'Chicken Ishtu', 'Cardamom, cinnamon, and cloves are paired together to bring out a sweet yet aromatic flavor. Potatoes, beans, and carrots are the vegetables of choice here, adding body and varied texture to the overall dish.', 180.00, '623747f111c69.jpg'),
(47, 48, 'Schezwan Fried Rice', 'Indo-Chinese style schezwan fried rice! It’s super easy to make and filled with tender rice, colorful veggies and it’s all stir-fried with a spicy schezwan sauce.', 200.00, '6238960466488.jpg'),
(48, 48, 'Schezwan Noodles', 'Schezwan noodles recipe is made with the spicy schezwan sauce and Hakka Noodles is made with soy sauce. Hakka Noodles is more like your simple stir-fried noodles', 150.00, '623896f62b300.jpg'),
(49, 48, 'Veg Manchurian Recipe', 'Cabbage is usually the leading vegetable in the manchurian balls, with carrots, green beans, bell peppers and even cauliflower added to the mix', 250.00, '623897eb56c5a.jpg'),
(50, 61, 'French Fries', 'French fries, are one of the most popular side dishes in the world. They find accompaniment in dips, mayonnaise, ketchup, and even vinegar.', 150.00, '623899823950b.jpg'),
(51, 61, 'French Toast', 'French toast is a dish made of sliced bread soaked in beaten eggs and typically milk, then pan fried. Alternative names and variants include \"eggy bread\"', 200.00, '62389a4b4634a.jpg'),
(52, 61, 'Winter Chicken', 'chicken fried with beautiful, ripe, cherry tomatoes in a creamy sauce is guaranteed to hit the spot. Add a dollop of pesto for an extra layer of nutty flavours', 250.00, '62389b56305f6.jpg'),
(56, 66, 'Margherita Pizza', 'Pizza Margherita (more commonly known in English as Margherita pizza) is a typical Neapolitan pizza', 490.00, '659ee16597542.jpg'),
(58, 69, 'Lasagna', 'Lasagna is the name of one of the oldest and best-known pasta shapes.', 360.00, '659ee96863dcd.jpg'),
(60, 68, 'Fettuccine Pomodoro', 'Pomodoro sauce is a very simple classic  tomato-based sauce recipe consisting of few ingredients.', 250.00, '659ee8fe53a8a.jpg'),
(61, 68, 'Pasta Carbonara', 'The silky carbonara sauce is created when the beaten eggs are tossed with the hot pasta and a little fat from the pancetta or bacon.', 300.00, '659ee8a014d29.jpg'),
(63, 54, 'Basomoti Kacchi', 'This is so delicious', 699.00, '659edaf6b5f03.jpg'),
(64, 67, 'Kacchi Khadok', 'This is so delicious and reasonable for all', 490.00, '659ee64b18712.jpg'),
(67, 67, 'Basomoti Kacchi', 'An extremely easy and fast to make! Super tasty', 350.00, '659ee70fd7fe2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(71, 39, 'in process', 'Dispatching...', '2022-03-17 12:31:14'),
(72, 39, 'closed', 'Order delivered.', '2022-03-17 12:35:00'),
(73, 42, 'closed', 'Order delivered & payment received successfully.', '2022-03-23 13:53:20'),
(74, 47, 'rejected', 'Order Cancelled by User.', '2022-03-23 13:54:08'),
(75, 43, 'in process', 'Expected Delivery: 25th March, Friday ', '2022-03-23 14:07:03'),
(76, 49, 'closed', 'Thannks for your order.', '2023-12-08 19:02:11'),
(77, 52, 'closed', '', '2023-12-21 21:44:31'),
(78, 53, 'rejected', '', '2023-12-21 21:45:34'),
(79, 51, 'closed', '', '2024-01-10 08:46:14'),
(80, 51, 'rejected', '', '2024-01-10 10:29:29'),
(81, 94, 'in process', '', '2024-01-10 10:33:25'),
(82, 123, 'in process', '', '2024-01-10 20:02:53'),
(83, 124, 'closed', '', '2024-01-10 20:03:07'),
(84, 125, 'rejected', '', '2024-01-10 20:03:23'),
(85, 127, 'in process', '', '2024-01-10 20:03:44'),
(86, 128, 'closed', '', '2024-01-10 20:03:59'),
(87, 129, 'rejected', '', '2024-01-10 20:04:13'),
(88, 131, 'closed', '', '2024-01-10 20:04:34'),
(89, 133, 'in process', '', '2024-01-10 20:04:51'),
(90, 134, 'in process', '', '2024-01-10 20:06:06'),
(91, 134, 'closed', '', '2024-01-10 20:06:36'),
(92, 135, 'rejected', '', '2024-01-10 20:06:53'),
(93, 140, 'closed', '', '2024-01-10 20:07:10'),
(94, 142, 'in process', '', '2024-01-10 20:07:33'),
(95, 143, 'closed', '', '2024-01-10 20:07:47'),
(96, 144, 'rejected', '', '2024-01-10 20:08:05'),
(97, 146, 'in process', '', '2024-01-10 20:08:46'),
(98, 148, 'in process', '', '2024-01-10 20:09:04'),
(99, 149, 'closed', '', '2024-01-10 20:09:25'),
(100, 150, 'rejected', '', '2024-01-10 20:09:41'),
(101, 151, 'closed', '', '2024-01-10 20:10:01'),
(102, 150, 'closed', '', '2024-01-10 20:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(48, 17, 'Yum Cha District', 'yumchadistrict@gmail.com', '01793554592', 'https://yumchadistrict.com', '10am', '10pm', 'mon-thu', ' Level 5, Hs 42 & 43, 9/A Satmasjid Road, Dhaka 1209 ', '657366f1881a8.jpg', '2023-12-08 18:56:49'),
(50, 14, 'Deshi Restaurant', 'deshirestaurant@gmail.com', ' 01743080841', 'www.deshirestaurant.com', '6am', '10pm', 'mon-tue', '  Uttara sector-11, Dhaka  ', '659ecc8ee40a8.jpg', '2024-01-10 16:57:50'),
(52, 14, 'Hudson', 'hudson@gmail.com', '01736473874', 'hudson.com', '9am', '11pm', 'mon-thu', 'Airport, Uttara, Dhaka', '65734bb4a428d.jpg', '2023-12-08 17:00:36'),
(53, 12, 'Dreaming Tree', 'dreamingtree@gmail.com', ' 8870057753', 'www.dreamingtree.in', '7am', '7pm', 'mon-thu', 'Sector-12, Uttara, Dhaka', '65734b29a2168.jpg', '2023-12-08 16:58:17'),
(54, 12, 'Sultans Dine', 'Sultandine@gmail.com', '01736453764', 'www.sultandine.com', '10am', '10pm', 'mon-sat', '  R#1, H#5, Sector-11, Uttara  ', '659ed956cb95a.png', '2024-01-10 17:52:22'),
(55, 17, 'Xinxian', 'xinxian@gmail.com', ' 01728340071', 'https://xinxian.com', '8am', '8pm', 'mon-sat', 'House- 7, Road- 8, Dhanmondi, Dhaka- 1205', '65736596b1fd6.jpg', '2023-12-08 18:51:02'),
(56, 14, 'Sabroso', 'sabroso@gmail.com', ' 01762217755', 'www.sabroso.com', '9am', '6pm', 'mon-sat', 'Savana GH Heights, Level 7, No 67 hatmasjid Road, Dhaka 1209', '6573600cc0f18.jpg', '2023-12-08 18:27:24'),
(60, 15, 'Peshawri', 'peshawri@gmail.com', '91-44-56609670', 'www.peshawri.com', '9am', '9pm', 'mon-sat', ' ITC Grand Chola, Chennai. ', '65734c1588179.jpg', '2023-12-08 17:02:13'),
(61, 18, 'New Banana Cafe & Restaurant', 'bananacafe@gmail.com', '+91 96265 61259', 'https://www.facebook.com/NewBananaCafe', '8am', '8pm', 'mon-tue', ' 42, Rue Cazy Street Close to old Law collage, Pondicherry-605001. ', '65734ccd36668.jpg', '2023-12-08 17:05:17'),
(65, 13, 'Chillox Dhanmondi', 'chillox@gmail.com', '01781397017', 'http://www.chillox.com/', '8am', '9pm', 'mon-tue', '  R#2, H#5, Dhanmondi, Dhaka-1230  ', '657367795f783.jpg', '2023-12-08 18:59:05'),
(66, 12, 'Hongbao', 'Hongbao@gmail.com', '01759856191', 'https://hongbao.com', '10am', '10pm', 'mon-tue', 'R#2, H#4, Sector-14, Uttara', '6573486267155.jpg', '2023-12-08 16:46:26'),
(67, 13, 'Kacchi Bhai', 'kacchibhai@gmail.com', '01781397013', 'https://kacchibhai.com', '8am', '10pm', 'mon-sat', ' Kacchi Bhai Puran Dhaka ', '6573610ed146b.jpg', '2023-12-08 18:31:42'),
(68, 13, 'Blaze Bar', 'blazebar@gmail.com', '01793691445', 'https://blazebar.com', '10am', '10pm', 'mon-thu', 'Uttara  Branch, Dhaka', '65735c316f5dc.jpg', '2023-12-08 18:10:57'),
(69, 13, 'Pinewood', 'pinewood@gmail.com', '01793554596', 'https://spinewood.com', '11am', '9pm', 'mon-wed', 'Dhanmondi, Dhaka-1230', '65735e35f0d26.jpg', '2023-12-08 18:19:33'),
(72, 17, 'New Cathay', 'newcathay@gmail.com', '01781397014', 'https://newcathay.com', '10am', '10pm', 'mon-fri', '72 Road No. 11, Dhaka 1213', '657363d6354c9.jpg', '2023-12-08 18:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(12, 'High', '2023-12-08 16:38:49'),
(13, 'Medium', '2023-12-08 16:38:33'),
(14, 'Low', '2023-12-08 16:38:15'),
(17, 'Chinese', '2023-12-08 16:41:29'),
(18, 'Japanese', '2023-12-08 16:39:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(47, 'user1', 'user', '1', 'user1@gmail.com', '01759856191', '96e79218965eb72c92a549dd5a330112', 'Uttara, Dhaka', 1, '2023-12-08 17:59:30'),
(48, 'user2', 'user', '2', 'user2@gmail.com', '01759856192', 'e3ceb5881a0a1fdaad01296d7554868d', 'Kamarpara, Turag, Dhaka', 1, '2023-12-08 18:01:52'),
(49, 'user3', 'user', '3', 'user3@gmail.com', '01759856193', '1a100d2c0dab19c4430e7d73762b3423', 'Abdullahpur, Uttara, Dhaka', 1, '2023-12-08 18:03:25'),
(50, 'user4', 'Abdul', 'Malek', 'user4@gmail.com', '01759856194', '73882ab1fa529d7273da0db6b49cc4f3', 'Airport, Uttara, Dhaka', 1, '2024-01-10 11:15:28'),
(52, 'user5', 'Abdur ', 'Rahim', 'abdurrahim@gmail.com', '01622826488', '5b1b68a9abf4d2cd155c81a9225fd158', 'Khilkhet, Dhaka, Bangladesh', 1, '2024-01-10 11:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(123, 47, 'Schezwan Fried Rice', 2, 200.00, 'in process', '2024-01-10 20:02:53'),
(124, 47, 'Schezwan Noodles', 2, 150.00, 'closed', '2024-01-10 20:03:07'),
(125, 47, 'Veg Manchurian Recipe', 1, 250.00, 'rejected', '2024-01-10 20:03:23'),
(126, 47, 'Dosai', 1, 150.00, NULL, '2024-01-10 19:51:35'),
(127, 48, 'Caprese stuffed chicken', 1, 100.00, 'in process', '2024-01-10 20:03:44'),
(128, 48, 'Grilled Lemon Herb Mediterranean Chicken Salad', 1, 180.00, 'closed', '2024-01-10 20:03:59'),
(129, 48, 'Stuffed Chicken', 2, 450.00, 'rejected', '2024-01-10 20:04:13'),
(130, 48, 'Soft Cinnamon Rolls', 1, 340.00, NULL, '2024-01-10 19:52:19'),
(131, 48, 'Patrode', 1, 100.00, 'closed', '2024-01-10 20:04:34'),
(133, 49, 'Coconut Rice', 1, 150.00, 'in process', '2024-01-10 20:04:51'),
(134, 49, 'Patrode', 1, 100.00, 'closed', '2024-01-10 20:06:36'),
(135, 49, 'Chicken Ishtu', 1, 180.00, 'rejected', '2024-01-10 20:06:53'),
(136, 49, 'Margherita Pizza', 2, 490.00, NULL, '2024-01-10 19:54:01'),
(140, 49, 'Chocolate Pudding Cake', 1, 650.00, 'closed', '2024-01-10 20:07:11'),
(142, 50, 'Chicken sandwich', 3, 250.00, 'in process', '2024-01-10 20:07:33'),
(143, 50, 'Lasagna', 2, 360.00, 'closed', '2024-01-10 20:07:47'),
(144, 50, 'Chicken Chettinad Curry', 1, 450.00, 'rejected', '2024-01-10 20:08:05'),
(145, 50, 'Parota', 2, 100.00, NULL, '2024-01-10 19:56:38'),
(146, 50, 'Idly', 1, 180.00, 'in process', '2024-01-10 20:08:46'),
(147, 52, 'Chana Masala', 2, 199.00, NULL, '2024-01-10 20:00:15'),
(148, 52, 'Besan Ladoo', 1, 200.00, 'in process', '2024-01-10 20:09:04'),
(149, 52, 'Samosa', 2, 120.00, 'closed', '2024-01-10 20:09:25'),
(150, 52, 'Puttu', 1, 199.00, 'closed', '2024-01-10 20:12:36'),
(151, 52, 'Pongal', 1, 160.00, 'closed', '2024-01-10 20:10:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
