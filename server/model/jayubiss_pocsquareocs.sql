-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 09:53 AM
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
-- Database: `jayubiss_pocsquareocs`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrative_entities`
--

CREATE TABLE `administrative_entities` (
  `entity_id` int(11) NOT NULL,
  `province` varchar(20) DEFAULT NULL,
  `province_numeric_id` varchar(2) DEFAULT NULL,
  `district` varchar(40) DEFAULT NULL,
  `district_id` varchar(3) DEFAULT NULL,
  `administrative_post` varchar(40) DEFAULT NULL,
  `admin_post_id` varchar(3) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `neighborhood_locality_id` varchar(3) DEFAULT NULL,
  `province_alphabetical_id` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrative_entities`
--

INSERT INTO `administrative_entities` (`entity_id`, `province`, `province_numeric_id`, `district`, `district_id`, `administrative_post`, `admin_post_id`, `neighborhood_locality`, `neighborhood_locality_id`, `province_alphabetical_id`) VALUES
(4, 'Maputo Cidade', '01', 'MC Distrito 1', '01', 'TT Posto 1', '01', 'MC Bairro 1', '001', 'MC');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `username` varchar(50) NOT NULL,
  `password` varchar(270) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`) VALUES
('admin', 'c3630306d12f1c1056badb39aa74fe7f');

-- --------------------------------------------------------

--
-- Table structure for table `cd_admin_post`
--

CREATE TABLE `cd_admin_post` (
  `id` varchar(2) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cd_admin_post`
--

INSERT INTO `cd_admin_post` (`id`, `province`, `district`, `admin_post`) VALUES
('01', 'Cabo Delgado', 'CD Distrito 1', 'CD Posto 1'),
('02', 'Cabo Delgado', 'CD Distrito 2', 'CD Posto 2');

-- --------------------------------------------------------

--
-- Table structure for table `cd_cell`
--

CREATE TABLE `cd_cell` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `cell` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cd_cell`
--

INSERT INTO `cd_cell` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `cell`) VALUES
('001', 'Cabo Delgado', 'CD Distrito 1', 'CD Posto 1', 'CD Localidade 1', 'CD Celula 1'),
('002', 'Cabo Delgado', 'CD Distrito 2', 'CD Posto 2', 'CD Localidade 2', 'CD Celula 2');

-- --------------------------------------------------------

--
-- Table structure for table `cd_circle`
--

CREATE TABLE `cd_circle` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `circle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cd_circle`
--

INSERT INTO `cd_circle` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `circle`) VALUES
('001', 'Cabo Delgado', 'CD Distrito 1', 'CD Posto 1', 'CD Localidade 1', 'CD Circulo 1'),
('002', 'Cabo Delgado', 'CD Distrito 2', 'CD Posto 2', 'CD Localidade 2', 'CD Circulo 2');

-- --------------------------------------------------------

--
-- Table structure for table `cd_district`
--

CREATE TABLE `cd_district` (
  `id` varchar(2) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cd_district`
--

INSERT INTO `cd_district` (`id`, `province`, `district`) VALUES
('01', 'Cabo Delgado', 'CD Distrito 1'),
('02', 'Cabo Delgado', 'CD Distrito 2');

-- --------------------------------------------------------

--
-- Table structure for table `cd_neighborhood_locality`
--

CREATE TABLE `cd_neighborhood_locality` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cd_neighborhood_locality`
--

INSERT INTO `cd_neighborhood_locality` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`) VALUES
('001', 'Cabo Delgado', 'CD Distrito 1', 'CD Posto 1', 'CD Localidade 1'),
('002', 'Cabo Delgado', 'CD Distrito 2', 'CD Posto 2', 'CD Localidade 2');

-- --------------------------------------------------------

--
-- Table structure for table `cd_township`
--

CREATE TABLE `cd_township` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `township` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cd_township`
--

INSERT INTO `cd_township` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `township`) VALUES
('001', 'Cabo Delgado', 'CD Distrito 1', 'CD Posto 1', 'CD Localidade 1', 'CD Povoacao 1'),
('002', 'Cabo Delgado', 'CD Distrito 2', 'CD Posto 2', 'CD Localidade 2', 'CD Povoacao 2');

-- --------------------------------------------------------

--
-- Table structure for table `cd_village`
--

CREATE TABLE `cd_village` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cd_village`
--

INSERT INTO `cd_village` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `village`) VALUES
('001', 'Cabo Delgado', 'CD Distrito 1', 'CD Posto 1', 'CD Localidade 1', 'CD Vila 1'),
('002', 'Cabo Delgado', 'CD Distrito 2', 'CD Posto 2', 'CD Localidade 2', 'CD Vila 2');

-- --------------------------------------------------------

--
-- Table structure for table `cd_zone`
--

CREATE TABLE `cd_zone` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `zone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cd_zone`
--

INSERT INTO `cd_zone` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `zone`) VALUES
('001', 'Cabo Delgado', 'CD Distrito 1', 'CD Posto 1', 'CD Localidade 1', 'CD Zona 1'),
('002', 'Cabo Delgado', 'CD Distrito 2', 'CD Posto 2', 'CD Localidade 2', 'CD Zona 2');

-- --------------------------------------------------------

--
-- Table structure for table `complementary_entities`
--

CREATE TABLE `complementary_entities` (
  `entity_id` int(11) NOT NULL,
  `contact_number` int(9) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complementary_entities`
--

INSERT INTO `complementary_entities` (`entity_id`, `contact_number`, `email`, `website`) VALUES
(4, 848839501, 'isauramulungo@gmail.com', 'https://www.meusite.com');

-- --------------------------------------------------------

--
-- Table structure for table `espacial_entities`
--

CREATE TABLE `espacial_entities` (
  `entity_id` int(11) NOT NULL,
  `latitude` decimal(10,0) DEFAULT NULL,
  `latitude_dms` varchar(20) DEFAULT NULL,
  `longitude` decimal(10,0) DEFAULT NULL,
  `longitude_dms` varchar(20) DEFAULT NULL,
  `sea_rise` varchar(20) DEFAULT NULL,
  `via_lat_start` varchar(20) DEFAULT NULL,
  `via_lat_end` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `espacial_entities`
--

INSERT INTO `espacial_entities` (`entity_id`, `latitude`, `latitude_dms`, `longitude`, `longitude_dms`, `sea_rise`, `via_lat_start`, `via_lat_end`) VALUES
(4, 10, '4.343', 9, '4.48994', '4.40404', '3.666', '4.67');

-- --------------------------------------------------------

--
-- Table structure for table `gz_admin_post`
--

CREATE TABLE `gz_admin_post` (
  `id` int(2) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) NOT NULL,
  `admin_post` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gz_admin_post`
--

INSERT INTO `gz_admin_post` (`id`, `province`, `district`, `admin_post`) VALUES
(1, 'Gaza', 'GZ Distrito 1', 'GZ Posto 1'),
(2, 'Gaza', 'GZ Distrito 2', 'GZ Posto 2');

-- --------------------------------------------------------

--
-- Table structure for table `gz_cell`
--

CREATE TABLE `gz_cell` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `cell` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gz_cell`
--

INSERT INTO `gz_cell` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `cell`) VALUES
('001', 'Gaza', 'GZ Distrito 1', 'GZ Posto 1', 'GZ Localidade 1', 'GZ Celula 1'),
('002', 'Gaza', 'GZ Distrito 2', 'GZ Posto 2', 'GZ Localidade 2', 'GZ Celula 2');

-- --------------------------------------------------------

--
-- Table structure for table `gz_circle`
--

CREATE TABLE `gz_circle` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `circle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gz_circle`
--

INSERT INTO `gz_circle` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `circle`) VALUES
('001', 'Gaza', 'GZ Distrito 1', 'GZ Posto 1', 'GZ Localidade 1', 'GZ Circulo 1'),
('002', 'Gaza', 'GZ Distrito 2', 'GZ Posto 2', 'GZ Localidade 2', 'GZ Circulo 2');

-- --------------------------------------------------------

--
-- Table structure for table `gz_district`
--

CREATE TABLE `gz_district` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gz_district`
--

INSERT INTO `gz_district` (`id`, `province`, `district`) VALUES
('01', 'Gaza', 'GZ Distrito 1'),
('02', 'Gaza', 'GZ Distrito 2');

-- --------------------------------------------------------

--
-- Table structure for table `gz_neighborhood_locality`
--

CREATE TABLE `gz_neighborhood_locality` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gz_neighborhood_locality`
--

INSERT INTO `gz_neighborhood_locality` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`) VALUES
('001', 'Gaza', 'GZ Distrito 1', 'GZ Posto 1', 'GZ Localidade 1'),
('002', 'Gaza', 'GZ Distrito 2', 'GZ Posto 2', 'GZ Localidade 2');

