-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 12:04 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dress_snazzy`
--
CREATE DATABASE IF NOT EXISTS `dress_snazzy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dress_snazzy`;

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `about_id` int(11) NOT NULL,
  `about_detail` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`about_id`, `about_detail`) VALUES
(1, '\"DRESSES SNAZZY\", the brand that houses one of exclusive range of stylish, couture & pret collection  which makes it one of the most sought after shopping destination for women and Men. It has started the journey of it\'s online store from March 28,2021.\r\nEverything is crafted with an incredible range of fabrics and applique work. The classic collections of its timeless designs and ensembles for both woman and men are versatile and aesthetically appealing.\r\nOUR MISSION:Be an unique Online Bangladeshi Ethnic wear store.Cultivate an innovative mindset across the organization.\r\nCollection Launches:Here at \'Dresses Snazzy\', we make sure that all our designs are latest & thereby we bring to you collection that we launch right before every season all across our stores & online.\r\nQuality Assurance:Quality assurance ensures that you see what you get! We make sure that all the product goes through proper quality check before it reaches your doorstep.\r\nEasy Returns:Bought an outfit but want to return it? We have a 30 day easy return policy that \'Dresses Snazzy\' Fashion offers. This is to ensure that you get what you want and look your ethnic best in that.\r\nWe ensure that each \'Dresses Snazzy\' package delivers happiness to the customer by surpassing expectations.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_title`) VALUES
(1, 'All'),
(2, 'Baby'),
(3, 'Men'),
(4, 'Women');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `check_id` int(11) NOT NULL,
  `check_email` varchar(255) NOT NULL,
  `check_phone` varchar(255) NOT NULL,
  `check_address` varchar(255) NOT NULL,
  `check_address2` varchar(255) NOT NULL,
  `check_city` varchar(255) NOT NULL,
  `check_zip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`check_id`, `check_email`, `check_phone`, `check_address`, `check_address2`, `check_city`, `check_zip`) VALUES
(1, 'tam123@gmail.com', '01788653470', 'Khilgaon ', 'Road 20 House 12', 'Dhaka', 1219),
(2, 'fatema123@gmail.com', '01977654089', 'Malibagh', 'Road 18 House 8', 'Dhaka', 1219),
(3, 'fatema24@gmail.com', '01556070899', 'Rampura', 'Road 22 House 7', 'Dhaka', 1219),
(4, 'fatema24@gmail.com', '01556070899', 'Rampura', 'Road 22 House 7', 'Dhaka', 1219),
(5, 'souvon21@gmail.com', '01997654321', 'Banasree', 'Road 16 House 12', 'Dhaka', 1219),
(6, 'fatematam35@gmail.com', '01556070899', 'Goran', 'Road 25 House 8', 'Dhaka', 1219),
(7, 'princsouvon420@gmail.com', '01997654321', 'Rampura', 'Road 16 House 12', 'Dhaka', 1219);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `contact_name`, `contact_email`, `contact_phone`, `contact_message`) VALUES
(1, 'Arijul Islam', 'smarijul41@gmail.com', '01963262196', 'Hello, Souvon.'),
(2, 'Fatema Tamanna', 'tamanna24@gmail.com', '01965443211', 'Hi there'),
(3, 'Fatema Sultana', 'sultanatam12@gmail.com', '01645567890', 'Hello'),
(4, 'Arijul Islam', 'smarijul41@gmail.com', '01963262196', 'erfe'),
(5, 'Arijul Islam', 'smarijul41@gmail.com', '01963262196', 'hey, there'),
(6, 'Fatema Sultana Tamanna', 'tamanna34@gmail.com', '01556780901', 'Hey'),
(7, 'Arijul Islam', 'smarijul41@gmail.com', '01963262196', 'hello'),
(9, 'Arijul', 'arijul@gmail.com', '01556070866', 'Hey '),
(10, 'Sultana', 'sultana12@gmail.com', '01556072899', 'Hey there'),
(11, 'Tamanna ', 'tam@gmail.com', '01445678901', 'Hi');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` varchar(500) NOT NULL,
  `total_comment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_category_id`, `product_image`, `product_title`, `product_price`, `product_description`, `total_comment`) VALUES
