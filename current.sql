-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: textBoard
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `title` char(200) NOT NULL,
  `body` text NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  `boardId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'2020-12-17 12:55:38','2020-12-17 12:55:38','001. 함수의 개념','# 함수의 개념 \r\n- int (숫자); 라는 의미는 숫자 안에 0이 담겨있다는 뜻이다.

- Article article; 은 안에 null이 들어있다는 뜻이다. 그렇기 때문에, Article article = new Article ; 로 작동이 된다.

new Article을 하는 순간 새로운 공간은 생성된다.
그래서 article.id 는 article에 있는 id에 이 정보가 쏙! 간다는 뜻!!

article.자기소개();는 article에 있는 자기소개 기능을 실행한다는 뜻

→ 그렇다면 article 곳에서 void 자기소개() 를 만들어서 아래에 기능을 작성하면 끝!

void 로 새로운 함수를 만들었을 경우
void를 쓸꺼면 return을 안써도 되지만, 만약 return을 쓸꺼면, 뒤에 오는 형태에 따라 void가 변한다. void 가 → 정수면 int, 문자면 String
즉, 함수 뒤에 공식을 쓰고, return 값에 알고 싶은 수를 작성하면 원하는 값이 나옴.

참고로 함수에 정수, 문자가 섞여 있으면, return값 뒤랑 함수 앞에 조건만 일치 시켜주면 괜찮다.\r\n\r\n# 함수 예시\r\n```sql\r\nint plus(int a, int b, String d) { 
return a + b + Integer.parseInt(d)+ ""; 
}
// 함수 앞에 int를 썼어도, return뒤에 "" 이거를 넣어주면 괜찮아짐\r\n```',1,3),(2,'2020-12-18 09:25:55','2020-12-18 09:25:55','002. for 문 개념','# for 문 개념\r\nfor 문은 while 을 for 로 교환 후, 앞 뒤 ; 붙이기

→ for ( int i = 1; i ≤ 10; ) → 공간 설계를 안으로 집어 넣은거 빼고는 while 문과 똑같다.

반복문의 시작과 끝을 한눈에 볼 수 있는 장점이 있음. (증가코드 포함)
매개변수는 값을 정해줘야함
boolean : true or false
float/double : 실수
static 는 class 마다 하나씩 생기는데 , static 이 붙은 코드끼리만 연결이됨
if 지옥문 벗어나기 (복습은 강의 33)\r\n\r\n# for 문 예시\r\n```sql\r\npublic Article getArticle(int id){
	Aricle article();
	return article();\r\n```',1,3);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `name` char(20) NOT NULL,
  `code` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (3,'2020-12-17 12:52:58','2020-12-17 12:52:58','SQL','it');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `loginId` char(30) NOT NULL,
  `loginPw` varchar(50) NOT NULL,
  `name` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'2020-12-17 12:54:01','2020-12-17 12:54:01','admin','admin','Boyeon');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-29 11:47:12