-- --------------------------------------------------------

--
-- Table structure for table `gz_township`
--

CREATE TABLE `gz_township` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `township` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gz_township`
--

INSERT INTO `gz_township` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `township`) VALUES
('001', 'Gaza', 'GZ Distrito 1', 'GZ Posto 1', 'GZ Localidade 1', 'GZ Povoacao 1'),
('002', 'Gaza', 'GZ Distrito 2', 'GZ Posto 2', 'GZ Localidade 2', 'GZ Povoacao 2');

-- --------------------------------------------------------

--
-- Table structure for table `gz_village`
--

CREATE TABLE `gz_village` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gz_village`
--

INSERT INTO `gz_village` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `village`) VALUES
('001', 'Gaza', 'GZ Distrito 1', 'GZ Posto 1', 'GZ Localidade 1', 'GZ Vila 1'),
('002', 'Gaza', 'GZ Distrito 2', 'GZ Posto 2', 'GZ Localidade 2', 'GZ Vila 2');

-- --------------------------------------------------------

--
-- Table structure for table `gz_zone`
--

CREATE TABLE `gz_zone` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `zone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gz_zone`
--

INSERT INTO `gz_zone` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `zone`) VALUES
('001', 'Gaza', 'GZ Distrito 1', 'GZ Posto 1', 'GZ Localidade 1', 'GZ Zona 1'),
('002', 'Gaza', 'GZ Distrito 2', 'GZ Posto 2', 'GZ Localidade 2', 'GZ Zona 2');

-- --------------------------------------------------------

--
-- Table structure for table `heritage_entities`
--

CREATE TABLE `heritage_entities` (
  `entity_id` int(11) NOT NULL,
  `property_type` varchar(20) DEFAULT NULL,
  `floor` varchar(20) DEFAULT NULL,
  `side` varchar(10) DEFAULT NULL,
  `door_number` int(6) DEFAULT NULL,
  `road_name` varchar(50) DEFAULT NULL,
  `road_type` varchar(10) DEFAULT NULL,
  `stalemate` varchar(20) DEFAULT NULL,
  `viaduct` varchar(30) DEFAULT NULL,
  `block` char(4) DEFAULT NULL,
  `roundabout` varchar(20) DEFAULT NULL,
  `lane` varchar(30) DEFAULT NULL,
  `wide` varchar(30) DEFAULT NULL,
  `bridges` varchar(30) DEFAULT NULL,
  `plaza` varchar(30) DEFAULT NULL,
  `length` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  `occupancy` varchar(20) DEFAULT NULL,
  `affectation` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `heritage_entities`
--

INSERT INTO `heritage_entities` (`entity_id`, `property_type`, `floor`, `side`, `door_number`, `road_name`, `road_type`, `stalemate`, `viaduct`, `block`, `roundabout`, `lane`, `wide`, `bridges`, `plaza`, `length`, `width`, `occupancy`, `affectation`) VALUES
(4, 'Casa Geminada', 'R/C', 'lado a', 34, 'AV. Karl Max', 'Avenida', 'imasse a', ' viaduto a', '1009', 'rotunda a', 'travessa a', 'largo a', 'ponte a', 'praca 1', 22, 22, 'ocupacao a', 'afetacao a');

-- --------------------------------------------------------

--
-- Table structure for table `in_admin_post`
--

CREATE TABLE `in_admin_post` (
  `id` varchar(2) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) NOT NULL,
  `admin_post` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `in_admin_post`
--

INSERT INTO `in_admin_post` (`id`, `province`, `district`, `admin_post`) VALUES
('01', 'Inhambane', 'IN Distrito 1', 'IN Posto 1'),
('02', 'Inhambane', 'IN Distrito 2', 'IN Posto 2');

-- --------------------------------------------------------

--
-- Table structure for table `in_cell`
--

CREATE TABLE `in_cell` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `cell` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `in_cell`
--

INSERT INTO `in_cell` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `cell`) VALUES
('001', 'Inhambane', 'IN Distrito 1', 'IN Posto 1', 'IN Localidade 1', 'IN Celula 1'),
('002', 'Inhambane', 'IN Distrito 2', 'IN Posto 2', 'IN Localidade 2', 'IN Celula 2');

-- --------------------------------------------------------

--
-- Table structure for table `in_circle`
--

CREATE TABLE `in_circle` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `circle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `in_circle`
--

INSERT INTO `in_circle` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `circle`) VALUES
('001', 'Inhambane', 'IN Distrito 1', 'IN Posto 1', 'IN Localidade 1', 'IN Circulo 1'),
('002', 'Inhambane', 'IN Distrito 2', 'IN Posto 2', 'IN Localidade 2', 'IN Circulo 2');

-- --------------------------------------------------------

--
-- Table structure for table `in_district`
--

CREATE TABLE `in_district` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `in_district`
--

INSERT INTO `in_district` (`id`, `province`, `district`) VALUES
('01', 'Inhambane', 'IN Distrito 1'),
('02', 'Inhambane', 'IN Distrito 2');

-- --------------------------------------------------------

--
-- Table structure for table `in_neighborhood_locality`
--

CREATE TABLE `in_neighborhood_locality` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `in_neighborhood_locality`
--

INSERT INTO `in_neighborhood_locality` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`) VALUES
('001', 'Inhambane', 'IN Distrito 1', 'IN Posto 1', 'IN Localidade 1'),
('002', 'Inhambane', 'IN Distrito 2', 'IN Posto 2', 'IN Localidade 2');

-- --------------------------------------------------------

--
-- Table structure for table `in_township`
--

CREATE TABLE `in_township` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `township` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `in_township`
--

INSERT INTO `in_township` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `township`) VALUES
('001', 'Inhambane', 'IN Distrito 1', 'IN Posto 1', 'IN Localidade 1', 'IN Povoacao 1'),
('002', 'Inhambane', 'IN Distrito 2', 'IN Posto 2', 'IN Localidade 2', 'IN Povoacao 2');

