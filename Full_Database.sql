CREATE DATABASE  IF NOT EXISTS `studentid` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `studentid`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: studentid
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `acomment`
--

DROP TABLE IF EXISTS `acomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acomment` (
  `aId` int NOT NULL,
  `cmtId` int NOT NULL,
  KEY `aId` (`aId`),
  KEY `cmtId` (`cmtId`),
  CONSTRAINT `acomment_ibfk_1` FOREIGN KEY (`aId`) REFERENCES `answers` (`aId`),
  CONSTRAINT `acomment_ibfk_2` FOREIGN KEY (`cmtId`) REFERENCES `comments` (`cmtId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acomment`
--

LOCK TABLES `acomment` WRITE;
/*!40000 ALTER TABLE `acomment` DISABLE KEYS */;
INSERT INTO `acomment` VALUES (1,2);
INSERT INTO `acomment` VALUES (2,125);
/*!40000 ALTER TABLE `acomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `aId` int NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) NOT NULL,
  `snumber` int NOT NULL,
  `vote` int NOT NULL,
  PRIMARY KEY (`aId`),
  KEY `snumber` (`snumber`),
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`snumber`) REFERENCES `sinfoafter` (`snumber`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',1,'A bell curve is a common type of distribution for a variable, also known as the normal distribution.',667223,4);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',2,'he term \"bell curve\" originates from the fact that the graph used to depict a normal distribution consists of a symmetrical bell-shaped curve.',667223,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',3,'Something schools use',667223,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',4,'I believe wikipedia has a good explanation',150,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',5,'Hi, explanation is provided in lecture notes chapter 5 slide 11',899123,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',6,'This link will help https://www.mathsisfun.com/algebra/trig-cosine-law.html',899123,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',7,'Visit this http://mathematics.laerd.com/maths/trigonometry-sine-and-cosine-rules-intro.php',899123,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',8,'https://www.cimt.org.uk/projects/mepres/step-up/sect4/index.htm',899123,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',9,'Wiki is plenty helpful https://en.wikipedia.org/wiki/Law_of_cosines',899123,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',10,'Hi, The Law of Cosines is useful for finding:\n1. the third side of a triangle when we know two sides and the angle between them (like the example above)\n2. the angles of a triangle when we know all three sides (as in the following example)',899123,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',11,'The Law of Sines (or Sine Rule) is very useful for solving triangles:\n\nasin A =  bsin B =  csin C',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',12,'hi, the wikipedia link is useful https://en.wikipedia.org/wiki/Algebra',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',13,'Hi, try this link https://en.wikipedia.org/wiki/Function_(mathematics)',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',14,'The \"power rule\" tells us that to raise a power to a power, just multiply the exponents.',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',15,'The quotient rule tells us that we can divide two powers with the same base by subtracting the exponents.',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',16,'The last rule in this lesson tells us that any nonzero number raised to a negative power equals its reciprocal raised to the opposite positive power.',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',17,'number of unit x price',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',18,'The derivative of a function of a real variable measures the sensitivity to change of the function value with respect to a change in its argument',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',19,'Integration, in mathematics, technique of finding a function g(x) the derivative of which, Dg(x), is equal to a given function f(x).',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',20,'It is like a machine that has an input and an output.\n\nAnd the output is related somehow to the input.',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',21,'Try this  https://www.khanacademy.org/math/precalculus',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',22,'Try https://www.khanacademy.org/math/trigonometry ',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',23,'https://www.amazon.com/slp/algebra-textbook/684scqmb25z24wn',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',24,'http://mrkennedy.pbworks.com/w/file/fetch/91539015/Nelson%20Functions%2011%20Textbook.pdf',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',25,'https://www.wiley.com/en-us/Mathematical+Modelling%3A+A+Graduate+Textbook-p-9781119483991',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',26,'this  is a good list \nhttps://wiki.ezvid.com/best-geometry-textbooks',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',27,'V=4\n3πr3',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',28,'V=πr2h',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',29,'https://orion.math.iastate.edu/dept/links/formulas/form2.pdf',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',30,'https://www.purplemath.com/modules/sqrcircle.htm',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',31,'https://www.khanacademy.org/math/calculus-1',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',32,'Refer to this link \nhttps://www.sparknotes.com/math/precalc/exponentialandlogarithmicfunctions/section2/',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',33,'A model is used to help scientists visualise things that they cannot actually see. It can be thought of as a thinking tool, to help form explanations. Models are useful simplifications to aid understanding.',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',34,'Trigonometry (from Greek trigōnon, \"triangle\" and metron, \"measure\") is a branch of mathematics that studies relationships between side lengths and angles of triangles',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',35,'Statistics is a form of mathematical analysis that uses quantified models, representations and synopses for a given set of experimental data or real-life studies.',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',36,'\nYou can use calculus in a lot of ways and applications. Among the disciplines that utilize calculus include physics, engineering, economics, statistics, and medicine.',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',37,'n algebra, a quadratic equation is any equation that can be rearranged in standard form as where x represents an unknown, and a, b, and c represent known numbers, where a ≠ 0. If a = 0, then the equation is linear, not quadratic, as there is no term.',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',38,'The mode of a set of data values is the value that appears most often.',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',39,'Please visit this site for a good explanation\nhttps://www.purplemath.com/modules/meanmode.htm',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',40,'DescriptionProbability is the branch of mathematics concerning numerical descriptions of how likely an event is to occur or how likely it is that a proposition is true. ',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',41,'BODMAS is an acronym and it stands for Bracket, Of, Division, Multiplication, Addition and Subtraction. ',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',42,'bodmasthe average of a set of numerical values, as calculated by adding them together and dividing by the number of terms in the set.',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',43,'the quadratic formula is simply just ax^2+bx+c = 0 in terms of x',102,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',44,'https://www.mathsisfun.com/algebra/index.html',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',45,'https://www.livescience.com/50258-algebra.html',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',46,'https://www.purplemath.com/modules/',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',47,'https://brilliant.org/algebra/',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',48,'https://plato.stanford.edu/entries/algebra/',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',49,'https://www.coolmath.com/algebra',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',50,'https://revisionmaths.com/advanced-level-maths-revision/pure-maths/algebra/functions',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',51,'http://tutorial.math.lamar.edu/Classes/Alg/FunctionDefn.aspx',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',52,'http://tutorial.math.lamar.edu/Classes/CalcI/Functions.aspx',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',53,'http://tutorial.math.lamar.edu/Classes/CalcI/Functions.aspx',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',54,'https://mathinsight.org/definition/function',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',55,'https://open.umn.edu/opentextbooks/textbooks/elementary-algebra',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',56,'https://openstax.org/details/books/college-algebra',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',57,'https://bim.easyaccessmaterials.com/index.php?location_user=cchs',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',58,'https://ocw.mit.edu/resources/res-18-001-calculus-online-textbook-spring-2005/textbook/',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',59,'https://ocw.mit.edu/resources/res-18-001-calculus-online-textbook-spring-2005/',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',60,'https://open.umn.edu/opentextbooks/textbooks/calculus',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',61,'https://wiki.ezvid.com/best-calculus-textbooks',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',62,'https://www.quora.com/What-are-the-best-calculus-books',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',63,'Jupiter',667223,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',64,'O',667223,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',65,'Tsunami',667223,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',66,'False - They are omnivores',667223,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',67,'Nitrogen',667223,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',68,' A trunk',667223,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',69,'True',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',70,'Mount Everest',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',71,'The sun',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',72,'True',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',73,'He He Helium',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',74,'Spiders',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',75,'7',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',76,'Lava',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',77,'True',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',78,'The skull',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',79,'An acid (hydrochloric acid)',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',80,'False (it is the cheetah)',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',81,'0',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',82,'Albert Einstein',103,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',83,'8',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',84,'Mercury',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',85,'Jupiter',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',86,'Venus',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',87,'Saturn',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',88,'Uranus',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',89,'Neptune',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',90,'Neptune',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',91,'Their spines of spiky hair.',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',92,'A fish',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',93,'The Gorilla',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',94,'2',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',95,'Africa',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',96,'False - Snakeskin is smooth and dry.',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',97,'The elephant - The largest on record weighed around 12,000 kilograms! (26,000 lb).',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',98,'Yes',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',99,'Prides',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',100,'False - They are carnivores.',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',101,'A deer a female deer.',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',102,'The cheetah (it can reach speeds of up to 120kph – 75mph).',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',103,'True',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',104,'Antarctica',104,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',105,'True',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',106,'Cows',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',107,'Yes',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',108,'True - They often sleep with their mouth open to cool down.',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',109,'The tiger, weighing up to 300 kilograms (660 pounds).',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',110,'Arachnophobia',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',111,'False - Captive mice live for up to 2 and a half years while wild mice only live for an average of around 4 months.',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',112,'Bamboo',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',113,'Mars',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',114,'Earth',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',115,'Venus',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',116,'Neptune',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',117,'True',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',118,'Uranus',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',119,'Mercury',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',120,'Jupiter',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',121,'False',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',122,'Mars',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',123,'Saturn',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',124,'Venus',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',125,'Mars',149,0);
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',126,'My encik grandmother',108,0);
INSERT INTO `answers` VALUES ('2020-05-20 14:14:17',127,'Nami is wave',102,0);
INSERT INTO `answers` VALUES ('2020-05-21 10:22:37',128,'Nitro',143,0);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cmtId` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `snumber` int NOT NULL,
  `vote` int NOT NULL,
  PRIMARY KEY (`cmtId`),
  KEY `snumber` (`snumber`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`snumber`) REFERENCES `sinfoafter` (`snumber`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',1,'Nicely asked!',667223,1);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',2,'Great question',667223,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',3,'Wonderfully asked',899123,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',4,'Please teach someone',667223,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',5,'Nice question!',899123,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',6,'Interesting question!',899123,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',7,'I need help on this too!',899123,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',8,'Need help on this..',899123,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',9,'Please help',899123,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',10,'very good question',899123,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',12,'Nicely Asked!',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',13,'\nI would like to know the answer too!',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',14,'Interesting question.',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',15,'\nI would like to know the answer too!\n',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',16,'\nI would like to know the answer too!\n',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',17,'Interesting question.\n',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',18,'I need help on this too.',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',19,'Interesting, waiting for an answer.',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',20,'Good question!',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',21,'I need an explanation on this too!',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',22,'I need an explanation on this too!',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',23,'I need an explanation on this too!',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',24,'Good question!\n',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',25,'I need an explanation on this too!\n',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',26,'\nGood question!',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',27,'Interesting question.',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',28,'Good question!',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',29,'Good question!',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',30,'Nicely asked',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',31,'Interesting question.',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',32,'Interesting question.',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',33,'I would like to know the answer too!\n',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',34,'Interesting, waiting for an answer.',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',35,'I need an explanation on this too!\n',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',36,'Good question!',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',37,'Good question!',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',38,'Interesting, waiting for an answer.\n\n',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',39,'\nI need help on this too.',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',40,'Interesting question.',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',41,'I need help on this too.',100,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',42,'Thank u for the question!',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',43,'Thank u for the question!',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',44,'Thank u for the question!',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',45,'Thank u for the question!',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',46,'Interesting!',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',47,'I need an explanation on this too!\n\nGood question!',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',48,'I need an explanation on this too!\n\nGood question!',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',49,'I need help on this too.',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',50,'\nThank u for the question!',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',51,'Nicely asked',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',52,'Thank u for the question!',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',53,'Lets learn together!',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',54,'Lets learn together!',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',55,'wonderful question',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',56,'Lets learn together!',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',57,'nicely asked\n',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',58,'I would like to learn this as well',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',59,'I would like to know the answer too!',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',60,'I would like to know the answer too!',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',61,'\nLets learn together!',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',62,'\nThank u for the question!\n',101,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',63,'Nicely asked',149,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',64,'I would like to know the answer too!',149,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',65,'\nThank u for the question!',149,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',66,'Interesting question.',149,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',67,'Interesting question.',149,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',68,'Interesting question.',149,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',69,'Interesting question.',149,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',70,'Interesting question.',149,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',71,'Thank u for the question!',149,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',72,'Thank u for the question!',149,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',73,'Thank u for the question!',149,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',74,'Good question!',149,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',75,'Interesting, waiting for an answer.',149,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',76,'Interesting, waiting for an answer.',149,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',77,'I need an explanation on this too!',149,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',78,'I need an explanation on this too!',149,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',79,'I need an explanation on this too!',124,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',80,'I need an explanation on this too!\n',124,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',81,'I need an explanation on this too!\n',124,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',82,'I need an explanation on this too!\n',124,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',83,'I need an explanation on this too!\n',124,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',84,'I need an explanation on this too!\n',124,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',85,'I need an explanation on this too!\n',124,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',86,'I need help on this too.',124,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',87,'I need help on this too.',124,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',88,'I need help on this too.',120,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',89,'I need help on this too.',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',90,'I need help on this too.',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',91,'I need help on this too.',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',92,'I need help on this too.',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',93,'I need help on this too.',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',94,'Lets learn togehter',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',95,'Thank u for the question!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',96,'Thank u for the question!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',97,'Interesting, waiting for an answer.',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',98,'Interesting, waiting for an answer.',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',99,'Good question!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',100,'Good question!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',101,'Thank u for the question!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',102,'Thank u for the question!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',103,'Thank u for the question!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',104,'Thank u for the question!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',105,'Thank u for the question!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',106,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',107,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',108,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',109,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',110,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',111,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',112,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',113,'Thank u for the question!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',114,'Lets learn togehter',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',115,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',116,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',117,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',118,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',119,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',120,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',121,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',122,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',123,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',124,'I need an explanation on this too!',108,0);
INSERT INTO `comments` VALUES ('2020-05-19 04:23:59',125,'\"Good\" answer',667223,1);
INSERT INTO `comments` VALUES ('2020-05-20 14:12:57',126,'I would like to know too',102,0);
INSERT INTO `comments` VALUES ('2020-05-20 14:13:53',127,'Deathstar',102,0);
INSERT INTO `comments` VALUES ('2020-05-20 14:16:00',128,'I think is True',102,0);
INSERT INTO `comments` VALUES ('2020-05-20 14:16:23',129,'Dough?',102,0);
INSERT INTO `comments` VALUES ('2020-05-20 14:16:50',130,'Help',102,0);
INSERT INTO `comments` VALUES ('2020-05-20 14:17:11',131,'Help',102,0);
INSERT INTO `comments` VALUES ('2020-05-20 14:17:23',132,'help',102,0);
INSERT INTO `comments` VALUES ('2020-05-20 14:18:01',133,'I only see before my house void deck the cat',102,0);
INSERT INTO `comments` VALUES ('2020-05-20 14:18:23',134,'Shag no more pizza',102,0);
INSERT INTO `comments` VALUES ('2020-05-20 14:18:49',135,'Huh what is that',102,0);
INSERT INTO `comments` VALUES ('2020-05-20 14:19:44',136,'Ask god maybe he know',102,0);
INSERT INTO `comments` VALUES ('2020-05-20 14:20:16',137,'No bell prize ayy',102,0);
INSERT INTO `comments` VALUES ('2020-05-20 14:20:47',138,'So that I can watch Netflix',102,0);
INSERT INTO `comments` VALUES ('2020-05-20 14:21:12',139,'Bill gates',102,0);
INSERT INTO `comments` VALUES ('2020-05-20 14:21:31',140,'I think false',102,0);
INSERT INTO `comments` VALUES ('2020-05-21 10:22:20',141,'i need help also someone please answer',143,0);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moderator`
--

DROP TABLE IF EXISTS `moderator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderator` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` decimal(8,0) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `new_tablecol2_UNIQUE` (`email`),
  UNIQUE KEY `new_tablecol3_UNIQUE` (`phone`),
  UNIQUE KEY `idnew_table_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moderator`
--

LOCK TABLES `moderator` WRITE;
/*!40000 ALTER TABLE `moderator` DISABLE KEYS */;
INSERT INTO `moderator` VALUES ('mod','1','kjksahdka','email@email.com',1111);
INSERT INTO `moderator` VALUES ('modbd','bd123','Barrack Donald','bd@uow.edu.sg',84569090);
INSERT INTO `moderator` VALUES ('modot','ot123','Obama Trump','ot@uow.edu.sg',93809182);
/*!40000 ALTER TABLE `moderator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qanswer`
--

DROP TABLE IF EXISTS `qanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qanswer` (
  `qId` int NOT NULL,
  `aId` int NOT NULL,
  KEY `qId` (`qId`),
  KEY `aId` (`aId`),
  CONSTRAINT `qanswer_ibfk_1` FOREIGN KEY (`qId`) REFERENCES `questions` (`qId`),
  CONSTRAINT `qanswer_ibfk_2` FOREIGN KEY (`aId`) REFERENCES `answers` (`aId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qanswer`
--

LOCK TABLES `qanswer` WRITE;
/*!40000 ALTER TABLE `qanswer` DISABLE KEYS */;
INSERT INTO `qanswer` VALUES (1,1);
INSERT INTO `qanswer` VALUES (1,2);
INSERT INTO `qanswer` VALUES (1,3);
INSERT INTO `qanswer` VALUES (1,4);
INSERT INTO `qanswer` VALUES (2,5);
INSERT INTO `qanswer` VALUES (2,6);
INSERT INTO `qanswer` VALUES (2,7);
INSERT INTO `qanswer` VALUES (2,8);
INSERT INTO `qanswer` VALUES (2,9);
INSERT INTO `qanswer` VALUES (2,10);
INSERT INTO `qanswer` VALUES (4,11);
INSERT INTO `qanswer` VALUES (147,12);
INSERT INTO `qanswer` VALUES (148,13);
INSERT INTO `qanswer` VALUES (149,14);
INSERT INTO `qanswer` VALUES (150,15);
INSERT INTO `qanswer` VALUES (151,16);
INSERT INTO `qanswer` VALUES (152,17);
INSERT INTO `qanswer` VALUES (153,18);
INSERT INTO `qanswer` VALUES (154,19);
INSERT INTO `qanswer` VALUES (155,20);
INSERT INTO `qanswer` VALUES (156,21);
INSERT INTO `qanswer` VALUES (157,22);
INSERT INTO `qanswer` VALUES (158,23);
INSERT INTO `qanswer` VALUES (159,24);
INSERT INTO `qanswer` VALUES (160,25);
INSERT INTO `qanswer` VALUES (161,26);
INSERT INTO `qanswer` VALUES (162,27);
INSERT INTO `qanswer` VALUES (163,28);
INSERT INTO `qanswer` VALUES (164,29);
INSERT INTO `qanswer` VALUES (165,30);
INSERT INTO `qanswer` VALUES (166,31);
INSERT INTO `qanswer` VALUES (207,32);
INSERT INTO `qanswer` VALUES (206,33);
INSERT INTO `qanswer` VALUES (205,34);
INSERT INTO `qanswer` VALUES (204,35);
INSERT INTO `qanswer` VALUES (196,36);
INSERT INTO `qanswer` VALUES (197,37);
INSERT INTO `qanswer` VALUES (191,38);
INSERT INTO `qanswer` VALUES (192,39);
INSERT INTO `qanswer` VALUES (198,40);
INSERT INTO `qanswer` VALUES (168,41);
INSERT INTO `qanswer` VALUES (169,42);
INSERT INTO `qanswer` VALUES (171,43);
INSERT INTO `qanswer` VALUES (147,44);
INSERT INTO `qanswer` VALUES (147,45);
INSERT INTO `qanswer` VALUES (147,46);
INSERT INTO `qanswer` VALUES (147,47);
INSERT INTO `qanswer` VALUES (147,48);
INSERT INTO `qanswer` VALUES (147,49);
INSERT INTO `qanswer` VALUES (148,50);
INSERT INTO `qanswer` VALUES (148,51);
INSERT INTO `qanswer` VALUES (148,52);
INSERT INTO `qanswer` VALUES (148,53);
INSERT INTO `qanswer` VALUES (148,54);
INSERT INTO `qanswer` VALUES (158,55);
INSERT INTO `qanswer` VALUES (158,56);
INSERT INTO `qanswer` VALUES (158,57);
INSERT INTO `qanswer` VALUES (167,58);
INSERT INTO `qanswer` VALUES (167,59);
INSERT INTO `qanswer` VALUES (167,60);
INSERT INTO `qanswer` VALUES (167,61);
INSERT INTO `qanswer` VALUES (167,62);
INSERT INTO `qanswer` VALUES (208,63);
INSERT INTO `qanswer` VALUES (209,64);
INSERT INTO `qanswer` VALUES (210,65);
INSERT INTO `qanswer` VALUES (211,66);
INSERT INTO `qanswer` VALUES (212,67);
INSERT INTO `qanswer` VALUES (213,68);
INSERT INTO `qanswer` VALUES (214,69);
INSERT INTO `qanswer` VALUES (215,70);
INSERT INTO `qanswer` VALUES (216,71);
INSERT INTO `qanswer` VALUES (217,72);
INSERT INTO `qanswer` VALUES (218,73);
INSERT INTO `qanswer` VALUES (219,74);
INSERT INTO `qanswer` VALUES (220,75);
INSERT INTO `qanswer` VALUES (221,76);
INSERT INTO `qanswer` VALUES (222,77);
INSERT INTO `qanswer` VALUES (223,78);
INSERT INTO `qanswer` VALUES (224,79);
INSERT INTO `qanswer` VALUES (225,80);
INSERT INTO `qanswer` VALUES (226,81);
INSERT INTO `qanswer` VALUES (227,82);
INSERT INTO `qanswer` VALUES (228,83);
INSERT INTO `qanswer` VALUES (229,84);
INSERT INTO `qanswer` VALUES (230,85);
INSERT INTO `qanswer` VALUES (231,86);
INSERT INTO `qanswer` VALUES (232,87);
INSERT INTO `qanswer` VALUES (233,88);
INSERT INTO `qanswer` VALUES (234,89);
INSERT INTO `qanswer` VALUES (235,90);
INSERT INTO `qanswer` VALUES (269,91);
INSERT INTO `qanswer` VALUES (268,92);
INSERT INTO `qanswer` VALUES (267,93);
INSERT INTO `qanswer` VALUES (266,94);
INSERT INTO `qanswer` VALUES (265,95);
INSERT INTO `qanswer` VALUES (264,96);
INSERT INTO `qanswer` VALUES (263,97);
INSERT INTO `qanswer` VALUES (262,98);
INSERT INTO `qanswer` VALUES (261,99);
INSERT INTO `qanswer` VALUES (260,100);
INSERT INTO `qanswer` VALUES (259,101);
INSERT INTO `qanswer` VALUES (258,102);
INSERT INTO `qanswer` VALUES (257,103);
INSERT INTO `qanswer` VALUES (256,104);
INSERT INTO `qanswer` VALUES (255,105);
INSERT INTO `qanswer` VALUES (254,106);
INSERT INTO `qanswer` VALUES (253,107);
INSERT INTO `qanswer` VALUES (252,108);
INSERT INTO `qanswer` VALUES (251,109);
INSERT INTO `qanswer` VALUES (250,110);
INSERT INTO `qanswer` VALUES (249,111);
INSERT INTO `qanswer` VALUES (248,112);
INSERT INTO `qanswer` VALUES (247,113);
INSERT INTO `qanswer` VALUES (246,114);
INSERT INTO `qanswer` VALUES (245,115);
INSERT INTO `qanswer` VALUES (244,116);
INSERT INTO `qanswer` VALUES (243,117);
INSERT INTO `qanswer` VALUES (242,118);
INSERT INTO `qanswer` VALUES (241,119);
INSERT INTO `qanswer` VALUES (240,120);
INSERT INTO `qanswer` VALUES (239,121);
INSERT INTO `qanswer` VALUES (238,122);
INSERT INTO `qanswer` VALUES (237,123);
INSERT INTO `qanswer` VALUES (236,124);
INSERT INTO `qanswer` VALUES (235,125);
INSERT INTO `qanswer` VALUES (258,126);
INSERT INTO `qanswer` VALUES (210,127);
INSERT INTO `qanswer` VALUES (212,128);
/*!40000 ALTER TABLE `qanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qcomment`
--

DROP TABLE IF EXISTS `qcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qcomment` (
  `qId` int NOT NULL,
  `cmtId` int NOT NULL,
  KEY `qId` (`qId`),
  KEY `cmtId` (`cmtId`),
  CONSTRAINT `qcomment_ibfk_1` FOREIGN KEY (`qId`) REFERENCES `questions` (`qId`),
  CONSTRAINT `qcomment_ibfk_2` FOREIGN KEY (`cmtId`) REFERENCES `comments` (`cmtId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qcomment`
--

LOCK TABLES `qcomment` WRITE;
/*!40000 ALTER TABLE `qcomment` DISABLE KEYS */;
INSERT INTO `qcomment` VALUES (1,1);
INSERT INTO `qcomment` VALUES (1,2);
INSERT INTO `qcomment` VALUES (1,3);
INSERT INTO `qcomment` VALUES (1,4);
INSERT INTO `qcomment` VALUES (2,5);
INSERT INTO `qcomment` VALUES (2,6);
INSERT INTO `qcomment` VALUES (2,7);
INSERT INTO `qcomment` VALUES (2,8);
INSERT INTO `qcomment` VALUES (2,9);
INSERT INTO `qcomment` VALUES (2,10);
INSERT INTO `qcomment` VALUES (146,12);
INSERT INTO `qcomment` VALUES (4,13);
INSERT INTO `qcomment` VALUES (4,14);
INSERT INTO `qcomment` VALUES (147,15);
INSERT INTO `qcomment` VALUES (148,16);
INSERT INTO `qcomment` VALUES (149,17);
INSERT INTO `qcomment` VALUES (149,18);
INSERT INTO `qcomment` VALUES (149,19);
INSERT INTO `qcomment` VALUES (150,20);
INSERT INTO `qcomment` VALUES (151,21);
INSERT INTO `qcomment` VALUES (152,22);
INSERT INTO `qcomment` VALUES (153,23);
INSERT INTO `qcomment` VALUES (153,24);
INSERT INTO `qcomment` VALUES (155,25);
INSERT INTO `qcomment` VALUES (155,26);
INSERT INTO `qcomment` VALUES (155,27);
INSERT INTO `qcomment` VALUES (156,28);
INSERT INTO `qcomment` VALUES (157,29);
INSERT INTO `qcomment` VALUES (158,30);
INSERT INTO `qcomment` VALUES (158,31);
INSERT INTO `qcomment` VALUES (207,32);
INSERT INTO `qcomment` VALUES (207,33);
INSERT INTO `qcomment` VALUES (207,34);
INSERT INTO `qcomment` VALUES (207,35);
INSERT INTO `qcomment` VALUES (207,36);
INSERT INTO `qcomment` VALUES (168,37);
INSERT INTO `qcomment` VALUES (168,38);
INSERT INTO `qcomment` VALUES (168,39);
INSERT INTO `qcomment` VALUES (169,40);
INSERT INTO `qcomment` VALUES (169,41);
INSERT INTO `qcomment` VALUES (173,42);
INSERT INTO `qcomment` VALUES (158,43);
INSERT INTO `qcomment` VALUES (168,44);
INSERT INTO `qcomment` VALUES (172,45);
INSERT INTO `qcomment` VALUES (172,46);
INSERT INTO `qcomment` VALUES (172,47);
INSERT INTO `qcomment` VALUES (171,48);
INSERT INTO `qcomment` VALUES (171,49);
INSERT INTO `qcomment` VALUES (171,50);
INSERT INTO `qcomment` VALUES (171,51);
INSERT INTO `qcomment` VALUES (156,52);
INSERT INTO `qcomment` VALUES (175,53);
INSERT INTO `qcomment` VALUES (169,54);
INSERT INTO `qcomment` VALUES (169,55);
INSERT INTO `qcomment` VALUES (164,56);
INSERT INTO `qcomment` VALUES (164,57);
INSERT INTO `qcomment` VALUES (164,58);
INSERT INTO `qcomment` VALUES (164,59);
INSERT INTO `qcomment` VALUES (167,60);
INSERT INTO `qcomment` VALUES (167,61);
INSERT INTO `qcomment` VALUES (167,62);
INSERT INTO `qcomment` VALUES (208,63);
INSERT INTO `qcomment` VALUES (208,64);
INSERT INTO `qcomment` VALUES (208,65);
INSERT INTO `qcomment` VALUES (209,66);
INSERT INTO `qcomment` VALUES (212,67);
INSERT INTO `qcomment` VALUES (217,68);
INSERT INTO `qcomment` VALUES (219,69);
INSERT INTO `qcomment` VALUES (224,70);
INSERT INTO `qcomment` VALUES (226,71);
INSERT INTO `qcomment` VALUES (234,72);
INSERT INTO `qcomment` VALUES (268,73);
INSERT INTO `qcomment` VALUES (218,74);
INSERT INTO `qcomment` VALUES (225,75);
INSERT INTO `qcomment` VALUES (265,76);
INSERT INTO `qcomment` VALUES (216,77);
INSERT INTO `qcomment` VALUES (225,78);
INSERT INTO `qcomment` VALUES (219,79);
INSERT INTO `qcomment` VALUES (218,80);
INSERT INTO `qcomment` VALUES (209,81);
INSERT INTO `qcomment` VALUES (214,82);
INSERT INTO `qcomment` VALUES (213,83);
INSERT INTO `qcomment` VALUES (212,84);
INSERT INTO `qcomment` VALUES (211,85);
INSERT INTO `qcomment` VALUES (210,86);
INSERT INTO `qcomment` VALUES (223,87);
INSERT INTO `qcomment` VALUES (221,88);
INSERT INTO `qcomment` VALUES (268,89);
INSERT INTO `qcomment` VALUES (265,90);
INSERT INTO `qcomment` VALUES (220,91);
INSERT INTO `qcomment` VALUES (232,92);
INSERT INTO `qcomment` VALUES (238,93);
INSERT INTO `qcomment` VALUES (238,94);
INSERT INTO `qcomment` VALUES (238,95);
INSERT INTO `qcomment` VALUES (236,96);
INSERT INTO `qcomment` VALUES (236,97);
INSERT INTO `qcomment` VALUES (234,98);
INSERT INTO `qcomment` VALUES (220,99);
INSERT INTO `qcomment` VALUES (235,100);
INSERT INTO `qcomment` VALUES (235,101);
INSERT INTO `qcomment` VALUES (217,102);
INSERT INTO `qcomment` VALUES (246,103);
INSERT INTO `qcomment` VALUES (239,104);
INSERT INTO `qcomment` VALUES (237,105);
INSERT INTO `qcomment` VALUES (226,106);
INSERT INTO `qcomment` VALUES (269,107);
INSERT INTO `qcomment` VALUES (268,108);
INSERT INTO `qcomment` VALUES (267,109);
INSERT INTO `qcomment` VALUES (266,110);
INSERT INTO `qcomment` VALUES (265,111);
INSERT INTO `qcomment` VALUES (264,112);
INSERT INTO `qcomment` VALUES (264,113);
INSERT INTO `qcomment` VALUES (264,114);
INSERT INTO `qcomment` VALUES (263,115);
INSERT INTO `qcomment` VALUES (262,116);
INSERT INTO `qcomment` VALUES (260,117);
INSERT INTO `qcomment` VALUES (259,118);
INSERT INTO `qcomment` VALUES (258,119);
INSERT INTO `qcomment` VALUES (256,120);
INSERT INTO `qcomment` VALUES (236,121);
INSERT INTO `qcomment` VALUES (247,122);
INSERT INTO `qcomment` VALUES (253,123);
INSERT INTO `qcomment` VALUES (243,124);
INSERT INTO `qcomment` VALUES (377,126);
INSERT INTO `qcomment` VALUES (363,127);
INSERT INTO `qcomment` VALUES (211,128);
INSERT INTO `qcomment` VALUES (259,129);
INSERT INTO `qcomment` VALUES (214,130);
INSERT INTO `qcomment` VALUES (253,131);
INSERT INTO `qcomment` VALUES (237,132);
INSERT INTO `qcomment` VALUES (251,133);
INSERT INTO `qcomment` VALUES (228,134);
INSERT INTO `qcomment` VALUES (243,135);
INSERT INTO `qcomment` VALUES (322,136);
INSERT INTO `qcomment` VALUES (227,137);
INSERT INTO `qcomment` VALUES (271,138);
INSERT INTO `qcomment` VALUES (316,139);
INSERT INTO `qcomment` VALUES (373,140);
INSERT INTO `qcomment` VALUES (212,141);
/*!40000 ALTER TABLE `qcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `qId` int NOT NULL AUTO_INCREMENT,
  `subId` int NOT NULL,
  `question` varchar(255) NOT NULL,
  `snumber` int NOT NULL,
  `details` varchar(255) DEFAULT NULL,
  `vote` int NOT NULL,
  PRIMARY KEY (`qId`),
  KEY `subId` (`subId`),
  KEY `snumber` (`snumber`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`subId`) REFERENCES `subjects` (`subId`),
  CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`snumber`) REFERENCES `sinfoafter` (`snumber`)
) ENGINE=InnoDB AUTO_INCREMENT=382 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',1,1,'How do bell curve work?',899123,'Hmmm',2);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',2,1,'Cosine rule',150,'How to apply cosine rule',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',4,1,'How to apply sine rule',150,'Please help someone',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',146,1,'a calculus problem about trigonometry',150,'What is f′(π4) if f(x)=arctan(x)x√ ?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',147,1,'Online site recommendation for Alegbra',150,'Any site recommendations?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',148,1,'Online site recommendation for Functions',150,'Any site recommendations?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',149,1,'What is power rule',120,'Please explain the theory and formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',150,1,'What is quotient rule',150,'Please explain the theory and formula',1);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',151,1,'What is negative exponent',120,'Please explain the theory and formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',152,1,'What is formula for total cost',149,'Please explain the theory and formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',153,1,'What is differentiation',149,'Please explain the theory and formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',154,1,'What is Integration',150,'Please explain the theory and formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',155,1,'What is the meaning of a function',149,'Please explain the theory and formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',156,1,'Online site recommendation for Pre-calculus',150,'Any site recommendations?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',157,1,'Online site recommendation for Trigonometry',150,'Any site recommendations?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',158,1,'Textbook recommendation for Alegbra',149,'Any textbox recommendation for the above topic?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',159,1,'Textbook recommendation for Functions',149,'Any textbox recommendation for the above topic?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',160,1,'Textbook recommendation for Modelling',149,'Any textbox recommendation for the above topic?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',161,1,'Textbook recommendation for Geometery',149,'Any textbox recommendation for the above topic?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',162,1,'How to calculate volume of sphere',110,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',163,1,'How to calculate Volume of right circular cylinder',110,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',164,1,'How to calculate distance between 2 points',110,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',165,1,'How to calculate standard equation of a circle',110,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',166,1,'Online site recommendation for calculus',149,'Any site recommendations?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',167,1,'Textbook recommendation for calculus',149,'Any textbox recommendation for the above topic?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',168,1,'BODMAS',120,'Please explain BODMAS rule to me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',169,1,'How to calculate arithmetic mean',120,'Please explain',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',170,1,'How to calculate probability',120,'Please explain',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',171,1,'What is Quadratic Formula',120,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',172,1,'How to calculate  Distance Formula',120,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',173,1,'How to calculate Slope Formula',120,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',174,1,'How to calculate Slope Intercept',120,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',175,1,'How to calculate Area of Triangle',120,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',176,1,'How to calculate Pythagorean Theorem',120,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',177,1,'How to calculate Area of Rectangle',110,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',178,1,'How to calculate Area of Parallelogram',110,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',179,1,'How to calculate Area of Circle',110,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',180,1,'Textbook recommendation for Statistics',149,'Any textbox recommendation for the above topic?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',181,1,'Textbook recommendation for Probability',149,'Any textbox recommendation for the above topic?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',182,1,'Textbook recommendation for calculus',149,'Any textbox recommendation for the above topic?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',183,1,'Textbook recommendation for Trigonometry',149,'Any textbox recommendation for the above topic?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',184,1,'How to calculate Circumference of Circle',110,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',185,1,'How to calculate tangent',110,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',186,1,'How to calculate Volume of cube',110,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',187,1,'How to calculate volume of rectangle',110,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',188,1,'How to calculate Volume of square pyramid',110,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',189,1,'How to calculate volume of cylinder',110,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',190,1,'How to calculate Volume of cone',110,'Please explain the formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',191,1,'What is mode',120,'Please explain the theory and formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',192,1,'What is the difference between mean median mode range',150,'Please explain the theory and formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',193,1,'What is product rule',110,'Please explain the theory and formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',194,1,'What is log',150,'Please explain the theory and formula',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',195,1,'How to learn calculus fast',110,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',196,1,'Why is calculus applicable in real life',149,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',197,1,'What is quadratic equations used for',120,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',198,1,'Why do we need to calculate probaility',120,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',199,1,'Why do we need to calculate average',110,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',200,1,'Online site recommendation for Modelling',150,'Any site recommendations?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',201,1,'Online site recommendation for Geometery',150,'Any site recommendations?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',202,1,'Online site recommendation for Statistics',150,'Any site recommendations?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',203,1,'Online site recommendation for Probability',150,'Any site recommendations?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',204,1,'Why do we need statistics',149,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',205,1,'Why do we need Trigonometry',110,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',206,1,'Is modelling helpful?',120,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',207,1,'Help understanding log function ',149,'Please explain',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',208,2,'What is the biggest planet in our solar system?',120,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',209,2,'What is the chemical symbol for the element oxygen?',121,'Please help me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',210,2,'Another name for a tidal wave is a?',122,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',211,2,'True or false? Dogs are herbivores.',123,'Please explain',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',212,2,'What is the 7th element on the periodic table of elements?',124,'Send help',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',213,2,'What is the name of the long appendage that hangs from an elephants face?',150,'Send help',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',214,2,'True or false? DNA is the shortened form of the term ‘Deoxyribonucleic acid’?',121,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',215,2,'The highest mountain on earth is?',123,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',216,2,'What is the name of the closest star to the earth?',120,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',217,2,'True or false? Frogs are cold blooded animals.',120,'Please help me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',218,2,'What is the name of the element with the chemical symbol ‘He’?',123,'Send help',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',219,2,'The fear of what animal is known as ‘arachnophobia’?',124,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',220,2,'Pure water has a pH level of a around?',122,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',221,2,'The molten rock that comes from a volcano after it has erupted is known as what?',124,'Send help',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',222,2,'True or false? Yogurt is produced by bacterial fermentation of milk.',123,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',223,2,'What is the name of the part of the human skeleton which protects our brain?',150,'Please help me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',224,2,'Is the compound ‘HCl’ an acid or base?',120,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',225,2,'True or false? The fastest land animal in the world is the zebra.',122,'Please help me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',226,2,'How many bones do sharks have in their bodies?',121,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',227,2,'What famous scientist was awarded the 1921 Nobel Prize in Physics for his work on theoretical physics?',150,'Send help',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',228,2,'Now that Pluto is no longer included, how many planets are there in the Solar System?',150,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',229,2,'What is the smallest planet in the Solar System?',124,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',230,2,'What is the largest planet in the Solar System?',122,'Please help me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',231,2,'What is the hottest planet in the Solar System?',121,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',232,2,'The sixth planet from the Sun features an extensive ring system, what is the name of this planet?',150,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',233,2,'The chemical element uranium was named after what planet?',120,'Please help me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',234,2,'What planet in the solar system is farthest from the Sun?',124,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',235,2,'What is the second smallest planet in the solar system?',122,'Send help',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',236,2,'What planet is closest in size to Earth?',150,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',237,2,'The moon Titan orbits what planet?',150,'Please help me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',238,2,'What planet is nicknamed the ‘Red Planet’?',124,'Send help',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',239,2,'True or false? Neptune is larger than Saturn.',150,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',240,2,'The Galilean moons orbit what planet?',122,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',241,2,'What planet is closest to the Sun?',123,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',242,2,'What is the seventh planet from the Sun?',124,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',243,2,'True or false? Venus has more atmospheric pressure than Earth?',150,'Please help me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',244,2,'Triton is the largest moon of what planet?',123,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',245,2,'What is the brightest planet in the night sky?',124,'Please help me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',246,2,'What is the third planet from the Sun?',150,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',247,2,'Phobos and Deimos are moons of what planet?',122,'Send help',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',248,2,'What food makes up nearly all (around 99%) of a Giant Panda’s diet?',123,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',249,2,'True or false? Mice live for up to 10 years.',124,'Please help me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',250,2,'What is the name of the phobia that involves an abnormal fear of spiders?',121,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',251,2,'What is the largest type of ‘big cat’ in the world?',122,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',252,2,'True or false? Crocodiles have no sweat glands so they use their mouths to release heat.',150,'Please help me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',253,2,'Are butterflies insects?',120,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',254,2,'What are female elephants called?',150,'Send help',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',255,2,'True or false? Bats are mammals.',150,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',256,2,'Bees are found on every continent of earth except for one, which is it?',120,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',257,2,'True or false? Cats spend an average of 13 to 14 hours a day sleeping.',122,'Send help',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',258,2,'What is the fastest land animal in the world?',123,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',259,2,'A ‘doe’ is what kind of animal?',124,'Please help me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',260,2,'True or false? Cougar’s are herbivores.',122,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',261,2,'Groups of lions are known as what?',122,'Please help me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',262,2,'Is a dolphin a mammal?',123,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',263,2,'What is the largest land animal in the world?',124,'Send help',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',264,2,'True of false? Snakes have slimy skin.',123,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',265,2,'What is the only continent on earth where Giraffes live in the wild?',150,'Please help me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',266,2,'How many pairs of wings does a bee have?',124,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',267,2,'What type of animal is the largest primate in the world?',120,'Anyone can assist me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',268,2,'Is a shark a fish or a mammal?',120,'Please help me',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',269,2,'What is the most recognizable feature of a hedgehog’s appearance?',120,'Anyone has any idea?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',270,2,'Physics vs Chemistry',103,'Which is better?',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',271,2,'Why is science impotant',150,'Appreciate any answers',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',272,2,'Why is chemistry impotant',150,'Appreciate any answers',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',273,2,'Why is physicsimpotant',150,'Appreciate any answers',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',274,2,'Why is computer science impotant',150,'Appreciate any answers',0);
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',275,2,'Why is biology impotant',150,'Appreciate any answers',0);
INSERT INTO `questions` VALUES ('2020-04-01 04:06:18',276,2,'Question about physics',111,'What is physics??',0);
INSERT INTO `questions` VALUES ('2020-04-02 05:07:18',277,2,'Question on string theory',111,'What is string theory?',0);
INSERT INTO `questions` VALUES ('2020-04-03 06:08:18',278,2,'no fly zones',111,'How do no fly zones work',0);
INSERT INTO `questions` VALUES ('2020-04-04 07:16:18',279,2,'Back in time',111,'Can we go back in time',0);
INSERT INTO `questions` VALUES ('2020-04-05 09:16:18',280,2,'Time machine',111,'How to make a time machine',0);
INSERT INTO `questions` VALUES ('2020-04-05 09:06:18',281,2,'question about Atlantis',111,'Is atlantis real',0);
INSERT INTO `questions` VALUES ('2020-03-12 04:06:18',282,2,'Bermuda triangle question',112,'Is bermuda triangle real',0);
INSERT INTO `questions` VALUES ('2020-03-13 05:06:18',283,2,'ships and bermuda triangle',112,'why do ships sink in bermuda triangle',0);
INSERT INTO `questions` VALUES ('2020-03-14 06:06:18',284,2,'planes and bermuda triangle ',112,'why do planes go missing in bermuda triangle',0);
INSERT INTO `questions` VALUES ('2020-03-15 07:06:18',285,2,'lightning question',112,'Can we control lightning',0);
INSERT INTO `questions` VALUES ('2020-03-16 08:06:18',286,2,'question on thunder',112,'can we control thunder',0);
INSERT INTO `questions` VALUES ('2020-01-17 09:06:18',287,2,'thunder loudness',112,'How loud can thunder be',0);
INSERT INTO `questions` VALUES ('2020-01-18 09:06:18',288,2,'How do 3d printing work',112,'Please explain',0);
INSERT INTO `questions` VALUES ('2020-01-12 04:06:18',289,2,'How do 2d printing work',113,'please explain',0);
INSERT INTO `questions` VALUES ('2020-01-10 02:56:18',290,2,'How do alchohol make u drunk',113,'Anyone knows',0);
INSERT INTO `questions` VALUES ('2020-01-10 03:46:18',291,2,'Will apes take over the world',113,'Im worried',0);
INSERT INTO `questions` VALUES ('2020-01-10 04:36:18',292,2,'Will donkeys take over the world',113,'Im worried',0);
INSERT INTO `questions` VALUES ('2020-01-10 04:16:18',293,2,'Will elephants take over the world',113,'Im worried',0);
INSERT INTO `questions` VALUES ('2020-01-10 04:26:18',294,2,'Will monkeys take over the world',113,'Im worried',0);
INSERT INTO `questions` VALUES ('2020-01-10 04:06:18',295,2,'Are there aliens',113,'Im worried',0);
INSERT INTO `questions` VALUES ('2020-02-12 04:06:18',296,2,'how hot is the sun',113,'Please tell me the answer',0);
INSERT INTO `questions` VALUES ('2020-02-12 04:06:18',297,2,'Can we live in pluto',114,'Why yes and why not?',0);
INSERT INTO `questions` VALUES ('2020-02-12 04:06:18',298,2,'Can we live on Jupiter',114,'Why yes and why not?',0);
INSERT INTO `questions` VALUES ('2020-02-12 04:06:18',299,2,'Can we live on other solar systems',114,'Why yes and why not Possible?',0);
INSERT INTO `questions` VALUES ('2020-02-12 04:06:18',300,2,'Can we live on Venus',114,'Why Possible?',0);
INSERT INTO `questions` VALUES ('2020-02-12 04:06:18',301,2,'Can we live on ISS forever',114,'Why yes and why not?',0);
INSERT INTO `questions` VALUES ('2020-02-12 04:06:18',302,2,'Can humans migrate to space',114,'Possible??',2);
INSERT INTO `questions` VALUES ('2020-02-12 04:06:18',303,2,'Can animals live in space',114,'Possible?',0);
INSERT INTO `questions` VALUES ('2020-02-12 04:06:18',304,2,'Can donkeys live in space?',114,'Possible?',0);
INSERT INTO `questions` VALUES ('2020-02-12 04:06:18',305,2,'Can apes go to space',114,'Why yes and why not?',0);
INSERT INTO `questions` VALUES ('2020-02-12 04:06:18',306,2,'Can cars one day fly',114,'why not?',0);
INSERT INTO `questions` VALUES ('2020-02-12 04:06:18',307,2,'Science behind rocket fuel?',114,'More info please',0);
INSERT INTO `questions` VALUES ('2020-02-13 03:06:18',308,2,'Chemical Formula of water',115,'Any answers?',0);
INSERT INTO `questions` VALUES ('2020-02-13 03:04:18',309,2,'Is the periodic table set in stone',115,'any answers?',0);
INSERT INTO `questions` VALUES ('2020-02-13 03:03:18',310,2,'Who created the periodic table',115,'Any idea?',0);
INSERT INTO `questions` VALUES ('2020-02-13 04:02:18',311,2,'Who invented ships',115,'Anyone knows?',0);
INSERT INTO `questions` VALUES ('2020-02-13 04:01:18',312,2,'Who invented cars',115,'Anyone knows?',0);
INSERT INTO `questions` VALUES ('2020-02-13 02:04:18',313,2,'Who invented trains',115,'Anyone knows?',0);
INSERT INTO `questions` VALUES ('2020-02-13 02:03:18',314,2,'Who invented planes',115,'Anyone knows?',0);
INSERT INTO `questions` VALUES ('2020-02-13 02:02:18',315,2,'Who invented houses',115,'Anyone knows?',0);
INSERT INTO `questions` VALUES ('2020-02-13 02:01:18',316,2,'Who invented computers',115,'Anyone knows?',0);
INSERT INTO `questions` VALUES ('2020-01-08 04:06:18',317,2,'Why is the sky blue',115,'Any explanation would be good',0);
INSERT INTO `questions` VALUES ('2020-01-07 04:06:18',318,2,'Why is there rain',115,'Any explanation would be good',0);
INSERT INTO `questions` VALUES ('2020-01-06 04:06:18',319,2,'Why is there clouds',115,'Any explanation would be good',0);
INSERT INTO `questions` VALUES ('2020-01-05 04:06:18',320,2,'why is there gravity',115,'Any explanation would be good',0);
INSERT INTO `questions` VALUES ('2020-01-04 04:06:18',321,2,'Why is there waves',116,'Any explanation would be good',0);
INSERT INTO `questions` VALUES ('2020-01-03 04:06:18',322,2,'why is that day and night cycle',116,'Any kind of answer would be good',2);
INSERT INTO `questions` VALUES ('2020-01-03 04:06:18',323,2,'Why do people ask questions',116,'Any kind of answer would be good',0);
INSERT INTO `questions` VALUES ('2020-02-08 04:06:18',324,2,'why is there computer science',116,'Any kind of answer would be good',1);
INSERT INTO `questions` VALUES ('2020-02-08 04:06:18',325,2,'Tell me about metals',117,'Any scientific information?',0);
INSERT INTO `questions` VALUES ('2020-02-08 04:06:18',326,2,'Tell me about plastic',117,'Any scientific information?',0);
INSERT INTO `questions` VALUES ('2020-02-08 04:06:18',327,2,'Tell me about wood',117,'Any scientific information?',0);
INSERT INTO `questions` VALUES ('2020-02-08 04:06:18',328,2,'Tell me about water',117,'Any scientific information?',0);
INSERT INTO `questions` VALUES ('2020-02-08 04:06:18',329,2,'Tell me about fire',117,'Any scientific information?',0);
INSERT INTO `questions` VALUES ('2020-05-18 03:46:18',330,2,'When light bends as it enters a different medium the process is known as what?',118,'Help pls',0);
INSERT INTO `questions` VALUES ('2020-05-18 08:46:18',331,2,'A magnifying glass is what type of lens?',118,'Help pls',0);
INSERT INTO `questions` VALUES ('2020-05-18 09:46:18',332,2,'Electric resistance is typically measured in what units?',118,'Help pls',0);
INSERT INTO `questions` VALUES ('2020-05-18 11:46:18',333,2,'A person who studies physics is known as a?',118,'Help pls',0);
INSERT INTO `questions` VALUES ('2020-05-18 11:46:18',334,2,'Metals expand when heated and do what when cooled?',119,'Help pls',0);
INSERT INTO `questions` VALUES ('2020-05-18 12:46:18',335,2,'What is the first name of the famous scientist who gave us Newton’s three laws of motion?',119,'Help pls',0);
INSERT INTO `questions` VALUES ('2020-05-18 13:46:18',336,2,'What state of the art computer technology is used to train pilots when wanting to copy the experience of flying an aircraft?',119,'Help pls',0);
INSERT INTO `questions` VALUES ('2020-05-18 13:46:18',337,2,'Electric power is typically measured in what units?',119,'Anyone can help?',0);
INSERT INTO `questions` VALUES ('2020-05-18 13:46:18',338,2,'The most recognized model of how the universe begun is known as the?',103,'Anyone can help?',0);
INSERT INTO `questions` VALUES ('2020-05-18 14:46:18',339,2,'Who is the Hubble Space Telescope named after?',104,'Anyone can help?',0);
INSERT INTO `questions` VALUES ('2020-05-18 15:46:18',340,2,'The wire inside an electric bulb is known as the what?',104,'Anyone can help?',0);
INSERT INTO `questions` VALUES ('2020-05-19 00:46:18',341,2,'Theoretical physicist James Maxwell was born in what country?',104,'Anyone can help?',0);
INSERT INTO `questions` VALUES ('2020-05-19 01:46:18',342,2,'Infrared light has a wavelength that is too long or short to be visible for humans?',104,'Anyone can help?',0);
INSERT INTO `questions` VALUES ('2020-05-19 02:46:18',343,2,'What kind of eclipse do we have when the moon is between the sun and the earth?',103,'Anyone can help?',0);
INSERT INTO `questions` VALUES ('2020-05-19 02:46:19',344,2,'True or false? Iron is attracted by magnets.',121,'Any comments?',0);
INSERT INTO `questions` VALUES ('2020-05-19 03:46:19',345,2,' What is the earth’s primary source of energy?',121,'Any comments?',0);
INSERT INTO `questions` VALUES ('2020-05-19 04:46:19',346,2,'Conductors have a high or low resistance?',121,'Any comments?',0);
INSERT INTO `questions` VALUES ('2020-05-19 05:46:19',347,2,'Electric current is typically measured in what units?',121,'Any comments?',0);
INSERT INTO `questions` VALUES ('2020-05-19 06:46:19',348,2,'What scientist is well known for his theory of relativity?',121,'Any comments?',0);
INSERT INTO `questions` VALUES ('2020-05-19 07:46:19',349,2,'Earth is located in which galaxy?',121,'Any comments?',0);
INSERT INTO `questions` VALUES ('2020-05-19 08:46:19',350,2,'True or false? Sound travels faster through water than air?',122,'Any comments?',0);
INSERT INTO `questions` VALUES ('2020-05-19 09:46:19',351,2,'Water is made up of what two elements?',122,'Any comments?',0);
INSERT INTO `questions` VALUES ('2020-05-19 10:46:19',352,2,'Nimbus, cumulus and stratus are types of what?',122,'Any comments?',0);
INSERT INTO `questions` VALUES ('2020-05-19 11:46:19',353,2,'True or false? Water boils at 100 degrees Celsius?',122,'Any comments?',0);
INSERT INTO `questions` VALUES ('2020-05-19 12:46:19',354,2,'True or false? Water is easy to compress.',122,'Any comments?',0);
INSERT INTO `questions` VALUES ('2020-05-19 13:46:20',355,2,'The deepest point in all of the world’s oceans is named what?',122,'Any comments?',0);
INSERT INTO `questions` VALUES ('2020-05-19 13:46:25',356,2,'Pure water has a pH level of a around what number?',123,'Any comments?',0);
INSERT INTO `questions` VALUES ('2020-05-19 13:46:25',357,2,'What is the longest river on Earth?',123,'I require assistance',0);
INSERT INTO `questions` VALUES ('2020-05-19 14:46:25',358,2,'Which famous scientist introduced the idea of natural selection?',123,'I require assistance',0);
INSERT INTO `questions` VALUES ('2020-05-19 14:46:25',359,2,'True or false? The common cold is caused by a virus.',123,'I require assistance',0);
INSERT INTO `questions` VALUES ('2020-05-19 14:46:25',360,2,'A group of dog offspring is known as a?',123,'I require assistance',0);
INSERT INTO `questions` VALUES ('2020-05-19 14:46:25',361,2,'The area of biology devoted to the study of fungi is known as?',123,'I require assistance',0);
INSERT INTO `questions` VALUES ('2020-05-19 14:50:25',362,2,' A change of the DNA in an organism that results in a new trait is known as a?',123,'I require assistance',0);
INSERT INTO `questions` VALUES ('2020-05-19 14:50:25',363,2,'The death of every member of a particular species is known as what?',124,'I require assistance',0);
INSERT INTO `questions` VALUES ('2020-05-19 15:30:25',364,2,'The process of pasteurization is named after which famous French microbiologist?',124,'I require assistance',0);
INSERT INTO `questions` VALUES ('2020-05-19 15:35:25',365,2,'Bacterial infections in humans can be treated with what?',124,'I require assistance',0);
INSERT INTO `questions` VALUES ('2020-05-19 15:40:25',366,2,'Botany is the study of?',124,'I require assistance',0);
INSERT INTO `questions` VALUES ('2020-05-19 15:45:25',367,2,'Can frogs live in salt water?',124,'I require assistance',0);
INSERT INTO `questions` VALUES ('2020-05-19 15:50:25',368,2,'A person who studies biology is known as a?',124,'I require assistance',0);
INSERT INTO `questions` VALUES ('2020-05-19 15:55:25',369,2,'Animals which eat both plants and other animals are known as what?',124,'I require assistance',0);
INSERT INTO `questions` VALUES ('2020-05-19 23:30:25',370,2,'True or false? Protons have a negative charge.',124,'I have no clue',0);
INSERT INTO `questions` VALUES ('2020-05-20 00:55:25',371,2,'True or false? Atoms are bigger than neutrons.',124,'I have no clue',0);
INSERT INTO `questions` VALUES ('2020-05-20 01:25:25',372,2,'True or false? Protons and neutrons are part of the nucleus.',124,'I have no clue',0);
INSERT INTO `questions` VALUES ('2020-05-20 02:25:25',373,2,'True or false? Electrons have a positive charge.',124,'I have no clue',0);
INSERT INTO `questions` VALUES ('2020-05-20 03:25:25',374,2,'True or false? Electrons are not part of the nucleus.',124,'I have no clue',0);
INSERT INTO `questions` VALUES ('2020-05-20 04:25:25',375,2,'True or false? Protons are bigger than atoms.',124,'I have no clue',0);
INSERT INTO `questions` VALUES ('2020-05-20 05:25:25',376,2,'True or false? Subatomic particles are found inside atoms.',124,'I have no clue',0);
INSERT INTO `questions` VALUES ('2020-05-20 06:25:25',377,2,'True or false? Nucleon is a collective name for two particles, the neutron and proton.',105,'I have no clue',0);
INSERT INTO `questions` VALUES ('2020-05-20 06:25:25',378,2,'True or false? Neutrons have a negative charge.',105,'I have no clue',0);
INSERT INTO `questions` VALUES ('2020-05-20 07:25:25',379,2,'True or false? An electron has a greater mass than a proton.',105,'I have no clue',0);
INSERT INTO `questions` VALUES ('2020-05-21 10:25:09',380,2,'stephen hawking time experiment success?',143,'Did any time travllers go to his party?',2);
INSERT INTO `questions` VALUES ('2020-05-21 11:12:55',381,1,'what is last number of pi',143,'is there such a thing',-1);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sinfoafter`
--

DROP TABLE IF EXISTS `sinfoafter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sinfoafter` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `snumber` int NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `participationRating` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `noOfQns` int DEFAULT NULL,
  `noOfAns` int DEFAULT NULL,
  `noOfCmt` int DEFAULT NULL,
  PRIMARY KEY (`snumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinfoafter`
--

LOCK TABLES `sinfoafter` WRITE;
/*!40000 ALTER TABLE `sinfoafter` DISABLE KEYS */;
INSERT INTO `sinfoafter` VALUES ('student','test',100,'Codie Karpov','ckarpov0@uow.edu.sg','95815848',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('tail','test',101,'Grange Porch','gporchz@uow.edu.sg','93524836',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('smart','pass',102,'Myrtle Burland','mburland1@uow.edu.sg','98027532',16,1,0,1,15);
INSERT INTO `sinfoafter` VALUES ('ahedworth2','NotWorth123',103,'Andria Hedworth','NoWorth@uow.edu.sg','91234567',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('cpedlar3','ZVj7wbBJ5mf',104,'Consuela Pedlar','cpedlar3@uow.edu.sg','93993375',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('cpaike4','YX6K8Y1',105,'Cassaundra Paike','cpaike4@uow.edu.sg','92610305',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('myegorov5','2mCe7m',106,'Marjy Yegorov','myegorov5@uow.edu.sg','80165897',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('bpettegre6','pQJhBmD1SoVv',107,'Britni Pettegre','bpettegre6@uow.edu.sg','91057697',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('abasire7','1pSGHIdn',108,'Annissa Basire','abasire7@uow.edu.sg','89112332',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('slukins8','4W5IRMrxid',109,'Sarene Lukins','slukins8@uow.edu.sg','80049070',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('wathy9','Pass',110,'Wendy Athy','wathy9@uow.edu.sg','98381949',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('esauraa','hK0MajHvm',111,'Eda Saura','esauraa@uow.edu.sg','86440789',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('hbellinghamb','kKG9iiIyrQY',112,'Hope Bellingham','hbellinghamb@uow.edu.sg','83296746',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('ejenteauc','L0b5PzeZ',113,'Erroll Jenteau','ejenteauc@uow.edu.sg','84407886',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('mmorrisond','dGa56H53v',114,'Marita Morrison','mmorrisond@uow.edu.sg','92917913',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('rrothe','RaeReizxhrA',115,'Roberto Roth','rrothe@uow.edu.sg','93740322',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('cpentecostf','lzQU1bely0kg',116,'Carolin Pentecost','cpentecostf@uow.edu.sg','81370303',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('cswanwickg','xcuczBjnhM9',117,'Conn Swanwick','cswanwickg@uow.edu.sg','99804363',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('bjumph','H2156Qz9qM',118,'Betty Jump','bjumph@uow.edu.sg','98598308',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('dduquesnayi','dlRAZ1szzr',119,'Doretta Duquesnay','dduquesnayi@uow.edu.sg','97900540',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('aoj','Pass',120,'Alberik O\' Quirk','aoj@uow.edu.sg','93205129',0,0,0,0,0);
INSERT INTO `sinfoafter` VALUES ('adownagek','BAp6q27fKPaU',121,'Analise Downage','adownagek@uow.edu.sg','94024924',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('gvaggsl','jW8xn7X8ClJ',122,'Griffy Vaggs','gvaggsl@uow.edu.sg','82236128',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('lstigersm','CmW0wBL4',123,'Laurel Stigers','lstigersm@uow.edu.sg','81726114',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('urarityn','vJbdy46',124,'Uriah Rarity','urarityn@uow.edu.sg','92060062',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('dc','Pass1',130,'Daniel Cormier','dc@uow.edu.sg','91239999',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('Harry','pass123',131,'Harry Chan','hc@uow.edu.au','87675544',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('popeye','qwe123',143,'jack Beann','jack@Bean.com','88231452',23,1,3,1,1);
INSERT INTO `sinfoafter` VALUES ('Doll','Pass',149,'Doll Hubbert','dhubberto@uow.edu.sg','83067853',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('Jerry','Pass1',150,'Jerry Mosse','J2M@uow.edu.sg','12345678',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('hehe123','joker123',667223,'Hehe Ke','hhk@gmail.com','97635431',4,1,0,0,1);
INSERT INTO `sinfoafter` VALUES ('haha123','joker555',899123,'Haha Poh','ggwp@hotmail.com','89953451',2,1,1,1,0);
INSERT INTO `sinfoafter` VALUES ('Liam','1234',161,'Liam Beann','LB@uow.com','82345234',23,1,3,1,1);
INSERT INTO `sinfoafter` VALUES ('Ivor','1234',162,'Ivor Hubbert','ih@uow.edu.sg','98763333',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('Mike','1234',163,'Mike Mosse','mm@uow.edu.sg','87915656',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('Charlie','1234',164,'Charlie Ke','ck@uow.edu.sg','89895656',4,1,0,0,1);
INSERT INTO `sinfoafter` VALUES ('Keene','1234',165,'Keene Poh','kbg@uow.edu.sg','90991234',2,1,1,1,0);
INSERT INTO `sinfoafter` VALUES ('Miller','1234',166,'Miller Beann','mb@uow.com','82345231',23,1,3,1,1);
INSERT INTO `sinfoafter` VALUES ('Smith','1234',167,'Smith Hubbert','sh@uow.edu.sg','98763331',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('Monroe','1234',168,'Monroe Mosse','mm@uow.edu.sg','87915651',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('Adam','1234',169,'Adam Ke','ak@uow.edu.sg','89895651',4,1,0,0,1);
INSERT INTO `sinfoafter` VALUES ('Bailey','1234',170,'Bailey Poh','bp@uow.edu.sg','90991231',2,1,1,1,0);
INSERT INTO `sinfoafter` VALUES ('Aiden','1234',171,'Aiden Beann','ab@uow.com','82345232',23,1,3,1,1);
INSERT INTO `sinfoafter` VALUES ('Wood','1234',172,'Wood Hubbert','wh@uow.edu.sg','98763332',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('Thomas','1234',173,'Thomas Mosse','tm@uow.edu.sg','87915652',0,1,0,0,0);
INSERT INTO `sinfoafter` VALUES ('Jones','1234',174,'Jones Ke','jk44@uow.edu.sg','89895652',4,1,0,0,1);
INSERT INTO `sinfoafter` VALUES ('Peter','1234',175,'Peter Poh','pp44@uow.edu.sg','90991232',2,1,1,1,0);
/*!40000 ALTER TABLE `sinfoafter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sinfobefore`
--

DROP TABLE IF EXISTS `sinfobefore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sinfobefore` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `snumber` int NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`snumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinfobefore`
--

LOCK TABLES `sinfobefore` WRITE;
/*!40000 ALTER TABLE `sinfobefore` DISABLE KEYS */;
INSERT INTO `sinfobefore` VALUES ('calldridge10','WcE93biXv',137,'Clari Alldridge','calldridge10@uow.edu.au','93096294');
INSERT INTO `sinfobefore` VALUES ('apealing11','DN9g4zBROrO5',138,'Alard Pealing','apealing11@uow.edu.au','92616347');
INSERT INTO `sinfobefore` VALUES ('dlangstone12','dh9M7Jpouq',139,'Doll Langstone','dlangstone12@uow.edu.au','83205259');
INSERT INTO `sinfobefore` VALUES ('sussher14','G3efuA',141,'Sid Ussher','sussher14@uow.edu.au','82185949');
INSERT INTO `sinfobefore` VALUES ('dgreest15','Xo5GJ0iU',142,'Dorene Greest','dgreest15@uow.edu.au','85298600');
/*!40000 ALTER TABLE `sinfobefore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `subId` int NOT NULL AUTO_INCREMENT,
  `subName` varchar(50) NOT NULL,
  PRIMARY KEY (`subId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Mathematics');
INSERT INTO `subjects` VALUES (2,'Science');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useradmin`
--

DROP TABLE IF EXISTS `useradmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useradmin` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` decimal(8,0) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useradmin`
--

LOCK TABLES `useradmin` WRITE;
/*!40000 ALTER TABLE `useradmin` DISABLE KEYS */;
INSERT INTO `useradmin` VALUES ('admin1','adm1','Su Yi Xuan','syx@uow.edu.sg',92143421);
INSERT INTO `useradmin` VALUES ('admin2','adm2','So Sian Leh','ssl@uow.edu.sg',81234321);
INSERT INTO `useradmin` VALUES ('adminSYX','studyexpress1','SYX','syx1@uow.edu.sg',87775656);
/*!40000 ALTER TABLE `useradmin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-21 22:53:06
