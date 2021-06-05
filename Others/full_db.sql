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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',1,'A bell curve is a common type of distribution for a variable, also known as the normal distribution.',667223,0),('2020-05-12 10:47:00',2,'he term \"bell curve\" originates from the fact that the graph used to depict a normal distribution consists of a symmetrical bell-shaped curve.',667223,0),('2020-05-12 10:47:00',3,'Something schools use',667223,0),('2020-05-12 10:47:00',4,'I believe wikipedia has a good explanation',150,0),('2020-05-12 10:47:00',5,'Hi, explanation is provided in lecture notes chapter 5 slide 11',899123,0),('2020-05-12 10:47:00',6,'This link will help https://www.mathsisfun.com/algebra/trig-cosine-law.html',899123,0),('2020-05-12 10:47:00',7,'Visit this http://mathematics.laerd.com/maths/trigonometry-sine-and-cosine-rules-intro.php',899123,0),('2020-05-12 10:47:00',8,'https://www.cimt.org.uk/projects/mepres/step-up/sect4/index.htm',899123,0),('2020-05-12 10:47:00',9,'Wiki is plenty helpful https://en.wikipedia.org/wiki/Law_of_cosines',899123,0),('2020-05-12 10:47:00',10,'Hi, The Law of Cosines is useful for finding:\n1. the third side of a triangle when we know two sides and the angle between them (like the example above)\n2. the angles of a triangle when we know all three sides (as in the following example)',899123,0),('2020-05-12 10:47:00',11,'The Law of Sines (or Sine Rule) is very useful for solving triangles:\n\nasin A =  bsin B =  csin C',102,0),('2020-05-12 10:47:00',12,'hi, the wikipedia link is useful https://en.wikipedia.org/wiki/Algebra',102,0),('2020-05-12 10:47:00',13,'Hi, try this link https://en.wikipedia.org/wiki/Function_(mathematics)',102,0),('2020-05-12 10:47:00',14,'The \"power rule\" tells us that to raise a power to a power, just multiply the exponents.',102,0),('2020-05-12 10:47:00',15,'The quotient rule tells us that we can divide two powers with the same base by subtracting the exponents.',102,0),('2020-05-12 10:47:00',16,'The last rule in this lesson tells us that any nonzero number raised to a negative power equals its reciprocal raised to the opposite positive power.',102,0),('2020-05-12 10:47:00',17,'number of unit x price',102,0),('2020-05-12 10:47:00',18,'The derivative of a function of a real variable measures the sensitivity to change of the function value with respect to a change in its argument',102,0),('2020-05-12 10:47:00',19,'Integration, in mathematics, technique of finding a function g(x) the derivative of which, Dg(x), is equal to a given function f(x).',102,0),('2020-05-12 10:47:00',20,'It is like a machine that has an input and an output.\n\nAnd the output is related somehow to the input.',102,0),('2020-05-12 10:47:00',21,'Try this  https://www.khanacademy.org/math/precalculus',102,0),('2020-05-12 10:47:00',22,'Try https://www.khanacademy.org/math/trigonometry ',102,0),('2020-05-12 10:47:00',23,'https://www.amazon.com/slp/algebra-textbook/684scqmb25z24wn',102,0),('2020-05-12 10:47:00',24,'http://mrkennedy.pbworks.com/w/file/fetch/91539015/Nelson%20Functions%2011%20Textbook.pdf',102,0),('2020-05-12 10:47:00',25,'https://www.wiley.com/en-us/Mathematical+Modelling%3A+A+Graduate+Textbook-p-9781119483991',102,0),('2020-05-12 10:47:00',26,'this  is a good list \nhttps://wiki.ezvid.com/best-geometry-textbooks',102,0),('2020-05-12 10:47:00',27,'V=4\n3πr3',102,0),('2020-05-12 10:47:00',28,'V=πr2h',102,0),('2020-05-12 10:47:00',29,'https://orion.math.iastate.edu/dept/links/formulas/form2.pdf',102,0),('2020-05-12 10:47:00',30,'https://www.purplemath.com/modules/sqrcircle.htm',102,0),('2020-05-12 10:47:00',31,'https://www.khanacademy.org/math/calculus-1',102,0),('2020-05-12 10:47:00',32,'Refer to this link \nhttps://www.sparknotes.com/math/precalc/exponentialandlogarithmicfunctions/section2/',102,0),('2020-05-12 10:47:00',33,'A model is used to help scientists visualise things that they cannot actually see. It can be thought of as a thinking tool, to help form explanations. Models are useful simplifications to aid understanding.',102,0),('2020-05-12 10:47:00',34,'Trigonometry (from Greek trigōnon, \"triangle\" and metron, \"measure\") is a branch of mathematics that studies relationships between side lengths and angles of triangles',102,0),('2020-05-12 10:47:00',35,'Statistics is a form of mathematical analysis that uses quantified models, representations and synopses for a given set of experimental data or real-life studies.',102,0),('2020-05-12 10:47:00',36,'\nYou can use calculus in a lot of ways and applications. Among the disciplines that utilize calculus include physics, engineering, economics, statistics, and medicine.',102,0),('2020-05-12 10:47:00',37,'n algebra, a quadratic equation is any equation that can be rearranged in standard form as where x represents an unknown, and a, b, and c represent known numbers, where a ≠ 0. If a = 0, then the equation is linear, not quadratic, as there is no term.',102,0),('2020-05-12 10:47:00',38,'The mode of a set of data values is the value that appears most often.',102,0),('2020-05-12 10:47:00',39,'Please visit this site for a good explanation\nhttps://www.purplemath.com/modules/meanmode.htm',102,0),('2020-05-12 10:47:00',40,'DescriptionProbability is the branch of mathematics concerning numerical descriptions of how likely an event is to occur or how likely it is that a proposition is true. ',102,0),('2020-05-12 10:47:00',41,'BODMAS is an acronym and it stands for Bracket, Of, Division, Multiplication, Addition and Subtraction. ',102,0),('2020-05-12 10:47:00',42,'bodmasthe average of a set of numerical values, as calculated by adding them together and dividing by the number of terms in the set.',102,0),('2020-05-12 10:47:00',43,'the quadratic formula is simply just ax^2+bx+c = 0 in terms of x',102,0),('2020-05-12 10:47:00',44,'https://www.mathsisfun.com/algebra/index.html',103,0),('2020-05-12 10:47:00',45,'https://www.livescience.com/50258-algebra.html',103,0),('2020-05-12 10:47:00',46,'https://www.purplemath.com/modules/',103,0),('2020-05-12 10:47:00',47,'https://brilliant.org/algebra/',103,0),('2020-05-12 10:47:00',48,'https://plato.stanford.edu/entries/algebra/',103,0),('2020-05-12 10:47:00',49,'https://www.coolmath.com/algebra',103,0),('2020-05-12 10:47:00',50,'https://revisionmaths.com/advanced-level-maths-revision/pure-maths/algebra/functions',103,0),('2020-05-12 10:47:00',51,'http://tutorial.math.lamar.edu/Classes/Alg/FunctionDefn.aspx',103,0),('2020-05-12 10:47:00',52,'http://tutorial.math.lamar.edu/Classes/CalcI/Functions.aspx',103,0),('2020-05-12 10:47:00',53,'http://tutorial.math.lamar.edu/Classes/CalcI/Functions.aspx',103,0),('2020-05-12 10:47:00',54,'https://mathinsight.org/definition/function',103,0),('2020-05-12 10:47:00',55,'https://open.umn.edu/opentextbooks/textbooks/elementary-algebra',103,0),('2020-05-12 10:47:00',56,'https://openstax.org/details/books/college-algebra',103,0),('2020-05-12 10:47:00',57,'https://bim.easyaccessmaterials.com/index.php?location_user=cchs',103,0),('2020-05-12 10:47:00',58,'https://ocw.mit.edu/resources/res-18-001-calculus-online-textbook-spring-2005/textbook/',103,0),('2020-05-12 10:47:00',59,'https://ocw.mit.edu/resources/res-18-001-calculus-online-textbook-spring-2005/',103,0),('2020-05-12 10:47:00',60,'https://open.umn.edu/opentextbooks/textbooks/calculus',103,0),('2020-05-12 10:47:00',61,'https://wiki.ezvid.com/best-calculus-textbooks',103,0),('2020-05-12 10:47:00',62,'https://www.quora.com/What-are-the-best-calculus-books',103,0),('2020-05-12 10:47:00',63,'Jupiter',667223,0),('2020-05-12 10:47:00',64,'O',667223,0),('2020-05-12 10:47:00',65,'Tsunami',667223,0),('2020-05-12 10:47:00',66,'False - They are omnivores',667223,0),('2020-05-12 10:47:00',67,'Nitrogen',667223,0),('2020-05-12 10:47:00',68,' A trunk',667223,0),('2020-05-12 10:47:00',69,'True',103,0),('2020-05-12 10:47:00',70,'Mount Everest',103,0),('2020-05-12 10:47:00',71,'The sun',103,0),('2020-05-12 10:47:00',72,'True',103,0),('2020-05-12 10:47:00',73,'He He Helium',103,0),('2020-05-12 10:47:00',74,'Spiders',103,0),('2020-05-12 10:47:00',75,'7',103,0),('2020-05-12 10:47:00',76,'Lava',103,0),('2020-05-12 10:47:00',77,'True',103,0),('2020-05-12 10:47:00',78,'The skull',103,0),('2020-05-12 10:47:00',79,'An acid (hydrochloric acid)',103,0),('2020-05-12 10:47:00',80,'False (it is the cheetah)',103,0),('2020-05-12 10:47:00',81,'0',103,0),('2020-05-12 10:47:00',82,'Albert Einstein',103,0),('2020-05-12 10:47:00',83,'8',104,0),('2020-05-12 10:47:00',84,'Mercury',104,0),('2020-05-12 10:47:00',85,'Jupiter',104,0),('2020-05-12 10:47:00',86,'Venus',104,0),('2020-05-12 10:47:00',87,'Saturn',104,0),('2020-05-12 10:47:00',88,'Uranus',104,0),('2020-05-12 10:47:00',89,'Neptune',104,0),('2020-05-12 10:47:00',90,'Neptune',104,0),('2020-05-12 10:47:00',91,'Their spines of spiky hair.',104,0),('2020-05-12 10:47:00',92,'A fish',104,0),('2020-05-12 10:47:00',93,'The Gorilla',104,0),('2020-05-12 10:47:00',94,'2',104,0),('2020-05-12 10:47:00',95,'Africa',104,0),('2020-05-12 10:47:00',96,'False - Snakeskin is smooth and dry.',104,0),('2020-05-12 10:47:00',97,'The elephant - The largest on record weighed around 12,000 kilograms! (26,000 lb).',104,0),('2020-05-12 10:47:00',98,'Yes',104,0),('2020-05-12 10:47:00',99,'Prides',104,0),('2020-05-12 10:47:00',100,'False - They are carnivores.',104,0),('2020-05-12 10:47:00',101,'A deer a female deer.',104,0),('2020-05-12 10:47:00',102,'The cheetah (it can reach speeds of up to 120kph – 75mph).',104,0),('2020-05-12 10:47:00',103,'True',104,0),('2020-05-12 10:47:00',104,'Antarctica',104,0),('2020-05-12 10:47:00',105,'True',149,0),('2020-05-12 10:47:00',106,'Cows',149,0),('2020-05-12 10:47:00',107,'Yes',149,0),('2020-05-12 10:47:00',108,'True - They often sleep with their mouth open to cool down.',149,0),('2020-05-12 10:47:00',109,'The tiger, weighing up to 300 kilograms (660 pounds).',149,0),('2020-05-12 10:47:00',110,'Arachnophobia',149,0),('2020-05-12 10:47:00',111,'False - Captive mice live for up to 2 and a half years while wild mice only live for an average of around 4 months.',149,0),('2020-05-12 10:47:00',112,'Bamboo',149,0),('2020-05-12 10:47:00',113,'Mars',149,0),('2020-05-12 10:47:00',114,'Earth',149,0),('2020-05-12 10:47:00',115,'Venus',149,0),('2020-05-12 10:47:00',116,'Neptune',149,0),('2020-05-12 10:47:00',117,'True',149,0),('2020-05-12 10:47:00',118,'Uranus',149,0),('2020-05-12 10:47:00',119,'Mercury',149,0),('2020-05-12 10:47:00',120,'Jupiter',149,0),('2020-05-12 10:47:00',121,'False',149,0),('2020-05-12 10:47:00',122,'Mars',149,0),('2020-05-12 10:47:00',123,'Saturn',149,0),('2020-05-12 10:47:00',124,'Venus',149,0),('2020-05-12 10:47:00',125,'Mars',149,0),('2020-05-12 10:47:00',126,'My encik grandmother',108,0);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
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
INSERT INTO `moderator` VALUES ('mod','1','kjksahdka','email@email.com',1111),('mod2','1','myfullname','mymailhere@mymailhere.com',11110000);
/*!40000 ALTER TABLE `moderator` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES ('2020-05-12 10:58:46',1,'Nicely asked!',667223,0),('2020-05-12 10:58:46',2,'Great question',667223,0),('2020-05-12 10:58:46',3,'Wonderfully asked',899123,0),('2020-05-12 10:58:46',4,'Please teach someone',667223,0),('2020-05-12 10:58:46',5,'Nice question!',899123,0),('2020-05-12 10:58:46',6,'Interesting question!',899123,0),('2020-05-12 10:58:46',7,'I need help on this too!',899123,0),('2020-05-12 10:58:46',8,'Need help on this..',899123,0),('2020-05-12 10:58:46',9,'Please help',899123,0),('2020-05-12 10:58:46',10,'very good question',899123,0),('2020-05-12 10:58:46',12,'Nicely Asked!',100,0),('2020-05-12 10:58:46',13,'\nI would like to know the answer too!',100,0),('2020-05-12 10:58:46',14,'Interesting question.',100,0),('2020-05-12 10:58:46',15,'\nI would like to know the answer too!\n',100,0),('2020-05-12 10:58:46',16,'\nI would like to know the answer too!\n',100,0),('2020-05-12 10:58:46',17,'Interesting question.\n',100,0),('2020-05-12 10:58:46',18,'I need help on this too.',100,0),('2020-05-12 10:58:46',19,'Interesting, waiting for an answer.',100,0),('2020-05-12 10:58:46',20,'Good question!',100,0),('2020-05-12 10:58:46',21,'I need an explanation on this too!',100,0),('2020-05-12 10:58:46',22,'I need an explanation on this too!',100,0),('2020-05-12 10:58:46',23,'I need an explanation on this too!',100,0),('2020-05-12 10:58:46',24,'Good question!\n',100,0),('2020-05-12 10:58:46',25,'I need an explanation on this too!\n',100,0),('2020-05-12 10:58:46',26,'\nGood question!',100,0),('2020-05-12 10:58:46',27,'Interesting question.',100,0),('2020-05-12 10:58:46',28,'Good question!',100,0),('2020-05-12 10:58:46',29,'Good question!',100,0),('2020-05-12 10:58:46',30,'Nicely asked',100,0),('2020-05-12 10:58:46',31,'Interesting question.',100,0),('2020-05-12 10:58:46',32,'Interesting question.',100,0),('2020-05-12 10:58:46',33,'I would like to know the answer too!\n',100,0),('2020-05-12 10:58:46',34,'Interesting, waiting for an answer.',100,0),('2020-05-12 10:58:46',35,'I need an explanation on this too!\n',100,0),('2020-05-12 10:58:46',36,'Good question!',100,0),('2020-05-12 10:58:46',37,'Good question!',100,0),('2020-05-12 10:58:46',38,'Interesting, waiting for an answer.\n\n',100,0),('2020-05-12 10:58:46',39,'\nI need help on this too.',100,0),('2020-05-12 10:58:46',40,'Interesting question.',100,0),('2020-05-12 10:58:46',41,'I need help on this too.',100,0),('2020-05-12 10:58:46',42,'Thank u for the question!',101,0),('2020-05-12 10:58:46',43,'Thank u for the question!',101,0),('2020-05-12 10:58:46',44,'Thank u for the question!',101,0),('2020-05-12 10:58:46',45,'Thank u for the question!',101,0),('2020-05-12 10:58:46',46,'Interesting!',101,0),('2020-05-12 10:58:46',47,'I need an explanation on this too!\n\nGood question!',101,0),('2020-05-12 10:58:46',48,'I need an explanation on this too!\n\nGood question!',101,0),('2020-05-12 10:58:46',49,'I need help on this too.',101,0),('2020-05-12 10:58:46',50,'\nThank u for the question!',101,0),('2020-05-12 10:58:46',51,'Nicely asked',101,0),('2020-05-12 10:58:46',52,'Thank u for the question!',101,0),('2020-05-12 10:58:46',53,'Lets learn together!',101,0),('2020-05-12 10:58:46',54,'Lets learn together!',101,0),('2020-05-12 10:58:46',55,'wonderful question',101,0),('2020-05-12 10:58:46',56,'Lets learn together!',101,0),('2020-05-12 10:58:46',57,'nicely asked\n',101,0),('2020-05-12 10:58:46',58,'I would like to learn this as well',101,0),('2020-05-12 10:58:46',59,'I would like to know the answer too!',101,0),('2020-05-12 10:58:46',60,'I would like to know the answer too!',101,0),('2020-05-12 10:58:46',61,'\nLets learn together!',101,0),('2020-05-12 10:58:46',62,'\nThank u for the question!\n',101,0),('2020-05-12 10:58:46',63,'Nicely asked',149,0),('2020-05-12 10:58:46',64,'I would like to know the answer too!',149,0),('2020-05-12 10:58:46',65,'\nThank u for the question!',149,0),('2020-05-12 10:58:46',66,'Interesting question.',149,0),('2020-05-12 10:58:46',67,'Interesting question.',149,0),('2020-05-12 10:58:46',68,'Interesting question.',149,0),('2020-05-12 10:58:46',69,'Interesting question.',149,0),('2020-05-12 10:58:46',70,'Interesting question.',149,0),('2020-05-12 10:58:46',71,'Thank u for the question!',149,0),('2020-05-12 10:58:46',72,'Thank u for the question!',149,0),('2020-05-12 10:58:46',73,'Thank u for the question!',149,0),('2020-05-12 10:58:46',74,'Good question!',149,0),('2020-05-12 10:58:46',75,'Interesting, waiting for an answer.',149,0),('2020-05-12 10:58:46',76,'Interesting, waiting for an answer.',149,0),('2020-05-12 10:58:46',77,'I need an explanation on this too!',149,0),('2020-05-12 10:58:46',78,'I need an explanation on this too!',149,0),('2020-05-12 10:58:46',79,'I need an explanation on this too!',124,0),('2020-05-12 10:58:46',80,'I need an explanation on this too!\n',124,0),('2020-05-12 10:58:46',81,'I need an explanation on this too!\n',124,0),('2020-05-12 10:58:46',82,'I need an explanation on this too!\n',124,0),('2020-05-12 10:58:46',83,'I need an explanation on this too!\n',124,0),('2020-05-12 10:58:46',84,'I need an explanation on this too!\n',124,0),('2020-05-12 10:58:46',85,'I need an explanation on this too!\n',124,0),('2020-05-12 10:58:46',86,'I need help on this too.',124,0),('2020-05-12 10:58:46',87,'I need help on this too.',124,0),('2020-05-12 10:58:46',88,'I need help on this too.',120,0),('2020-05-12 10:58:46',89,'I need help on this too.',108,0),('2020-05-12 10:58:46',90,'I need help on this too.',108,0),('2020-05-12 10:58:46',91,'I need help on this too.',108,0),('2020-05-12 10:58:46',92,'I need help on this too.',108,0),('2020-05-12 10:58:46',93,'I need help on this too.',108,0),('2020-05-12 10:58:46',94,'Lets learn togehter',108,0),('2020-05-12 10:58:46',95,'Thank u for the question!',108,0),('2020-05-12 10:58:46',96,'Thank u for the question!',108,0),('2020-05-12 10:58:46',97,'Interesting, waiting for an answer.',108,0),('2020-05-12 10:58:46',98,'Interesting, waiting for an answer.',108,0),('2020-05-12 10:58:46',99,'Good question!',108,0),('2020-05-12 10:58:46',100,'Good question!',108,0),('2020-05-12 10:58:46',101,'Thank u for the question!',108,0),('2020-05-12 10:58:46',102,'Thank u for the question!',108,0),('2020-05-12 10:58:46',103,'Thank u for the question!',108,0),('2020-05-12 10:58:46',104,'Thank u for the question!',108,0),('2020-05-12 10:58:46',105,'Thank u for the question!',108,0),('2020-05-12 10:58:46',106,'I need an explanation on this too!',108,0),('2020-05-12 10:58:46',107,'I need an explanation on this too!',108,0),('2020-05-12 10:58:46',108,'I need an explanation on this too!',108,0),('2020-05-12 10:58:46',109,'I need an explanation on this too!',108,0),('2020-05-12 10:58:46',110,'I need an explanation on this too!',108,0),('2020-05-12 10:58:46',111,'I need an explanation on this too!',108,0),('2020-05-12 10:58:46',112,'I need an explanation on this too!',108,0),('2020-05-12 10:58:46',113,'Thank u for the question!',108,0),('2020-05-12 10:58:46',114,'Lets learn togehter',108,0),('2020-05-12 10:58:46',115,'I need an explanation on this too!',108,0),('2020-05-12 10:58:46',116,'I need an explanation on this too!',108,0),('2020-05-12 10:58:46',117,'I need an explanation on this too!',108,0),('2020-05-12 10:58:46',118,'I need an explanation on this too!',108,0),('2020-05-12 10:58:46',119,'I need an explanation on this too!',108,0),('2020-05-12 10:58:46',120,'I need an explanation on this too!',108,0),('2020-05-12 10:58:46',121,'I need an explanation on this too!',108,0),('2020-05-12 10:58:46',122,'I need an explanation on this too!',108,0),('2020-05-12 10:58:46',123,'I need an explanation on this too!',108,0),('2020-05-12 10:58:46',124,'I need an explanation on this too!',108,0);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
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
INSERT INTO `qanswer` VALUES (1,1),(1,2),(1,3),(1,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(4,11),(147,12),(148,13),(149,14),(150,15),(151,16),(152,17),(153,18),(154,19),(155,20),(156,21),(157,22),(158,23),(159,24),(160,25),(161,26),(162,27),(163,28),(164,29),(165,30),(166,31),(207,32),(206,33),(205,34),(204,35),(196,36),(197,37),(191,38),(192,39),(198,40),(168,41),(169,42),(171,43),(147,44),(147,45),(147,46),(147,47),(147,48),(147,49),(148,50),(148,51),(148,52),(148,53),(148,54),(158,55),(158,56),(158,57),(167,58),(167,59),(167,60),(167,61),(167,62),(208,63),(209,64),(210,65),(211,66),(212,67),(213,68),(214,69),(215,70),(216,71),(217,72),(218,73),(219,74),(220,75),(221,76),(222,77),(223,78),(224,79),(225,80),(226,81),(227,82),(228,83),(229,84),(230,85),(231,86),(232,87),(233,88),(234,89),(235,90),(269,91),(268,92),(267,93),(266,94),(265,95),(264,96),(263,97),(262,98),(261,99),(260,100),(259,101),(258,102),(257,103),(256,104),(255,105),(254,106),(253,107),(252,108),(251,109),(250,110),(249,111),(248,112),(247,113),(246,114),(245,115),(244,116),(243,117),(242,118),(241,119),(240,120),(239,121),(238,122),(237,123),(236,124),(235,125),(258,126);
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
INSERT INTO `qcomment` VALUES (1,1),(1,2),(1,3),(1,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(146,12),(4,13),(4,14),(147,15),(148,16),(149,17),(149,18),(149,19),(150,20),(151,21),(152,22),(153,23),(153,24),(155,25),(155,26),(155,27),(156,28),(157,29),(158,30),(158,31),(207,32),(207,33),(207,34),(207,35),(207,36),(168,37),(168,38),(168,39),(169,40),(169,41),(173,42),(158,43),(168,44),(172,45),(172,46),(172,47),(171,48),(171,49),(171,50),(171,51),(156,52),(175,53),(169,54),(169,55),(164,56),(164,57),(164,58),(164,59),(167,60),(167,61),(167,62),(208,63),(208,64),(208,65),(209,66),(212,67),(217,68),(219,69),(224,70),(226,71),(234,72),(268,73),(218,74),(225,75),(265,76),(216,77),(225,78),(219,79),(218,80),(209,81),(214,82),(213,83),(212,84),(211,85),(210,86),(223,87),(221,88),(268,89),(265,90),(220,91),(232,92),(238,93),(238,94),(238,95),(236,96),(236,97),(234,98),(220,99),(235,100),(235,101),(217,102),(246,103),(239,104),(237,105),(226,106),(269,107),(268,108),(267,109),(266,110),(265,111),(264,112),(264,113),(264,114),(263,115),(262,116),(260,117),(259,118),(258,119),(256,120),(236,121),(247,122),(253,123),(243,124);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',1,1,'How do bell curve work?',899123,'Hmmm',0),('2020-05-12 09:06:18',2,1,'Cosine rule',150,'How to apply cosine rule',0),('2020-05-12 09:06:18',4,1,'How to apply sine rule',150,'Please help someone',0),('2020-05-12 09:06:18',146,1,'a calculus problem about trigonometry',150,'What is f′(π4) if f(x)=arctan(x)x√ ?',0),('2020-05-12 09:06:18',147,1,'Online site recommendation for Alegbra',150,'Any site recommendations?',0),('2020-05-12 09:06:18',148,1,'Online site recommendation for Functions',150,'Any site recommendations?',0),('2020-05-12 09:06:18',149,1,'What is power rule',120,'Please explain the theory and formula',0),('2020-05-12 09:06:18',150,1,'What is quotient rule',150,'Please explain the theory and formula',0),('2020-05-12 09:06:18',151,1,'What is negative exponent',120,'Please explain the theory and formula',0),('2020-05-12 09:06:18',152,1,'What is formula for total cost',149,'Please explain the theory and formula',0),('2020-05-12 09:06:18',153,1,'What is differentiation',149,'Please explain the theory and formula',0),('2020-05-12 09:06:18',154,1,'What is Integration',150,'Please explain the theory and formula',0),('2020-05-12 09:06:18',155,1,'What is the meaning of a function',149,'Please explain the theory and formula',0),('2020-05-12 09:06:18',156,1,'Online site recommendation for Pre-calculus',150,'Any site recommendations?',0),('2020-05-12 09:06:18',157,1,'Online site recommendation for Trigonometry',150,'Any site recommendations?',0),('2020-05-12 09:06:18',158,1,'Textbook recommendation for Alegbra',149,'Any textbox recommendation for the above topic?',0),('2020-05-12 09:06:18',159,1,'Textbook recommendation for Functions',149,'Any textbox recommendation for the above topic?',0),('2020-05-12 09:06:18',160,1,'Textbook recommendation for Modelling',149,'Any textbox recommendation for the above topic?',0),('2020-05-12 09:06:18',161,1,'Textbook recommendation for Geometery',149,'Any textbox recommendation for the above topic?',0),('2020-05-12 09:06:18',162,1,'How to calculate volume of sphere',110,'Please explain the formula',0),('2020-05-12 09:06:18',163,1,'How to calculate Volume of right circular cylinder',110,'Please explain the formula',0),('2020-05-12 09:06:18',164,1,'How to calculate distance between 2 points',110,'Please explain the formula',0),('2020-05-12 09:06:18',165,1,'How to calculate standard equation of a circle',110,'Please explain the formula',0),('2020-05-12 09:06:18',166,1,'Online site recommendation for calculus',149,'Any site recommendations?',0),('2020-05-12 09:06:18',167,1,'Textbook recommendation for calculus',149,'Any textbox recommendation for the above topic?',0),('2020-05-12 09:06:18',168,1,'BODMAS',120,'Please explain BODMAS rule to me',0),('2020-05-12 09:06:18',169,1,'How to calculate arithmetic mean',120,'Please explain',0),('2020-05-12 09:06:18',170,1,'How to calculate probability',120,'Please explain',0),('2020-05-12 09:06:18',171,1,'What is Quadratic Formula',120,'Please explain the formula',0),('2020-05-12 09:06:18',172,1,'How to calculate  Distance Formula',120,'Please explain the formula',0),('2020-05-12 09:06:18',173,1,'How to calculate Slope Formula',120,'Please explain the formula',0),('2020-05-12 09:06:18',174,1,'How to calculate Slope Intercept',120,'Please explain the formula',0),('2020-05-12 09:06:18',175,1,'How to calculate Area of Triangle',120,'Please explain the formula',0),('2020-05-12 09:06:18',176,1,'How to calculate Pythagorean Theorem',120,'Please explain the formula',0),('2020-05-12 09:06:18',177,1,'How to calculate Area of Rectangle',110,'Please explain the formula',0),('2020-05-12 09:06:18',178,1,'How to calculate Area of Parallelogram',110,'Please explain the formula',0),('2020-05-12 09:06:18',179,1,'How to calculate Area of Circle',110,'Please explain the formula',0),('2020-05-12 09:06:18',180,1,'Textbook recommendation for Statistics',149,'Any textbox recommendation for the above topic?',0),('2020-05-12 09:06:18',181,1,'Textbook recommendation for Probability',149,'Any textbox recommendation for the above topic?',0),('2020-05-12 09:06:18',182,1,'Textbook recommendation for calculus',149,'Any textbox recommendation for the above topic?',0),('2020-05-12 09:06:18',183,1,'Textbook recommendation for Trigonometry',149,'Any textbox recommendation for the above topic?',0),('2020-05-12 09:06:18',184,1,'How to calculate Circumference of Circle',110,'Please explain the formula',0),('2020-05-12 09:06:18',185,1,'How to calculate tangent',110,'Please explain the formula',0),('2020-05-12 09:06:18',186,1,'How to calculate Volume of cube',110,'Please explain the formula',0),('2020-05-12 09:06:18',187,1,'How to calculate volume of rectangle',110,'Please explain the formula',0),('2020-05-12 09:06:18',188,1,'How to calculate Volume of square pyramid',110,'Please explain the formula',0),('2020-05-12 09:06:18',189,1,'How to calculate volume of cylinder',110,'Please explain the formula',0),('2020-05-12 09:06:18',190,1,'How to calculate Volume of cone',110,'Please explain the formula',0),('2020-05-12 09:06:18',191,1,'What is mode',120,'Please explain the theory and formula',0),('2020-05-12 09:06:18',192,1,'What is the difference between mean median mode range',150,'Please explain the theory and formula',0),('2020-05-12 09:06:18',193,1,'What is product rule',110,'Please explain the theory and formula',0),('2020-05-12 09:06:18',194,1,'What is log',150,'Please explain the theory and formula',0),('2020-05-12 09:06:18',195,1,'How to learn calculus fast',110,'Anyone has any idea?',0),('2020-05-12 09:06:18',196,1,'Why is calculus applicable in real life',149,'Anyone has any idea?',0),('2020-05-12 09:06:18',197,1,'What is quadratic equations used for',120,'Anyone has any idea?',0),('2020-05-12 09:06:18',198,1,'Why do we need to calculate probaility',120,'Anyone has any idea?',0),('2020-05-12 09:06:18',199,1,'Why do we need to calculate average',110,'Anyone has any idea?',0),('2020-05-12 09:06:18',200,1,'Online site recommendation for Modelling',150,'Any site recommendations?',0),('2020-05-12 09:06:18',201,1,'Online site recommendation for Geometery',150,'Any site recommendations?',0),('2020-05-12 09:06:18',202,1,'Online site recommendation for Statistics',150,'Any site recommendations?',0),('2020-05-12 09:06:18',203,1,'Online site recommendation for Probability',150,'Any site recommendations?',0),('2020-05-12 09:06:18',204,1,'Why do we need statistics',149,'Anyone has any idea?',0),('2020-05-12 09:06:18',205,1,'Why do we need Trigonometry',110,'Anyone has any idea?',0),('2020-05-12 09:06:18',206,1,'Is modelling helpful?',120,'Anyone has any idea?',0),('2020-05-12 09:06:18',207,1,'Help understanding log function ',149,'Please explain',0),('2020-05-12 09:06:18',208,2,'What is the biggest planet in our solar system?',120,'Anyone has any idea?',0),('2020-05-12 09:06:18',209,2,'What is the chemical symbol for the element oxygen?',121,'Please help me',0),('2020-05-12 09:06:18',210,2,'Another name for a tidal wave is a?',122,'Anyone has any idea?',0),('2020-05-12 09:06:18',211,2,'True or false? Dogs are herbivores.',123,'Please explain',0),('2020-05-12 09:06:18',212,2,'What is the 7th element on the periodic table of elements?',124,'Send help',0),('2020-05-12 09:06:18',213,2,'What is the name of the long appendage that hangs from an elephants face?',150,'Send help',0),('2020-05-12 09:06:18',214,2,'True or false? DNA is the shortened form of the term ‘Deoxyribonucleic acid’?',121,'Anyone has any idea?',0),('2020-05-12 09:06:18',215,2,'The highest mountain on earth is?',123,'Anyone has any idea?',0),('2020-05-12 09:06:18',216,2,'What is the name of the closest star to the earth?',120,'Anyone can assist me',0),('2020-05-12 09:06:18',217,2,'True or false? Frogs are cold blooded animals.',120,'Please help me',0),('2020-05-12 09:06:18',218,2,'What is the name of the element with the chemical symbol ‘He’?',123,'Send help',0),('2020-05-12 09:06:18',219,2,'The fear of what animal is known as ‘arachnophobia’?',124,'Anyone has any idea?',0),('2020-05-12 09:06:18',220,2,'Pure water has a pH level of a around?',122,'Anyone can assist me',0),('2020-05-12 09:06:18',221,2,'The molten rock that comes from a volcano after it has erupted is known as what?',124,'Send help',0),('2020-05-12 09:06:18',222,2,'True or false? Yogurt is produced by bacterial fermentation of milk.',123,'Anyone can assist me',0),('2020-05-12 09:06:18',223,2,'What is the name of the part of the human skeleton which protects our brain?',150,'Please help me',0),('2020-05-12 09:06:18',224,2,'Is the compound ‘HCl’ an acid or base?',120,'Anyone has any idea?',0),('2020-05-12 09:06:18',225,2,'True or false? The fastest land animal in the world is the zebra.',122,'Please help me',0),('2020-05-12 09:06:18',226,2,'How many bones do sharks have in their bodies?',121,'Anyone can assist me',0),('2020-05-12 09:06:18',227,2,'What famous scientist was awarded the 1921 Nobel Prize in Physics for his work on theoretical physics?',150,'Send help',0),('2020-05-12 09:06:18',228,2,'Now that Pluto is no longer included, how many planets are there in the Solar System?',150,'Anyone has any idea?',0),('2020-05-12 09:06:18',229,2,'What is the smallest planet in the Solar System?',124,'Anyone has any idea?',0),('2020-05-12 09:06:18',230,2,'What is the largest planet in the Solar System?',122,'Please help me',0),('2020-05-12 09:06:18',231,2,'What is the hottest planet in the Solar System?',121,'Anyone can assist me',0),('2020-05-12 09:06:18',232,2,'The sixth planet from the Sun features an extensive ring system, what is the name of this planet?',150,'Anyone has any idea?',0),('2020-05-12 09:06:18',233,2,'The chemical element uranium was named after what planet?',120,'Please help me',0),('2020-05-12 09:06:18',234,2,'What planet in the solar system is farthest from the Sun?',124,'Anyone can assist me',0),('2020-05-12 09:06:18',235,2,'What is the second smallest planet in the solar system?',122,'Send help',0),('2020-05-12 09:06:18',236,2,'What planet is closest in size to Earth?',150,'Anyone can assist me',0),('2020-05-12 09:06:18',237,2,'The moon Titan orbits what planet?',150,'Please help me',0),('2020-05-12 09:06:18',238,2,'What planet is nicknamed the ‘Red Planet’?',124,'Send help',0),('2020-05-12 09:06:18',239,2,'True or false? Neptune is larger than Saturn.',150,'Anyone has any idea?',0),('2020-05-12 09:06:18',240,2,'The Galilean moons orbit what planet?',122,'Anyone can assist me',0),('2020-05-12 09:06:18',241,2,'What planet is closest to the Sun?',123,'Anyone has any idea?',0),('2020-05-12 09:06:18',242,2,'What is the seventh planet from the Sun?',124,'Anyone can assist me',0),('2020-05-12 09:06:18',243,2,'True or false? Venus has more atmospheric pressure than Earth?',150,'Please help me',0),('2020-05-12 09:06:18',244,2,'Triton is the largest moon of what planet?',123,'Anyone can assist me',0),('2020-05-12 09:06:18',245,2,'What is the brightest planet in the night sky?',124,'Please help me',0),('2020-05-12 09:06:18',246,2,'What is the third planet from the Sun?',150,'Anyone has any idea?',0),('2020-05-12 09:06:18',247,2,'Phobos and Deimos are moons of what planet?',122,'Send help',0),('2020-05-12 09:06:18',248,2,'What food makes up nearly all (around 99%) of a Giant Panda’s diet?',123,'Anyone can assist me',0),('2020-05-12 09:06:18',249,2,'True or false? Mice live for up to 10 years.',124,'Please help me',0),('2020-05-12 09:06:18',250,2,'What is the name of the phobia that involves an abnormal fear of spiders?',121,'Anyone can assist me',0),('2020-05-12 09:06:18',251,2,'What is the largest type of ‘big cat’ in the world?',122,'Anyone has any idea?',0),('2020-05-12 09:06:18',252,2,'True or false? Crocodiles have no sweat glands so they use their mouths to release heat.',150,'Please help me',0),('2020-05-12 09:06:18',253,2,'Are butterflies insects?',120,'Anyone has any idea?',0),('2020-05-12 09:06:18',254,2,'What are female elephants called?',150,'Send help',0),('2020-05-12 09:06:18',255,2,'True or false? Bats are mammals.',150,'Anyone has any idea?',0),('2020-05-12 09:06:18',256,2,'Bees are found on every continent of earth except for one, which is it?',120,'Anyone can assist me',0),('2020-05-12 09:06:18',257,2,'True or false? Cats spend an average of 13 to 14 hours a day sleeping.',122,'Send help',0),('2020-05-12 09:06:18',258,2,'What is the fastest land animal in the world?',123,'Anyone can assist me',0),('2020-05-12 09:06:18',259,2,'A ‘doe’ is what kind of animal?',124,'Please help me',0),('2020-05-12 09:06:18',260,2,'True or false? Cougar’s are herbivores.',122,'Anyone has any idea?',0),('2020-05-12 09:06:18',261,2,'Groups of lions are known as what?',122,'Please help me',0),('2020-05-12 09:06:18',262,2,'Is a dolphin a mammal?',123,'Anyone can assist me',0),('2020-05-12 09:06:18',263,2,'What is the largest land animal in the world?',124,'Send help',0),('2020-05-12 09:06:18',264,2,'True of false? Snakes have slimy skin.',123,'Anyone can assist me',0),('2020-05-12 09:06:18',265,2,'What is the only continent on earth where Giraffes live in the wild?',150,'Please help me',0),('2020-05-12 09:06:18',266,2,'How many pairs of wings does a bee have?',124,'Anyone has any idea?',0),('2020-05-12 09:06:18',267,2,'What type of animal is the largest primate in the world?',120,'Anyone can assist me',0),('2020-05-12 09:06:18',268,2,'Is a shark a fish or a mammal?',120,'Please help me',0),('2020-05-12 09:06:18',269,2,'What is the most recognizable feature of a hedgehog’s appearance?',120,'Anyone has any idea?',0);
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
  `noOfVote` int DEFAULT NULL,
  PRIMARY KEY (`snumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinfoafter`
--

LOCK TABLES `sinfoafter` WRITE;
/*!40000 ALTER TABLE `sinfoafter` DISABLE KEYS */;
INSERT INTO `sinfoafter` VALUES ('student','test',100,'Codie Karpov','ckarpov0@uow.edu.sg','95815848',0,1,0,0,0,0),('tail','test',101,'Grange Porch','gporchz@uow.edu.sg','93524836',0,1,0,0,0,0),('smart','pass',102,'Myrtle Burland','mburland1@uow.edu.sg','98027532',0,1,0,0,0,0),('ahedworth2','NotWorth123',103,'Andria Hedworth','NoWorth@uow.edu.sg','91234567',0,1,0,0,0,0),('cpedlar3','ZVj7wbBJ5mf',104,'Consuela Pedlar','cpedlar3@uow.edu.sg','93993375',0,1,0,0,0,0),('cpaike4','YX6K8Y1',105,'Cassaundra Paike','cpaike4@uow.edu.sg','92610305',0,1,0,0,0,0),('myegorov5','2mCe7m',106,'Marjy Yegorov','myegorov5@uow.edu.sg','80165897',0,1,0,0,0,0),('bpettegre6','pQJhBmD1SoVv',107,'Britni Pettegre','bpettegre6@uow.edu.sg','91057697',0,1,0,0,0,0),('abasire7','1pSGHIdn',108,'Annissa Basire','abasire7@uow.edu.sg','89112332',0,1,0,0,0,0),('slukins8','4W5IRMrxid',109,'Sarene Lukins','slukins8@uow.edu.sg','80049070',0,1,0,0,0,0),('wathy9','Pass',110,'Wendy Athy','wathy9@uow.edu.sg','98381949',0,1,0,0,0,0),('esauraa','hK0MajHvm',111,'Eda Saura','esauraa@uow.edu.sg','86440789',0,1,0,0,0,0),('hbellinghamb','kKG9iiIyrQY',112,'Hope Bellingham','hbellinghamb@uow.edu.sg','83296746',0,1,0,0,0,0),('ejenteauc','L0b5PzeZ',113,'Erroll Jenteau','ejenteauc@uow.edu.sg','84407886',0,1,0,0,0,0),('mmorrisond','dGa56H53v',114,'Marita Morrison','mmorrisond@uow.edu.sg','92917913',0,1,0,0,0,0),('rrothe','RaeReizxhrA',115,'Roberto Roth','rrothe@uow.edu.sg','93740322',0,1,0,0,0,0),('cpentecostf','lzQU1bely0kg',116,'Carolin Pentecost','cpentecostf@uow.edu.sg','81370303',0,1,0,0,0,0),('cswanwickg','xcuczBjnhM9',117,'Conn Swanwick','cswanwickg@uow.edu.sg','99804363',0,1,0,0,0,0),('bjumph','H2156Qz9qM',118,'Betty Jump','bjumph@uow.edu.sg','98598308',0,1,0,0,0,0),('dduquesnayi','dlRAZ1szzr',119,'Doretta Duquesnay','dduquesnayi@uow.edu.sg','97900540',0,1,0,0,0,0),('aoj','Pass',120,'Alberik O\' Quirk','aoj@uow.edu.sg','93205129',0,0,0,0,0,0),('adownagek','BAp6q27fKPaU',121,'Analise Downage','adownagek@uow.edu.sg','94024924',0,1,0,0,0,0),('gvaggsl','jW8xn7X8ClJ',122,'Griffy Vaggs','gvaggsl@uow.edu.sg','82236128',0,1,0,0,0,0),('lstigersm','CmW0wBL4',123,'Laurel Stigers','lstigersm@uow.edu.sg','81726114',0,1,0,0,0,0),('urarityn','vJbdy46',124,'Uriah Rarity','urarityn@uow.edu.sg','92060062',0,1,0,0,0,0),('Doll','Pass',149,'Doll Hubbert','dhubberto@uow.edu.sg','83067853',0,1,0,0,0,0),('Jerry','Pass1',150,'Jerry Mosse','J2M@uow.edu.sg','12345678',0,1,0,0,0,0),('hehe123','joker123',667223,'Hehe Ke','hhk@gmail.com','97635431',0,1,0,0,0,0),('haha123','joker555',899123,'Haha Poh','ggwp@hotmail.com','89953451',2,1,1,1,0,0);
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
INSERT INTO `sinfobefore` VALUES ('amacmanusp','9rulhi',126,'Alphonse MacManus','amacmanusp@uow.edu.au','87241785'),('kmeekingq','DFeIVCPN4hor',127,'Kippie Meeking','kmeekingq@uow.edu.au','84800093'),('regerr','yeheYK',128,'Ricki Eger','regerr@uow.edu.au','82448411'),('srossboroughs','Y318ggX',129,'Selle Rossborough','srossboroughs@uow.edu.au','96315801'),('ootteryt','cFYavpJgGM',130,'Otho Ottery','ootteryt@uow.edu.au','83523728'),('smcquillanu','SEGll8W',131,'Sinclair McQuillan','smcquillanu@uow.edu.au','97065382'),('cmarstonv','UrTQFeODW3',132,'Crichton Marston','cmarstonv@uow.edu.au','90095270'),('bconstantinew','gUckGIo',133,'Becky Constantine','bconstantinew@uow.edu.au','96766994'),('sduinbletonx','5hghR7VJ',134,'Sharleen Duinbleton','sduinbletonx@uow.edu.au','85047190'),('schartmany','PvM1GGc8JX',135,'Shandra Chartman','schartmany@uow.edu.au','86780643'),('calldridge10','WcE93biXv',137,'Clari Alldridge','calldridge10@uow.edu.au','93096294'),('apealing11','DN9g4zBROrO5',138,'Alard Pealing','apealing11@uow.edu.au','92616347'),('dlangstone12','dh9M7Jpouq',139,'Doll Langstone','dlangstone12@uow.edu.au','83205259'),('sussher14','G3efuA',141,'Sid Ussher','sussher14@uow.edu.au','82185949'),('dgreest15','Xo5GJ0iU',142,'Dorene Greest','dgreest15@uow.edu.au','85298600');
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
INSERT INTO `subjects` VALUES (1,'Mathematics'),(2,'Science');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-13 15:24:53
