create database db_project;
use db_project;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 29, 2023 at 08:03 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_api_access`
--

DROP TABLE IF EXISTS `app_api_access`;
CREATE TABLE IF NOT EXISTS `app_api_access` (
  `access_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `access_type_id` int DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_active` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`access_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_api_access_detail`
--

DROP TABLE IF EXISTS `app_api_access_detail`;
CREATE TABLE IF NOT EXISTS `app_api_access_detail` (
  `access_detail_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `access_id` int DEFAULT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ip_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_active` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`access_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_api_access_type`
--

DROP TABLE IF EXISTS `app_api_access_type`;
CREATE TABLE IF NOT EXISTS `app_api_access_type` (
  `access_type_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `access_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `valid_until` datetime DEFAULT NULL,
  `price` int DEFAULT NULL,
  `is_active` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`access_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_api_client`
--

DROP TABLE IF EXISTS `app_api_client`;
CREATE TABLE IF NOT EXISTS `app_api_client` (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `client_business_type` varchar(100) DEFAULT NULL,
  `access_type_id` int DEFAULT NULL,
  `is_active` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_api_status`
--

DROP TABLE IF EXISTS `app_api_status`;
CREATE TABLE IF NOT EXISTS `app_api_status` (
  `api_status_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `api_status_code` varchar(3) DEFAULT NULL,
  `api_status_description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`api_status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_feedback`
--

DROP TABLE IF EXISTS `app_feedback`;
CREATE TABLE IF NOT EXISTS `app_feedback` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `sent_name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(4000) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_menu`
--

DROP TABLE IF EXISTS `app_menu`;
CREATE TABLE IF NOT EXISTS `app_menu` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `link` varchar(150) DEFAULT NULL,
  `sort_no` int DEFAULT NULL,
  `parent_menu_id` int DEFAULT NULL,
  `is_crud` varchar(1) DEFAULT 'N',
  `is_new` varchar(1) DEFAULT 'Y',
  `menu_status` varchar(1) DEFAULT 'A',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_role`
--

DROP TABLE IF EXISTS `app_role`;
CREATE TABLE IF NOT EXISTS `app_role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `role_status` varchar(1) DEFAULT 'A',
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_role_menu`
--

DROP TABLE IF EXISTS `app_role_menu`;
CREATE TABLE IF NOT EXISTS `app_role_menu` (
  `role_menu_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  `is_select` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`role_menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
CREATE TABLE IF NOT EXISTS `app_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` varchar(45) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `user_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_user_activation`
--

DROP TABLE IF EXISTS `app_user_activation`;
CREATE TABLE IF NOT EXISTS `app_user_activation` (
  `activation_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `activation_sent_date` datetime DEFAULT NULL,
  `activation_sent_status` varchar(3) DEFAULT NULL,
  `activation_sent_desc` varchar(4000) DEFAULT NULL,
  `activation_rec_date` datetime DEFAULT NULL,
  `activation_rec_status` varchar(3) DEFAULT NULL,
  `activation_rec_desc` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`activation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_user_profile`
--

DROP TABLE IF EXISTS `app_user_profile`;
CREATE TABLE IF NOT EXISTS `app_user_profile` (
  `profile_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `photo` varchar(4000) DEFAULT NULL,
  `photo_blob` blob,
  `profile` varchar(4000) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_audit_trail`
--

DROP TABLE IF EXISTS `his_audit_trail`;
CREATE TABLE IF NOT EXISTS `his_audit_trail` (
  `audit_trail_number` int NOT NULL AUTO_INCREMENT,
  `user_update` varchar(20) DEFAULT NULL,
  `date_update` timestamp NULL DEFAULT NULL,
  `table_name` varchar(30) DEFAULT NULL,
  `old_value` longtext,
  `new_value` longtext,
  PRIMARY KEY (`audit_trail_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_budget`
--

DROP TABLE IF EXISTS `his_budget`;
CREATE TABLE IF NOT EXISTS `his_budget` (
  `his_budget_id` int NOT NULL AUTO_INCREMENT,
  `budget_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(100) DEFAULT NULL,
  `budget_description` varchar(4000) DEFAULT NULL,
  `budget_center_id` int DEFAULT NULL,
  `budget_account_id` int DEFAULT NULL,
  `budget_year` varchar(4) DEFAULT NULL,
  `budget_month` varchar(2) DEFAULT NULL,
  `budget_amount` int DEFAULT NULL,
  `budget_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`his_budget_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_bugfix`
--

DROP TABLE IF EXISTS `his_bugfix`;
CREATE TABLE IF NOT EXISTS `his_bugfix` (
  `his_bugfix_id` int NOT NULL AUTO_INCREMENT,
  `bugfix_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `bugfix_no` varchar(30) DEFAULT NULL,
  `bugfix_name` varchar(255) DEFAULT NULL,
  `bugfix_description` varchar(4000) DEFAULT NULL,
  `bugfix_progress` int DEFAULT NULL,
  `bugfix_status` varchar(10) DEFAULT NULL,
  `plan_date_start` datetime DEFAULT NULL,
  `plan_date_end` datetime DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` datetime DEFAULT NULL,
  `actual_date_end` datetime DEFAULT NULL,
  `actual_date_hours` int DEFAULT NULL,
  `priority_code` varchar(3) DEFAULT NULL,
  `is_pir` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`his_bugfix_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_bugfix_detail`
--

DROP TABLE IF EXISTS `his_bugfix_detail`;
CREATE TABLE IF NOT EXISTS `his_bugfix_detail` (
  `his_bugfix_detail_id` int NOT NULL AUTO_INCREMENT,
  `bugfix_detail_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `bugfix_id` int DEFAULT NULL,
  `application_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `pic_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `task_detail` varchar(4000) DEFAULT NULL,
  `task_progress` int DEFAULT NULL,
  `plan_date_start` datetime DEFAULT NULL,
  `plan_date_end` datetime DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` datetime DEFAULT NULL,
  `actual_date_end` datetime DEFAULT NULL,
  `actual_total_hours` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `cr_id` int DEFAULT NULL,
  PRIMARY KEY (`his_bugfix_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_cr`
--

DROP TABLE IF EXISTS `his_cr`;
CREATE TABLE IF NOT EXISTS `his_cr` (
  `his_cr_id` int NOT NULL AUTO_INCREMENT,
  `cr_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `cr_no` varchar(30) DEFAULT NULL,
  `cr_name` varchar(255) DEFAULT NULL,
  `cr_description` varchar(4000) DEFAULT NULL,
  `cr_progress` int DEFAULT NULL,
  `cr_status` varchar(10) DEFAULT NULL,
  `plan_date_start` datetime DEFAULT NULL,
  `plan_date_end` datetime DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` datetime DEFAULT NULL,
  `actual_date_end` datetime DEFAULT NULL,
  `actual_date_hours` int DEFAULT NULL,
  `priority_code` varchar(3) DEFAULT NULL,
  `is_pir` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`his_cr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_cr_detail`
--

DROP TABLE IF EXISTS `his_cr_detail`;
CREATE TABLE IF NOT EXISTS `his_cr_detail` (
  `his_cr_detail_id` int NOT NULL AUTO_INCREMENT,
  `cr_detail_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `cr_id` int DEFAULT NULL,
  `application_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `pic_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `task_detail` varchar(4000) DEFAULT NULL,
  `task_progress` int DEFAULT NULL,
  `plan_date_start` datetime DEFAULT NULL,
  `plan_date_end` datetime DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` datetime DEFAULT NULL,
  `actual_date_end` datetime DEFAULT NULL,
  `actual_total_hours` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`his_cr_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_project`
--

DROP TABLE IF EXISTS `his_project`;
CREATE TABLE IF NOT EXISTS `his_project` (
  `his_project_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `project_no` varchar(30) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_description` varchar(4000) DEFAULT NULL,
  `project_progress` int DEFAULT NULL,
  `project_status` varchar(10) DEFAULT NULL,
  `plan_date_start` datetime DEFAULT NULL,
  `plan_date_end` datetime DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` datetime DEFAULT NULL,
  `actual_date_end` datetime DEFAULT NULL,
  `actual_date_hours` int DEFAULT NULL,
  `priority_code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`his_project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_project_budget`
--

DROP TABLE IF EXISTS `his_project_budget`;
CREATE TABLE IF NOT EXISTS `his_project_budget` (
  `his_project_budget_id` int NOT NULL AUTO_INCREMENT,
  `project_budget_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`his_project_budget_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_project_budget_detail`
--

DROP TABLE IF EXISTS `his_project_budget_detail`;
CREATE TABLE IF NOT EXISTS `his_project_budget_detail` (
  `his_project_budget_detail_id` int NOT NULL AUTO_INCREMENT,
  `project_budget_detail_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `project_budget_id` int DEFAULT NULL,
  `budget_id` int DEFAULT NULL,
  `plan_amount` int DEFAULT NULL,
  `actual_amount` int DEFAULT NULL,
  PRIMARY KEY (`his_project_budget_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_project_detail`
--

DROP TABLE IF EXISTS `his_project_detail`;
CREATE TABLE IF NOT EXISTS `his_project_detail` (
  `his_project_detail_id` int NOT NULL AUTO_INCREMENT,
  `project_detail_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `application_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `pic_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `task_detail` varchar(4000) DEFAULT NULL,
  `task_progress` int DEFAULT NULL,
  `plan_date_start` datetime DEFAULT NULL,
  `plan_date_end` datetime DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` datetime DEFAULT NULL,
  `actual_date_end` datetime DEFAULT NULL,
  `actual_total_hours` int DEFAULT NULL,
  PRIMARY KEY (`his_project_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_role`
--

DROP TABLE IF EXISTS `his_role`;
CREATE TABLE IF NOT EXISTS `his_role` (
  `his_role_id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `role_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`his_role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_role_menu`
--

DROP TABLE IF EXISTS `his_role_menu`;
CREATE TABLE IF NOT EXISTS `his_role_menu` (
  `his_role_menu_id` int NOT NULL AUTO_INCREMENT,
  `role_menu_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  `is_select` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`his_role_menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_user`
--

DROP TABLE IF EXISTS `his_user`;
CREATE TABLE IF NOT EXISTS `his_user` (
  `his_user_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`his_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_approval`
--

DROP TABLE IF EXISTS `log_approval`;
CREATE TABLE IF NOT EXISTS `log_approval` (
  `log_approval_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `log_approval_status` varchar(10) DEFAULT NULL,
  `log_approval_description` varchar(4000) DEFAULT NULL,
  `log_approval_user` varchar(20) DEFAULT NULL,
  `log_approval_date` datetime DEFAULT NULL,
  `entry_code` varchar(3) DEFAULT NULL,
  `budget_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `budget_project_id` int DEFAULT NULL,
  `cr_id` int DEFAULT NULL,
  `bugfix_id` int DEFAULT NULL,
  PRIMARY KEY (`log_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_approval_file`
--

DROP TABLE IF EXISTS `log_approval_file`;
CREATE TABLE IF NOT EXISTS `log_approval_file` (
  `log_approval_file_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `log_approval_id` int DEFAULT NULL,
  `file_ext` varchar(3) DEFAULT NULL,
  `storage_code` varchar(4) DEFAULT NULL,
  `physical_file` varchar(4000) DEFAULT NULL,
  `blob_file` blob,
  `cloud_file` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`log_approval_file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_deployment`
--

DROP TABLE IF EXISTS `log_deployment`;
CREATE TABLE IF NOT EXISTS `log_deployment` (
  `log_deploy_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `deploy_no` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dp_version` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`log_deploy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_hit`
--

DROP TABLE IF EXISTS `log_hit`;
CREATE TABLE IF NOT EXISTS `log_hit` (
  `hit_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) NOT NULL DEFAULT 'GUEST',
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(15) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `date_hit` datetime DEFAULT NULL,
  PRIMARY KEY (`hit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_user_login`
--

DROP TABLE IF EXISTS `log_user_login`;
CREATE TABLE IF NOT EXISTS `log_user_login` (
  `log_user_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `is_login` varchar(1) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_logout` varchar(1) DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `date_kicker` datetime DEFAULT NULL,
  `user_id_kicker` int DEFAULT NULL,
  `ip_address_kicker` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`log_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_budget`
--

DROP TABLE IF EXISTS `mst_budget`;
CREATE TABLE IF NOT EXISTS `mst_budget` (
  `budget_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(100) DEFAULT NULL,
  `budget_description` varchar(4000) DEFAULT NULL,
  `budget_center_id` int DEFAULT NULL,
  `budget_account_id` int DEFAULT NULL,
  `budget_year` varchar(4) DEFAULT NULL,
  `budget_month` varchar(2) DEFAULT NULL,
  `budget_amount` int DEFAULT NULL,
  `budget_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`budget_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_bugfix`
--

DROP TABLE IF EXISTS `mst_bugfix`;
CREATE TABLE IF NOT EXISTS `mst_bugfix` (
  `bugfix_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `bugfix_no` varchar(30) DEFAULT NULL,
  `bugfix_name` varchar(255) DEFAULT NULL,
  `bugfix_description` varchar(4000) DEFAULT NULL,
  `bugfix_progress` int DEFAULT NULL,
  `bugfix_status` varchar(10) DEFAULT NULL,
  `plan_date_start` datetime DEFAULT NULL,
  `plan_date_end` datetime DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` datetime DEFAULT NULL,
  `actual_date_end` datetime DEFAULT NULL,
  `actual_date_hours` int DEFAULT NULL,
  `priority_code` varchar(3) DEFAULT NULL,
  `is_pir` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`bugfix_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_bugfix_detail`
--

DROP TABLE IF EXISTS `mst_bugfix_detail`;
CREATE TABLE IF NOT EXISTS `mst_bugfix_detail` (
  `bugfix_detail_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `bugfix_id` int DEFAULT NULL,
  `application_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `pic_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `task_detail` varchar(4000) DEFAULT NULL,
  `task_progress` int DEFAULT NULL,
  `plan_date_start` datetime DEFAULT NULL,
  `plan_date_end` datetime DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` datetime DEFAULT NULL,
  `actual_date_end` datetime DEFAULT NULL,
  `actual_total_hours` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `cr_id` int DEFAULT NULL,
  PRIMARY KEY (`bugfix_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_cr`
--

DROP TABLE IF EXISTS `mst_cr`;
CREATE TABLE IF NOT EXISTS `mst_cr` (
  `cr_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `cr_no` varchar(30) DEFAULT NULL,
  `cr_name` varchar(255) DEFAULT NULL,
  `cr_description` varchar(4000) DEFAULT NULL,
  `cr_progress` int DEFAULT NULL,
  `cr_status` varchar(10) DEFAULT NULL,
  `plan_date_start` datetime DEFAULT NULL,
  `plan_date_end` datetime DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` datetime DEFAULT NULL,
  `actual_date_end` datetime DEFAULT NULL,
  `actual_date_hours` int DEFAULT NULL,
  `priority_code` varchar(3) DEFAULT NULL,
  `is_pir` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`cr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_cr_detail`
--

DROP TABLE IF EXISTS `mst_cr_detail`;
CREATE TABLE IF NOT EXISTS `mst_cr_detail` (
  `cr_detail_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `cr_id` int DEFAULT NULL,
  `application_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `pic_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `task_detail` varchar(4000) DEFAULT NULL,
  `task_progress` int DEFAULT NULL,
  `plan_date_start` datetime DEFAULT NULL,
  `plan_date_end` datetime DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` datetime DEFAULT NULL,
  `actual_date_end` datetime DEFAULT NULL,
  `actual_total_hours` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`cr_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_project`
--

DROP TABLE IF EXISTS `mst_project`;
CREATE TABLE IF NOT EXISTS `mst_project` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `project_no` varchar(30) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_description` varchar(4000) DEFAULT NULL,
  `project_progress` int DEFAULT NULL,
  `project_status` varchar(10) DEFAULT NULL,
  `plan_date_start` datetime DEFAULT NULL,
  `plan_date_end` datetime DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` datetime DEFAULT NULL,
  `actual_date_end` datetime DEFAULT NULL,
  `actual_date_hours` int DEFAULT NULL,
  `priority_code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_project_budget`
--

DROP TABLE IF EXISTS `mst_project_budget`;
CREATE TABLE IF NOT EXISTS `mst_project_budget` (
  `project_budget_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`project_budget_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_project_budget_detail`
--

DROP TABLE IF EXISTS `mst_project_budget_detail`;
CREATE TABLE IF NOT EXISTS `mst_project_budget_detail` (
  `project_budget_detail_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `project_budget_id` int DEFAULT NULL,
  `budget_id` int DEFAULT NULL,
  `plan_amount` int DEFAULT NULL,
  `actual_amount` int DEFAULT NULL,
  PRIMARY KEY (`project_budget_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_project_detail`
--

DROP TABLE IF EXISTS `mst_project_detail`;
CREATE TABLE IF NOT EXISTS `mst_project_detail` (
  `project_detail_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` datetime DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `application_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `pic_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `task_detail` varchar(4000) DEFAULT NULL,
  `task_progress` int DEFAULT NULL,
  `plan_date_start` datetime DEFAULT NULL,
  `plan_date_end` datetime DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` datetime DEFAULT NULL,
  `actual_date_end` datetime DEFAULT NULL,
  `actual_total_hours` int DEFAULT NULL,
  PRIMARY KEY (`project_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_application`
--

DROP TABLE IF EXISTS `ref_application`;
CREATE TABLE IF NOT EXISTS `ref_application` (
  `application_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `application_code` varchar(5) DEFAULT NULL,
  `application_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`application_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_budget_account`
--

DROP TABLE IF EXISTS `ref_budget_account`;
CREATE TABLE IF NOT EXISTS `ref_budget_account` (
  `budget_account_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `budget_account_code` varchar(10) DEFAULT NULL,
  `budget_account_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`budget_account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_budget_center`
--

DROP TABLE IF EXISTS `ref_budget_center`;
CREATE TABLE IF NOT EXISTS `ref_budget_center` (
  `budget_center_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `budget_center_code` varchar(10) DEFAULT NULL,
  `budget_center_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`budget_center_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_lookup`
--

DROP TABLE IF EXISTS `ref_lookup`;
CREATE TABLE IF NOT EXISTS `ref_lookup` (
  `lookup_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `lookup_type` varchar(10) DEFAULT NULL,
  `lookup_code` varchar(10) DEFAULT NULL,
  `lookup_name` varchar(255) DEFAULT NULL,
  `lookup_description` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`lookup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ref_lookup`
--

INSERT INTO `ref_lookup` (`lookup_id`, `user_create`, `date_create`, `user_modify`, `date_modify`, `lookup_type`, `lookup_code`, `lookup_name`, `lookup_description`) VALUES
(1, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'ENTRY_CODE', 'BUD', 'BUDGET', 'ENTRY CODE UNTUK BUDGET'),
(2, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'ENTRY_CODE', 'PRJ', 'PROJECT', 'ENTRY CODE UNTUK PROJECT'),
(3, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'ENTRY_CODE', 'CR', 'CHANGE REQUEST', 'ENTRY CODE UNTUK CHANGE REQUEST'),
(4, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'ENTRY_CODE', 'BFX', 'BUGFIX', 'ENTRY CODE UNTUK BUGFIX');

-- --------------------------------------------------------

--
-- Table structure for table `ref_pic`
--

DROP TABLE IF EXISTS `ref_pic`;
CREATE TABLE IF NOT EXISTS `ref_pic` (
  `pic_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `pic_name` varchar(255) DEFAULT NULL,
  `position_code` varchar(10) DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `is_leader` varchar(1) DEFAULT NULL,
  `is_active` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_pic_group`
--

DROP TABLE IF EXISTS `ref_pic_group`;
CREATE TABLE IF NOT EXISTS `ref_pic_group` (
  `pic_group_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `pic_group_code` varchar(3) DEFAULT NULL,
  `pic_group_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pic_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ref_pic_group`
--

INSERT INTO `ref_pic_group` (`pic_group_id`, `user_create`, `date_create`, `user_modify`, `date_modify`, `pic_group_code`, `pic_group_name`) VALUES
(1, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'DEV', 'DEVELOPER'),
(2, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'BA', 'BUSINESS ANALYST'),
(3, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'SA', 'SYSTEM ANALYST'),
(4, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'QA', 'QUALITY ASSURANCE'),
(5, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'PM', 'PROJECT MANAGER');

-- --------------------------------------------------------

--
-- Table structure for table `ref_position`
--

DROP TABLE IF EXISTS `ref_position`;
CREATE TABLE IF NOT EXISTS `ref_position` (
  `position_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `position_code` varchar(10) DEFAULT NULL,
  `position_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ref_position`
--

INSERT INTO `ref_position` (`position_id`, `user_create`, `date_create`, `user_modify`, `date_modify`, `position_code`, `position_name`) VALUES
(1, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'STF', 'STAFF'),
(2, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'JUNPRG', 'JUNIOR PROGRAMMER'),
(3, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'JSENPRG', 'SENIOR PROGRAMMER'),
(4, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'JUNSPV', 'JUNIOR SUPERVISOR'),
(5, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'SENSPV', 'SENIOR SUPERVISOR'),
(6, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'JUNOFC', 'JUNIOR OFFICER'),
(7, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'SENOFC', 'SENIOR OFFICER'),
(8, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'JUNMGR', 'JUNIOR MANAGER'),
(9, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'SENMGR', 'SENIOR MANAGER'),
(10, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'DEPHEAD', 'DEPARTMENT HEAD'),
(11, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'DIVHEAD', 'DIVISION HEAD'),
(12, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'CEO', 'CHIEF EXECUTIVE OFFICER'),
(13, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'CMO', 'CHIEF MARKETING OFFICER'),
(14, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'COO', 'CHIEF OPERATION OFFICER');

-- --------------------------------------------------------

--
-- Table structure for table `ref_task`
--

DROP TABLE IF EXISTS `ref_task`;
CREATE TABLE IF NOT EXISTS `ref_task` (
  `task_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `task_code` varchar(3) DEFAULT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `task_description` varchar(4000) DEFAULT NULL,
  `task_group_id` int DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ref_task`
--

INSERT INTO `ref_task` (`task_id`, `user_create`, `date_create`, `user_modify`, `date_modify`, `task_code`, `task_name`, `task_description`, `task_group_id`) VALUES
(1, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'BRS', 'BUSINESS REQUIREMENT SPECIFICATION', 'DOKUMEN FORMAL YANG MENCATAT SPESIFIKASI YANG DIBUTUHKAN USER', 1),
(2, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'FSD', 'FUNCTIONAL SPECIFICATION DOCUMENT', 'DOKUMEN FORMAL YANG MENGGAMBARKAN DETAIL FUNGSIONALITAS DARI SISTEM YANG AKAN DIKEMBANGKAN', 1),
(3, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'COD', 'CODING', 'CODING DARI APLIKASI', 1),
(4, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'ITL', 'INTERNAL TESTING', 'TESTING INTERNAL APLIKASI', 1),
(5, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'RPD', 'DOC RP/DP', 'DOKUMEN FORMAL UNTUK PANDUAN DEPLOYMENT', 1),
(6, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'RVW', 'REVIEW', 'REVIEW SELURUH KELENGKAPAN DOCUMENT DAN SOURCE APLIKASI YANG AKAN DIDEPLOY', 1),
(7, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'RVF', 'REVIEW FSD', 'REVIEW DOKUMEN FSD', 1),
(8, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'FNF', 'FINALISASI FSD', 'FINALISASI DOKUMEN FSD', 1),
(9, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'RNT', 'REVIEW DAN INTERNAL TESTING', 'REVIEW DAN TESTING INTERNAL APLIKASI', 1),
(10, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'STS', 'SIT SCENARIO', 'PEMBUATAN SCENARIO TESTING SIT', 2),
(11, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'STX', 'SIT EXECUTION', 'EKSEKUSI SCENARIO TESTING SIT', 2),
(12, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'STD', 'SIT DOCUMENT', 'PEMBUATAN DOKUMEN SCENARIO TESTING SIT', 2),
(13, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'UTS', 'UAT SCENARIO', 'PEMBUATAN SCENARIO TESTING UAT', 3),
(14, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'UTX', 'UAT EXECUTION', 'EKSEKUSI SCENARIO TESTING UAT', 3),
(15, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'UTD', 'UAT DOCUMENT', 'PEMBUATAN DOKUMEN SCENARIO TESTING UAT', 3),
(16, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'DPL', 'DEPLOYMENT', 'DEPLOY KE PRODUCTION', 4),
(17, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'HPD', 'HELPDESK', 'MELAYANI DAN MENERIMA KELUHAN/SARAN DARI USER', 4),
(18, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'MON', 'MONITORING', 'MONITORING APLIKASI SETELAH DEPLOYMENT TERAKHIR', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ref_task_group`
--

DROP TABLE IF EXISTS `ref_task_group`;
CREATE TABLE IF NOT EXISTS `ref_task_group` (
  `task_group_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `task_group_code` varchar(10) DEFAULT NULL,
  `task_group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`task_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ref_task_group`
--

INSERT INTO `ref_task_group` (`task_group_id`, `user_create`, `date_create`, `user_modify`, `date_modify`, `task_group_code`, `task_group_name`) VALUES
(1, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'DEV', 'DEVELOPMENT'),
(2, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'SIT', 'SYSTEM INTEGRATION TEST'),
(3, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'UAT', 'USER ACCEPTANCE TEST'),
(4, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'PROD', 'PRODUCTION');

-- --------------------------------------------------------

--
-- Table structure for table `ref_vendor`
--

DROP TABLE IF EXISTS `ref_vendor`;
CREATE TABLE IF NOT EXISTS `ref_vendor` (
  `vendor_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `vendor_address` varchar(4000) DEFAULT NULL,
  `vendor_group_id` int DEFAULT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_vendor_group`
--

DROP TABLE IF EXISTS `ref_vendor_group`;
CREATE TABLE IF NOT EXISTS `ref_vendor_group` (
  `vendor_group_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  `vendor_group_code` varchar(3) DEFAULT NULL,
  `vendor_group_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`vendor_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ref_vendor_group`
--

INSERT INTO `ref_vendor_group` (`vendor_group_id`, `user_create`, `date_create`, `user_modify`, `date_modify`, `vendor_group_code`, `vendor_group_name`) VALUES
(1, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'INT', 'INTERNAL'),
(2, 'DBA', '2023-03-29 00:00:00', NULL, NULL, 'EXT', 'EXTERNAL');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_user_login_attempt`
--

DROP TABLE IF EXISTS `tmp_user_login_attempt`;
CREATE TABLE IF NOT EXISTS `tmp_user_login_attempt` (
  `login_attempt_id` int NOT NULL AUTO_INCREMENT,
  `login_attempt_date` datetime DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`login_attempt_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_user_session`
--

DROP TABLE IF EXISTS `tmp_user_session`;
CREATE TABLE IF NOT EXISTS `tmp_user_session` (
  `session_id` int NOT NULL AUTO_INCREMENT,
  `session_start` int DEFAULT NULL,
  `session_expire` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
