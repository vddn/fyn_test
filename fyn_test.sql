-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2021 at 11:02 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyn_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT 0,
  `updated_by` bigint(20) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1. active, 2. inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `name`, `email`, `mobile_number`, `password`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'superadmin', 'superadmin@mcq.in', NULL, '$2y$10$shm6FVZjz54b9pN1gkbSeOx1TXFxYi5BPYig8SH1rFAZP/bztsM46', '2021-07-20 05:30:36', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_19_171509_create_admin_user', 1),
(5, '2021_07_19_171932_create_users_scores', 2),
(6, '2021_07_20_032947_add_mobile_number_in_users', 3),
(7, '2021_07_20_044058_add_ans_in_user_scores', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1. active, 2. inactive',
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`, `mobile_number`) VALUES
(1, 'vikas natekar', 'vikasnasdasdtekar777@gmail.com', NULL, '$2y$10$VJ68GQjVZG0wrzpRo5svS.Re5sdF02RnU9/oCpEnSOERkv0U4ZDAG', NULL, '2021-07-19 23:16:50', '2021-07-19 23:16:51', 1, '09637771073'),
(2, 'asd natekar', 'vikasnatekasr777@gmail.com', NULL, '$2y$10$3Vbpx1f62N1YkVcp.SLGSuM0MHmBFopPw80bcAFKtS.F4R337RG7C', NULL, '2021-07-20 03:10:04', '2021-07-20 03:10:04', 1, '9637771073'),
(3, 'vikas natekar1', 'vikasnatedddddkar777@gmail.com', NULL, '$2y$10$rj9AWJY232QmzWmok8OOwOlvn2A0qoVAVHOqK7YWATw1/yxEeaqXG', NULL, '2021-07-20 03:10:28', '2021-07-20 03:10:28', 1, '09637771073'),
(4, 'test', 'loren@DSD.CON', NULL, '$2y$10$lgVxGBwYuk.uNvwktLWtp.b1aVDeUvyOZV3Eb/CWUboF02Wlhh5jO', NULL, '2021-07-20 03:11:01', '2021-07-20 03:11:01', 1, '09876543210');

-- --------------------------------------------------------

--
-- Table structure for table `users_scores`
--

CREATE TABLE `users_scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1. active, 2. inactive',
  `all_questions_and_ans` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `all_user_ans` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_scores`
--

INSERT INTO `users_scores` (`id`, `users_id`, `score`, `created_at`, `updated_at`, `status`, `all_questions_and_ans`, `all_user_ans`) VALUES
(1, 1, 1, '2021-07-19 23:17:14', '2021-07-19 23:17:14', 1, '[{\"category\":\"General Knowledge\",\"type\":\"multiple\",\"difficulty\":\"easy\",\"question\":\"What is the first book of the Old Testament?\",\"correct_answer\":\"Genesis\",\"incorrect_answers\":[\"Exodus\",\"Leviticus\",\"Numbers\"]},{\"category\":\"Science: Computers\",\"type\":\"boolean\",\"difficulty\":\"medium\",\"question\":\"FLAC stands for &quot;Free Lossless Audio Condenser&quot;&#039;\",\"correct_answer\":\"False\",\"incorrect_answers\":[\"True\"]},{\"category\":\"Geography\",\"type\":\"multiple\",\"difficulty\":\"medium\",\"question\":\"Where is the world&#039;s oldest still operational space launch facility located?\",\"correct_answer\":\"Kazakhstan\",\"incorrect_answers\":[\"Russia\",\"Iran\",\"United States\"]},{\"category\":\"Entertainment: Books\",\"type\":\"multiple\",\"difficulty\":\"medium\",\"question\":\"J.K. Rowling completed &quot;Harry Potter and the Deathly Hallows&quot; in which hotel in Edinburgh, Scotland?\",\"correct_answer\":\"The Balmoral\",\"incorrect_answers\":[\"The Dunstane Hotel\",\"Hotel Novotel\",\"Sheraton Grand Hotel &amp; Spa\"]},{\"category\":\"Entertainment: Japanese Anime & Manga\",\"type\":\"multiple\",\"difficulty\":\"easy\",\"question\":\"The characters of &quot;Log Horizon&quot; are trapped in what game?\",\"correct_answer\":\"Elder Tale\",\"incorrect_answers\":[\"Sword Art Online\",\"Tower Unite\",\"Yggdrasil\"]},{\"category\":\"Science & Nature\",\"type\":\"boolean\",\"difficulty\":\"hard\",\"question\":\"The value of one Calorie is different than the value of one calorie.\",\"correct_answer\":\"True\",\"incorrect_answers\":[\"False\"]},{\"category\":\"Politics\",\"type\":\"multiple\",\"difficulty\":\"medium\",\"question\":\"Who succeeded Joseph Stalin as General Secretary of the Communist Party of the Soviet Union?\",\"correct_answer\":\"Nikita Khrushchev\",\"incorrect_answers\":[\"Leonid Brezhnev\",\"Mikhail Gorbachev\",\"Boris Yeltsin\"]},{\"category\":\"Geography\",\"type\":\"multiple\",\"difficulty\":\"medium\",\"question\":\"How many states are in Australia?\",\"correct_answer\":\"6\",\"incorrect_answers\":[\"7\",\"8\",\"5\"]},{\"category\":\"Science & Nature\",\"type\":\"multiple\",\"difficulty\":\"medium\",\"question\":\"Where did the Great Storm of 1987 make landfall at, first?\",\"correct_answer\":\"Cornwall\",\"incorrect_answers\":[\"Surrey\",\"Wales\",\"The Midlands\"]},{\"category\":\"Entertainment: Japanese Anime & Manga\",\"type\":\"multiple\",\"difficulty\":\"easy\",\"question\":\"Which part from the JoJo&#039;s Bizarre Adventure manga is about a horse race across America?\",\"correct_answer\":\"Part 7: Steel Ball Run\",\"incorrect_answers\":[\"Part 6: Stone Ocean\",\"Part 3: Stardust Crusaders\",\"Part 5: Golden Wind\"]}]', '{\"_token\":\"N4lkvrB0Q3jxG2M4Quoo2lmLh3oHCYWg1H6SyWLK\",\"question_0\":\"Exodus\",\"question_1\":\"True\",\"question_2\":\"Iran\",\"question_3\":\"Hotel Novotel\",\"question_4\":\"Tower Unite\",\"question_5\":\"False\",\"question_6\":\"Mikhail Gorbachev\",\"question_7\":\"8\",\"question_8\":\"Surrey\",\"question_9\":\"Part 7: Steel Ball Run\",\"user_id\":\"1\"}'),
(2, 2, 3, '2021-07-20 03:10:19', '2021-07-20 03:10:19', 1, '[{\"category\":\"Entertainment: Video Games\",\"type\":\"multiple\",\"difficulty\":\"medium\",\"question\":\"What was the game &quot;Galaga&quot; was a sequel to?\",\"correct_answer\":\"Galaxian\",\"incorrect_answers\":[\"Galactica\",\"Space Invaders\",\"Galactic Wars\"]},{\"category\":\"Science: Computers\",\"type\":\"multiple\",\"difficulty\":\"medium\",\"question\":\"On which computer hardware device is the BIOS chip located?\",\"correct_answer\":\"Motherboard\",\"incorrect_answers\":[\"Hard Disk Drive\",\"Central Processing Unit\",\"Graphics Processing Unit\"]},{\"category\":\"Vehicles\",\"type\":\"boolean\",\"difficulty\":\"medium\",\"question\":\"The Chevrolet Corvette has always been made exclusively with V8 engines only.\",\"correct_answer\":\"False\",\"incorrect_answers\":[\"True\"]},{\"category\":\"Entertainment: Film\",\"type\":\"multiple\",\"difficulty\":\"hard\",\"question\":\"What is the name of the assassin in the first &quot;Hellboy&quot; movie?\",\"correct_answer\":\"Karl Ruprecht Kroenen\",\"incorrect_answers\":[\"Klaus Werner von Krupt\",\"Grigori Efimovich Rasputin\",\"Ilsa Haupstein\"]},{\"category\":\"Entertainment: Japanese Anime & Manga\",\"type\":\"multiple\",\"difficulty\":\"hard\",\"question\":\"In the anime, Full Metal Panic!, who is Kaname&#039;s best friend?\",\"correct_answer\":\"Kyoko Tokiwa\",\"incorrect_answers\":[\"Melissa Mao\",\"Ren Mikihara\",\"Teletha &quot;Tessa&quot; Testarossa\"]},{\"category\":\"Vehicles\",\"type\":\"multiple\",\"difficulty\":\"easy\",\"question\":\"Which of the following collision avoidance systems helps airplanes avoid colliding with each other?\",\"correct_answer\":\"TCAS\",\"incorrect_answers\":[\"GPWS\",\"OCAS\",\"TAWS\"]},{\"category\":\"Science & Nature\",\"type\":\"multiple\",\"difficulty\":\"hard\",\"question\":\"Which of the following is NOT a real element?\",\"correct_answer\":\"Vitrainium\",\"incorrect_answers\":[\"Praseodymium\",\"Hassium\",\"Lutetium\"]},{\"category\":\"Entertainment: Film\",\"type\":\"multiple\",\"difficulty\":\"easy\",\"question\":\"What is the oldest Disney film?\",\"correct_answer\":\"Snow White and the Seven Dwarfs\",\"incorrect_answers\":[\"Pinocchio\",\"Dumbo\",\"Fantasia\"]},{\"category\":\"Geography\",\"type\":\"multiple\",\"difficulty\":\"medium\",\"question\":\"What continent is the country Lesotho in?\",\"correct_answer\":\"Africa\",\"incorrect_answers\":[\"Asia\",\"South America\",\"Europe\"]},{\"category\":\"Entertainment: Video Games\",\"type\":\"multiple\",\"difficulty\":\"medium\",\"question\":\"Which of the following Call of Duty games was a PS3 launch title?\",\"correct_answer\":\"Call of Duty 3\",\"incorrect_answers\":[\"Call of Duty 4: Modern Warfare\",\"Call of Duty: World at War\",\"Call of Duty: Roads to Victory\"]}]', '{\"_token\":\"oH94PmLErB63OXDko1p0W8WRUzLHJT26VQBD8SeU\",\"question_0\":\"Space Invaders\",\"question_1\":\"Hard Disk Drive\",\"question_2\":\"False\",\"question_3\":\"Ilsa Haupstein\",\"question_4\":\"Kyoko Tokiwa\",\"question_5\":\"OCAS\",\"question_6\":\"Lutetium\",\"question_7\":\"Fantasia\",\"question_8\":\"Africa\",\"question_9\":\"Call of Duty: World at War\",\"user_id\":\"2\"}'),
(3, 3, 4, '2021-07-20 03:10:51', '2021-07-20 03:10:51', 1, '[{\"category\":\"Entertainment: Books\",\"type\":\"multiple\",\"difficulty\":\"medium\",\"question\":\"In the &quot;The Hobbit&quot;, who kills Smaug?\",\"correct_answer\":\"Bard\",\"incorrect_answers\":[\"Bilbo Baggins\",\"Gandalf the Grey\",\"Frodo\"]},{\"category\":\"Sports\",\"type\":\"multiple\",\"difficulty\":\"easy\",\"question\":\"Who won the 2015 Formula 1 World Championship?\",\"correct_answer\":\"Lewis Hamilton\",\"incorrect_answers\":[\"Nico Rosberg\",\"Sebastian Vettel\",\"Jenson Button\"]},{\"category\":\"Entertainment: Japanese Anime & Manga\",\"type\":\"multiple\",\"difficulty\":\"medium\",\"question\":\"In the anime, &quot;Super Sonico&quot;, what is Super Sonico&#039;s favorite food?\",\"correct_answer\":\"Macroons\",\"incorrect_answers\":[\"Ice Cream\",\"Pizza\",\"Chips\"]},{\"category\":\"General Knowledge\",\"type\":\"boolean\",\"difficulty\":\"easy\",\"question\":\"&quot;Ananas&quot; is mostly used as the word for Pineapple in other languages.\",\"correct_answer\":\"True\",\"incorrect_answers\":[\"False\"]},{\"category\":\"Science: Computers\",\"type\":\"multiple\",\"difficulty\":\"easy\",\"question\":\"Which computer language would you associate Django framework with?\",\"correct_answer\":\"Python\",\"incorrect_answers\":[\"C#\",\"C++\",\"Java\"]},{\"category\":\"Entertainment: Video Games\",\"type\":\"boolean\",\"difficulty\":\"medium\",\"question\":\"In Portal, the Companion Cube&#039;s ARE sentient.\",\"correct_answer\":\"True\",\"incorrect_answers\":[\"False\"]},{\"category\":\"General Knowledge\",\"type\":\"multiple\",\"difficulty\":\"hard\",\"question\":\"According to Fair Works Australia, how long do you have to work to get Long Service Leave?\",\"correct_answer\":\"7 years\",\"incorrect_answers\":[\"2 years\",\"8 years\",\"6 months\"]},{\"category\":\"Geography\",\"type\":\"multiple\",\"difficulty\":\"hard\",\"question\":\"Which of these is NOT a real tectonic plate?\",\"correct_answer\":\"Atlantic Plate\",\"incorrect_answers\":[\"North American Plate\",\"Eurasian Plate\",\"Nazca Plate\"]},{\"category\":\"History\",\"type\":\"multiple\",\"difficulty\":\"easy\",\"question\":\"The Ottoman Empire was dissolved after their loss in which war?\",\"correct_answer\":\"World War I\",\"incorrect_answers\":[\"Crimean War\",\"Serbian Revolution\",\"Second Balkan War\"]},{\"category\":\"History\",\"type\":\"multiple\",\"difficulty\":\"hard\",\"question\":\"Which country did the Eureka Rebellion, an 1856 battle against colonial rule, take place in?\",\"correct_answer\":\"Australia\",\"incorrect_answers\":[\"India\",\"Canada\",\"Brazil\"]}]', '{\"_token\":\"oH94PmLErB63OXDko1p0W8WRUzLHJT26VQBD8SeU\",\"question_0\":\"Gandalf the Grey\",\"question_1\":\"Lewis Hamilton\",\"question_2\":\"Ice Cream\",\"question_3\":\"False\",\"question_4\":\"Python\",\"question_5\":\"True\",\"question_6\":\"6 months\",\"question_7\":\"Atlantic Plate\",\"question_8\":\"Second Balkan War\",\"question_9\":\"India\",\"user_id\":\"3\"}'),
(4, 4, 1, '2021-07-20 03:11:14', '2021-07-20 03:11:14', 1, '[{\"category\":\"Entertainment: Film\",\"type\":\"multiple\",\"difficulty\":\"medium\",\"question\":\"Who voiced the character Draco in the 1996 movie &#039;DragonHeart&#039;?\",\"correct_answer\":\"Sean Connery\",\"incorrect_answers\":[\"Dennis Quaid\",\"Pete Postlethwaite\",\"Brian Thompson\"]},{\"category\":\"General Knowledge\",\"type\":\"multiple\",\"difficulty\":\"easy\",\"question\":\"Which best selling toy of 1983 caused hysteria, resulting in riots breaking out in stores?\",\"correct_answer\":\"Cabbage Patch Kids\",\"incorrect_answers\":[\"Transformers\",\"Care Bears\",\"Rubik&rsquo;s Cube\"]},{\"category\":\"Entertainment: Japanese Anime & Manga\",\"type\":\"multiple\",\"difficulty\":\"easy\",\"question\":\"In &quot;Inuyasha&quot;, what are the heros are looking to collect?\",\"correct_answer\":\"Jewel Shards\",\"incorrect_answers\":[\"Dragon Balls\",\"Rave Stones\",\"Sacred Stones\"]},{\"category\":\"Animals\",\"type\":\"multiple\",\"difficulty\":\"hard\",\"question\":\"What scientific family does the Aardwolf belong to?\",\"correct_answer\":\"Hyaenidae\",\"incorrect_answers\":[\"Canidae\",\"Felidae\",\"Eupleridae\"]},{\"category\":\"Entertainment: Television\",\"type\":\"multiple\",\"difficulty\":\"easy\",\"question\":\"When did the TV show Rick and Morty first air on Adult Swim?\",\"correct_answer\":\"2013\",\"incorrect_answers\":[\"2014\",\"2016\",\"2015\"]},{\"category\":\"Entertainment: Books\",\"type\":\"multiple\",\"difficulty\":\"medium\",\"question\":\"In the novel &quot;Lord of the Rings&quot;, how many rings of power were given to the race of man?\",\"correct_answer\":\"9\",\"incorrect_answers\":[\"5\",\"11\",\"13\"]},{\"category\":\"Celebrities\",\"type\":\"multiple\",\"difficulty\":\"hard\",\"question\":\"Who was Donald Trump&#039;s first wife?\",\"correct_answer\":\"Ivana Zeln&iacute;\\u010dkov&aacute;\",\"incorrect_answers\":[\"Melania Knauss\",\"Marla Maples\",\"Nancy Davis\"]},{\"category\":\"Science: Mathematics\",\"type\":\"multiple\",\"difficulty\":\"medium\",\"question\":\"How many books are in Euclid&#039;s Elements of Geometry?\",\"correct_answer\":\"13\",\"incorrect_answers\":[\"8\",\"10\",\"17\"]},{\"category\":\"Science: Computers\",\"type\":\"multiple\",\"difficulty\":\"hard\",\"question\":\"Which of the following computer components can be built using only NAND gates?\",\"correct_answer\":\"ALU\",\"incorrect_answers\":[\"CPU\",\"RAM\",\"Register\"]},{\"category\":\"Entertainment: Japanese Anime & Manga\",\"type\":\"multiple\",\"difficulty\":\"easy\",\"question\":\"In the anime &quot;My Hero Academia&quot;, which character is shown with the ability to manipulate gravity?\",\"correct_answer\":\"Uraraka\",\"incorrect_answers\":[\"Bakugo\",\"Deku\",\"Asui \"]}]', '{\"_token\":\"oH94PmLErB63OXDko1p0W8WRUzLHJT26VQBD8SeU\",\"question_0\":\"Dennis Quaid\",\"question_1\":\"Care Bears\",\"question_2\":\"Sacred Stones\",\"question_3\":\"Canidae\",\"question_4\":\"2016\",\"question_5\":\"5\",\"question_6\":\"Melania Knauss\",\"question_7\":\"8\",\"question_8\":\"ALU\",\"question_9\":\"Deku\",\"user_id\":\"4\"}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_user_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_scores`
--
ALTER TABLE `users_scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_scores_users_id_foreign` (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_scores`
--
ALTER TABLE `users_scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_scores`
--
ALTER TABLE `users_scores`
  ADD CONSTRAINT `users_scores_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