-- --------------------------------------------------------

--
-- Table structure for table `in_village`
--

CREATE TABLE `in_village` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `in_village`
--

INSERT INTO `in_village` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `village`) VALUES
('001', 'Inhambane', 'IN Distrito 1', 'IN Posto 1', 'IN Localidade 1', 'IN Vila 1'),
('002', 'Inhambane', 'IN Distrito 2', 'IN Posto 2', 'IN Localidade 2', 'IN Vila 2');

-- --------------------------------------------------------

--
-- Table structure for table `in_zone`
--

CREATE TABLE `in_zone` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `zone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `in_zone`
--

INSERT INTO `in_zone` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `zone`) VALUES
('001', 'Inhambane', 'IN Distrito 1', 'IN Posto 1', 'IN Localidade 1', 'IN Zona 1'),
('002', 'Inhambane', 'IN Distrito 2', 'IN Posto 2', 'IN Localidade 2', 'IN Zona 2');

-- --------------------------------------------------------

--
-- Table structure for table `local_entities`
--

CREATE TABLE `local_entities` (
  `entity_id` int(11) NOT NULL,
  `cell` varchar(50) NOT NULL,
  `cell_id` varchar(3) NOT NULL,
  `circle` varchar(50) NOT NULL,
  `circle_id` varchar(3) NOT NULL,
  `village` varchar(50) NOT NULL,
  `village_id` varchar(3) NOT NULL,
  `township` varchar(50) NOT NULL,
  `township_id` varchar(3) NOT NULL,
  `zone` varchar(50) NOT NULL,
  `zone_id` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `local_entities`
--

INSERT INTO `local_entities` (`entity_id`, `cell`, `cell_id`, `circle`, `circle_id`, `village`, `village_id`, `township`, `township_id`, `zone`, `zone_id`) VALUES
(1, 'MC Celula 1', '001', 'MC Circulo 1', '001', 'MC Vila 1', '001', 'MC Povoacao 1', '001', 'MC Zona 1', '001'),
(2, 'IN Celula 1', '001', 'IN Circulo 1', '001', 'IN Vila 1', '001', 'IN Povoacao 1', '001', 'IN Zona 1', '001'),
(3, 'NS Celula 1', '001', 'NS Circulo 1', '001', 'NS Vila 1', '001', 'NS Povoacao 1', '001', 'NS Zona 1', '001'),
(4, 'MC Celula 1', '001', 'MC Circulo 1', '001', 'MC Vila 1', '001', 'MC Povoacao 1', '001', 'MC Zona 1', '001');

-- --------------------------------------------------------

--
-- Table structure for table `main_address_info`
--

CREATE TABLE `main_address_info` (
  `entity_id` int(11) NOT NULL,
  `province` varchar(20) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `road_name` varchar(50) DEFAULT NULL,
  `floor` varchar(15) DEFAULT NULL,
  `door_number` int(5) DEFAULT NULL,
  `city_block` int(5) DEFAULT NULL,
  `cep` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `phone_number` int(9) DEFAULT NULL,
  `responsible` varchar(50) DEFAULT NULL,
  `registration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_address_info`
--

INSERT INTO `main_address_info` (`entity_id`, `province`, `district`, `neighborhood_locality`, `road_name`, `floor`, `door_number`, `city_block`, `cep`, `email`, `website`, `phone_number`, `responsible`, `registration_date`) VALUES
(4, 'Maputo Cidade', 'MC Distrito 1', 'MC Bairro 1', 'AV. Karl Max', 'R/C', 34, 7, 'MC001 1009A', 'isauramulungo@gmail.com', 'https://www.meusite.com', 848839501, 'admin', '2022-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `mc_admin_post`
--

CREATE TABLE `mc_admin_post` (
  `id` varchar(2) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) NOT NULL,
  `admin_post` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mc_admin_post`
--

INSERT INTO `mc_admin_post` (`id`, `province`, `district`, `admin_post`) VALUES
('01', 'Maputo Cidade', 'TT Distrito 1', 'TT Posto 1'),
('02', 'Maputo Cidade', 'MC Distrito 2', 'MC Posto 2'),
('03', 'Maputo Cidade', 'MC Distrito 3', 'MC Posto 3');

-- --------------------------------------------------------

--
-- Table structure for table `mc_cell`
--

CREATE TABLE `mc_cell` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `cell` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mc_cell`
--

INSERT INTO `mc_cell` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `cell`) VALUES
('001', 'Maputo Cidade', 'MC Distrito 1', 'MC Posto 1', 'MC Bairro 1', 'MC Celula 1'),
('002', 'Maputo Cidade', 'MC Distrito 2', 'MC Posto 2', 'MC Bairro 2', 'MC Celula 2'),
('003', 'Maputo Cidade', 'MC Distrito 3', 'MC Posto 3', 'MC Bairro 3', 'MC Celula 3');

-- --------------------------------------------------------

--
-- Table structure for table `mc_circle`
--

CREATE TABLE `mc_circle` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `circle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mc_circle`
--

INSERT INTO `mc_circle` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `circle`) VALUES
('001', 'Maputo Cidade', 'MC Distrito 1', 'MC Posto 1', 'MC Bairro 1', 'MC Circulo 1'),
('002', 'Maputo Cidade', 'MC Distrito 2', 'MC Posto 2', 'MC Bairro 2', 'MC Circulo 2'),
('003', 'Maputo Cidade', 'MC Distrito 3', 'MC Posto 3', 'MC Bairro 3', 'MC Circulo 3');

-- --------------------------------------------------------

--
-- Table structure for table `mc_district`
--

CREATE TABLE `mc_district` (
  `id` varchar(2) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mc_district`
--

INSERT INTO `mc_district` (`id`, `province`, `district`) VALUES
('01', 'Maputo Cidade', 'MC Distrito 1'),
('02', 'Maputo Cidade', 'MC Disrito 2'),
('03', 'Maputo Cidade', 'MC Distrito 3');

-- --------------------------------------------------------

--
-- Table structure for table `mc_neighborhood_locality`
--

CREATE TABLE `mc_neighborhood_locality` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) NOT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mc_neighborhood_locality`
--

INSERT INTO `mc_neighborhood_locality` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`) VALUES
('001', 'Maputo Cidade', 'MC Distrito 1', 'MC Posto 1', 'MC Bairro 1'),
('002', 'Maputo Cidade', 'MC Distrito 2', 'MC Posto 2', 'MC Bairro 2'),
('003', 'Maputo Cidade', 'MC Distrito 3', 'MC Posto 3', 'MC Bairro 3');

-- --------------------------------------------------------

--
-- Table structure for table `mc_township`
--

CREATE TABLE `mc_township` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `township` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mc_township`
--

INSERT INTO `mc_township` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `township`) VALUES
('001', 'Maputo Cidade', 'MC Distrito 1', 'MC Posto 1', 'MC Bairro 1', 'MC Povoacao 1'),
('002', 'Maputo Cidade', 'MC Distrito 2', 'MC Posto 2', 'MC Bairro 2', 'MC Povoacao 2'),
('003', 'Maputo Cidade', 'MC Distrito 3', 'MC Posto 3', 'MC Bairro 3', 'MC Povoacao 3');

-- --------------------------------------------------------

--
-- Table structure for table `mc_village`
--

CREATE TABLE `mc_village` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mc_village`
--

