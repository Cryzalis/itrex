-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2016 at 11:21 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `t4-take`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_11_27_120737_create_posts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `image`, `published_at`, `published`, `created_at`, `updated_at`) VALUES
(28, '222', '5555', 'XPxE9E5wcvxOoFw77Eic.jpg', '2016-11-27 15:52:25', 1, '2016-11-27 13:15:05', '2016-11-27 13:15:05'),
(30, 'Cat 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at pharetra justo. Maecenas nisl mauris, ornare at rhoncus non, sagittis at tellus. Quisque tincidunt augue nec quam consectetur accumsan. Integer in libero rhoncus, fringilla neque at, fringilla velit. Donec porta ex a purus venenatis, quis volutpat dolor pellentesque. Vivamus in lectus augue. Vestibulum pretium, velit vitae fringilla eleifend, neque est rutrum nisl, nec fermentum lorem ligula sit amet lacus. Nunc libero mauris, interdum id mauris nec, ultricies consectetur elit. Aliquam ultrices nibh leo, non imperdiet lectus varius in.', 'szCWeugLfx5bMjmUtoCJ.jpg', '2016-11-27 15:52:25', 1, '2016-11-27 15:52:25', '2016-11-27 15:52:25'),
(31, 'Cat 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at pharetra justo. Maecenas nisl mauris, ornare at rhoncus non, sagittis at tellus. Quisque tincidunt augue nec quam consectetur accumsan. Integer in libero rhoncus, fringilla neque at, fringilla velit. Donec porta ex a purus venenatis, quis volutpat dolor pellentesque. Vivamus in lectus augue. Vestibulum pretium, velit vitae fringilla eleifend, neque est rutrum nisl, nec fermentum lorem ligula sit amet lacus. Nunc libero mauris, interdum id mauris nec, ultricies consectetur elit. Aliquam ultrices nibh leo, non imperdiet lectus varius in.', 'jLe6dvSoeDTE1dcohDnL.jpg', '2016-11-27 15:52:25', 1, '2016-11-27 15:55:23', '2016-11-27 15:55:23'),
(32, 'Cat 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at pharetra justo. Maecenas nisl mauris, ornare at rhoncus non, sagittis at tellus. Quisque tincidunt augue nec quam consectetur accumsan. Integer in libero rhoncus, fringilla neque at, fringilla velit. Donec porta ex a purus venenatis, quis volutpat dolor pellentesque. Vivamus in lectus augue. Vestibulum pretium, velit vitae fringilla eleifend, neque est rutrum nisl, nec fermentum lorem ligula sit amet lacus. Nunc libero mauris, interdum id mauris nec, ultricies consectetur elit. Aliquam ultrices nibh leo, non imperdiet lectus varius in.', 'Pj7uP3v9YROdSI4fYMmL.jpg', '2016-11-27 15:52:25', 1, '2016-11-27 15:55:48', '2016-11-27 15:55:48'),
(33, 'Cat 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at pharetra justo. Maecenas nisl mauris, ornare at rhoncus non, sagittis at tellus. Quisque tincidunt augue nec quam consectetur accumsan. Integer in libero rhoncus, fringilla neque at, fringilla velit. Donec porta ex a purus venenatis, quis volutpat dolor pellentesque. Vivamus in lectus augue. Vestibulum pretium, velit vitae fringilla eleifend, neque est rutrum nisl, nec fermentum lorem ligula sit amet lacus. Nunc libero mauris, interdum id mauris nec, ultricies consectetur elit. Aliquam ultrices nibh leo, non imperdiet lectus varius in.', 'm5Pz0XxW5UvilCNlse1g.jpg', '2016-11-27 15:52:25', 1, '2016-11-27 15:56:05', '2016-11-27 15:56:05'),
(34, 'Wolf', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at pharetra justo. Maecenas nisl mauris, ornare at rhoncus non, sagittis at tellus. Quisque tincidunt augue nec quam consectetur accumsan. Integer in libero rhoncus, fringilla neque at, fringilla velit. Donec porta ex a purus venenatis, quis volutpat dolor pellentesque. Vivamus in lectus augue. Vestibulum pretium, velit vitae fringilla eleifend, neque est rutrum nisl, nec fermentum lorem ligula sit amet lacus. Nunc libero mauris, interdum id mauris nec, ultricies consectetur elit. Aliquam ultrices nibh leo, non imperdiet lectus varius in.', 'mSMlZsMJCTQMyKNWbtmM.jpg', '2016-11-27 15:52:25', 1, '2016-11-27 15:56:43', '2016-11-27 15:56:43'),
(35, 'Wolf 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at pharetra justo. Maecenas nisl mauris, ornare at rhoncus non, sagittis at tellus. Quisque tincidunt augue nec quam consectetur accumsan. Integer in libero rhoncus, fringilla neque at, fringilla velit. Donec porta ex a purus venenatis, quis volutpat dolor pellentesque. Vivamus in lectus augue. Vestibulum pretium, velit vitae fringilla eleifend, neque est rutrum nisl, nec fermentum lorem ligula sit amet lacus. Nunc libero mauris, interdum id mauris nec, ultricies consectetur elit. Aliquam ultrices nibh leo, non imperdiet lectus varius in.', 'EiWBGuOSm8f9pl9qYgUi.jpg', '2016-11-27 15:52:25', 1, '2016-11-27 15:56:54', '2016-11-27 15:56:54'),
(36, 'City ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at pharetra justo. Maecenas nisl mauris, ornare at rhoncus non, sagittis at tellus. Quisque tincidunt augue nec quam consectetur accumsan. Integer in libero rhoncus, fringilla neque at, fringilla velit. Donec porta ex a purus venenatis, quis volutpat dolor pellentesque. Vivamus in lectus augue. Vestibulum pretium, velit vitae fringilla eleifend, neque est rutrum nisl, nec fermentum lorem ligula sit amet lacus. Nunc libero mauris, interdum id mauris nec, ultricies consectetur elit. Aliquam ultrices nibh leo, non imperdiet lectus varius in.', 'xmPBMwNqB4Px6bS1UI7C.jpg', '2016-11-27 15:52:25', 1, '2016-11-27 15:57:12', '2016-11-27 15:57:12'),
(37, 'City 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at pharetra justo. Maecenas nisl mauris, ornare at rhoncus non, sagittis at tellus. Quisque tincidunt augue nec quam consectetur accumsan. Integer in libero rhoncus, fringilla neque at, fringilla velit. Donec porta ex a purus venenatis, quis volutpat dolor pellentesque. Vivamus in lectus augue. Vestibulum pretium, velit vitae fringilla eleifend, neque est rutrum nisl, nec fermentum lorem ligula sit amet lacus. Nunc libero mauris, interdum id mauris nec, ultricies consectetur elit. Aliquam ultrices nibh leo, non imperdiet lectus varius in.', 'mJ63YmF7K8AOJ5qJHWT8.jpg', '2016-11-27 15:52:25', 1, '2016-11-27 15:57:24', '2016-11-27 15:57:24'),
(38, 'City 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at pharetra justo. Maecenas nisl mauris, ornare at rhoncus non, sagittis at tellus. Quisque tincidunt augue nec quam consectetur accumsan. Integer in libero rhoncus, fringilla neque at, fringilla velit. Donec porta ex a purus venenatis, quis volutpat dolor pellentesque. Vivamus in lectus augue. Vestibulum pretium, velit vitae fringilla eleifend, neque est rutrum nisl, nec fermentum lorem ligula sit amet lacus. Nunc libero mauris, interdum id mauris nec, ultricies consectetur elit. Aliquam ultrices nibh leo, non imperdiet lectus varius in.', 'IaGxZ9UaFo7apIaYOjre.jpg', '2016-11-27 15:52:25', 1, '2016-11-27 15:57:37', '2016-11-27 15:57:37'),
(39, 'Water', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at pharetra justo. Maecenas nisl mauris, ornare at rhoncus non, sagittis at tellus. Quisque tincidunt augue nec quam consectetur accumsan. Integer in libero rhoncus, fringilla neque at, fringilla velit. Donec porta ex a purus venenatis, quis volutpat dolor pellentesque. Vivamus in lectus augue. Vestibulum pretium, velit vitae fringilla eleifend, neque est rutrum nisl, nec fermentum lorem ligula sit amet lacus. Nunc libero mauris, interdum id mauris nec, ultricies consectetur elit. Aliquam ultrices nibh leo, non imperdiet lectus varius in.', 'nrKwkNojTSaSf9VxsjT5.jpg', '2016-11-27 15:52:25', 1, '2016-11-27 15:57:51', '2016-11-27 15:57:51'),
(40, 'Water 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at pharetra justo. Maecenas nisl mauris, ornare at rhoncus non, sagittis at tellus. Quisque tincidunt augue nec quam consectetur accumsan. Integer in libero rhoncus, fringilla neque at, fringilla velit. Donec porta ex a purus venenatis, quis volutpat dolor pellentesque. Vivamus in lectus augue. Vestibulum pretium, velit vitae fringilla eleifend, neque est rutrum nisl, nec fermentum lorem ligula sit amet lacus. Nunc libero mauris, interdum id mauris nec, ultricies consectetur elit. Aliquam ultrices nibh leo, non imperdiet lectus varius in.', 'goREtKoM7uALPvAxarDM.jpg', '2016-11-27 15:52:25', 1, '2016-11-27 15:58:11', '2016-11-27 15:58:11'),
(41, 'Moon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at pharetra justo. Maecenas nisl mauris, ornare at rhoncus non, sagittis at tellus. Quisque tincidunt augue nec quam consectetur accumsan.', 'buFtmxgxony9zAlRtYKw.jpg', '2016-11-28 13:18:08', 1, '2016-11-27 15:58:28', '2016-11-28 13:18:08'),
(42, 'Test 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at pharetra justo. Maecenas nisl mauris, ornare at rhoncus non, sagittis at tellus. Quisque tincidunt augue nec quam consectetur accumsan.', 'n89AnliTisvbAiEgMELy.jpg', '2016-11-28 13:17:59', 1, '2016-11-27 20:14:41', '2016-11-28 13:17:59'),
(47, 'Title', 'Description 1', 'hyUwRlLvb0g1L28IiCLZ.jpg', NULL, 0, '2016-11-28 13:59:27', '2016-11-28 13:59:27'),
(48, 'Title', 'Decription 1', 'kZg10bpCgkVdUtf364oe.jpg', '2016-11-28 14:10:01', 1, '2016-11-28 14:06:11', '2016-11-28 14:10:01'),
(50, 'Title2', 'Decription4', '5BpTV8OGnzpRHeVmBOQY.jpg', NULL, 0, '2016-11-28 14:16:38', '2016-11-28 14:16:38'),
(51, 'Test 10:(', 'Decription 5', 'xqLE22vUtWZeDKc0rDMQ.jpg', NULL, 0, '2016-11-28 14:17:56', '2016-11-28 14:17:56'),
(52, 'Title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at pharetra justo. Maecenas nisl mauris, ornare at rhoncus non, sagittis at tellus.', '3MpLdofu2GQEvmr23tkT.jpg', '2016-11-28 17:51:29', 1, '2016-11-28 14:22:00', '2016-11-28 17:51:29'),
(53, 'Worked?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at pharetra justo. Maecenas nisl mauris, ornare at rhoncus non, sagittis at tellus. Quisque tincidunt augue nec quam consectetur accumsan. Integer in libero rhoncus, fringilla neque at, fringilla velit.', 'kZ5bLXt89o5464UKcmO3.jpg', '2016-11-28 17:51:17', 1, '2016-11-28 14:23:19', '2016-11-28 17:51:17'),
(54, 'Wolf', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at pharetra justo. Maecenas nisl mauris, ornare at rhoncus non, sagittis at tellus. Quisque tincidunt augue nec quam consectetur accumsan. Integer in libero rhoncus, fringilla neque at, fringilla velit. Donec porta ex a purus venenatis, quis volutpat dolor pellentesque. Vivamus in lectus augue. Vestibulum pretium, velit vitae fringilla eleifend, neque est rutrum nisl, nec fermentum lorem ligula sit amet lacus. Nunc libero mauris, interdum id mauris nec, ultricies consectetur elit. Aliquam ultrices nibh leo, non imperdiet lectus varius in.', 'x8tfQHViyo830t9LTbye.jpg', '2016-11-28 19:07:48', 1, '2016-11-28 19:07:34', '2016-11-28 19:07:48'),
(55, '29.11', 'lorem ispum dolor', 'uHILaTubNV4OunBtZjQI.jpg', '2016-11-29 05:59:35', 1, '2016-11-29 05:59:26', '2016-11-29 05:59:35'),
(56, 'asdf', 'asdf dsa fdsa fas df', 'uyyIvLAZUtsCUt9TJfvq.jpg', NULL, 0, '2016-11-29 08:19:05', '2016-11-29 08:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$YvVuqnBhksaRelJ6dloCueBRRuh0wAh88GC/vLZfFmbdj0kmHqlKG', NULL, '2016-11-29 07:35:47', '2016-11-29 07:35:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