(1, 1, 'https://images.cbazaar.com/images/pink-crepe-knee-length-kurti-krsrk101501-pl.jpg', 'Kurti ', 500, 'Pink Crepe Knee Length Kurti,\r\nAvailable Size : S M L XL XXL XXXL,\r\nDetails:\r\nLook sensationally awesome in such a pink faux crepe knee length kurti. This pretty dress is showing some brilliant printed work done on the kurti.This Product comes with only top. ', 1),
(2, 2, 'https://images.cbazaar.com/images/red-art-silk-embroidered-saree-sasle4007-pl.jpg', 'Silk Saree', 1600, 'Red Art Silk Embroidered Saree Festive Wear,\r\nSize:32-42,Fabric:Art Silk,Color:Red,Neck:StyleClassic Neck Style,\r\nDetails:\r\nGet traditional look in this red art silk saree. The sarees are more decorative with embroidered work. Comes with art silk blouse.\r\n\r\n', 2),
(3, 3, 'https://images.cbazaar.com/images/blue-silk-jacquard-kurta-pyjama-kpsak15001-pl.jpg', 'Kurta Pyjama', 1000, 'Blue Silk Jacquard Kurta Pyjama,\r\nAvailable Chest Size:36 38 40 42 44 ,Fabric: Art Silk, Color :Blue,\r\nDetails:\r\nBlue silk jacquard kurta pyjama enriched with representing a royalty in itself. Comes with white cotton bottom.The outfit will add a regal touch to your personality.\r\n', 3),
(4, 4, 'https://images.cbazaar.com/images/white-benarasi-art-silk-bandi-set-kpmac8042-pl.jpg', 'Silk Bandi Set', 1500, 'White Benarasi Art Silk Bandi Set.\r\nAvailable Chest Size:34 36 38 40,Fabric:Art Silk,Color:White.\r\nDetails:\r\nWhite benarasi art silk bandi set enriched with plain work is representing a royalty in itself. Comes with art silk benarasi bottom and faux satin jacket.It\'ll add a Stylish look.\r\n', 4),
(5, 5, 'https://images.cbazaar.com/images/black-embroidered-churidar-suit-slscca4207-pl.jpg', 'Churidar Suit ', 1800, 'Black Embroidered Churidar Suit \r\nAvailable Size:32/XXS 34/XS 36/S 38/S-2,Fabric:Satin Blend,Color:Black,\r\nNeckStyle:Trendy Neck Style,Sleeve:length¾ Sleeves,\r\nDetails:\r\nBlack Georgette churidar suit with embroidered floral patterns on the kameez. Comes with matching black bottom and dupatta.The dupatta length is 2.2m. Width is 40\".', 5),
(6, 4, 'https://images.cbazaar.com/images/tricolored-creoe-palazzo-suit-slsrk80769-pl.jpg', 'Plazzo Suit', 1500, 'Tricolored Creoe Palazzo Suit\r\nAvailable Size:32/XXS 36/S 38/S-2,Kameez length:40-46 Inches,Fabric:Faux Crepe,Color:Grey | Black | Green,NeckStyle:Classic Neck Style\r\nDetails:Tricolored faux crepe palazzo suit with embroidered and printed foliage and floral patterns on the kameez. Comes with matching bottom and dupatta.\r\n', 4),
(7, 5, 'https://images.cbazaar.com/images/off-white-rayon-kurta-palazzo-set-krssrk107689-pl.jpg', 'kurta Plazzo Set', 1100, 'Off White Rayon Kurta Palazzo Set Work Wear\r\nAvailable Size:S M L XL XXL,Fabric:Rayon,Color:Off White,NeckStyle:Classic Neck Style,Sleeve:length¾ Sleeves.\r\nDetails:\r\nAn fantastic off white rayon kurta palazzo set will make you look extremely stylish and graceful.Comes with matching bottom.This product consists of stitched top and bottom.\r\n', 5),
(8, 2, 'https://images.cbazaar.com/images/maroon-velvet-wedding-classic-sherwani-shmssmwd3485-pl.jpg', 'Sherwani', 2500, 'Maroon Velvet Classic Sherwani.\r\nAvailable Chest Size:38 40 42 44,Fabric:Velvet,Color:Maroon,NeckStyle:Trendy Neck Style,Sleevelength:Full Sleeves.Details:A timeless party with this maroon velvet wedding classic sherwani. Beautified with plain work all synchronized very well with all the trend and design of the sherwani.\r\n', 2),
(9, 2, 'https://images.cbazaar.com/images/Bottle-Green-Art-Silk-Nehru-Jacket-JMKMDCJ252-pl.jpg', 'Nehru Jacket', 800, 'Bottle Green Art Silk Nehru Jacket.\r\nAvailable Chest Size:36 38 40 42,Fabric:Art Silk,Color:Green | Black.\r\nDetails:\r\nBottle Green art silk nehru jacket with solid textured and side pocket on it.\r\nDesigns, colors and jacquard patterns on the actual product may slightly vary due to screen resolution and digital photography. Images are ony representative. Size chart may vary for all products.', 2),
(10, 1, 'https://images.cbazaar.com/images/blue-art-silk-cotton-kurta-pyjama-kpmssmwd3411-pl.jpg', 'Kurta Pyjama', 1400, 'Blue Art Silk Cotton Kurta Pyjama.Available ChestSize:36 40 42 46,Fabric:Art Silk Cotton,Color:Blue.Details:Blue art silk cotton kurta pyjama enriched with printed is representing a royalty in itself. Comes with off white dupion silk bottom.The outfit will add a regal touch to your personality.Designs,colors and patterns on the actual product may slightly vary from designs shown in the image. ', 1),
(11, 5, 'https://images.cbazaar.com/images/teal-green-benarasi-art-silk-saree-sasli1808-pl.jpg', 'Benarasi Saree', 3000, 'Teal Green Benarasi Art Silk Saree Festive Wear.\r\nSize:32-42,Fabric:Art Silk,Color:Teal | Green,NeckStyle:Classic NeckStyle,Sleeve: lengthElbow Sleeves.\r\nDetails:\r\nTeal green benarasi art silk saree with elegant zari woven decorative floral patterns on saree.comes with matching magenta blouse.Comes with unstitched blouse fabric.Color and pattern of the blouse might not be as shown in the image.\r\n', 5),
(12, 4, 'https://images.cbazaar.com/images/peach-cotton-handloom-saree-sassgsun1002-pl.jpg', 'Handloom Saree', 2600, 'Peach Cotton Handloom Saree Festive Wear.\r\nSize:32-42,Fabric:Blended Cotton,Color:Peach ,NeckStyle:Classic NeckStyle,Sleeve length:Half Sleeves\r\nDetails:\r\nWomen magnificence is magnified tenfold in this alluring peach cotton handloom saree. The ethnic zari woven work for the attire adds a sign of magnificence statement with a look,with matching blouse. ', 4),
(13, 2, 'https://images.cbazaar.com/images/green-poly-silk-short-kurti-krsrk101593-pl.jpg', 'Short Kurti ', 600, 'Green Poly Silk Short Kurti Work Wear.\r\nSize:S M L XL,Fabric:Art Silk,Color:Green,NeckStyle:Trendy Neck Style,Sleeve length:Half Sleeves.\r\nDetails:\r\nAdd grace and charm on your appearance in this green poly silk designer short kurti. The brilliant attire creates a dramatic canvas with incredible print work.This Product comes with only top.\r\n', 2),
(14, 3, 'https://images.cbazaar.com/images/white-cotton-designer-kurta-kudmf1014-pl.jpg', 'Kurta', 600, 'White Cotton Designer Kurta.\r\nAvailable Chest Size:34 36 40 44,Fabric:Blended Cotton,Color:White | Black.\r\nDetails:\r\nThis pleasance white designer kurta made with blended cotton fabric. The plain embellishments add to the look.', 5),
(15, 3, 'https://images.cbazaar.com/images/peach-n-blue-art-silk-nehru-jacket-jkmdcj402-pl.jpg', 'Nehru Jacket', 800, 'Peach N Blue Art Silk Nehru Jacket.\r\nAvailable Chest Size:30 34 36 38,Fabric:Art Silk,Color:Blue | Peach.\r\nDetails: \r\nPeach and blue art silk plain nehru jacket.Designs, colors and patterns on the actual product may slightly vary from designs shown in the image. Images are only representative.', 3),
(16, 4, 'https://images.cbazaar.com/images/Multicolored-Linen-Cotton-Saree-SA61I89N11-pl.jpg', 'Linen Saree', 1900, 'Multicolored Linen Cotton Saree Festive Wear.\r\nSize:32-44,Fabric:Linen | Blended Cotton,Color:Multicolored,Neck Style:Trendy Neck Style.Sleeve length:Half Sleeves\r\nDetails:\r\nStyle and design and trend would be at the peak of your splendor as soon as you dresses this multicolored linen cotton saree. The ethnic printed work in the apparel adds a sign of splendor statement for your look. Comes with printed green blouse.\r\n\r\nComes with unstitched blouse fabric.', 2),
(17, 4, 'https://images.cbazaar.com/images/Wine-Net-Anarkali-Suit-SLSCCL4561-pl.jpg', 'Anarkali Suit', 2000, 'Wine Net Anarkali Suit Wedding Wear.\r\nKameez length:50-52 Inches,Size:30-40,Fabric:Net,Color:Wine,Neck Style:Classic Neck Style,Sleeve length:¾ Sleeves.\r\nDetails:\r\nWine net anarkali suit with decorative embroidered foliage and floral patterns on the kameez. Comes with matching bottom and dupatta.\r\nThe dupatta is length is 2.2m, Width is 40\".\r\nThis product consists of semistitched top, bottom and dupatta fabric.', 2),
(18, 3, 'https://images.cbazaar.com/images/multicolored-jacquard-art-silk-bandi-set-kpmssmwd3278-pl.jpg', 'Bandi Suit', 2300, 'Multicolored Jacquard Art Silk Bandi Set.\r\nAvailable Chest Size:38 40 42 44.Fabric:Art Silk,Color:Multicolored.\r\nDetails:\r\nMulticolored color art silk bandi set enriched with jacquard work is representing a royalty in itself. Comes with matching bottom. The outfit will add a regal touch to your personality.', 4),
(19, 4, 'https://images.cbazaar.com/images/Dark-Beige-Embroidered-Abaya-Style-Anarkali-Suit-SLSCC151104-pl.jpg', 'Abaya Suits', 2800, 'Dark Beige Embroidered Abaya Style A Party Wear.\r\nKameez length:52 Inches,Size:30-38,Fabric:Net,Color:Beige,NeckStyle:Classic Neck Style,Sleeve length:¾ Sleeves.\r\nDetails:\r\nThis dark beige net abaya style anarkali suit with embroidered foliage patterns all over the kameez. Comes with matching bottom and dupatta.\r\nThe Dupatta Length is 2.2m. Width Is 40.\r\n\r\n', 2),
(20, 4, 'https://images.cbazaar.com/images/red-benarasi-art-silk-saree-sasli1045trred-pl.jpg', 'Festive Silk Saree', 3200, 'Red Benarasi Art Silk Saree Festive Wear.\r\nSize:32-42,Fabric:Art Silk,Color:Red,Neck Style:Classic Neck Style,Sleeve length:Half Sleeves', 3);

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `subscribe_id` int(11) NOT NULL,
  `subscribe_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`subscribe_id`, `subscribe_email`) VALUES
(1, 'smarijul41@gmail.com'),
(2, 'fatematamanna23@gmail.com'),
(3, 'tamanna2656@gmail.com'),
(4, 'princsouvon420@gmail.com'),
(6, 'princsouvon420@gmail.com'),
(7, 'fatema@gmail.com'),
(8, 'fatematamanna@gmail.com'),
(9, 'princsouvon420@gmail.com'),
(10, 'princsouvon420@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `team_member_image` varchar(300) NOT NULL,
  `team_member_name` varchar(100) NOT NULL,
  `team_member_position` varchar(100) NOT NULL,
  `team_member_id` varchar(50) NOT NULL,
  `team_member_university` varchar(255) NOT NULL,
  `team_member_email` varchar(255) NOT NULL,
  `team_member_fb` varchar(255) NOT NULL,
  `team_member_gmail` varchar(255) NOT NULL,
  `team_member_instagram` varchar(255) DEFAULT NULL,
  `team_member_linkdin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `team_member_image`, `team_member_name`, `team_member_position`, `team_member_id`, `team_member_university`, `team_member_email`, `team_member_fb`, `team_member_gmail`, `team_member_instagram`, `team_member_linkdin`) VALUES