INSERT INTO `mc_village` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `village`) VALUES
('001', 'Maputo Cidade', 'MC Distrito 1', 'MC Posto 1', 'MC Bairro 1', 'MC Vila 1'),
('002', 'Maputo Cidade', 'MC Distrito 2', 'MC Posto 2', 'MC Bairro 2', 'MC Vila 2');

-- --------------------------------------------------------

--
-- Table structure for table `mc_zone`
--

CREATE TABLE `mc_zone` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `zone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mc_zone`
--

INSERT INTO `mc_zone` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `zone`) VALUES
('001', 'Maputo Cidade', 'MC Distrito 1', 'MC Posto 1', 'MC Bairro 1', 'MC Zona 1'),
('002', 'Maputo Cidade', 'MC Distrito 2', 'MC Posto 2', 'MC Bairro 2', 'MC Zona 2'),
('003', 'Maputo Cidade', 'MC Distrito 3', 'MC Posto 3', 'MC Bairro 3', 'MC Zona 3');

-- --------------------------------------------------------

--
-- Table structure for table `mn_admin_post`
--

CREATE TABLE `mn_admin_post` (
  `id` varchar(2) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) NOT NULL,
  `admin_post` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mn_admin_post`
--

INSERT INTO `mn_admin_post` (`id`, `province`, `district`, `admin_post`) VALUES
('01', 'Manica', 'MN Distrito 1', 'MN Posto 1'),
('02', 'Manica', 'MN Distrito 2', 'MN Posto 2');

-- --------------------------------------------------------

--
-- Table structure for table `mn_cell`
--

CREATE TABLE `mn_cell` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `cell` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mn_cell`
--

INSERT INTO `mn_cell` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `cell`) VALUES
('001', 'Manica', 'MN Distrito 1', 'MN Posto 1', 'MN Localidade 1', 'MN Celula 1'),
('002', 'Manica', 'MN Distrito 2', 'MN Posto 2', 'MN Localidade 2', 'MN Celula 2');

-- --------------------------------------------------------

--
-- Table structure for table `mn_circle`
--

CREATE TABLE `mn_circle` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `circle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mn_circle`
--

INSERT INTO `mn_circle` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `circle`) VALUES
('001', 'Manica', 'MN Distrito 1', 'MN Posto 1', 'MN Localidade 1', 'MN Circulo 1'),
('002', 'Manica', 'MN Distrito 2', 'MN Posto 2', 'MN Localidade 2', 'MN Circulo 2');

-- --------------------------------------------------------

--
-- Table structure for table `mn_district`
--

CREATE TABLE `mn_district` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mn_district`
--

INSERT INTO `mn_district` (`id`, `province`, `district`) VALUES
('01', 'Manica', 'MN Distrito 1'),
('02', 'Manica', 'MN Distrito 2');

-- --------------------------------------------------------

--
-- Table structure for table `mn_neighborhood_locality`
--

CREATE TABLE `mn_neighborhood_locality` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mn_neighborhood_locality`
--

INSERT INTO `mn_neighborhood_locality` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`) VALUES
('001', 'Manica', 'MN Distrito 1', 'MN Posto 1', 0),
('002', 'Manica', 'MN Distrito 2', 'MN Posto 2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mn_township`
--

CREATE TABLE `mn_township` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `township` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mn_township`
--

INSERT INTO `mn_township` (`id`, `province`, `township`, `district`, `admin_post`, `neighborhood_locality`) VALUES
('001', 'Manica', 'MN Povoacao 1', 'MN Distrito 1', 'MN Posto 1', 'MN Localidade 1'),
('002', 'Manica', 'MN Povoacao 2', 'MN Distrito 2', 'MN Posto 2', 'MN Localidade 2');

-- --------------------------------------------------------

--
-- Table structure for table `mn_village`
--

CREATE TABLE `mn_village` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mn_village`
--

INSERT INTO `mn_village` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `village`) VALUES
('001', 'Manica', 'MN Distrito 1', 'MN Posto 1', 'MN Localidade 1', 'MN Vila 1'),
('002', 'Manica', 'MN Distrito 2', 'MN Posto 2', 'MN Localidade 2', 'MN Vila 2');

-- --------------------------------------------------------

--
-- Table structure for table `mn_zone`
--

CREATE TABLE `mn_zone` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `zone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mn_zone`
--

INSERT INTO `mn_zone` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `zone`) VALUES
('001', 'Manica', 'MN Distrito 1', 'MN Posto 1', 'MN Localidade 1', 'MN Zona 1'),
('002', 'Manica', 'MN Distrito 2', 'MN Posto 2', 'MN Localidade 2', 'MN Zona 2');

-- --------------------------------------------------------

--
-- Table structure for table `mp_admin_post`
--

CREATE TABLE `mp_admin_post` (
  `id` varchar(2) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) NOT NULL,
  `admin_post` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mp_admin_post`
--

INSERT INTO `mp_admin_post` (`id`, `province`, `district`, `admin_post`) VALUES
('01', 'Maputo Província', 'MP Distrito 1', 'MP Posto 1'),
('03', 'Maputo Província', 'MP Distrito 3', 'MP Posto 3');

-- --------------------------------------------------------

--
-- Table structure for table `mp_cell`
--

CREATE TABLE `mp_cell` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `cell` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mp_cell`
--

INSERT INTO `mp_cell` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `cell`) VALUES
('001', 'Maputo Província', 'MP Distrito 1', 'MP Posto 1', 'MP Localidade 1', 'MP Celula 1'),
('002', 'Maputo Província', 'MP Distrito 2', 'MP Posto 2', 'MP Localidade 2', 'MP Celula 2'),
('003', 'Maputo Província', 'MP Distrito 3', 'MP Posto 3', 'MP Localidade 3', 'MP Celula 3');

-- --------------------------------------------------------

--
-- Table structure for table `mp_circle`
--

CREATE TABLE `mp_circle` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `circle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mp_circle`
--

INSERT INTO `mp_circle` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `circle`) VALUES
('001', 'Maputo Província', 'MP Distrito 1', 'MP Posto 1', 'MP Localidade 1', 'MP Circulo 1'),
('002', 'Maputo Província', 'MP Distrito 2', 'MP Posto 2', 'MP Localidade 2', 'MP Circulo 2'),
('003', 'Maputo Província', 'MP Distrito 3', 'MP Posto 3', 'MP Localidade 3', 'MP Circulo 3');

-- --------------------------------------------------------

--
-- Table structure for table `mp_district`
--

