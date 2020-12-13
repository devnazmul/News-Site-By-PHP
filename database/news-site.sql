-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 11:45 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(34, 'Sports', 2),
(31, 'Entertainment', 2),
(32, 'Politics', 3),
(33, 'Health', 1),
(36, 'General', 1),
(37, 'Technology', 0),
(38, 'Education', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(36, 'First Post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices tempus eros, non porta risus cursus a. Pellentesque tempor justo at lectus faucibus mattis. Vestibulum interdum turpis orci, dapibus gravida lacus egestas id. Nunc quis egestas leo. Morbi eget pretium nulla, elementum placerat lacus. Phasellus fringilla mauris a mi scelerisque pretium. Vivamus lacus nisi, placerat ac mattis pharetra, tristique a urna. Aenean pharetra aliquet lacus, vitae tempor est tempus et. Sed sed nisi eleifend, tempus tortor ut, convallis massa. In mollis nisl a orci fermentum venenatis vel vitae turpis. Vivamus fermentum massa nibh, nec blandit est mattis iaculis.', '34', '19 Jan, 2020', 27, 'sports1.jpg'),
(37, 'Second Post', 'Maecenas turpis sapien, finibus nec augue a, commodo feugiat lectus. Nam feugiat, magna et vulputate varius, ligula dui placerat lorem, eu hendrerit magna mauris ut lectus. Suspendisse mattis diam est, rutrum ullamcorper eros congue sed. Nunc gravida sem nunc, et egestas quam sodales eget. Aliquam convallis varius dapibus. Nam ornare risus in quam condimentum, quis tempor nisi mattis. Cras id metus ut diam aliquet commodo. Curabitur quis sapien vitae massa tincidunt iaculis.', '31', '19 Jan, 2020', 27, 'entertainment1.jpg'),
(38, 'Third Post', 'Sed tincidunt sem vehicula, posuere est at, dapibus erat. Integer nec iaculis magna. Maecenas egestas sed odio sit amet maximus. Morbi viverra nisi euismod, convallis mi vitae, pretium quam. Sed hendrerit purus tortor, et cursus erat convallis eu. Integer quis consectetur arcu. Vivamus rutrum mollis volutpat.', '32', '19 Jan, 2020', 27, 'politics2.jpg'),
(39, 'Fourth Post', 'Pellentesque consectetur, turpis sit amet ullamcorper tristique, est massa consectetur ex, eget dapibus sapien augue eu turpis. Phasellus molestie euismod ultrices. Donec lorem lorem, volutpat vitae tincidunt quis, fringilla eu mauris. Morbi ac ipsum blandit, volutpat quam vitae, efficitur sem. Mauris a nunc nec dolor condimentum congue. Cras iaculis, ex rhoncus laoreet interdum, libero orci euismod risus, ut porta sem arcu ac lorem. Mauris lacinia efficitur ligula sed porta. Nullam a leo non risus ultricies cursus. Mauris scelerisque congue ipsum vel bibendum.', '34', '19 Jan, 2020', 27, 'sports2.jpg'),
(40, 'Fifth Post', 'Cras ullamcorper metus velit, in cursus lorem finibus eu. Pellentesque in risus sed diam pulvinar rhoncus sed in libero. Curabitur orci ipsum, convallis id bibendum sit amet, pretium sit amet massa. Mauris fermentum fermentum diam, et porttitor diam blandit a. Quisque tempor ante ut ligula convallis porta. Nulla nec ante mattis, auctor velit in, efficitur massa. Etiam aliquam massa vel sapien vulputate, ut congue est fringilla. Nunc non eros consequat, venenatis ligula eget, imperdiet risus. Maecenas ultrices purus et dolor pharetra rhoncus. Vestibulum congue augue ultricies leo cursus sollicitudin. Duis sollicitudin semper lectus, et tempus purus. Nam eleifend ante vitae nibh ultricies finibus. Vestibulum sollicitudin odio facilisis ex varius, et accumsan ipsum auctor. Nam non malesuada purus, et vestibulum libero. Phasellus gravida eu mi at vulputate.', '32', '19 Jan, 2020', 27, 'politics1.jpg'),
(41, 'New Salman Post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris feugiat mattis nisi tristique feugiat. Integer dictum vitae massa eu pulvinar. Aenean euismod sagittis diam in mattis. Pellentesque massa magna, imperdiet a ante non, vulputate blandit neque. Ut eu ipsum dui. Mauris imperdiet eros ac arcu egestas volutpat. Aenean nec urna feugiat, varius elit ut, bibendum velit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus placerat sodales felis at interdum. Duis dui lorem, luctus nec faucibus ut, sagittis a tortor.', '32', '21 Jan, 2020', 30, 'business.jpg'),
(42, 'Testing Recent Post ', '                                        Suspendisse sed ultrices tortor. In imperdiet sem fringilla, ultricies nunc non, condimentum nunc. Praesent ac sollicitudin enim, commodo pellentesque nunc. Integer bibendum sollicitudin augue in sagittis. Proin scelerisque lacus maximus mauris ornare semper. Aliquam mi ante, euismod vitae ligula quis, fermentum tincidunt arcu. Etiam elementum sed nisi et scelerisque. Integer aliquet venenatis aliquam. Proin tempor dui sed dui pulvinar facilisis. Etiam imperdiet molestie iaculis.                                ', '33', '21 Jan, 2020', 27, '1607855280-download.jpg'),
(43, 'CYBERPUNK 2077 LAUNCHES IN INDIA, PRICED AT RS 3,499 FOR PLAYSTATION, XBOX, RS 2,999 FOR PC', 'The much-awaited CD Projekt Red?s Cyberpunk 2077 featuring Keanu Reeves has finally debuted in India. The game has now released on PlayStation, Xbox, PC, Google Stadia and Nvidia GeForce cloud gaming platform. Buyers can purchase it from Amazon. As for the pricing, the game is priced at Rs 3,499 for PlayStation and Xbox. The PC version will cost you Rs 2,999 and the physical version of Cyberpunk 2077 for Xbox and PlayStation is priced at Rs 3,999. For the PC version, the disc is priced at Rs 2,499.\r\n\r\n\r\n\r\nIt has come to our attention that there are additional instances in the game which might put a DMCA strike on your channel. Fix is on the way but until then, we\'d like to ask you to mute music in the game\'s settings entirely. We are very sorry for any inconvenience caused. https://t.co/SS0yhyPrMo\r\n\r\n? Cyberpunk 2077 (@CyberpunkGame) December 10, 2020', '31', '13 Dec, 2020', 40, '1607853631-cyberounk-logo.jpg'),
(44, 'শিক্ষার্থীদের স্কুলে ফেরাতে প্রস্তুতি নিচ্ছে সরকার: প্রধানমন্ত্রী', '                                        প্রধানমন্ত্রী শেখ হাসিনা বলেছেন, ‘শিশুরা যেন আবার নিজেদের শিক্ষাপ্রতিষ্ঠানে ফিরতে পারে এবং তাদের শিক্ষা কার্যক্রম স্বাভাবিকভাবে পুনরায় শুরু করতে পারে, সে জন্য সরকার প্রস্তুতি নিচ্ছে। আমরা আশা করি, ভবিষ্যতে ভালো দিন আসবে।\r\n\r\nআমাদের শিশুরা স্কুলে যেতে পারবে। তারা স্বাভাবিকভাবে তাদের পড়াশোনা শুরু করবে। আমরা সে লক্ষ্যে প্রস্তুতি নিচ্ছি।’\r\n\r\n আজ রোববার গণভবন থেকে মিরপুর সেনানিবাসের জাতীয় প্রতিরক্ষা কলেজে শেখ হাসিনা কমপ্লেক্স ডিএসসিএসসিতে জাতীয় প্রতিরক্ষা কোর্স এবং সশস্ত্র বাহিনী যুদ্ধ কোর্সের স্নাতক অনুষ্ঠানে ভার্চ্যুয়ালি বক্তব্য প্রদানকালে এসব কথা বলেন প্রধানমন্ত্রী।\r\n\r\nতিনি আরও বলেন, সরকার কোভিড-১৯–এর জন্য স্কুল খুলতে পারছে না। অনলাইন ও টেলিভিশনের মাধ্যমে ক্লাস নেওয়ার ব্যবস্থা করা হয়েছে।\r\n\r\nপ্রধানমন্ত্রী বলেন, সর্বোপরি শিশুরা যদি তাদের স্কুলে যেতে না পারে, তবে এটি তাদের ওপর মানসিক চাপ তৈরি করে। এ প্রসঙ্গে তিনি উল্লেখ করেন, সরকার যখন শিক্ষাপ্রতিষ্ঠান খোলার প্রস্তুতি নিচ্ছিল, তখনই করোনার দ্বিতীয় ঢেউ শুরু হয়েছে। তিনি আবারও করোনাভাইরাস থেকে রক্ষা পেতে স্বাস্থ্যসংক্রান্ত নির্দেশনা অনুসরণ করার জন্য সবার প্রতি আহ্বান জানান।\r\n\r\nবিজ্ঞাপন\r\n\r\nঅনুষ্ঠানে জাতীয় প্রতিরক্ষা কলেজের কমান্ড্যান্ট লে. জেনারেল আতাউল হাকিম সরোয়ার হাসান বক্তব্য দেন।\r\n\r\nবিশ্বব্যাপী মহামারি করোনার কারণে দেশের সব শিক্ষাপ্রতিষ্ঠানের চলমান ছুটি ১৯ ডিসেম্বর পর্যন্ত বৃদ্ধি করা হয়েছে। গত ৮ মার্চ দেশে প্রথম করোনাভাইরাস শনাক্ত হওয়ার পর ১৭ মার্চ স্কুল–কলেজসহ সব ধরনের শিক্ষাপ্রতিষ্ঠান ও কোচিং সেন্টার বন্ধ ঘোষণা করা হয়। তবে অনলাইনে ক্লাস চলছে। তা ছাড়া চলতি বছরের এইচএসসি ও সমমান, প্রাথমিক সমাপনী ও সমমান এবং জেএসসি ও সমমান পরীক্ষা বাতিল করে সরকার। বর্তমানে অফিস-আদালতের কার্যক্রম ধীরে ধীরে চালু হয়ে গেলেও শিক্ষাপ্রতিষ্ঠানগুলো এখনো খুলে দেওয়া হয়নি।                                ', '38', '13 Dec, 2020', 40, '1607854863-prothomalo-bangla_2020-12_5f118bb2-52a8-4a93-990f-00797db46736_27_.jpg'),
(45, 'ফেব্রুয়ারি মাসেই একুশে বইমেলা হচ্ছে', '                                        এবারের অমর একুশে গ্রন্থমেলা ফেব্রুয়ারি মাসেই অনুষ্ঠিত হবে। তবে আগের মতো ফেব্রুয়ারি মাসের প্রথম দিন এই মেলা উদ্বোধন হবে না। ২১ ফেব্রুয়ারির আগে সুবিধাজনক একটি দিনে মেলা শুরু হবে।\r\n আজ রোববার বাংলা একাডেমি এবং প্রকাশকদের দুটি সমিতির প্রতিনিধিদের সঙ্গে কথা বলে বইমেলার বিষয়টি জানা গেছে।\r\n প্রকাশকেরা আজ বাংলা একাডেমির মহাপরিচালক হাবীবুল্লাহ সিরাজীর সঙ্গে দেখা করেন। পরে প্রকাশক ও বাংলা একাডেমির প্রতিনিধিদের বিশেষ সভা অনুষ্ঠিত হয়। সেখানে ঠিক হয়, একুশে ফেব্রুয়ারিকে কেন্দ্র করে ২০২১ সালে স্বাভাবিক বইমেলার আয়োজন করা হবে। বিষয়টি প্রথম আলোকে নিশ্চিত করেছেন জ্ঞান ও সৃজনশীল প্রকাশক সমিতির সভাপতি ফরিদ আহমেদ।\r\nএর আগে গত শুক্রবার করোনা পরিস্থিতির আরও অবনতি হলে আগামী বছর ১ ফেব্রুয়ারি ভার্চ্যুয়াল অমর একুশে গ্রন্থমেলার আয়োজন হতে পারে বলে জানিয়েছিলেন বাংলা একাডেমির মহাপরিচালক হাবীবুল্লাহ সিরাজী। এ সময় তিনি আরও জানান, পাঠকদের মধ্যে বইমেলা নিয়ে যেন কোনো সংশয় তৈরি না হয়, সে কারণে বিকল্প হিসেবে ভার্চ্যুয়াল আয়োজনের কথা তাঁরা ভেবেছিলেন।                                 ', '36', '13 Dec, 2020', 39, '1607855326-f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `websitename`, `logo`, `footerdesc`) VALUES
(1, 'Four Arms Tech News', 'Screenshot_2.png', '© Copyright 2020 News | Powered by <a href=\"https://fourarmstech.rf.gd/\">Four Arms Tech</a>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(30, 'Saiman', 'Khan', 'saiman6657', '03346657feea0490a4d4f677faa0583d', 0),
(31, 'Arif', 'Khan', 'arif', '71b9b5bc1094ee6eaeae8253e787d654', 0),
(32, 'Kamrul', 'Islam', 'kamrul99880', '7ebc2c8aa51f075ccc653a0f8e86fbb4', 0),
(33, 'Amir', 'Hossain', 'amir', '63eefbd45d89e8c91f24b609f7539942', 0),
(34, 'Sumaiya', 'Alam', 'sumaiya123', 'f3224d90c778d5e456b49c75f85dd668', 0),
(35, 'Kawser', 'sheikh', 'kawser', 'f19e1368ef58fde93d78ba396f9046e3', 0),
(36, 'Kajol', 'Hossain', 'kajol', '7faafcbcc6456af72597bc2f3a9306b4', 0),
(39, 'Md Nazmul Islam', 'Limon', 'devnazmul', '28e209b61a52482a0ae1cb9f5959c792', 1),
(40, 'Beauty', 'Khan', 'byoutkahn', 'c98703aed69284552ffffea25a1706d9', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
