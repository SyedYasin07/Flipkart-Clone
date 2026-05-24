-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: flip
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (6,1,6),(7,1,7),(16,1,4),(17,1,10),(18,1,6),(19,1,9),(22,1,8),(23,1,5),(25,1,11),(26,1,7),(29,1,16),(30,1,6),(31,1,12),(32,1,8),(34,1,6);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `payment_mode` varchar(50) DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `order_status` varchar(30) DEFAULT 'PLACED',
  `Address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,'Online','2026-01-13 08:46:30','PLACED','Naidupeta, Garidi Street, 524126'),(2,1,2,'COD','2026-01-13 08:46:30','PLACED','Tirupati, Nawabpeta, 517501'),(3,1,3,'Online','2026-01-13 08:46:30','PLACED','Hyderabad, SR Nagar, 500081'),(4,1,4,'COD','2026-01-13 08:46:30','PLACED','Bangalore, Residency Road, 560001'),(5,1,4,'Online','2026-01-13 08:46:30','PLACED','Nellore, Balaji Nagar Road, 524001'),(6,1,4,'COD','2026-01-13 08:46:30','PLACED','Vishakapatnam, Dwaraka Nagar Main Road, 530016'),(22,1,1,'COD','2026-01-26 07:23:01','PLACED','tirupathi'),(23,1,1,'COD','2026-01-27 16:22:01','PLACED','naidupet'),(24,1,2,'COD','2026-02-08 07:19:25','PLACED','bangalore');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Printed Round Neck',999,'https://rukminim1.flixcart.com/image/312/312/l4rd0280/t-shirt/l/n/s/s-402a-austiz-original-imagfh4fmsjbsy69.jpeg?q=70','Shirts'),(2,'Printed Round Neck T-shirt',899,'https://rukminim1.flixcart.com/image/312/312/l4rd0280/t-shirt/c/y/x/m-408a-austiz-original-imagfh43wzj6hvyv.jpeg?q=70','Shirts'),(3,'Allen Solly Men\'s Printed Slim Fit Shirt',763,'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQXbSgPQdhSMlrxUBc-1dIxciPpuYP_bdcwiMpVC_iue2-8N4FPXDE3oc3cRg5mPpVY7cKtV8AnMlz1kQXoSvk-2v1s6rN8BHAAkoNtU5dc3dcjtOsbY68eSw','Shirts'),(4,'Printed Round Neck',549,'https://rukminim1.flixcart.com/image/312/312/xif0q/t-shirt/e/r/9/xl-st-smartees-pocket-black-smartees-original-imagh8ctwfczgdcx.jpeg?q=70','Shirts'),(5,'Samsung Crystal iSmart 4K Ultra HD Smart LED TV',47990,'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTmYfe28EaNPZRTAJYIpI7c4Y_tYC5hi5G2eckbE854PLqnGB48SaFtBOuMogFYf3vMgTEifeEbHAZqWGfQcYA09lMMyTcZlsUAQZq4yx0mWTbuhUN2SCrD','TV'),(6,'Realme Techlife Cinesonic 80 Cm 32 Inch Qled Hd Ready Smart Google Tv',8999,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQUo7RwJgye6ppHR1zoCAcsBW9H8I5LLRehQDcsUclyie4FmvnyGCO8D4IeJMpCzYo8EncHanTgASH18FdiRUq_NCJoEuyT_8ojKJYdCY4','TV'),(7,'LG UR75 Series 4K Ultra HD Smart LED TV',29990,'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSFEBqbuXPFzz_agMhAmtW7o1BAGw96ssc5B6_6tVe5B_gtCfC2rb6WEi5Mm-yZsYzAPInmCKHnX-SXTqCgTdG_JKpoiyaI8TyeMYIV8k6UnUyI_Tl8j1T','TV'),(8,'Sony Bravia KD-50X64L 4k Ultra HD Smart LED',35590,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSVo2WpA8BWpZKfQnEfgnpwTJi43FH1-hrS-Sl2Vmlecm2CysSdewdR4OkoVq7MzVFT9rrrfEs8ICrzfCY8NlTwfQrcpIcs8VZ-hp4VC9PtLyEKQ38ZPskceA','TV'),(9,'Realme P3x 5G',11999,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQfUjIJKZggue3C2k4dNNgcaymyDkqVn70sxiYgCGt9AGPhBLt3jJGs6-saYcB9E1jt9h7Kvxiy6bm9BNKkPG0vdSUa1GCEcKa7YSZb-Tju','Mobile'),(10,'Poco F6 5g',23999,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRrPnf2VYkna34m_JY4eNgJc-NF_NyeZOfAUft3_1Y5CusQpPXGx0dB8bnR0tA9mk-oGIImG18_BznCmV_xke8V0Yvqy-ZC_RQ4VAkiLUAj','Mobile'),(11,'Vivo T4 5G',21999,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSFuAft-aY4CjM0kE-ljn4thbRo30WNHbSI64GDfx_C2cDvLBah9WvPl90FuRx-Jg8vcqFmhCUfh6XeR7vps_dT2-M3CrsZgjZe8N3l6Y4','Mobile'),(12,'Apple iPhone 16 plus',84900,'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSzIKShfxmasLUcJ7xgJ7gm5Qu0Rhjz5t1MqEx-VwlnUaAt6G96fJdBW_d-09OfMjXWKhSBU8bvQeTec2R6Y8m8u1vefAiobx6LPaGxSms','Mobile'),(13,'Rolex Overfly Silver Gold Quartz Chain',3064,'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS8nUCu3VSungzgsycwziq0NWTrvlqx6NJIfeY_Rpw13kYq5hIQEscyVFU_RJ7Np3avxt2_N3R4gjx_cZTANlxmOcm1MC1GIZAbwNZrCKWb','Watches'),(14,'Titan Men\'s Neo Splash Analog Watch',7295,'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTuAbZgsdc3eKhncWpqlj3tiqSJCP5FLlZ5ZV81cUmYR9cZCVufguLgtflIoK1gfx9MH5zKD3t1w6qxeXv7v4HAhUUP-_qxx3LhOEcC-EI-G0UjnlOeSCel','Watches'),(15,'Timex Men\'s Analog Black Dial Watch',1399,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSRcjD5BAZVZ7-yCfn7TBZkUoCqFg5P28ekHC2AbcfyECe8brhRAq9_n8yCxjZRxjxZDslhn3yuTHRKkzmEH-maYDVmIJHZhkt97HoeOTksn0RkgQgmJZ5r','Watches'),(16,'Fastrack Optimus 2 Pro Smartwatch',2499,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQ3syisQYZC53GlcFnjLRK2I_thUhcPuGPAldJdhhcn4vS_b3o8v6bMTEwDJohYqgMhTS6clAoDL90gjipoVfLTP3XemroOM0e72tvqUDU','Watches'),(17,'Apple Airpods',8999,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTcW5UYSj3Da2J9FuNwFZH_w7nMubkNGL498tYWXSJBCC75XgHx3vAhHgdgn5XlqA6j96QqrLfGTPDNhUayMAyQugQuDhM42606Iz4dCoOTJs6sCjeMWwUa','Buds'),(18,'Boult Audio Mustang Torq',1799,'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSJMqfLjPN-kwdtnt4KTVGO2gv_1YOb7qMJkvjFgHdep_GO5XJdjegr7kvCtnPmOGjCbnFOayUM8IHz3hNYhJsfq2roRpn6jma6h3BjTgrdM-cRV-WRDqq14A','Buds'),(19,'Realme Buds T310',2199,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcS6z32ixOHBGZ3QuTirltE8IFvwaT83eZECh22c9LUGVk3Qa3HgWfIp06TqomNOOA9S9ZRQD1JhpD3jKYp2p48QVrnmbcd6_QdOO-YB95g','Buds'),(20,'OnePlus Buds Pro',6488,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQVGijlUW_qkarCe5rot3RJ-8Ez9c04g8EijfWgaA6lmK_W8t1Y7fcA3CorXPG9yw3L6QH_7e80nz_5RC2aMQPDNNJ5J3Rm6LqafY0Yrpo','Buds');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-24 22:34:33
