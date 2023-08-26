-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: medidaily
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` varchar(50) NOT NULL,
  `employee_name` varchar(50) DEFAULT NULL,
  `employee_salary` int DEFAULT NULL,
  `shop_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `shop_id` (`shop_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('07E','Myles Linner',7458,'37S'),('08E','Mead Blincoe',6453,'71S'),('11E','Maryjo Imlaw',8788,'40S'),('13E','Edeline Oldman',8986,'71S'),('31E','Lowell Alty',6055,'26S'),('47E','Rorke Hallford',8933,'79S'),('59E','Nissa Ganny',9227,'52S'),('70E','Rozele Lutty',9554,'59S'),('83E','Artemas Simper',8144,'51S'),('84E ','Lin Hubble',6386,'77S');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offline_user`
--

DROP TABLE IF EXISTS `offline_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offline_user` (
  `offlineuser_id` int DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `offlineuser_name` varchar(50) DEFAULT NULL,
  `offlineuser_age` int DEFAULT NULL,
  `offlineuser_gender` varchar(50) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `offline_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offline_user`
--

LOCK TABLES `offline_user` WRITE;
/*!40000 ALTER TABLE `offline_user` DISABLE KEYS */;
INSERT INTO `offline_user` VALUES (566,'290-79-9252','Sile Itzhaki',20,'Female'),(581,'782-40-7842','Caressa Eite',62,'Female'),(881,'422-07-9745','Dulci Krysztofiak',53,'Female'),(674,'302-36-1416','Herb Dwelly',53,'Male'),(237,'290-56-0254','Carrie Robecon',57,'Female'),(928,'229-35-8525','Silvan Hamlyn',30,'Male'),(337,'279-90-5958','Tomasina Covil',82,'Female'),(165,'223-50-9494','Harlan Conkay',32,'Male'),(829,'263-37-3786','Moore Boch',85,'Agender');
/*!40000 ALTER TABLE `offline_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_user`
--

DROP TABLE IF EXISTS `online_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `online_user` (
  `online_user_id` int NOT NULL,
  `user_id` varchar(150) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `gender` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`online_user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `online_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_user`
--

LOCK TABLES `online_user` WRITE;
/*!40000 ALTER TABLE `online_user` DISABLE KEYS */;
INSERT INTO `online_user` VALUES (1,'635-37-3786','Elle Devine','629 Coolidge Circle','Female'),(2,'783-40-7842','Michaeline Plail','35894 Lakeland Hill','Female'),(3,'303-36-1416','Antonius Dowthwaite','2 Center Circle','Male'),(4,'690-56-0254','Axe Wartnaby','40 Farmco Way','Male'),(5,'729-35-8525','Des Catmull','9216 Saint Paul Alley','Male'),(6,'679-90-5958','Craig Emsden','0008 Melvin Hill','Male'),(7,'424-07-9745','Camey Flahive','240 Colorado Alley','Male'),(8,'203-50-9494','Kelly Eagan','6034 Jenifer Plaza','Male'),(9,'590-79-9252','Pammie Messager','509 Goodland Point','Female'),(10,'410-33-4446','Raymund Gawler','98 West Street','Female');
/*!40000 ALTER TABLE `online_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `date_of_expiry` date DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'acid reducer plus antacid','Inspection of Salivary Gland, Open Approach','$21.53','2025-03-13'),(2,'Famotidine','Excision of Left Hand Artery, Open Approach, Diagnostic','$25.54','2028-10-25'),(3,'Metoclopramide','Removal of Intraluminal Device from Up Art, Perc Approach','$46.79','2025-02-15'),(4,'Ofloxacin','Resection of Bilateral Ovaries, Via Opening w Perc Endo','$6.77','2028-02-13'),(5,'Mometasone Furoate','Release Left Lacrimal Duct, Via Opening','$32.28','2026-02-23'),(6,'Lyrica','Excision of Left Radius, Percutaneous Approach, Diagnostic','$54.35','2025-06-27'),(7,'ALNUS GLUTINOSA','Dilate R Ext Iliac Art, Bifurc, w Intralum Dev, Open','$86.45','2027-01-07'),(8,'AFRICA BIRD HOMME ALL IN ONE FRESH CONTROLLER','Revision of Ext Fix in R Knee Jt, Perc Approach','$74.32','2027-02-20'),(9,'Venlafaxine','Removal of Other Device from GU Tract, Extern Approach','$69.56','2027-07-19'),(10,'Alprazolam','Occlusion of R Fallopian Tube with Intralum Dev, Via Opening','$71.85','2028-09-02');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_supplier`
--

DROP TABLE IF EXISTS `product_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_supplier` (
  `product_id` int NOT NULL,
  `supplier_id` varchar(10) DEFAULT NULL,
  `supplier_quantity` int DEFAULT NULL,
  KEY `supplier_id` (`supplier_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_supplier_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  CONSTRAINT `product_supplier_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_supplier`
--

LOCK TABLES `product_supplier` WRITE;
/*!40000 ALTER TABLE `product_supplier` DISABLE KEYS */;
INSERT INTO `product_supplier` VALUES (2,'97S',471),(2,'58S',128),(1,'97S',282),(4,'58S',473),(5,'58S',259),(6,'21S',148),(7,'88S',543),(8,'40S',488),(8,'25S',348),(9,'29S',635);
/*!40000 ALTER TABLE `product_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_warehouse`
--

DROP TABLE IF EXISTS `product_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_warehouse` (
  `product_id` int NOT NULL,
  `warehouse_id` varchar(50) DEFAULT NULL,
  `warehouse_quantity` int DEFAULT NULL,
  KEY `product_id` (`product_id`),
  KEY `warehouse_id` (`warehouse_id`),
  CONSTRAINT `product_warehouse_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `product_warehouse_ibfk_2` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_warehouse`
--

LOCK TABLES `product_warehouse` WRITE;
/*!40000 ALTER TABLE `product_warehouse` DISABLE KEYS */;
INSERT INTO `product_warehouse` VALUES (1,'55W',528),(2,'55W',706),(1,'61W',188),(2,'61W',343),(3,'61W',83),(8,'93W',669),(5,'93W',332),(6,'57W',80),(7,'52W',5),(1,'17W',364);
/*!40000 ALTER TABLE `product_warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_id` varchar(50) NOT NULL,
  `comments` varchar(450) DEFAULT NULL,
  `ratings` int DEFAULT NULL,
  `online_user_id` int DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `online_user_id` (`online_user_id`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`online_user_id`) REFERENCES `online_user` (`online_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES ('19-650-6494','Nondisp fx of unsp ulna styloid pro, 7thD',5,6),('30-319-9961','Oth malignant neoplasm skin/ unsp eyelid, including canthus',1,7),('39-933-8711','Unsp physeal fracture of upper end of left tibia, sequela',2,1),('50-349-2126','Sltr-haris Type I physl fx low end rad, r arm, 7thG',1,3),('50-760-2762','Rupture of synovium, right hip',1,1),('55-181-9085','Tuberculous peripheral lymphadenopathy',3,2),('74-318-5230','Disp fx of nk of 5th MC bone, r hand, subs for fx w nonunion',4,4),('80-451-4582','Twin liveborn infant, born outside hospital',4,5),('89-443-2543','Intentional self-harm by airgun',2,2),('91-946-4594','Suprvsn of preg w insufficient antenat care, second tri',2,4);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `shop_id` varchar(50) NOT NULL,
  `shop_location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES ('26S','3116 Vahlen Point'),('37S','2116 Waywood Circle'),('40S','6 Johnson Lane'),('51S','97 Charing Cross Way'),('52S','251 Northland Junction'),('59S','7 Sundown Point'),('71S','74 Park Meadow Crossing'),('77S','44602 American Center'),('79S','148 Hudson Road'),('93S','6 Westridge Terrace');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplier_id` varchar(50) NOT NULL,
  `supplier_name` varchar(150) DEFAULT NULL,
  `supplier_address` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('18S','Lay Pechold','417 Jay Road'),('21S','Peirce Poulston','0 Wayridge Way'),('25S','Carmen Scampion','05400 Vidon Street'),('29S','Stern Sidary','67895 Randy Way'),('40S','Larine Filipov','15038 Fuller Terrace'),('58S','Marwin Upshall','90848 Straubel Drive'),('76S','Peggi Wickersley','35840 Bartelt Crossing'),('80S','Kippar Newbegin','2310 Monterey Circle'),('88S','George Parzis','045 Rutledge Alley'),('97S','Dalenna Petts','532 Longview Trail');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('203-50-9494'),('223-50-9494'),('229-35-8525'),('263-37-3786'),('279-90-5958'),('290-56-0254'),('290-79-9252'),('302-36-1416'),('303-36-1416'),('410-33-4446'),('412-33-4446'),('422-07-9745'),('424-07-9745'),('590-79-9252'),('635-37-3786'),('679-90-5958'),('690-56-0254'),('729-35-8525'),('782-40-7842'),('783-40-7842');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `warehouse_id` varchar(50) NOT NULL,
  `warehouse_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES ('03W','96 Meadow Ridge Crossing'),('17W','42915 Ilene Way'),('51W','3 Rutledge Pass'),('52W','25529 Mandrake Place'),('55W','25117 Debs Place'),('57W','5144 Luster Pass'),('61W','5747 Fieldstone Circle'),('71W','26 Caliangt Drive'),('87W','5595 Bunting Pass'),('93W','89 Parkside Point');
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-05 18:43:13