CREATE TABLE `mp_district` (
  `id` varchar(2) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mp_district`
--

INSERT INTO `mp_district` (`id`, `province`, `district`) VALUES
('02', 'Maputo Província', 'MP Distrito 2'),
('03', 'Maputo Província', 'MP Distrito 3');

-- --------------------------------------------------------

--
-- Table structure for table `mp_neighborhood_locality`
--

CREATE TABLE `mp_neighborhood_locality` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mp_neighborhood_locality`
--

INSERT INTO `mp_neighborhood_locality` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`) VALUES
('001', 'Maputo Província', 'MP Distrito 1', 'MP Posto 1', 'MP Localidade 1'),
('002', 'Maputo Província', 'MP Distrito 2', 'MP Posto 2', 'MP Localidade 2'),
('003', 'Maputo Província', 'MP Distrito 3', 'MP Posto 3', 'MP Localidade 3');

-- --------------------------------------------------------

--
-- Table structure for table `mp_township`
--

CREATE TABLE `mp_township` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `township` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mp_township`
--

INSERT INTO `mp_township` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `township`) VALUES
('001', 'Maputo Província', 'MP Distrito 1', 'MP Posto 1', 'MP Localidade 1', 'MP Povoacao 1'),
('002', 'Maputo Província', 'MP Distrito 2', 'MP Posto 2', 'MP Localidade 2', 'MP Povoacao 2'),
('003', 'Maputo Província', 'MP Distrito 3', 'MP Posto 3', 'MP Localidade 3', 'MP Povoacao 3');

-- --------------------------------------------------------

--
-- Table structure for table `mp_village`
--

CREATE TABLE `mp_village` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mp_village`
--

INSERT INTO `mp_village` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `village`) VALUES
('001', 'Maputo Província', 'MP Distrito 1', 'MP Posto 1', 'MP Localidade 1', 'MP Vila 1'),
('002', 'Maputo Província', 'MP Distrito 2', 'MP Posto 2', 'MP Localidade 2', 'MP Vila 2'),
('003', 'Maputo Província', 'MP Distrito 3', 'MP Posto 3', 'MP Localidade 3', 'MP Vila 3');

-- --------------------------------------------------------

--
-- Table structure for table `mp_zone`
--

CREATE TABLE `mp_zone` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `zone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mp_zone`
--

INSERT INTO `mp_zone` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `zone`) VALUES
('001', 'Maputo Província', 'MP Distrito 1', 'MP Posto 1', 'MP Localidade 1', 'MP Zona 1'),
('002', 'Maputo Província', 'MP Distrito 2', 'MP Posto 2', 'MP Localidade 2', 'MP Zona 2'),
('003', 'Maputo Província', 'MP Distrito 3', 'MP Posto 3', 'MP Localidade 3', 'MP Zona 3');

-- --------------------------------------------------------

--
-- Table structure for table `np_admin_post`
--

CREATE TABLE `np_admin_post` (
  `id` varchar(2) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) NOT NULL,
  `admin_post` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `np_admin_post`
--

INSERT INTO `np_admin_post` (`id`, `province`, `district`, `admin_post`) VALUES
('01', 'Nampula', 'NP Distrito 1', 'NP Posto 1'),
('02', 'Nampula', 'NP Distrito 2', 'NP Posto 2');

-- --------------------------------------------------------

--
-- Table structure for table `np_cell`
--

CREATE TABLE `np_cell` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `cell` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `np_cell`
--

INSERT INTO `np_cell` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `cell`) VALUES
('001', 'Nampula', 'NP Distrito 1', 'NP Posto 1', 'NP Localidade 1', 'NP Celula 1'),
('002', 'Nampula', 'NP Distrito 2', 'NP Posto 2', 'NP Localidade 2', 'NP Celula 2');

-- --------------------------------------------------------

--
-- Table structure for table `np_circle`
--

CREATE TABLE `np_circle` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `circle` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `np_circle`
--

INSERT INTO `np_circle` (`id`, `province`, `circle`, `district`, `admin_post`, `neighborhood_locality`) VALUES
('001', 'Nampula', 'NP Circulo 1', 'NP Distrito 1', 'NP Posto 1', 'NP Localidade 1'),
('002', 'Nampula', 'NP Circulo 2', 'NP Distrito 2', 'NP Posto 2', 'NP Localidade 2');

-- --------------------------------------------------------

--
-- Table structure for table `np_district`
--

CREATE TABLE `np_district` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `np_district`
--

INSERT INTO `np_district` (`id`, `province`, `district`) VALUES
('01', 'Nampula', 'NP Distrito 1'),
('02', 'Nampula', 'NP Distrito 2');

-- --------------------------------------------------------

--
-- Table structure for table `np_neighborhood_locality`
--

CREATE TABLE `np_neighborhood_locality` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `np_neighborhood_locality`
--

INSERT INTO `np_neighborhood_locality` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`) VALUES
('001', 'Nampula', 'NP Distrito 1', 'NP Posto 1', 'NP Localidade 1'),
('002', 'Nampula', 'NP Distrito 2', 'NP Posto 2', 'NP Localidade 2');

-- --------------------------------------------------------

--
-- Table structure for table `np_township`
--

CREATE TABLE `np_township` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `township` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `np_township`
--

INSERT INTO `np_township` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `township`) VALUES
('001', 'Nampula', 'NP Distrito 1', 'NP Posto 1', 'NP Localidade 1', 'NP Povoacao 1'),
('002', 'Nampula', 'NP Distrito 2', 'NP Posto 2', 'NP Localidade 2', 'NP Povoacao 2');

-- --------------------------------------------------------

--
-- Table structure for table `np_village`
--

CREATE TABLE `np_village` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `np_village`
--

INSERT INTO `np_village` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `village`) VALUES
('001', 'Nampula', 'NP Distrito 1', 'NP Posto 1', 'NP Localidade 1', 'NP Vila 1'),
('002', 'Nampula', 'NP Distrito 2', 'NP Posto 2', 'NP Localidade 2', 'NP Vila 2');

-- --------------------------------------------------------

--
-- Table structure for table `np_zone`
--

CREATE TABLE `np_zone` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `zone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `np_zone`
--

INSERT INTO `np_zone` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `zone`) VALUES
('001', 'Nampula', 'NP Distrito 1', 'NP Posto 1', 'NP Localidade 1', 'NP Zona 1'),
('002', 'Nampula', 'NP Distrito 2', 'NP Posto 2', 'NP Localidade 2', 'NP Zona 2');

-- --------------------------------------------------------

--
-- Table structure for table `ns_admin_post`
--

CREATE TABLE `ns_admin_post` (
  `id` varchar(2) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ns_admin_post`
--

INSERT INTO `ns_admin_post` (`id`, `province`, `district`, `admin_post`) VALUES
('01', 'Niassa', 'NS Distrito 1', 'NS Posto 1'),
('02', 'Niassa', 'NS Distrito 2', 'NS Posto 2');

-- --------------------------------------------------------

--
-- Table structure for table `ns_cell`
--

CREATE TABLE `ns_cell` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `cell` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ns_cell`
--

INSERT INTO `ns_cell` (`id`, `province`, `cell`, `district`, `admin_post`, `neighborhood_locality`) VALUES
('001', 'Niassa', 'NS Celula 1', 'NS Distrito 1', 'NS Posto 1', 'NS Localidade 1'),
('002', 'Niassa', 'NS Celula 2', 'NS Distrito 2', 'NS Posto 2', 'NS Localidade 2');

-- --------------------------------------------------------

--
-- Table structure for table `ns_circle`
--

CREATE TABLE `ns_circle` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `circle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ns_circle`
--

INSERT INTO `ns_circle` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `circle`) VALUES
('001', 'Niassa', 'NS Distrito 1', 'NS Posto 1', 'NS Localidade 1', 'NS Circulo 1'),
('002', 'Niassa', 'NS Distrito 2', 'NS Posto 2', 'NS Localidade 2', 'NS Circulo 2');

-- --------------------------------------------------------

--
-- Table structure for table `ns_district`
--

CREATE TABLE `ns_district` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ns_district`
--

