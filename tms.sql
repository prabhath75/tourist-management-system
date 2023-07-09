-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2023 at 06:50 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', '2020-05-11 11:18:49'),
(5, 'admin1', '123', '2023-07-04 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this package.', '2020-07-08 06:38:36', 2, 'u', '2020-07-08 06:53:45'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2020-07-08 06:43:25', 1, NULL, '2020-07-08 06:52:44'),
(3, 4, 'abir@gmail.com', '2020-07-11', '2020-07-15', 'When I get conformation', '2020-07-08 06:44:39', 2, 'a', '2020-07-08 06:49:55'),
(4, 11, 'prabhath@gmail.com', '2023-07-05', '2023-07-10', 'i need this', '2023-07-05 16:31:11', 2, 'a', '2023-07-06 08:55:17'),
(5, 11, 'prabhath@gmail.com', '2023-07-12', '2023-07-13', 'i need this', '2023-07-06 03:04:41', 2, 'a', '2023-07-06 14:46:49'),
(6, 14, 'kotavissa@gmail.com', '2023-07-11', '2023-07-13', 'paid', '2023-07-06 03:43:47', 1, NULL, '2023-07-06 03:53:33'),
(7, 18, 'kotavissa@gmail.com', '2023-07-07', '2023-07-07', 'i need this', '2023-07-06 03:45:57', 0, NULL, NULL),
(8, 18, 'kotavissa@gmail.com', '2023-07-07', '2023-07-07', 'i need this', '2023-07-06 03:45:57', 0, NULL, NULL),
(9, 18, 'kotavissa@gmail.com', '2023-07-07', '2023-07-07', 'i need this', '2023-07-06 03:45:58', 0, NULL, NULL),
(10, 18, 'kotavissa@gmail.com', '2023-07-07', '2023-07-07', 'i need this', '2023-07-06 03:45:58', 0, NULL, NULL),
(11, 12, 'prabhath@gmail.com', '2023-07-05', '2023-07-11', 'i need this', '2023-07-06 08:48:04', 1, NULL, '2023-07-06 14:47:42'),
(12, 12, 'prabhath@gmail.com', '2023-07-07', '2023-07-10', 'i paid', '2023-07-06 13:48:22', 0, NULL, NULL),
(13, 12, 'prabhath@gmail.com', '2023-07-07', '2023-07-10', 'i paid', '2023-07-06 13:51:30', 0, NULL, NULL),
(14, 12, 'prabhath@gmail.com', '2023-07-07', '2023-07-10', 'i paid', '2023-07-06 14:00:12', 0, NULL, NULL),
(15, 14, 'prabhath@gmail.com', '2023-07-06', '2023-07-07', 'paid', '2023-07-06 14:50:33', 0, NULL, NULL),
(16, 14, 'prabhath@gmail.com', '2023-07-05', '2023-07-07', 'i need this', '2023-07-06 14:54:02', 1, NULL, '2023-07-06 14:55:49'),
(17, 11, 'prabhath@gmail.com', '2023-07-07', '2023-07-08', 'i need this', '2023-07-07 03:47:27', 0, NULL, NULL),
(18, 11, 'laxmangmail.com', '2023-07-08', '2023-07-08', 'paid', '2023-07-07 05:43:21', 1, NULL, '2023-07-07 05:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Jone Paaire', 'jone@gmail.com', '4646464646', 'Enquiry for Manali Trip', 'Kindly provide me more offer.', '2020-07-08 06:30:32', 1),
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2020-07-08 06:31:38', 1),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2020-07-08 06:32:41', 1),
(4, 'p', 'ghfhgh@fdg.vom', '4565656565', 'fghhgf', 'hfghfgh', '2023-06-19 14:17:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, NULL, NULL, NULL, '2020-07-08 06:33:20', NULL, NULL),
(2, NULL, NULL, NULL, '2020-07-08 06:33:56', NULL, NULL),
(3, NULL, NULL, NULL, '2020-07-08 06:34:20', NULL, NULL),
(4, NULL, NULL, NULL, '2020-07-08 06:34:38', NULL, NULL),
(5, NULL, NULL, NULL, '2020-07-08 06:35:06', NULL, NULL),
(6, 'test@gmail.com', 'Booking Issues', 'I am not able to book package', '2020-07-08 06:36:03', 'Ok, We will fix the issue asap', '2020-07-08 06:55:22'),
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2020-07-08 06:56:29', NULL, NULL),
(8, NULL, NULL, NULL, '2023-06-19 12:57:34', NULL, NULL),
(9, NULL, NULL, NULL, '2023-07-05 16:30:20', NULL, NULL),
(10, NULL, NULL, NULL, '2023-07-06 03:26:26', NULL, NULL),
(11, 'prabhath@gmail.com', 'Refund', 'refund ', '2023-07-06 14:01:26', 'updated', '2023-07-06 14:02:09'),
(12, NULL, NULL, NULL, '2023-07-07 05:32:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '<div style="text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptatem, suscipit?&nbsp;</span></div><div style="text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">Excepturi, illum! Nihil, commodi unde voluptas totam tenetur nemo animi odit&nbsp;</span></div><div style="text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">mollitia in magnam, voluptatem ex rem officiis, maiores at fugiat id facilis e</span></div><div style="text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">sse! Perspiciatis itaque laudantium ex repellat veniam aut, unde corporis vero.</span></div><div style="text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">&nbsp;Est, commodi quidem vel error maiores itaque atque optio voluptas ipsum volupt</span></div><div style="text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">atem excepturi, ad dicta dolores illo architecto quisquam quae consequuntur sap</span></div><div style="text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">iente ipsam possimus! Ullam, eius? Velit in eum beatae nemo, cum molestiae volu</span></div><div style="text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">ptates! Ipsa doloribus, qui rerum similique expedita, repellat ducimus nam, fug</span></div><div style="text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">a doloremque voluptates laudantium hic error laboriosam praesentium incidunt od</span></div><div style="text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">io magnam consectetur obcaecati aspernatur debitis reprehenderit in beatae. Vo</span></div><div style="text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">luptatibus impedit tempora, reiciendis sit sequi quisquam qui beatae porro acc</span></div><div style="text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">usantium aut consectetur odio, id ducimus accusamus similique alias nesciunt</span></div><div style="text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">&nbsp;delectus eveniet tempore. Molestiae, asperiores quia adipisci non placeat p</span></div><div style="text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">orro iusto! Perferendis, consequuntur libero. Molestiae, numquam qui. Fugit&nbsp;</span></div><div style="text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">facere excepturi nihil? Quis placeat cupiditate totam.</span></div>'),
(2, 'privacy', '										<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>\r\n										'),
(3, 'aboutus', '<div><span style="color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;">Welcome to Tourism Management System!!!</span></div><span style="font-family: &quot;courier new&quot;;"><span style="color: rgb(0, 0, 0); font-size: 15px; text-align: justify;">Since then, our courteous and committed team members have always ensured a pleasant and enjoyable tour for the clients. This arduous effort has enabled Shreya Tour &amp; Travels to be recognized as a dependable Travel Solutions provider with three offices Delhi.</span><span style="color: rgb(80, 80, 80); font-size: 13px;">&nbsp;We have got packages to suit the discerning traveler''s budget and savor. Book your dream vacation online. Supported quality and proposals of our travel consultants, we have a tendency to welcome you to decide on from holidays packages and customize them according to your plan.</span></span>'),
(11, 'contact', '																														<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">Address&nbsp; 322/5 Kandy&nbsp;</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(11, 'Exotic Escapes in Sri Lanka', 'Adventure and Nature', 'Nuwaraeliya', 1500, 'Complimentary Wi-Fi and private transportation ensure a seamless and revitalizing wellness retreat in Sri Lanka.', 'Embark on a breathtaking journey through the enchanting island of Sri Lanka with our "Exotic Escapes" package. This adventure-packed itinerary will take you to some of the most captivating destinations in Sri Lanka, where you can immerse yourself in its rich cultural heritage, explore stunning landscapes, and indulge in thrilling outdoor activities.', 'download.jfif', '2023-07-05 15:21:06', '2023-07-05 16:09:47'),
(12, 'Nature''s Paradise in Sri Lanka', 'Nature and Wildlife Adventure', 'Yala National Park', 4000, ' Enjoy comfortable accommodations, complimentary Wi-Fi, and private transportation, allowing you to immerse yourself fully in the natural splendors of Sri Lanka.', 'Embark on an unforgettable journey through the natural wonders of Sri Lanka with our "Nature''s Paradise" package. Experience the breathtaking landscapes, diverse wildlife, and pristine habitats that make this island a true paradise for nature enthusiasts. Encounter herds of elephants in Minneriya National Park, spot elusive leopards in Yala National Park, and witness an array of bird species in the wetlands of Bundala. Trek through the lush rainforests of Sinharaja, marvel at cascading waterfalls in Ella, and relax on the picturesque beaches of Arugam Bay.', 'images.jfif', '2023-07-05 15:30:33', NULL),
(13, 'Beach Bliss in Sri Lanka', 'Relaxation and Beach Getaway', 'Negombo', 3000, '. Complimentary Wi-Fi, comfortable accommodations, and private transportation ensure a seamless and rejuvenating beach getaway in Sri Lanka.', 'Escape to the sun-drenched beaches of Sri Lanka with our "Beach Bliss" package. Indulge in pure relaxation as you unwind on pristine shores, listening to the soothing sound of the waves and feeling the gentle ocean breeze. Discover the golden beaches of Negombo, the palm-fringed coasts of Bentota, and the idyllic shores of Mirissa. Enjoy water sports activities such as snorkeling, diving, and surfing, or simply lounge by the pool with a refreshing drink in hand. Delight in delectable cuisine, from freshly caught seafood to international flavors, and experience warm hospitality at beachfront resorts. Complimentary Wi-Fi, comfortable accommodations, and private transportation ensure a seamless and rejuvenating beach getaway in Sri Lanka.\r\n\r\nFeel free to customize these package details based on your specific offerings, preferences, and the popular tourist attractions in Sri Lanka.', 'download (1).jfif', '2023-07-05 15:45:49', NULL),
(14, 'Adventure Expedition in Sri Lanka', 'Thrilling Outdoor Activities', 'Ella', 6000, 'After each exhilarating day, relax in comfortable accommodations and enjoy complimentary Wi-Fi and private transportation, ensuring an action-packed and memorable adventure.', 'Embark on an adrenaline-pumping adventure in the stunning landscapes of Sri Lanka with our "Adventure Expedition" package. Experience a range of thrilling activities, including white-water rafting in Kitulgala, hiking to the summit of Adam''s Peak, zip-lining through the lush forests of Ella, and exploring the underground caves of Dambulla. Dive into the turquoise waters of Hikkaduwa for an exciting snorkeling or diving session, or challenge the waves of Arugam Bay with your surfboard. After each exhilarating day, relax in comfortable accommodations and enjoy complimentary Wi-Fi and private transportation, ensuring an action-packed and memorable adventure.', 'download (2).jfif', '2023-07-05 15:48:33', NULL),
(15, 'Tea Trail and Heritage Exploration', 'Historical and Tea Plantation Experience', 'Nuwaraeliya', 4600, ' Rest in comfortable accommodations, enjoy complimentary Wi-Fi, and travel in private vehicles to ensure a seamless and enlightening journey.', 'Delve into the rich history and tea heritage of Sri Lanka with our "Tea Trail and Heritage Exploration" package. Discover the colonial charm of Galle Fort, a UNESCO World Heritage Site, and wander through the cobblestone streets lined with Dutch-colonial buildings. Explore the aromatic tea plantations of Nuwara Eliya, learning about the tea-making process from plucking to brewing. Visit renowned tea factories and enjoy a refreshing cup of Ceylon tea while taking in the panoramic views of rolling hills. Immerse yourself in the local culture with visits to ancient temples, traditional villages, and vibrant markets. Rest in comfortable accommodations, enjoy complimentary Wi-Fi, and travel in private vehicles to ensure a seamless and enlightening journey.', 'Tea-plantation-regions-in-Sri-Lanka-2.jpg', '2023-07-05 15:51:52', NULL),
(16, 'Wildlife Safari and Beach Escape', 'Wildlife and Beach Combination', 'Yala National Park and Udawalawe', 7000, ' Comfortable accommodations, complimentary Wi-Fi, and private transportation ensure a seamless and unforgettable wildlife and beach getaway', 'captivating journey through the wildlife wonders and idyllic beaches of Sri Lanka with our "Wildlife Safari and Beach Escape" package. Witness the majestic elephants, leopards, and endemic bird species in their natural habitats during exhilarating wildlife safaris in Yala National Park and Udawalawe National Park. Then, unwind on the palm-fringed beaches of Trincomalee or Pasikuda, where golden sands meet crystal-clear waters. Relax under the shade of swaying coconut trees, indulge in beachfront dining experiences, and enjoy water sports activities. Comfortable accommodations, complimentary Wi-Fi, and private transportation ensure a seamless and unforgettable wildlife and beach getaway.', 'beach-and-wildlife-tours-in-sri-lanka.jpg', '2023-07-05 15:54:09', NULL),
(17, 'Ayurvedic Retreat in Sri Lanka', ' Wellness and Relaxation', 'Colombo', 2000, ' Complimentary Wi-Fi and private transportation ensure a seamless and revitalizing wellness retreat in Sri Lanka.', 'Rejuvenate your mind, body, and soul with our "Ayurvedic Retreat" package in the serene surroundings of Sri Lanka. Experience the ancient healing techniques of Ayurveda, practiced for centuries in this tropical paradise. Indulge in therapeutic spa treatments, personalized wellness programs, and daily yoga and meditation sessions. Stay at tranquil Ayurvedic retreat centers nestled amidst nature, providing a peaceful and harmonious ambiance. Immerse yourself in Ayurvedic cuisine, with healthy and nourishing meals prepared using fresh and organic ingredients. Complimentary Wi-Fi and private transportation ensure a seamless and revitalizing wellness retreat in Sri Lanka.', 'Sri-Lanka-Ayurveda_Reef-Villa-Spa.jpg', '2023-07-05 15:56:50', NULL),
(18, 'Misty Mountains and Serene Valleys', 'Hill Country Exploration', 'Ella', 6500, '. Experience the cool climate, tranquil atmosphere, and warm hospitality of Sri Lanka''s hill country.', '"Misty Mountains and Serene Valleys" package. Discover the enchanting landscapes of Nuwara Eliya, Ella, and Haputale, where rolling hills are blanketed with lush tea plantations. Take a scenic train ride through picturesque valleys, visit renowned tea factories, and savor a cup of Ceylon tea while enjoying panoramic views. Hike to the famous Ella Rock, stroll along picturesque tea trails, and witness cascading waterfalls amidst mist-covered mountains. Experience the cool climate, tranquil atmosphere, and warm hospitality of Sri Lanka''s hill country.', 'download (3).jfif', '2023-07-05 16:02:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Manju Srivatav', '4456464654', 'manju@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:33:20', NULL),
(2, 'Kishan', '9871987979', 'kishan@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:33:56', NULL),
(3, 'Salvi Chandra', '1398756416', 'salvi@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:34:20', NULL),
(4, 'Abir', '4789756456', 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:34:38', NULL),
(5, 'Test', '1987894654', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-07-08 06:35:06', '2021-05-11 04:37:41'),
(8, 'prabhath', '0769788402', 'prabhath75@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-06-19 12:57:34', NULL),
(9, 'prabhath chathuranga', '0769788402', 'prabhath@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-07-05 16:30:20', NULL),
(10, 'Vishwa Dasun', '0784771288', 'kotavissa@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-07-06 03:26:26', NULL),
(11, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2023-07-06 14:01:26', NULL),
(12, 'laxman', '07722@5854', 'laxmangmail.com', '202cb962ac59075b964b07152d234b70', '2023-07-07 05:32:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `tblpages` ADD FULLTEXT KEY `detail` (`detail`);
ALTER TABLE `tblpages` ADD FULLTEXT KEY `detail_2` (`detail`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
