-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2020 at 05:06 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cheffinder`
--

-- --------------------------------------------------------

--
-- Table structure for table `approval_chef_create`
--

CREATE TABLE `approval_chef_create` (
  `id` int(11) NOT NULL,
  `user_name` varchar(120) DEFAULT NULL,
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `location` varchar(120) DEFAULT NULL,
  `cv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approval_chef_create`
--

INSERT INTO `approval_chef_create` (`id`, `user_name`, `first_name`, `last_name`, `email`, `phone`, `address`, `location`, `cv`) VALUES
(1, 'shahedtalukder51', 'Rafsan', 'Nayeem', 'shahedtalukder51@gmail.com', '+880176218238', 'East Adalotpara', '24.2509029|89.9159694', 'cv/Course-Contents.docx'),
(2, 'pravin', 'Pravin', 'Kumar', 'pravin@gmail.com', '01762178238', 'East Adalotpara, Tangail', '24.2509029,89.9159694', 'cv/Course-Contents_WTF2v5R.docx');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add chef create', 7, 'add_chefcreate'),
(26, 'Can change chef create', 7, 'change_chefcreate'),
(27, 'Can delete chef create', 7, 'delete_chefcreate'),
(28, 'Can view chef create', 7, 'view_chefcreate'),
(29, 'Can add approval chef create', 8, 'add_approvalchefcreate'),
(30, 'Can change approval chef create', 8, 'change_approvalchefcreate'),
(31, 'Can delete approval chef create', 8, 'delete_approvalchefcreate'),
(32, 'Can view approval chef create', 8, 'view_approvalchefcreate');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$ZGWkyTgs9V3H$M5+1B4hk7eGLXBHRTLyXNgtBy2fqEm85GV9xsq7TmMw=', '2020-09-28 06:15:11.103461', 1, 'shahed', '', '', 'shahed51@gmail.com', 1, 1, '2020-09-27 17:42:55.508286'),
(2, 'pbkdf2_sha256$216000$5YAmUwMZNcU8$WSOYU2tziog6cnqUfdoJbOowUF4q0q48ZEd39LoefpQ=', '2020-09-28 06:16:27.577332', 0, 'shahedtalukder51', 'Shahed', 'Talukder', 'shahedtalukder51@gmail.com', 0, 1, '2020-09-28 03:10:05.401743'),
(4, 'pbkdf2_sha256$216000$ahLiVvNlBjmd$VsNfaKWEr3iCGLmMhDZhz2hyOmWDnd3I2EA4BG1siIM=', '2020-09-28 07:11:58.809674', 0, 'pravin', 'Pravin', 'Kumar', 'pravin@gmail.com', 0, 1, '2020-09-28 07:05:03.423523');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chef_create`
--