INSERT INTO `ns_district` (`id`, `province`, `district`) VALUES
('01', 'Niassa', 'NS Distrito 1'),
('02', 'Niassa', 'NS Distrito 2');

-- --------------------------------------------------------

--
-- Table structure for table `ns_neighborhood_locality`
--

CREATE TABLE `ns_neighborhood_locality` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ns_neighborhood_locality`
--

INSERT INTO `ns_neighborhood_locality` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`) VALUES
('001', 'Niassa', 'NS Distrito 1', 'NS Posto 1', 'NS Localidade 1'),
('002', 'Niassa', 'NS Distrito 2', 'NS Posto 2', 'NS Localidade 2');

-- --------------------------------------------------------

--
-- Table structure for table `ns_township`
--

CREATE TABLE `ns_township` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `township` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ns_township`
--

INSERT INTO `ns_township` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `township`) VALUES
('001', 'Niassa', 'NS Distrito 1', 'NS Posto 1', 'NS Localidade 1', 'NS Povoacao 1'),
('002', 'Niassa', 'NS Distrito 2', 'NS Posto 2', 'NS Localidade 2', 'NS Povoacao 2');

-- --------------------------------------------------------

--
-- Table structure for table `ns_village`
--

CREATE TABLE `ns_village` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `village` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ns_village`
--

INSERT INTO `ns_village` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `village`) VALUES
('001', 'Niassa', 'NS Distrito 1', 'NS Posto 1', 'NS Localidade 1', 'NS Vila 1'),
('002', 'Niassa', 'NS Distrito 2', 'NS Posto 2', 'NS Localidade 2', 'NS Vila 2');

-- --------------------------------------------------------

--
-- Table structure for table `ns_zone`
--

CREATE TABLE `ns_zone` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `zone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ns_zone`
--

INSERT INTO `ns_zone` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `zone`) VALUES
('001', 'Niassa', 'NS Distrito 1', 'NS Posto 1', 'NS Localidade 1', 'NS Zona 1'),
('002', 'Niassa', 'NS Distrito 2', 'NS Posto 2', 'NS Localidade 2', 'NS Zona 2');

-- --------------------------------------------------------

--
-- Table structure for table `postal_entities`
--

CREATE TABLE `postal_entities` (
  `entity_id` int(11) NOT NULL,
  `city_block` int(3) DEFAULT NULL,
  `lateral` char(1) DEFAULT NULL,
  `entry` char(1) DEFAULT NULL,
  `mailbox` varchar(30) DEFAULT NULL,
  `post_office` varchar(30) DEFAULT NULL,
  `postal_code` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `postal_entities`
--

INSERT INTO `postal_entities` (`entity_id`, `city_block`, `lateral`, `entry`, `mailbox`, `post_office`, `postal_code`) VALUES
(4, 7, 'A', 'B', 'Caixa Postal a', 'Estacao a', 'MC001 1009A');

-- --------------------------------------------------------

--
-- Table structure for table `registration_info`
--

CREATE TABLE `registration_info` (
  `entity_id` int(11) NOT NULL,
  `registration_date` date DEFAULT NULL,
  `edition_date` date DEFAULT NULL,
  `user_role` varchar(10) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_info`
--

INSERT INTO `registration_info` (`entity_id`, `registration_date`, `edition_date`, `user_role`, `user_id`) VALUES
(4, '2022-05-23', NULL, 'Administra', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `sf_admin_post`
--

CREATE TABLE `sf_admin_post` (
  `id` varchar(2) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sf_admin_post`
--

INSERT INTO `sf_admin_post` (`id`, `province`, `district`, `admin_post`) VALUES
('01', 'Sofala', 'SF Distrito 1', 'SF Posto 1'),
('02', 'Sofala', 'SF Distrito 2', 'SF Posto 2');

-- --------------------------------------------------------

--
-- Table structure for table `sf_cell`
--

CREATE TABLE `sf_cell` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `cell` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sf_cell`
--

INSERT INTO `sf_cell` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `cell`) VALUES
('001', 'Sofala', 'SF Distrito 1', 'SF Posto 1', 'SF Localidade 1', 'SF Celula 1'),
('002', 'Sofala', 'SF Distrito 2', 'SF Posto 2', 'SF Localidade 2', 'SF Celula 2');

-- --------------------------------------------------------

--
-- Table structure for table `sf_circle`
--

CREATE TABLE `sf_circle` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `circle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sf_circle`
--

INSERT INTO `sf_circle` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `circle`) VALUES
('001', 'Sofala', 'SF Distrito 1', 'SF Posto 1', 'SF Localidade 1', 'SF Circulo 1'),
('002', 'Sofala', 'SF Distrito 2', 'SF Posto 2', 'SF Localidade 2', 'SF Circulo 2');

-- --------------------------------------------------------

--
-- Table structure for table `sf_district`
--

CREATE TABLE `sf_district` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sf_district`
--

INSERT INTO `sf_district` (`id`, `province`, `district`) VALUES
('01', 'Sofala', 'SF Distrito 1'),
('02', 'Sofala', 'SF Distrito 2');

-- --------------------------------------------------------

--
-- Table structure for table `sf_neighborhood_locality`
--

CREATE TABLE `sf_neighborhood_locality` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sf_neighborhood_locality`
--

INSERT INTO `sf_neighborhood_locality` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`) VALUES
('001', 'Sofala', 'SF Distrito 1', 'SF Posto 1', 'SF Localidade 1'),
('002', 'Sofala', 'SF Distrito 2', 'SF Posto 2', 'SF Localidade 2');

-- --------------------------------------------------------

--
-- Table structure for table `sf_township`
--

CREATE TABLE `sf_township` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `township` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sf_township`
--

INSERT INTO `sf_township` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `township`) VALUES
('001', 'Sofala', 'SF Distrito 1', 'SF Posto 1', 'SF Localidade 1', 'SF Povoacao 1'),
('002', 'Sofala', 'SF Distrito 2', 'SF Posto 2', 'SF Localidade 2', 'SF Povoacao 2');

-- --------------------------------------------------------

--
-- Table structure for table `sf_village`
--

CREATE TABLE `sf_village` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sf_village`
--

INSERT INTO `sf_village` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `village`) VALUES
('001', 'Sofala', 'SF Distrito 1', 'SF Posto 1', 'SF Localidade 1', 'SF Vila 1'),
('002', 'Sofala', 'SF Distrito 2', 'SF Posto 2', 'SF Localidade 2', 'SF Vila 2');

-- --------------------------------------------------------

--
-- Table structure for table `sf_zone`
--

CREATE TABLE `sf_zone` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `zone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sf_zone`
--

INSERT INTO `sf_zone` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `zone`) VALUES
('001', 'Sofala', 'SF Distrito 1', 'SF Posto 1', 'SF Localidade 1', 'SF Zona 1'),
('002', 'Sofala', 'SF Distrito 2', 'SF Posto 2', 'SF Localidade 2', 'SF Zona 2');

-- --------------------------------------------------------

--
-- Table structure for table `supervisors`
--

