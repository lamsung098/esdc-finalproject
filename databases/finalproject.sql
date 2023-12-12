CREATE DATABASE  IF NOT EXISTS `final_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `final_project`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: final_project
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `role` int DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'nguyen','123456',0,NULL,NULL,0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `lastname` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone_number` varchar(11) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customeraddress`
--

DROP TABLE IF EXISTS `customeraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customeraddress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `phone_number` varchar(11) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `city` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `district` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ward` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `details` varchar(100) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customeraddress`
--

LOCK TABLES `customeraddress` WRITE;
/*!40000 ALTER TABLE `customeraddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `customeraddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `discount_id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `percent` double DEFAULT NULL,
  `active` int DEFAULT NULL,
  `expire_at` datetime DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourite`
--

DROP TABLE IF EXISTS `favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favourite` (
  `favourite_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  PRIMARY KEY (`favourite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourite`
--

LOCK TABLES `favourite` WRITE;
/*!40000 ALTER TABLE `favourite` DISABLE KEYS */;
/*!40000 ALTER TABLE `favourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `total` float DEFAULT NULL,
  `status` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `payment_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitem` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `total` float DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `method` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` varchar(10000) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `sold` int DEFAULT NULL,
  `image_path` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  `inventory_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Sony PlayStation 4 (Latest Model)- 500 GB Jet Black Console','The PlayStation 4 system opens the door to an incredible journey through immersive new gaming worlds and a deeply connected gaming community.',233.59,0,0,'product1',0,0,0),(2,'Clinique Repairwear Laser Focus Wrinkle Correcting Eye Cream  5ml','Rich eye cream plumps, hydrates, and diminishes the look of fine lines. Leaves eyes looking more radiant.',55,0,0,'product2',1,1,1),(3,'ANYDAY John Lewis & Partners Stoneware Pasta Bowls, Set of 4, 23cm, Yellow','A colourful exterior contrasts with a white interior on this set of four pasta bowls. Made of durable stoneware, this affordable contemporary design is both dishwasher and microwave safe for everyday use.\n\nWith great prices and great design, our new brand offers style and quality for modern living today. Whatever you need, there’s joy to be found in ANYDAY.\n\nChoose the perfect china\nAll our china is made from clay and kiln-fired for durability. Except for pieces with special trims, everything is dishwasher-safe.',16,0,0,'product3',2,2,2),(4,'Ghost Rayna High Neck Long Sleeved Gown, Fuschia','With a classic shift shape, this maxi dress by Ghost wears well with a subtle pattern to complement the plain fabric.\n\nElongating your line with its funnel neckline and long sleeves, this satin dress offers a smooth texture but the real drama comes from the deep, exposed back.\n\nAn ideal choice that is the perfect piece for a Black Tie event, this dress is easy to slip on for a night out that make sure you dazzle and shine.',147.5,0,0,'product4',3,3,3),(5,'Gabor Mostic Wide Fit Nubuck Sandals, Grey','A pair of sandals from Gabor made with nubuck uppers for a quality finish to your ensemble.\n\nSet on a low, flatform heel with a comfortable microfibre lining, the riptape strap ensures the perfect fit.\n\nHeel height:1.5 cm',37.5,0,0,'product5',4,4,4),(6,'Jools by Jenny Brown Cubic Zirconia Stud Earrings, Silver',' Pretty square cut sparkly cubic zirconia stud earrings from Jools by Jenny Brown. Add a polished finishing touch to any outfit.',45,0,0,'product6',5,5,5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productinventory`
--

DROP TABLE IF EXISTS `productinventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productinventory` (
  `inventory_id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productinventory`
--

LOCK TABLES `productinventory` WRITE;
/*!40000 ALTER TABLE `productinventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `productinventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `seller_id` int NOT NULL AUTO_INCREMENT,
  `shopname` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone_number` varchar(11) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `logo_path` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12 23:17:49