(1, 'https://media.istockphoto.com/photos/young-brazilian-man-wearing-blue-tshirt-standing-over-isolated-white-picture-id1162358018?k=6&m=1162358018&s=612x612&w=0&h=UiYCW5zx6sGM7RkuVdUV6PSCuUPStTdItM7bdVHVkPs=\r\n\r\n', 'Arijul Islam', 'CEO && Founder', '180104089', 'Ahsanullah University of Science and Technology.', '180104089@aust.edu', 'https://www.facebook.com/prince.souvon.5', 'https://mail.google.com/mail/u/0/#inbox', 'https://www.instagram.com/prince.souvon.5/', 'https://www.linkedin.com/in/ars-souvon-679419170/'),
(2, 'https://media.istockphoto.com/photos/woman-hands-coding-html-and-programming-on-screen-laptop-web-picture-id960937636?k=6&m=960937636&s=612x612&w=0&h=1_N4mstmDIW68CPD2AtYh9QJIyM1mDV8VSQZUUBBTqA=', 'Fatema Sultana', 'Co Founder', '180104085', 'Ahsanullah University of Science and Technology.', '180104085@aust.edu', 'https://www.facebook.com/fatematamanna.tarin.26', 'https://mail.google.com/mail/u/0/#inbox', '', 'https://www.linkedin.com/me/profile-views/urn:li:wvmp:summary/');