CREATE TABLE `supervisors` (
  `username` varchar(50) NOT NULL,
  `password` varchar(270) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `technician`
--

CREATE TABLE `technician` (
  `username` varchar(50) NOT NULL,
  `password` varchar(270) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teste`
--

CREATE TABLE `teste` (
  `provincia` varchar(50) NOT NULL,
  `distrito` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tt_admin_post`
--

CREATE TABLE `tt_admin_post` (
  `id` varchar(2) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tt_admin_post`
--

INSERT INTO `tt_admin_post` (`id`, `province`, `district`, `admin_post`) VALUES
('01', 'Tete', 'TT Distrito 1', 'TT Posto 1'),
('02', 'Tete', 'TT Distrito 2', 'TT Posto 2');

-- --------------------------------------------------------

--
-- Table structure for table `tt_cell`
--

CREATE TABLE `tt_cell` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `cell` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tt_cell`
--

INSERT INTO `tt_cell` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `cell`) VALUES
('001', 'Tete', 'TT Distrito 1', 'TT Posto 1', 'TT Localidade 1', 'TT Celula 1'),
('002', 'Tete', 'TT Distrito 2', 'TT Posto 2', 'TT Localidade 2', 'TT Celula 2');

-- --------------------------------------------------------

--
-- Table structure for table `tt_circle`
--

CREATE TABLE `tt_circle` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `circle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tt_circle`
--

INSERT INTO `tt_circle` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `circle`) VALUES
('001', 'Tete', 'TT Distrito 1', 'TT Posto 1', 'TT Localidade 1', 'TT Circulo 1'),
('002', 'Tete', 'TT Distrito 2', 'TT Posto 2', 'TT Localidade 2', 'TT Circulo 2');

-- --------------------------------------------------------

--
-- Table structure for table `tt_district`
--

CREATE TABLE `tt_district` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tt_district`
--

INSERT INTO `tt_district` (`id`, `province`, `district`) VALUES
('01', 'Tete', 'TT Distrito 1'),
('02', 'Tete', 'TT Distrito 2');

-- --------------------------------------------------------

--
-- Table structure for table `tt_neighborhood_locality`
--

CREATE TABLE `tt_neighborhood_locality` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tt_neighborhood_locality`
--

INSERT INTO `tt_neighborhood_locality` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`) VALUES
('001', 'Tete', 'TT Distrito 1', 'TT Posto 1', 'TT Localidade 1'),
('002', 'Tete', 'TT Distrito 2', 'TT Posto 2', 'TT Localidade 2');

-- --------------------------------------------------------

--
-- Table structure for table `tt_township`
--

CREATE TABLE `tt_township` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `township` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tt_township`
--

INSERT INTO `tt_township` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `township`) VALUES
('001', 'Tete', 'TT Distrito 1', 'TT Posto 1', 'TT Localidade 1', 'TT Povoacao 1'),
('002', 'Tete', 'TT Distrito 2', 'TT Posto 2', 'TT Localidade 2', 'TT Povoacao 2');

-- --------------------------------------------------------

--
-- Table structure for table `tt_village`
--

CREATE TABLE `tt_village` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `village` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tt_village`
--

INSERT INTO `tt_village` (`id`, `province`, `village`, `district`, `admin_post`, `neighborhood_locality`) VALUES
('001', 'Tete', 'TT Vila 1', 'TT Distrito 1', 'TT Posto 1', 'TT Localidade 1'),
('002', 'Tete', 'TT Vila 2', 'TT Distrito 2', 'TT Posto 2', 'TT Localidade 2');

-- --------------------------------------------------------

--
-- Table structure for table `tt_zone`
--

CREATE TABLE `tt_zone` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `zone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tt_zone`
--

INSERT INTO `tt_zone` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `zone`) VALUES
('001', 'Tete', 'TT Distrito 1', 'TT Posto 1', 'TT Localidade 1', 'TT Zona 1'),
('002', 'Tete', 'TT Distrito 2', 'TT Posto 2', 'TT Localidade 2', 'TT Zona 2');

-- --------------------------------------------------------

--
-- Table structure for table `zb_admin_post`
--

CREATE TABLE `zb_admin_post` (
  `id` varchar(2) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zb_admin_post`
--

INSERT INTO `zb_admin_post` (`id`, `province`, `district`, `admin_post`) VALUES
('01', 'Zambézia', 'ZB Distrito 1', 'ZB Posto 1'),
('02', 'Zambézia', 'ZB Distrito 2', 'ZB Posto 2');

-- --------------------------------------------------------

--
-- Table structure for table `zb_cell`
--

CREATE TABLE `zb_cell` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `cell` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zb_cell`
--

INSERT INTO `zb_cell` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `cell`) VALUES
('001', 'Zambézia', 'ZB Distrito 1', 'ZB Posto 1', 'ZB Localidade 1', 'ZB Celula 1'),
('002', 'Zambézia', 'ZB Distrito 2', 'ZB Posto 2', 'ZB Localidade 2', 'ZB Celula 2');

-- --------------------------------------------------------

--
-- Table structure for table `zb_circle`
--

CREATE TABLE `zb_circle` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `circle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zb_circle`
--

INSERT INTO `zb_circle` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `circle`) VALUES
('001', 'Zambézia', 'ZB Distrito 1', 'ZB Posto 1', 'ZB Localidade 1', 'ZB Circulo 1'),
('002', 'Zambézia', 'ZB Distrito 2', 'ZB Posto 2', 'ZB Localidade 2', 'ZB Circulo 2');

-- --------------------------------------------------------

--
-- Table structure for table `zb_district`
--

CREATE TABLE `zb_district` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zb_district`
--

INSERT INTO `zb_district` (`id`, `province`, `district`) VALUES
('01', 'Zambézia', 'ZB Distrito 1'),
('02', 'Zambézia', 'ZB Distrito 2');

-- --------------------------------------------------------

--
-- Table structure for table `zb_neighborhood_locality`
--

CREATE TABLE `zb_neighborhood_locality` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zb_neighborhood_locality`
--

INSERT INTO `zb_neighborhood_locality` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`) VALUES
('001', 'Zambézia', 'ZB Distrito 1', 'ZB Posto 1', 'ZB Localidade 1'),
('002', 'Zambézia', 'ZB Distrito 2', 'ZB Posto 2', 'ZB Localidade 2');

-- --------------------------------------------------------

--
-- Table structure for table `zb_township`
--

CREATE TABLE `zb_township` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `township` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zb_township`
--

INSERT INTO `zb_township` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `township`) VALUES
('001', 'Zambézia', 'ZB Distrito 1', 'ZB Posto 1', 'ZB Localidade 1', 'ZB Povoacao 1'),
('002', 'Zambézia', 'ZB Distrito 2', 'ZB Posto 2', 'ZB Localidade 2', 'ZB Povoacao 2');

-- --------------------------------------------------------

--
-- Table structure for table `zb_village`
--

CREATE TABLE `zb_village` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zb_village`
--

INSERT INTO `zb_village` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `village`) VALUES
('001', 'Zambézia', 'ZB Distrito 1', 'ZB Posto 1', 'ZB Localidade 1', 'ZB Vila 1'),
('002', 'Zambézia', 'ZB Distrito 2', 'ZB Posto 2', 'ZB Localidade 2', 'ZB Vila 2');

-- --------------------------------------------------------

