-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: aplicatie
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `hoteluri`
--

DROP TABLE IF EXISTS `hoteluri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoteluri` (
  `idHotel` int unsigned NOT NULL AUTO_INCREMENT,
  `orasH` varchar(45) NOT NULL,
  `numeH` varchar(45) NOT NULL,
  `adresaH` varchar(100) NOT NULL,
  `nrCamere` int NOT NULL,
  `nrPersoane` int NOT NULL,
  `pretNoapte` float NOT NULL,
  `scorH` float DEFAULT NULL,
  `descriereH` varchar(1000) DEFAULT NULL,
  `animale` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`idHotel`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoteluri`
--

LOCK TABLES `hoteluri` WRITE;
/*!40000 ALTER TABLE `hoteluri` DISABLE KEYS */;
INSERT INTO `hoteluri` VALUES (11,'Bucuresti','Radisson Blu','Calea Victoriei 63 - 81, Sector 1, 010065',50,2,665,4,'Radisson Blu Hotel este situat in centrul orasului, langa cartierul de afaceri si comercial, cu multe atractii turistice si istorice in apropiere.','nu'),(12,'Bucuresti','JW Mariott Grand Hotel','Calea 13 Septembrie 90, Sector 5, 050726',75,2,965,5,'Hotelul Marriott Bucharest ofera confort si eleganta la cele mai inalte standarde europene, avand 402 camere Deluxe, 6 restaurante, un centru de conventii si un centru spa.','nu'),(13,'Bucuresti','Athenee Palace Hilton','Episcopiei 1-3, Sector 1, 010292',56,4,875,4,'Situat in inima Bucurestiului, Athenee Palace Hilton Bucharest ofera cazare intr-una dintre cladirile emblematice ale orasului, chiar langa Ateneu. ','da'),(14,'Cluj','Sunny Hill','Street Fagetului nr 31 A, 400619',30,2,245,3,'Hotelul Sunny Hill se afla in zona Faget, aproape de padure si la numai 7 km de centrul orasului Cluj-Napoca. Accesul WiFi este gratuit in intregul hotel.','nu'),(15,'Cluj','Hampton by Hilton','B-dul 21 Decembrie 1989 nr. 67, 400124',25,2,345,5,'Holtelul pune la dispozitie camere moderne, facilitati de afaceri, un lounge si un centru de fitness. Oaspetii au la dispozitie acces gratuit la internet WiFi si parcare privata gratuita.','nu'),(16,'Cluj','Belvedere','Str. Calarasilor nr.1, 400167',15,4,200,3,'Aceasta proprietate se afla pe dealul Cetatuia, cu vedere la Cluj-Napoca, si ofera acces gratuit la sauna, sala de gimnastica si la piscina interioara.','da'),(17,'Brasov','Drachenhaus','Str. Nicolae Balcescu 12, 500019',23,2,273,4,'Drachenhaus se afla la poalele muntelui Tampa, la mai putin de 500 de metri de zona pietonala a pietei Sfatului. Proprietatea ofera vedere la semnul orasului Brasov si cartierul istoric medieval din Brasov.','da'),(18,'Brasov','Casa Postavarului','Str. Postavarului 54, 500024 ',15,4,250,5,'Casa Postavarului ofera WiFi gratuit in intreaga proprietate si unitati de cazare in centrului istoric al orasului Brasov, pe o strada pietonala.Fiecare camera are TV cu ecran plat. Unele unitati de cazare includ o zona de relaxare.','nu'),(19,'Brasov','Casa Moritz','Strada Calea Poienii, Nr. 19, 500041',7,2,240,5,'Situata in Brasov, la 400 de metri de Turnul Alb, Casa Moritz are WiFi gratuit in intreaga proprietate, gradina si parcare privata gratuita. Toate camerele au TV cu ecran plat cu canale prin satelit si baie privata. ','nu'),(20,'Iasi','Unirea Hotel & Spa','Str. Piata Unirii, nr. 5, 700056',34,6,337,5,'Unirea Hotel & Spa este situat in Piata Unirii, in centrul orasului Iasi, la cativa pasi de Universitatea Alexandru Ioan Cuza, si ofera acces gratuit la o piscina interioara, o cada cu hidromasaj si un centru de fitness. ','nu'),(21,'Iasi','Astoria City Center','Str.  Lapusneanu Street, 700057',23,4,179,3,'Situat central, la 10 minute de cele mai importante puncte de atractie ale orasului, Hotelul Astoria ofera cazare cu acces gratuit la internet WiFi si un restaurant care serveste preparate din bucataria traditionala romaneasca si internationala.','da'),(22,'Iasi','Ramada','Str. Grigore Ureche Street, nr. 27, 700023',10,2,290,3,'Ramada City Center Iasi ofera o locatie linistita in inima orasului, chiar vizavi de centrul comercial Complex Palas. Se afla la doar 15 minute de aeroport si la 7 minute de gara principala.','nu'),(23,'Galati','Faleza Hotel by Vega','Str. Rosiori, Nr.1, 800066',28,2,312,4,'Hotelul Faleza by Vega este situat in centrul orasului Galati, pe malul Dunarii, oferind camere elegante, cu aer conditionat si o vedere splendida la Dunare. Proprietatea include o cafenea, o sala de mic dejun si WiFi gratuit in toate zonele sale.','nu'),(24,'Galati','Residence Riverside','Bulevardul Marea Unire, 800329',30,4,220,5,'Residence Riverside se afla in orasul Galati si are lounge comun, restaurant, bar si gradina. Printre facilitatile oferite se numara room-service, acces gratuit la internet WiFi in intreaga proprietate si spatiu pentru depozitarea de bagaje.','nu'),(25,'Galati','Citadel Aparthotel','Strada Portului, 800032',25,2,374,5,'Citadel Aparthotel se afla pe Promenada Dunarii din Galati, la aproximativ 600 m de centrul orasului. Toate unitatile hotelului de apartamente sunt dotate cu aer conditionat si includ o bucatarie cu frigider, plita si zona de luat masa.','da'),(26,'Timisoara','Imperial Premium','Str. Apostoli Petru si Pavel Nr. 29 A, 300243',34,4,169,3,'Oferind un restaurant, o terasa pe acoperis si o gradina, Hotelul Imperial Premium este situat in Timisoara, la aproximativ 10 minute de mers cu masina de centrul orasului. Acesta are si un bar.','da'),(27,'Timisoara','Hotel Central','Str. Lenau, Nr. 6, 300029',20,2,181,4,'Hotelul Central este situat chiar in centrul Timisoarei, langa Castelul Huniade. Ofera unitati de cazare cu aer conditionat, mobilier modern si WiFi gratuit. Unele unitati au mobilier elegant, modern si cu cada spa integrata in camera.','nu'),(28,'Timisoara','Old Town Hotel','Str. Emanoil Ungureanu 2, 300079',10,4,290,5,'Situat in Timisoara, la aproximativ 400 de metri de Catedrala Sf. Gheorghe, Hotelul Old Town De Savoya ofera check-in si check-out express, un bar, WiFi gratuit in toate zonele sale si un lounge comun.','nu'),(29,'Craiova','Helin Central','Strada Alexandru Ioan Cuza, Nr. 14, 200396',35,2,211,4,'Situat la 50 m de centrul orasului Craiova si la 300 m de Piata Centrala Mihai Viteazu, Hotelul Helin Central ofera WiFi gratuit, aer conditionat, o terasa, o receptie cu program nonstop si un restaurant ca la carte. ','nu'),(30,'Craiova','Green House','Strada Fratii Buzesti NR. 25, 200381',40,3,135,4,'Hotelul Green House se afla in Craiova, la 1,7 km de Stadionul Ion Oblemenco si ofera cazare cu WiFi gratuit si parcare privata gratuita. Oaspetii au la dispozitie camere de familie si o terasa. ','da'),(31,'Craiova','Craiovita','Calea Severinului, 222111',42,4,264,5,'Hotelul Craiovita este situat in marginea de vest a parcului Craiovita, in mijlocul unei vegetatii luxuriante. Acesta ofera camere cu aer conditionat, acces gratuit la internet WiFi si balcon.','nu'),(32,'Sibiu','Ramada','Str Emil Cioran Nr 2, 550025',23,2,327,3,'Ramada Sibiu este un hotel modern de 4 stele situat in centrul istoric al orasului, la 50 de metri de zona pietonala si de Piata Mare; oaspetii beneficiaza de WiFi gratuit. Oaspetii au la dispozitie un centru mare de conferinte.','nu'),(33,'Sibiu','Continental Forum','Unirii Nr. 10, Centrul Vechi Sibiu, 55017',20,2,277,3,'Situat intr-o cladire istorica din centrul orasului Sibiu, hotelul de 4 stele Continental Forum ofera camere elegante cu acces gratuit la internet WiFi. Oaspetii pot savura preparate internationale si balcanice la restaurant.','nu'),(34,'Sibiu','Imparatul Romanilor','Str.Nicolae Balcescu Nr. 4, Centrul Vechi Sibiu, 550159',15,4,281,5,'Datand din secolul al XVI-lea, Imparatul Romanilor impresioneaza prin arhitectura sa sofisticata si interioarele sale elegante. Este situat in centrul istoric al Sibiului si are o piscina interioara gratuita, sauna si sala de gimnastica.','da');
/*!40000 ALTER TABLE `hoteluri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurante`
--

DROP TABLE IF EXISTS `restaurante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurante` (
  `idRestaurant` int unsigned NOT NULL AUTO_INCREMENT,
  `orasR` varchar(45) NOT NULL,
  `numeR` varchar(45) NOT NULL,
  `adresaR` varchar(100) NOT NULL,
  `nrMese` int NOT NULL,
  `scorR` float DEFAULT NULL,
  `descriereR` varchar(1000) DEFAULT NULL,
  `vegan` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`idRestaurant`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurante`
--

LOCK TABLES `restaurante` WRITE;
/*!40000 ALTER TABLE `restaurante` DISABLE KEYS */;
INSERT INTO `restaurante` VALUES (1,'Bucuresti','Vivo Fusion Food Bar','Calea Floreasca 246',18,5,'La Vivo Fusion Food Bar te poti bucura de unele din cele mai bune preparate cu specific american, asiatic, brazilian, international sau italian, mexican, fusion sau vegetarian.','da'),(5,'Bucuresti','Zexe Zahana','Icoanei 80, Stefan cel Mare',13,4,'Un festin cu umor si traditii dintr-o locatie interbelica aflata la rascruce de trei ulite pestrite, intre strazile Icoanei, Leonida si Domnita Ruxanda. ','nu'),(7,'Bucuresti','Taverna Sarbului','Strada Tipografilor 31, Piata Presei Libere',20,4,'Bucataria sarbeasca este, poate, una dintre cele mai bogate gastronomii din jumatatea rasariteana a Europei, avand pentru fiecare mesean un fel de mancare sa-i fie pe plac.','nu'),(8,'Cluj','Maimuta Plangatoare','Strada Emil Isac 3',13,5,'Maimuta Plangatoare este un restaurant cu istorie, ale carui preparate va vor incanta! Veti avea parte, in fiecare farfurie, de o minunatie!','da'),(9,'Cluj','Meat Up','Strada Gheorghe Sincai 14',12,5,'Meat Up este un restaurant localizat la adresa Strada Gheorghe Sincai numarul 14. Deschis de Marti pana Duminica intre orele 12:00 - 23:00, cu exceptia zilei de Luni cand este inchis.','nu'),(10,'Cluj','Casa Veche','Strada Sextil Puscariu ',12,4,'Casa Veche este un restaurant localizat la adresa Strada Sextil Puscariu numarul 1. Deschis de Luni pana Joi intre orele 09:00 - 23:00, cu exceptia zilelor de Sambata si Duminica.','nu'),(11,'Brasov','Opus 9','Strada Muresenilor 28',10,3,'Opus 9 devine mai mult decat un loc unde se impart zambete si unde va puteti relaxa in voie! Acum, va puteti bucura de burgeri deliciosi, de paste care te duc cu gandul la strazile Romei si de multe alte preparate.','nu'),(12,'Brasov','Ristobello','Strada Crisana 4',20,5,'Ristobello este un restaurant localizat la adresa Crisana numarul 4. Deschis zilnic intre orele 11:00 - 22:00. La Ristobello te poti bucura de unele din cele mai bune preparate cu specific traditional romanesc sau international.','nu'),(13,'Brasov','Casa Tudor','Strada Avram Iancu 58',35,5,'Casa Tudor e un loc unic. Descoperi asta de la primul pas in curtea interioara si apoi in timp ce-ti cauti locul fascinat de atmosfera speciala data de exprimarea moderna a filonului traditional.','da'),(14,'Iasi','CitiZen','Piata Unirii 5',20,3,'Inspirati de natura si-al ei verde crud, proaspat si armonios, am creat un loc in care poti sa evadezi oricand simti nevoia si sa te bucuri de atmosfera de vacanta.','da'),(15,'Iasi','Radio Gaga','Strada Alexandru Lapusneanu 7-9',10,4,'English pub autentic cu atmosfera englezeasca. Bere artizanala servita cu pasiune. Guinness, Joker IPA, London Pride, Delirium Tremens si multe altele.','nu'),(16,'Iasi','Kraft Pub','Strada Dimitrie Mangeron 7',15,5,'Localizat in \"Inima\" studenteasca a orasului Iasi. Kraft Pub pune la dispozitia clientilor sai mancare delicioasa, bere rece si seri de neuitat!','nu'),(18,'Galati','Bella Vita','Str. Dr. Alexandru Carnabel nr. 39A',10,3,'Bella Vita este, cu siguranta, un restaurant deosebit. Mancarea servita in restaurantul de pe Strada Al. Carnabel este delicioasa, cu specialitati italiene si vinuri exceptionale. Localul este unul luminos si frumos, ideal pentru o cina in doi. ','nu'),(19,'Galati','All Time','Str. Siderurgistilor 9',15,3,'Restaurantul Alltime din Galati  te asteapta cu multe noutati. De la 12 trecute fix si pana la ora 15 de la amiaza, ai meniul de pranz pe care il poti servi la noi sau comanda acasa si la birou; pentru clientii corporate oferim servicii de catering.','da'),(20,'Galati','Aquarium Events','Faleza Dunarii',20,5,'Locul ideal pentru intalniri cu prietenii, pentru ca ne place sa va simtiti foarte bine! Am creat, spunem noi, locul ideal pentru intalniri cu prietenii! Intai, am ales o locatie pitoreasca, pe malul Dunarii, cu spatiu generos, atat in interior, cat si pe terasa!','nu'),(21,'Timisoara','Lexico','Piata Consiliul Europei 2',10,3,'LEXICO - pentru ca singurul nostru limbaj este mancarea, care sa inspire si sa hraneasca spiritul uman. La LEXICO ne propunem sa va conectam la o experienta culinara rafinata la fel cum ingrediente simple se imbina si creaza mancaruri fabuloase.','nu'),(22,'Timisoara','Casa Antinori','Calea Aradului 14A',14,5,'Casa Antinori este locul in care talentul si pasiunea pentru gastronomia italiana si-au pus amprenta pe fiecare detaliu. Devotamentul pentru aromele Italiei se regasesc in ingredientele proaspete, o selectie atenta a produselor aduse din toate colturile lumii.','da'),(23,'Timisoara','Merlor','Splaiul Nistrului 1',12,5,'Restaurantul Merlot a aparut din dorinta de a oferi musafirilor nostri o experienta deosebita si nu doar mancare de calitate. Meniul este de inspiratie mediteraneana, continand preparate ale bucatariei italiene si franceze. ','nu'),(24,'Craiova','Galaxy Craiova','Bulevard Gheorghe Chitu nr. 66',15,5,'Restaurantul Galaxy Craiova va invita sa savurati intr-un cadru linistit si intim, in acordul muzicii populare romanesti, preparate din bucataria romaneasca.','nu'),(25,'Craiova','Baba Novac','Str. Brazda lui Novac, nr.66',15,4,'Restaurantul Baba Novac din Craiova va ofera o gama larga de servicii pentru organizarea evenimentelor: nunti, botezuri, cununii, aniversari, intruniri diverse.','da'),(26,'Craiova','La Rocca','Strada Viitorului nr. 34',10,4,'Suntem un restaurant cu specific romanesc, situat in cartierul Brazda lui Novac, nr 54. In restaurantul La Rocca, veti fi serviti cu mancare sanatoasa, gatita prin tehnici moderne si inedite.','nu'),(27,'Sibiu','Crama Sibiana','Piata Mica 31',10,5,'Va oferim ambianta deosebita, produse naturale proaspete, meniuri la care se folosesc anumite produse bio, meniuri speciale cu precomanda.','da'),(28,'Sibiu','Gogosh','Strada Radu Stanca 1',8,3,'Gogosh este un brand creat pentru cei mai pofticiosi sibieni. Zilnic ne trezim devreme pentru a crea cele mai bune gogosi, din produse proaspete.','nu'),(29,'Sibiu','Tango','Piata Mica 23',20,5,'Tango Restaurant & Pub este dansul pasional dintre crevetii Black Tiger si semintele din sosul dulce de chilli, dintre limonada cu menta si orice preparat mediteraneean.','nu');
/*!40000 ALTER TABLE `restaurante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rezervarihoteluri`
--

DROP TABLE IF EXISTS `rezervarihoteluri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rezervarihoteluri` (
  `idRezervareH` int unsigned NOT NULL AUTO_INCREMENT,
  `idUtilizator` int unsigned NOT NULL,
  `idHotel` int unsigned NOT NULL,
  `dataSosire` date NOT NULL,
  `dataPlecare` date NOT NULL,
  `nrCamereRezervate` int NOT NULL,
  PRIMARY KEY (`idRezervareH`),
  KEY `idUtilizator` (`idUtilizator`),
  KEY `idHotel` (`idHotel`),
  CONSTRAINT `rezervarihoteluri_ibfk_1` FOREIGN KEY (`idUtilizator`) REFERENCES `utilizatori` (`idUtilizator`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rezervarihoteluri_ibfk_2` FOREIGN KEY (`idHotel`) REFERENCES `hoteluri` (`idHotel`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rezervarihoteluri`
--

LOCK TABLES `rezervarihoteluri` WRITE;
/*!40000 ALTER TABLE `rezervarihoteluri` DISABLE KEYS */;
/*!40000 ALTER TABLE `rezervarihoteluri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rezervarirestaurante`
--

DROP TABLE IF EXISTS `rezervarirestaurante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rezervarirestaurante` (
  `idRezervareR` int unsigned NOT NULL AUTO_INCREMENT,
  `idUtilizator` int unsigned NOT NULL,
  `idRestaurant` int unsigned NOT NULL,
  `nrPersoane` int NOT NULL,
  `data` date NOT NULL,
  `ora` time NOT NULL,
  PRIMARY KEY (`idRezervareR`),
  KEY `idUtilizator` (`idUtilizator`),
  KEY `idRestaurant` (`idRestaurant`),
  CONSTRAINT `rezervarirestaurante_ibfk_1` FOREIGN KEY (`idUtilizator`) REFERENCES `utilizatori` (`idUtilizator`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rezervarirestaurante_ibfk_2` FOREIGN KEY (`idRestaurant`) REFERENCES `restaurante` (`idRestaurant`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rezervarirestaurante`
--

LOCK TABLES `rezervarirestaurante` WRITE;
/*!40000 ALTER TABLE `rezervarirestaurante` DISABLE KEYS */;
INSERT INTO `rezervarirestaurante` VALUES (56,86,5,4,'2021-04-21','18:00:00');
/*!40000 ALTER TABLE `rezervarirestaurante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilizatori`
--

DROP TABLE IF EXISTS `utilizatori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilizatori` (
  `idUtilizator` int unsigned NOT NULL AUTO_INCREMENT,
  `nume` varchar(45) NOT NULL,
  `prenume` varchar(45) NOT NULL,
  `telefon` varchar(10) NOT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`idUtilizator`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilizatori`
--

LOCK TABLES `utilizatori` WRITE;
/*!40000 ALTER TABLE `utilizatori` DISABLE KEYS */;
INSERT INTO `utilizatori` VALUES (86,'Ionescu','Maria','0722229999','mariaionescu@gmail.com');
/*!40000 ALTER TABLE `utilizatori` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-06  1:02:09