-- --------------------------------------------------------

--
-- Table structure for table `update_profile`
--

CREATE TABLE `update_profile` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_profession` varchar(255) NOT NULL,
  `user_reg_id` varchar(20) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_dob` varchar(100) NOT NULL,
  `user_age` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `update_profile`
--

INSERT INTO `update_profile` (`user_id`, `user_name`, `user_profession`, `user_reg_id`, `user_email`, `user_dob`, `user_age`) VALUES
(1, 'Fatema Sultana', 'Student', '180104085     ', 'fatematam135@gmail.com', '26.12.2000', 20),
(2, 'Fatema Sultana', 'Student', '180104085     ', 'fatematam135@gmail.com', '26.12.2000', 20),
(3, 'Fatema Sultana', 'Student', '180104085     ', 'fatematam135@gmail.com', '26.12.2000', 20),
(4, 'Fatema Sultana', 'Student', '180104085     ', 'fatematam135@gmail.com', '26.12.2000', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_confirm_password` varchar(20) NOT NULL,
  `user_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_confirm_password`, `user_status`) VALUES
(4, 'Fatema Sultana', 'fatematam34@gmail.com', 'tam34', 'tam34', 1),
(6, 'souvon', 'princsouvon420@gmail.com', 'arijul4200', 'arijul4200', 1),
(7, 'Fatema ', 'tam324@gmail.com', '123', '123', 1),
(8, 'Tarin', 'tarin@gmail.com', '123', '123', 1),
(9, 'Fatema', 'tam324@gmail.com', '123', '123', 0),
(10, 'Fatema Tarin', 'fatematarin@gmail.com', '234', '234', 0),
(11, 'Sultana ', 'sultana@gmail.com', '345', '345', 0),
(14, 'sultana tam', 'sultanatam@gmail.com', '321', '321', 0),
(15, 'souvon arijul', 'arijul23@gmail.com', '12', '12', 0),
(16, 'Fatema Sultana Tamanna', 'fatematamsultana@gmail.com', '12345', '12345', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`check_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `update_profile`
--
ALTER TABLE `update_profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `check_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `update_profile`
--
ALTER TABLE `update_profile`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