--
-- Table structure for table `zb_zone`
--

CREATE TABLE `zb_zone` (
  `id` varchar(3) NOT NULL,
  `province` varchar(20) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `admin_post` varchar(50) DEFAULT NULL,
  `neighborhood_locality` varchar(50) DEFAULT NULL,
  `zone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zb_zone`
--

INSERT INTO `zb_zone` (`id`, `province`, `district`, `admin_post`, `neighborhood_locality`, `zone`) VALUES
('001', 'Zambézia', 'ZB Distrito 1', 'ZB Posto 1', 'ZB Localidade 1', 'ZB Zona 1'),
('002', 'Zambézia', 'ZB Distrito 2', 'ZB Posto 2', 'ZB Localidade 2', 'ZB Zona 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrative_entities`
--
ALTER TABLE `administrative_entities`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `cd_admin_post`
--
ALTER TABLE `cd_admin_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_cell`
--
ALTER TABLE `cd_cell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_circle`
--
ALTER TABLE `cd_circle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_district`
--
ALTER TABLE `cd_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_neighborhood_locality`
--
ALTER TABLE `cd_neighborhood_locality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_township`
--
ALTER TABLE `cd_township`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_village`
--
ALTER TABLE `cd_village`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_zone`
--
ALTER TABLE `cd_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complementary_entities`
--
ALTER TABLE `complementary_entities`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `espacial_entities`
--
ALTER TABLE `espacial_entities`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `gz_admin_post`
--
ALTER TABLE `gz_admin_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gz_cell`
--
ALTER TABLE `gz_cell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gz_circle`
--
ALTER TABLE `gz_circle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gz_district`
--
ALTER TABLE `gz_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gz_neighborhood_locality`
--
ALTER TABLE `gz_neighborhood_locality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gz_township`
--
ALTER TABLE `gz_township`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gz_village`
--
ALTER TABLE `gz_village`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gz_zone`
--
ALTER TABLE `gz_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heritage_entities`
--
ALTER TABLE `heritage_entities`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `in_admin_post`
--
ALTER TABLE `in_admin_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `in_cell`
--
ALTER TABLE `in_cell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `in_circle`
--
ALTER TABLE `in_circle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `in_district`
--
ALTER TABLE `in_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `in_neighborhood_locality`
--
ALTER TABLE `in_neighborhood_locality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `in_township`
--
ALTER TABLE `in_township`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `in_village`
--
ALTER TABLE `in_village`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `in_zone`
--
ALTER TABLE `in_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `local_entities`
--
ALTER TABLE `local_entities`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `main_address_info`
--
ALTER TABLE `main_address_info`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `mc_admin_post`
--
ALTER TABLE `mc_admin_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mc_cell`
--
ALTER TABLE `mc_cell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mc_circle`
--
ALTER TABLE `mc_circle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mc_district`
--
ALTER TABLE `mc_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mc_neighborhood_locality`
--
ALTER TABLE `mc_neighborhood_locality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mc_township`
--
ALTER TABLE `mc_township`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mc_village`
--
ALTER TABLE `mc_village`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mc_zone`
--
ALTER TABLE `mc_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_admin_post`
--
ALTER TABLE `mn_admin_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_cell`
--
ALTER TABLE `mn_cell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_circle`
--
ALTER TABLE `mn_circle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_district`
--
ALTER TABLE `mn_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_neighborhood_locality`
--
ALTER TABLE `mn_neighborhood_locality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_township`
--
ALTER TABLE `mn_township`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_village`
--
ALTER TABLE `mn_village`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mn_zone`
--
ALTER TABLE `mn_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_admin_post`
--
ALTER TABLE `mp_admin_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_cell`
--
ALTER TABLE `mp_cell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_circle`
--
ALTER TABLE `mp_circle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_district`
--
ALTER TABLE `mp_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_neighborhood_locality`
--
ALTER TABLE `mp_neighborhood_locality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_township`
--
ALTER TABLE `mp_township`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_village`
--
ALTER TABLE `mp_village`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_zone`
--
ALTER TABLE `mp_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_admin_post`
--
ALTER TABLE `np_admin_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_cell`
--
ALTER TABLE `np_cell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_circle`
--
ALTER TABLE `np_circle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_district`
--
ALTER TABLE `np_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_neighborhood_locality`
--
ALTER TABLE `np_neighborhood_locality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_township`
--
ALTER TABLE `np_township`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_village`
--
ALTER TABLE `np_village`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `np_zone`
--
ALTER TABLE `np_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ns_admin_post`
--
ALTER TABLE `ns_admin_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ns_cell`
--
ALTER TABLE `ns_cell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ns_circle`
--
ALTER TABLE `ns_circle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ns_district`
--
ALTER TABLE `ns_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ns_neighborhood_locality`
--
ALTER TABLE `ns_neighborhood_locality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ns_township`
--
ALTER TABLE `ns_township`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ns_village`
--
ALTER TABLE `ns_village`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ns_zone`
--
ALTER TABLE `ns_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postal_entities`
--
ALTER TABLE `postal_entities`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `registration_info`
--
ALTER TABLE `registration_info`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `sf_admin_post`
--
ALTER TABLE `sf_admin_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sf_cell`
--
ALTER TABLE `sf_cell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sf_circle`
--
ALTER TABLE `sf_circle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sf_district`
--
ALTER TABLE `sf_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sf_neighborhood_locality`
--
ALTER TABLE `sf_neighborhood_locality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sf_township`
--
ALTER TABLE `sf_township`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sf_village`
--
ALTER TABLE `sf_village`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sf_zone`
--
ALTER TABLE `sf_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technician`
--
ALTER TABLE `technician`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tt_admin_post`
--
ALTER TABLE `tt_admin_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_cell`
--
ALTER TABLE `tt_cell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_circle`
--
ALTER TABLE `tt_circle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_district`
--
ALTER TABLE `tt_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_neighborhood_locality`
--
ALTER TABLE `tt_neighborhood_locality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_township`
--
ALTER TABLE `tt_township`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_village`
--
ALTER TABLE `tt_village`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_zone`
--
ALTER TABLE `tt_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zb_admin_post`
--
ALTER TABLE `zb_admin_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zb_cell`
--
ALTER TABLE `zb_cell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zb_circle`
--
ALTER TABLE `zb_circle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zb_district`
--
ALTER TABLE `zb_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zb_neighborhood_locality`
--
ALTER TABLE `zb_neighborhood_locality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zb_township`
--
ALTER TABLE `zb_township`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zb_village`
--
ALTER TABLE `zb_village`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zb_zone`
--
ALTER TABLE `zb_zone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrative_entities`
--
ALTER TABLE `administrative_entities`
  MODIFY `entity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `complementary_entities`
--
ALTER TABLE `complementary_entities`
  MODIFY `entity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `espacial_entities`
--
ALTER TABLE `espacial_entities`
  MODIFY `entity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `heritage_entities`
--
ALTER TABLE `heritage_entities`
  MODIFY `entity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `local_entities`
--
ALTER TABLE `local_entities`
  MODIFY `entity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_address_info`
--
ALTER TABLE `main_address_info`
  MODIFY `entity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `postal_entities`
--
ALTER TABLE `postal_entities`
  MODIFY `entity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `registration_info`
--
ALTER TABLE `registration_info`
  MODIFY `entity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
