-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2024 at 05:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mqtt_log`
--

-- --------------------------------------------------------

--
-- Table structure for table `ble_data`
--

CREATE TABLE `ble_data` (
  `id` int(11) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `payload` varchar(200) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `deviceFound` longtext GENERATED ALWAYS AS (trim(both '"' from json_extract(`payload`,'$.deviceFound'))) VIRTUAL,
  `day_name` text GENERATED ALWAYS AS (date_format(`datetime`,'%W')) VIRTUAL,
  `date` text GENERATED ALWAYS AS (date_format(`datetime`,'%Y-%m-%d')) VIRTUAL,
  `time` text GENERATED ALWAYS AS (date_format(`datetime`,'%H:%i:%s')) VIRTUAL,
  `name` text GENERATED ALWAYS AS (substr(`deviceFound`,6,14)) VIRTUAL,
  `address` text GENERATED ALWAYS AS (substr(`deviceFound`,31,17)) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ble_data`
--

INSERT INTO `ble_data` (`id`, `topic`, `payload`, `datetime`) VALUES
(1, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: Yusri Alfiyya, Address: 48:e7:29:96:7a:8a, serviceUUID: 4fafc201-1fb5-459e-8fcc-c5c9c331914b, txPower: 3\"\r\n}', '2023-12-04 21:34:08'),
(2, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: Alfiyya Yusri, Address: 48:e7:29:96:7a:8a, serviceUUID: 24f70c21-cc06-4972-b158-0c40300c2474, txPower: 3\"\r\n}', '2023-12-04 21:51:54'),
(3, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: Yusri Alfiyya, Address: 48:e7:29:9e:8e:ae, serviceUUID: 4fafc201-1fb5-459e-8fcc-c5c9c331914b, txPower: 3\"\r\n}', '2023-12-04 22:05:54'),
(4, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: Yusri Alfiyya, Address: 48:e7:29:9e:8e:ae, serviceUUID: 4fafc201-1fb5-459e-8fcc-c5c9c331914b, txPower: 3\"\r\n}', '2023-12-04 22:07:31'),
(5, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: Yusri Alfiyya, Address: 48:e7:29:9e:8e:ae, serviceUUID: 4fafc201-1fb5-459e-8fcc-c5c9c331914b, txPower: 3\"\r\n}', '2023-12-04 22:09:15'),
(6, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: Alfiyya Yusri, Address: 48:e7:29:96:7a:8a, serviceUUID: 24f70c21-cc06-4972-b158-0c40300c2474, txPower: 3\"\r\n}', '2023-12-05 21:19:50'),
(7, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: AlfiyyaYusri, Address: 48:e7:29:96:7a:8a, serviceUUID: 24f70c21-cc06-4972-b158-0c40300c2474, txPower: 3\"\r\n}', '2023-12-07 00:20:41'),
(8, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: AlfiyyaYusri, Address: 48:e7:29:96:7a:8a, serviceUUID: 24f70c21-cc06-4972-b158-0c40300c2474, txPower: 3\"\r\n}', '2023-12-12 19:45:11'),
(9, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 79:21:01:f2:26:ab, manufacturer data: 4c0010053e1cda7ece, txPower: 8\"\r\n}', '2023-12-13 10:55:51'),
(10, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: Alfiyya Yusri, Address: 48:e7:29:96:7a:8a, serviceUUID: 24f70c21-cc06-4972-b158-0c40300c2474, txPower: 3\"\r\n}', '2023-12-13 11:00:35'),
(11, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:96:7a:8a, serviceUUID: 24f70c21-cc06-4972-b158-0c40300c2474\"\r\n}', '2023-12-13 11:00:52'),
(12, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:96:7a:8a, serviceUUID: 24f70c21-cc06-4972-b158-0c40300c2474\"\r\n}', '2023-12-13 11:01:09'),
(13, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:96:7a:8a, serviceUUID: 24f70c21-cc06-4972-b158-0c40300c2474\"\r\n}', '2023-12-13 11:01:26'),
(14, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:96:7a:8a, serviceUUID: 24f70c21-cc06-4972-b158-0c40300c2474\"\r\n}', '2023-12-13 11:01:44'),
(15, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:96:7a:8a, serviceUUID: 24f70c21-cc06-4972-b158-0c40300c2474\"\r\n}', '2023-12-13 11:02:01'),
(16, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:96:7a:8a, serviceUUID: 24f70c21-cc06-4972-b158-0c40300c2474\"\r\n}', '2023-12-13 11:02:19'),
(17, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 0c:b8:15:f7:2a:82, serviceUUID: 4fafc201-1fb5-459e-8fcc-c5c9c331914b\"\r\n}', '2023-12-13 11:03:35'),
(18, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 0c:b8:15:f7:2a:82, serviceUUID: 4fafc201-1fb5-459e-8fcc-c5c9c331914b\"\r\n}', '2023-12-13 11:03:59'),
(19, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 0c:b8:15:f7:2a:82, serviceUUID: 4fafc201-1fb5-459e-8fcc-c5c9c331914b\"\r\n}', '2023-12-13 11:04:16'),
(20, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:96:7a:8a, serviceUUID: 24f70c21-cc06-4972-b158-0c40300c2474\"\r\n}', '2023-12-13 11:04:34'),
(21, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000000100\"\r\n}', '2023-12-16 22:39:45'),
(22, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000000a00\"\r\n}', '2023-12-16 22:40:02'),
(23, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000001300\"\r\n}', '2023-12-16 22:40:21'),
(24, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: Yusri Alfiyya, Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000000100, txPower: 3\"\r\n}', '2023-12-16 22:45:34'),
(25, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000000a00\"\r\n}', '2023-12-16 22:45:53'),
(26, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:01:45'),
(27, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:06:24'),
(28, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:06:41'),
(29, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:06:59'),
(30, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:07:17'),
(31, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:07:35'),
(32, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:07:53'),
(33, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:08:11'),
(34, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:08:28'),
(35, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:08:45'),
(36, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:09:03'),
(37, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000004c00\"\r\n}', '2023-12-19 11:11:40'),
(38, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000005500\"\r\n}', '2023-12-19 11:11:40'),
(39, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000005d00\"\r\n}', '2023-12-19 11:11:40'),
(40, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000006600\"\r\n}', '2023-12-19 11:11:40'),
(41, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000006f00\"\r\n}', '2023-12-19 11:11:40'),
(42, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000007800\"\r\n}', '2023-12-19 11:11:40'),
(43, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: Yusri Alfiyya, Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000004300, txPower: 3\"\r\n}', '2023-12-19 11:11:40'),
(44, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000008a00\"\r\n}', '2023-12-19 11:12:02'),
(45, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000009300\"\r\n}', '2023-12-19 11:12:20'),
(46, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000009c00\"\r\n}', '2023-12-19 11:12:38'),
(47, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000a400\"\r\n}', '2023-12-19 11:12:55'),
(48, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000ad00\"\r\n}', '2023-12-19 11:13:12'),
(49, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000b600\"\r\n}', '2023-12-19 11:13:31'),
(50, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000bf00\"\r\n}', '2023-12-19 11:17:39'),
(51, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000c700\"\r\n}', '2023-12-19 11:17:39'),
(52, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000d000\"\r\n}', '2023-12-19 11:17:39'),
(53, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000d900\"\r\n}', '2023-12-19 11:17:39'),
(54, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000e200\"\r\n}', '2023-12-19 11:17:39'),
(55, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000000a00\"\r\n}', '2023-12-19 11:22:31'),
(56, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000001300\"\r\n}', '2023-12-19 11:22:31'),
(57, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000001c00\"\r\n}', '2023-12-19 11:22:31'),
(58, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000002500\"\r\n}', '2023-12-19 11:22:31'),
(59, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000002f00\"\r\n}', '2023-12-19 11:22:31'),
(60, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000003800\"\r\n}', '2023-12-19 11:22:31'),
(61, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000004100\"\r\n}', '2023-12-19 11:22:31'),
(62, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000005000\"\r\n}', '2023-12-19 11:22:31'),
(63, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000000100\"\r\n}', '2023-12-19 11:22:31'),
(64, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000006100\"\r\n}', '2023-12-19 11:22:36'),
(65, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000007300\"\r\n}', '2023-12-19 11:23:12'),
(66, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000007c00\"\r\n}', '2023-12-19 11:23:29'),
(67, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000008500\"\r\n}', '2023-12-19 11:23:47'),
(68, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000008e00\"\r\n}', '2023-12-19 11:24:05'),
(69, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000009600\"\r\n}', '2023-12-19 11:24:34'),
(70, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000009f00\"\r\n}', '2023-12-19 11:24:40'),
(71, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000a800\"\r\n}', '2023-12-19 11:24:58'),
(72, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000b400\"\r\n}', '2023-12-19 11:25:38'),
(73, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000c300\"\r\n}', '2023-12-19 11:25:53'),
(74, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000cc00\"\r\n}', '2023-12-19 11:26:10'),
(75, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000d500\"\r\n}', '2023-12-19 11:26:28'),
(76, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000de00\"\r\n}', '2023-12-19 11:26:46'),
(77, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000e700\"\r\n}', '2023-12-19 11:27:04'),
(78, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000f000\"\r\n}', '2023-12-19 11:27:22'),
(79, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000f900\"\r\n}', '2023-12-19 11:27:40'),
(80, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000010200\"\r\n}', '2023-12-19 11:27:59'),
(81, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000010b00\"\r\n}', '2023-12-19 11:28:16'),
(82, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000011400\"\r\n}', '2023-12-19 11:29:11'),
(83, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000011d00\"\r\n}', '2023-12-19 11:29:12'),
(84, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000012500\"\r\n}', '2023-12-19 11:29:12'),
(85, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000012e00\"\r\n}', '2023-12-19 11:29:28'),
(86, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000013700\"\r\n}', '2023-12-19 11:29:45'),
(87, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000014000\"\r\n}', '2023-12-19 11:30:03'),
(88, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000014900\"\r\n}', '2023-12-19 11:30:21'),
(89, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000015200\"\r\n}', '2023-12-19 11:30:39'),
(90, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000015b00\"\r\n}', '2023-12-19 11:30:57'),
(91, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000016400\"\r\n}', '2023-12-19 11:31:15'),
(92, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: Yusri Alfiyya, Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000000800, txPower: 3\"\r\n}', '2023-12-19 11:33:44'),
(93, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000001100\"\r\n}', '2023-12-19 11:34:01'),
(94, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000001a00\"\r\n}', '2023-12-19 11:34:19'),
(95, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000002300\"\r\n}', '2023-12-19 11:34:37'),
(96, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000002c00\"\r\n}', '2023-12-19 11:34:55'),
(97, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000003500\"\r\n}', '2023-12-19 11:35:13'),
(98, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000003e00\"\r\n}', '2023-12-19 11:35:31'),
(99, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000004600\"\r\n}', '2023-12-19 11:35:48'),
(100, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: Yusri Alfiyya, Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000000100, txPower: 3\"\r\n}', '2023-12-19 11:37:28'),
(101, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000000900\"\r\n}', '2023-12-19 11:37:46'),
(102, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000001100\"\r\n}', '2023-12-19 11:38:03'),
(103, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000001900\"\r\n}', '2023-12-19 11:38:21'),
(104, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000002100\"\r\n}', '2023-12-19 11:38:38'),
(105, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000002900\"\r\n}', '2023-12-19 11:38:57'),
(106, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: Yusri Alfiyya, Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000000200, txPower: 3\"\r\n}', '2023-12-19 11:40:25'),
(107, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000000a00\"\r\n}', '2023-12-19 11:40:43'),
(108, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000001200\"\r\n}', '2023-12-19 11:41:00'),
(109, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000001a00\"\r\n}', '2023-12-19 11:41:18'),
(110, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000002200\"\r\n}', '2023-12-19 11:41:36'),
(111, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000002a00\"\r\n}', '2023-12-19 11:41:53'),
(112, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000003200\"\r\n}', '2023-12-19 11:42:12'),
(113, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000003a00\"\r\n}', '2023-12-19 11:42:29'),
(114, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000004200\"\r\n}', '2023-12-19 11:42:47'),
(115, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000004a00\"\r\n}', '2023-12-19 11:43:05'),
(116, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000005200\"\r\n}', '2023-12-19 11:43:23'),
(117, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: Yusri Alfiyya, Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000006c00, txPower: 3\"\r\n}', '2023-12-19 11:44:21'),
(118, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000007400\"\r\n}', '2023-12-19 11:44:38'),
(119, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000007c00\"\r\n}', '2023-12-19 11:44:56'),
(120, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000008400\"\r\n}', '2023-12-19 11:45:25'),
(121, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000008c00\"\r\n}', '2023-12-19 11:45:33'),
(122, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000009400\"\r\n}', '2023-12-19 11:45:50'),
(123, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb9870000009c00\"\r\n}', '2023-12-19 11:46:07'),
(124, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000a400\"\r\n}', '2023-12-19 11:46:25'),
(125, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000ac00\"\r\n}', '2023-12-19 11:46:43'),
(126, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000bc00\"\r\n}', '2023-12-19 11:47:19'),
(127, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000c700\"\r\n}', '2023-12-19 11:47:44'),
(128, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000cf00\"\r\n}', '2023-12-19 11:48:01'),
(129, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000d700\"\r\n}', '2023-12-19 11:48:19'),
(130, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000df00\"\r\n}', '2023-12-19 11:48:38'),
(131, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000e700\"\r\n}', '2023-12-19 11:48:55'),
(132, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"Name: , Address: 48:e7:29:9e:8e:ae, manufacturer data: 4c000215644f76f76a5242bce911fd902c9bb987000000f700\"\r\n}', '2023-12-19 11:49:31'),
(133, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:50:17'),
(134, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:50:24'),
(135, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:50:32'),
(136, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:50:40'),
(137, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:51:29'),
(138, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:51:36'),
(139, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:51:44'),
(140, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:51:51'),
(141, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:51:58'),
(142, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:52:06'),
(143, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:52:14'),
(144, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:52:21'),
(145, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:52:29'),
(146, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:52:36'),
(147, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:52:43'),
(148, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:52:50'),
(149, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:52:58'),
(150, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:53:05'),
(151, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:53:12'),
(152, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:53:19'),
(153, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:53:27'),
(154, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:53:34'),
(155, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:53:48'),
(156, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 11:53:56'),
(157, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:00:22'),
(158, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:00:35'),
(159, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:00:37'),
(160, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:00:44'),
(161, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:01:13'),
(162, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:01:20'),
(163, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:01:27'),
(164, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:01:42'),
(165, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:01:51'),
(166, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:02:04'),
(167, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:02:12'),
(168, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:02:21'),
(169, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:02:26'),
(170, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:02:34'),
(171, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:02:41'),
(172, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:02:49'),
(173, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:02:56'),
(174, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:03:03'),
(175, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:03:12'),
(176, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:03:21'),
(177, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:03:28'),
(178, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:03:35'),
(179, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:03:42'),
(180, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:03:49'),
(181, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:03:56'),
(182, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:04:03'),
(183, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:04:11'),
(184, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:05:18'),
(185, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:05:25'),
(186, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:05:32'),
(187, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:05:39'),
(188, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:05:47'),
(189, 'ESP32BLE/DoorAccess', '{\r\n  \"deviceFound\": \"48:e7:29:9e:8e:ae\"\r\n}', '2023-12-19 12:05:54');

-- --------------------------------------------------------

--
-- Table structure for table `datas_ble`
--

CREATE TABLE `datas_ble` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `day_name` text GENERATED ALWAYS AS (date_format(`datetime`,'%W')) VIRTUAL,
  `time` text GENERATED ALWAYS AS (date_format(`datetime`,'%H:%i:%s')) VIRTUAL,
  `date` text GENERATED ALWAYS AS (date_format(`datetime`,'%Y-%m-%d')) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datas_ble`
--

INSERT INTO `datas_ble` (`id`, `nama`, `address`, `datetime`) VALUES
(1, 'Estuningsih', '48:e7:29:9e:8e:ae', '2024-01-18 06:09:09'),
(2, 'Estuningsih', '48:e7:29:9e:8e:ae', '2024-01-18 06:09:33'),
(3, 'Estuningsih', '48:e7:29:9e:8e:ae', '2024-01-18 06:11:37'),
(4, 'Astuti Dwi', '08:d1:f9:35:c1:5e', '2024-01-18 07:15:03'),
(5, 'Astuti Dwi', '08:d1:f9:35:c1:5e', '2024-01-18 07:15:27'),
(6, 'Astuti Dwi', '08:d1:f9:35:c1:5e', '2024-01-18 07:15:44'),
(7, 'Farizal', '0c:b8:15:f7:2a:82', '2024-01-19 07:51:02'),
(8, 'Farizal', '0c:b8:15:f7:2a:82', '2024-01-19 07:51:19'),
(9, 'Farizal', '0c:b8:15:f7:2a:82', '2024-01-19 07:52:02'),
(10, 'Sri Ulina', 'a0:a3:b3:28:39:5e', '2024-01-22 03:04:37'),
(11, 'Sri Ulina', 'a0:a3:b3:28:39:5e', '2024-01-22 03:05:58'),
(12, 'Sri Ulina', 'a0:a3:b3:28:39:5e', '2024-01-22 03:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `owner` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `owner`, `address`) VALUES
(1, 'Siti Nur', '48:e7:29:96:7a:8a'),
(2, 'Farizal', '0c:b8:15:f7:2a:82'),
(3, 'Yusuf Sani', '08:d1:f9:34:f3:12'),
(4, 'Estuningsih', '48:e7:29:9e:8e:ae'),
(8, 'Astuti Dwi', '08:d1:f9:35:c1:5e'),
(9, 'Sri Ulina', 'a0:a3:b3:28:39:5e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ble_data`
--
ALTER TABLE `ble_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datas_ble`
--
ALTER TABLE `datas_ble`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ble_data`
--
ALTER TABLE `ble_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `datas_ble`
--
ALTER TABLE `datas_ble`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