CREATE TABLE `chef_create` (
  `id` int(11) NOT NULL,
  `user_name` varchar(120) DEFAULT NULL,
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `location` varchar(120) DEFAULT NULL,
  `cv` varchar(100) NOT NULL,
  `address` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-09-28 03:48:12.497742', '1', 'Shahed|1', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 7, 1),
(2, '2020-09-28 06:04:53.377500', '1', 'Shahed|1', 3, '', 7, 1),
(3, '2020-09-28 07:04:18.465278', '3', 'pravin', 3, '', 4, 1),
(4, '2020-09-28 07:25:54.894017', '2', 'pravin|2', 2, '[{\"changed\": {\"fields\": [\"Cv\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'main', 'approvalchefcreate'),
(7, 'main', 'chefcreate'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-26 15:58:43.971013'),
(2, 'auth', '0001_initial', '2020-09-26 15:58:44.258037'),
(3, 'admin', '0001_initial', '2020-09-26 15:58:44.854091'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-26 15:58:44.996102'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-26 15:58:45.011106'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-26 15:58:45.093111'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-26 15:58:45.165115'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-09-26 15:58:45.186118'),
(9, 'auth', '0004_alter_user_username_opts', '2020-09-26 15:58:45.202121'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-09-26 15:58:45.283126'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-09-26 15:58:45.287126'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-26 15:58:45.296128'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-09-26 15:58:45.349131'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-26 15:58:45.374134'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-09-26 15:58:45.402138'),
(16, 'auth', '0011_update_proxy_permissions', '2020-09-26 15:58:45.413136'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-09-26 15:58:45.448140'),
(18, 'sessions', '0001_initial', '2020-09-26 15:58:45.508144'),
(19, 'main', '0001_initial', '2020-09-26 15:59:30.033799'),
(20, 'main', '0002_auto_20200926_2159', '2020-09-26 16:00:03.606659'),
(21, 'main', '0003_remove_chefcreate_c_id', '2020-09-26 16:00:22.995039'),
(22, 'main', '0004_auto_20200927_2142', '2020-09-27 15:42:23.255291'),
(23, 'main', '0005_chefcreate_address', '2020-09-28 03:46:02.432648'),
(24, 'main', '0006_approvalchefcreate', '2020-09-28 06:04:02.680745');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('kab8pdx8jsp8t46smwp0m0tvu2f74su2', '.eJxVjDsOwjAQBe_iGln-fyjpOYO16zU4gGwpTirE3UmkFNC-mXlvlmBdalpHmdNE7MwkO_1uCPlZ2g7oAe3eee5tmSfku8IPOvi1U3ldDvfvoMKoWx20IBLRkCsZAhbSUWaV0YBUpIKwBjHenFIGrbHBbg56JbUDH230hX2-6xo3og:1kMmRL:KNxaQjkAdHfelBdBz0hFy7ZXSXM2m2Oit-tEZrfBMoc', '2020-10-12 06:15:11.107045'),
('n55qylq11kallnwvasndzjcl71lzmxgj', '.eJxVjMsOwiAQRf-FtSGAPF267zeQmQGkaiAp7cr479qkC93ec859sQjbWuM28hLnxC5Ms9PvhkCP3HaQ7tBunVNv6zIj3xV-0MGnnvLzerh_BxVG_dZIQknQEKxFkM6ZIoMCElqAVJ68ssXblCWRcMoSnI0KBQtlgzbIQuz9Ad57OCM:1kMnDs:FZr2D91SdYlCnudfzdxv000_DXgL_fjgFaGplJEDlOQ', '2020-10-12 07:05:20.223199'),
('rx2tdyo25f1wuycqjh6nrc3ztupdv3g8', '.eJxVjMsOwiAQRf-FtSGAPF267zeQmQGkaiAp7cr479qkC93ec859sQjbWuM28hLnxC5Ms9PvhkCP3HaQ7tBunVNv6zIj3xV-0MGnnvLzerh_BxVG_dZIQknQEKxFkM6ZIoMCElqAVJ68ssXblCWRcMoSnI0KBQtlgzbIQuz9Ad57OCM:1kMnDb:jLdGPHLE9BBFAXiM6iCtJv0gG4QaWBmQOGHfov4lRlI', '2020-10-12 07:05:03.672544'),
('uocvhhf2bssdnjvdn95zr7vbuyjon7se', '.eJxVjMsOwiAQRf-FtSGAPF267zeQmQGkaiAp7cr479qkC93ec859sQjbWuM28hLnxC5Ms9PvhkCP3HaQ7tBunVNv6zIj3xV-0MGnnvLzerh_BxVG_dZIQknQEKxFkM6ZIoMCElqAVJ68ssXblCWRcMoSnI0KBQtlgzbIQuz9Ad57OCM:1kMnKI:x75E31tk-N3ceDgZwd5-dsAW52qeRH5IBNmTRh4xaOs', '2020-10-12 07:11:58.812674');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approval_chef_create`
--
ALTER TABLE `approval_chef_create`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `chef_create`
--
ALTER TABLE `chef_create`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approval_chef_create`
--
ALTER TABLE `approval_chef_create`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chef_create`
--
ALTER TABLE `chef_create`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
