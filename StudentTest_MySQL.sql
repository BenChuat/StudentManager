-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: studenttest
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `c_id` varchar(8) COLLATE utf8_bin NOT NULL,
  `c_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_teacher` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('1001','程序设计','吴老师'),('1002','管理学','周老师'),('1003','英语','朱老师'),('1004','高等数学','柴老师');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `u_user`
--

DROP TABLE IF EXISTS `u_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `u_user` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `u_pwd` varchar(45) COLLATE utf8_bin NOT NULL,
  `u_phone` varchar(45) COLLATE utf8_bin NOT NULL,
  `u_role` int NOT NULL,
  `u_isdelte` int NOT NULL,
  `u_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2023 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `u_user`
--

LOCK TABLES `u_user` WRITE;
/*!40000 ALTER TABLE `u_user` DISABLE KEYS */;
INSERT INTO `u_user` VALUES (1001,'a1','179xxxx',0,0,'管理员'),(1002,'a2','179xxxx',0,0,'教师'),(1003,'a111','179xxxx',1,0,'弗格森'),(1004,'a111','179xxxx',1,0,'杰弗森'),(1005,'a111','179xxxx',1,0,'麦惠芬'),(1006,'a111','179xxxx',1,0,'岳碧白'),(1007,'a111','179xxxx',1,0,'尹灵雨'),(1008,'a111','179xxxx',1,0,'侯正文'),(1009,'a111','179xxxx',1,0,'辉文思'),(1010,'a111','179xxxx',1,0,'江悟'),(1011,'a111','179xxxx',1,0,'司马豫'),(1012,'a111','179xxxx',1,0,'潘天蓝'),(1013,'a111','179xxxx',1,0,'辉文思'),(1014,'a111','179xxxx',1,0,'宏颜'),(1015,'a111','179xxxx',1,0,'奈谷芹'),(1016,'a111','179xxxx',1,0,'薄臻'),(1017,'a111','179xxxx',1,0,'衷和平'),(1018,'a111','179xxxx',1,0,'己小之'),(1019,'a111','179xxxx',1,0,'顿聪'),(1020,'a111','179xxxx',1,0,'章馨逸'),(1021,'a111','179666',0,0,'BenChuat'),(1022,'a111','179666',1,0,'Ben'),(1023,'a111','179666',1,0,'SmallBen'),(1027,'a111','6666',1,0,'宇智波斑'),(1111,'a111','9999999',1,0,'千手柱间');
/*!40000 ALTER TABLE `u_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userchoose`
--

DROP TABLE IF EXISTS `userchoose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userchoose` (
  `u_id` int NOT NULL,
  `c_id` varchar(8) COLLATE utf8_bin NOT NULL,
  `c_score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userchoose`
--

LOCK TABLES `userchoose` WRITE;
/*!40000 ALTER TABLE `userchoose` DISABLE KEYS */;
INSERT INTO `userchoose` VALUES (1006,'1001',22),(1006,'1002',33),(1006,'1003',44),(1006,'1004',55),(1003,'1001',100),(1003,'1002',100),(1003,'1003',100),(1003,'1004',100),(1004,'1001',60),(1004,'1002',50),(1004,'1003',72),(1004,'1004',96),(1005,'1001',80),(1005,'1002',85),(1005,'1003',70),(1005,'1004',61),(1006,'1001',22),(1006,'1002',49),(1006,'1003',69),(1006,'1004',81),(1007,'1001',58),(1007,'1002',61),(1007,'1003',94),(1007,'1004',13),(1008,'1001',61),(1008,'1002',58),(1008,'1003',7),(1008,'1004',20),(1009,'1001',44),(1009,'1002',15),(1009,'1003',36),(1009,'1004',7),(1010,'1001',47),(1010,'1002',51),(1010,'1003',53),(1010,'1004',51),(1011,'1001',98),(1011,'1002',15),(1011,'1003',29),(1011,'1004',21),(1012,'1001',66),(1012,'1002',75),(1012,'1003',37),(1012,'1004',53),(1013,'1001',0),(1013,'1002',13),(1013,'1003',35),(1013,'1004',13),(1014,'1001',82),(1014,'1002',0),(1014,'1003',82),(1014,'1004',0),(1015,'1001',71),(1015,'1002',68),(1015,'1003',44),(1015,'1004',0),(1016,'1001',90),(1016,'1002',69),(1016,'1003',28),(1016,'1004',93),(1017,'1001',23),(1017,'1002',9),(1017,'1003',42),(1017,'1004',39),(1018,'1001',66),(1018,'1002',66),(1018,'1003',66),(1018,'1004',66),(1019,'1001',33),(1019,'1002',5),(1019,'1003',22),(1019,'1004',53),(1020,'1001',17),(1020,'1002',94),(1020,'1003',78),(1020,'1004',54),(1111,'1001',112),(1111,'1002',223),(1111,'1003',23),(1111,'1004',43);
/*!40000 ALTER TABLE `userchoose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-21 23:59:41
