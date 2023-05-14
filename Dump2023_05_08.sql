-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: schooltest
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `question_answers`
--

DROP TABLE IF EXISTS `question_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_answers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `correct` bit(1) NOT NULL,
  `question_answer` varchar(255) DEFAULT NULL,
  `question_id` bigint DEFAULT NULL,
  `quiz_test_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrms3u35c10orgjqyw03ajd7x7` (`question_id`),
  KEY `FKb3k2dvknit8hetdao2gqdvokp` (`quiz_test_id`),
  KEY `FKq1b66vtv16ndqhhh5gx4f3smg` (`user_id`),
  CONSTRAINT `FKb3k2dvknit8hetdao2gqdvokp` FOREIGN KEY (`quiz_test_id`) REFERENCES `quiztests` (`id`),
  CONSTRAINT `FKq1b66vtv16ndqhhh5gx4f3smg` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKrms3u35c10orgjqyw03ajd7x7` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_answers`
--

LOCK TABLES `question_answers` WRITE;
/*!40000 ALTER TABLE `question_answers` DISABLE KEYS */;
INSERT INTO `question_answers` VALUES (1,_binary '\0','question-314',314,52,22),(2,_binary '','question-380',380,52,22),(3,_binary '\0','question-380',380,52,22),(4,_binary '\0','question-301',301,52,22),(5,_binary '\0','question-379',379,52,22),(6,_binary '\0','question-313',313,52,22),(7,_binary '\0','question-312',312,53,22),(8,_binary '\0','question-390',390,53,22),(9,_binary '','question-374',374,53,22),(10,_binary '\0','question-374',374,53,22),(11,_binary '','question-305',305,53,22),(12,_binary '\0','question-305',305,53,22),(13,_binary '\0','question-371',371,53,22),(14,_binary '\0','question-381',381,53,22),(15,_binary '\0','question-301',301,53,22),(16,_binary '','question-27',27,55,22),(17,_binary '\0','question-27',27,55,22),(18,_binary '','question-2',2,55,22),(19,_binary '\0','question-2',2,55,22),(20,_binary '\0','question-26',26,55,22),(21,_binary '','question-11',11,55,22),(22,_binary '\0','question-11',11,55,22),(23,_binary '\0','question-17',17,55,22),(24,_binary '\0','question-381',381,56,22),(25,_binary '\0','question-307',307,56,22),(26,_binary '\0','question-306',306,56,22),(27,_binary '\0','question-305',305,56,22),(28,_binary '','question-386',386,56,22),(29,_binary '\0','question-386',386,56,22),(30,_binary '','question-388',388,57,22),(31,_binary '\0','question-388',388,57,22),(32,_binary '\0','question-306',306,57,22),(33,_binary '','question-382',382,57,22),(34,_binary '\0','question-382',382,57,22),(35,_binary '\0','question-381',381,57,22),(36,_binary '\0','question-371',371,57,22),(43,_binary '\0','question-4',4,59,29),(44,_binary '','question-7',7,59,29),(45,_binary '\0','question-7',7,59,29),(46,_binary '\0','question-32',32,59,29),(47,_binary '\0','question-6',6,59,29),(48,_binary '\0','question-15',15,59,29),(49,_binary '','1',30,67,22),(50,_binary '\0','1',30,67,22),(51,_binary '','1',11,67,22),(52,_binary '\0','1',11,67,22),(53,_binary '\0','0',28,67,22),(54,_binary '\0','1',5,67,22),(55,_binary '\0','2',17,67,22),(56,_binary '\0','1',384,68,22),(57,_binary '\0','1',307,68,22),(58,_binary '\0','0',376,68,22),(59,_binary '','1',382,68,22),(60,_binary '\0','1',382,68,22),(61,_binary '\0','0',312,68,22),(62,_binary '\0','1',25,69,22),(63,_binary '\0','0',33,69,22),(64,_binary '\0','0',26,69,22),(65,_binary '','1',12,69,22),(66,_binary '\0','1',12,69,22),(67,_binary '\0','1',16,69,22),(68,_binary '\0','0',380,70,22),(69,_binary '\0','0',310,70,22),(70,_binary '\0','2',313,70,22),(71,_binary '','2',315,70,22),(72,_binary '\0','2',315,70,22),(73,_binary '\0','1',387,70,22),(74,_binary '','1',27,71,22),(75,_binary '\0','1',27,71,22),(76,_binary '\0','0',25,71,22),(77,_binary '\0','1',20,71,22),(78,_binary '\0','2',6,71,22),(79,_binary '\0','1',31,71,22),(80,_binary '','2',15,71,22),(81,_binary '\0','2',15,71,22),(82,_binary '','1',30,72,29),(83,_binary '\0','1',30,72,29),(84,_binary '\0','1',15,72,29),(85,_binary '\0','1',16,72,29),(86,_binary '\0','1',22,72,29),(87,_binary '\0','0',19,72,29),(102,_binary '\0','0',306,76,29),(103,_binary '\0','1',383,76,29),(104,_binary '\0','3',316,76,29),(105,_binary '','0',300,76,29),(106,_binary '\0','0',300,76,29),(107,_binary '','4',388,76,29),(108,_binary '\0','4',388,76,29),(109,_binary '\0','2',381,76,29),(110,_binary '\0','0',374,76,29),(141,_binary '\0','2',5,80,32),(142,_binary '\0','0',18,80,32),(143,_binary '\0','0',17,80,32),(144,_binary '\0','1',28,80,32),(145,_binary '\0','0',14,80,32),(153,_binary '\0','0',5,82,29),(154,_binary '\0','1',29,82,29),(155,_binary '\0','2',7,82,29),(156,_binary '\0','0',27,82,29),(157,_binary '\0','1',15,82,29),(176,_binary '\0','What was the main cause of World War I?',302,86,29),(177,_binary '\0','What is the significance of the Battle of Hastings?',311,86,29),(178,_binary '\0','In which century was the Magna Carta signed?',372,86,29),(179,_binary '\0','Who was the first female Prime Minister of the United Kingdom?',378,86,29),(180,_binary '','Which ancient civilization built the Colosseum?',384,86,29),(181,_binary '\0','Which ancient civilization built the Colosseum?',384,86,29),(195,_binary '\0','Which country was the first to establish a republic?',376,89,29),(196,_binary '\0','Who was the leader of the Nazi Party?',306,89,29),(197,_binary '\0','Who wrote the Communist Manifesto?',309,89,29),(198,_binary '\0','Who invented the printing press?',373,89,29),(199,_binary '\0','Who was the first emperor of Rome?',314,89,29),(202,_binary '\0','1',405,97,29),(203,_binary '\0','0',413,97,29),(204,_binary '','0',406,97,29),(205,_binary '\0','0',406,97,29),(206,_binary '','3',416,97,29),(207,_binary '\0','3',416,97,29),(208,_binary '\0','0',411,97,29),(209,_binary '\0','1',400,97,29),(210,_binary '\0','2',416,98,29),(211,_binary '','2',402,98,29),(212,_binary '\0','2',402,98,29),(213,_binary '','0',397,98,29),(214,_binary '\0','0',397,98,29),(215,_binary '','2',400,98,29),(216,_binary '\0','2',400,98,29),(217,_binary '\0','0',407,98,29),(218,_binary '\0','3',305,100,29),(219,_binary '\0','2',385,100,29),(220,_binary '\0','0',386,100,29),(221,_binary '\0','0',306,100,29),(222,_binary '','1',382,100,29),(223,_binary '\0','1',382,100,29),(224,_binary '','excessive fuel wood collection',412,101,22),(225,_binary '\0','excessive fuel wood collection',412,101,22),(226,_binary '','suez channel',407,101,22),(227,_binary '\0','suez channel',407,101,22),(228,_binary '\0','indira col ',411,101,22),(229,_binary '','danemark',410,101,22),(230,_binary '\0','danemark',410,101,22),(231,_binary '','belgium',406,101,22),(232,_binary '\0','belgium',406,101,22),(233,_binary '\0','1 Feb',400,101,22);
/*!40000 ALTER TABLE `question_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_choices`
--

DROP TABLE IF EXISTS `question_choices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_choices` (
  `question_id` bigint NOT NULL,
  `choices` varchar(255) DEFAULT NULL,
  KEY `FK77biojwg2xd8kc8a2odnx3ld4` (`question_id`),
  CONSTRAINT `FK77biojwg2xd8kc8a2odnx3ld4` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_choices`
--

LOCK TABLES `question_choices` WRITE;
/*!40000 ALTER TABLE `question_choices` DISABLE KEYS */;
INSERT INTO `question_choices` VALUES (1,'riboflavin'),(1,'thiamine'),(1,'pyridoxine'),(1,'cobaltmine'),(1,'taurine'),(6,'heptose'),(6,'hexone'),(6,'tetrose'),(6,'pentose'),(6,'dextrose'),(7,'ferns'),(7,'conifers'),(7,'flowering plant'),(7,'none of these'),(7,'oils'),(4,'fungi'),(4,'sheep'),(4,'birds'),(4,'pteridophyta'),(4,'dinos'),(2,'collar'),(2,'rib'),(2,'upper limb'),(2,'lower limb '),(2,'foot'),(3,'birds'),(3,'fishes'),(3,'reptiles'),(3,'neatodes'),(3,'whales'),(5,'sterile plants'),(5,'angiosperms'),(5,'primitive'),(5,'gynosperms'),(5,'gynecomastia'),(8,'seed'),(8,'leaf'),(8,'fruit'),(8,'pollen'),(8,'grain'),(9,'frog'),(9,'eatworm'),(9,'snake '),(9,'peacock'),(9,'elephant'),(11,'6'),(11,'4'),(11,'5'),(11,'3'),(11,'1'),(12,'hibernation'),(12,'aestivation'),(12,'laziness'),(12,'lethargy'),(12,'anemy'),(14,'Elephant'),(14,'Blue whale'),(14,'Giraffe'),(14,'Hippopotamus'),(14,'Rhinoceros'),(300,'George Washington'),(300,'John Adams'),(300,'Thomas Jefferson'),(300,'Abraham Lincoln'),(300,'Benjamin Franklin'),(301,'1943'),(301,'1944'),(301,'1945'),(301,'1946'),(301,'1947'),(302,'I have a dream'),(302,'The Gettysburg Address'),(302,'The Emancipation Proclamation'),(302,'The Constitution of the United States'),(302,'The Bill of Rights'),(303,'Christopher Columbus'),(303,'Amerigo Vespucci'),(303,'Ferdinand Magellan'),(303,'Francis Drake'),(303,'James Cook'),(304,'The Great Wall of China'),(304,'The Pyramids of Giza'),(304,'The Colosseum'),(304,'Machu Picchu'),(304,'The Taj Mahal'),(305,'The Boston Tea Party'),(305,'The Boston Massacre'),(305,'The Stamp Act'),(305,'The Intolerable Acts'),(305,'The Quartering Act'),(306,'World War I'),(306,'World War II'),(306,'The American Civil War'),(306,'The Korean War'),(306,'The Vietnam War'),(307,'Julius Caesar'),(307,'Alexander the Great'),(307,'Napoleon Bonaparte'),(307,'Genghis Khan'),(307,'Attila the Hun'),(308,'The French Revolution'),(308,'The American Revolution'),(308,'The Industrial Revolution'),(308,'The Renaissance'),(308,'The Reformation'),(309,'The Magna Carta'),(309,'The Declaration of Independence'),(309,'The Constitution of the United States'),(309,'The Bill of Rights'),(309,'The Emancipation Proclamation'),(310,'The Battle of Waterloo'),(310,'The Battle of Gettysburg'),(310,'The Battle of Hastings'),(310,'The Battle of Marathon'),(310,'The Battle of Stalingrad'),(311,'The Crusades'),(311,'The Hundred Years War'),(311,'The Spanish Armada'),(311,'The Wars of the Roses'),(311,'The Thirty Years War'),(312,'The Renaissance'),(312,'The Reformation'),(312,'The Enlightenment'),(312,'The Scientific Revolution'),(312,'The Industrial Revolution'),(313,'The Inca'),(313,'The Maya'),(313,'The Aztecs'),(313,'The Egyptians'),(313,'The Greeks'),(314,'The Berlin Wall'),(314,'The Great Wall of China'),(314,'The Iron Curtain'),(314,'The Maginot Line'),(314,'The Siegfried Line'),(315,'The Titanic'),(315,'The Lusitania'),(315,'The Edmund Fitzgerald'),(315,'The Andrea Doria'),(315,'The Bismarck'),(316,'The Black Death'),(316,'The Spanish Flu'),(316,'Smallpox'),(316,'Malaria'),(316,'Polio'),(371,'Mayans'),(371,'Aztecs'),(371,'Incas'),(371,'Chimu'),(371,'Moche'),(372,'12th'),(372,'13th'),(372,'14th'),(372,'15th'),(372,'16th'),(373,'Johannes Gutenberg'),(373,'William Caxton'),(373,'Albrecht Dürer'),(373,'Leonardo da Vinci'),(373,'Michelangelo Buonarroti'),(374,'Joseph Stalin'),(374,'Vladimir Putin'),(374,'Nikita Khrushchev'),(374,'Mikhail Gorbachev'),(374,'Vladimir Lenin'),(375,'Rome'),(375,'Constantinople'),(375,'Athens'),(375,'Jerusalem'),(375,'Sparta'),(376,'Iceland'),(376,'Switzerland'),(376,'France'),(376,'United States'),(376,'Poland'),(377,'Ferdinand Magellan'),(377,'Vasco da Gama'),(377,'Christopher Columbus'),(377,'James Cook'),(377,'Francis Drake'),(378,'Mita'),(378,'Encomienda'),(378,'Hacienda'),(378,'Repartimiento'),(378,'Alcabala'),(379,'1987'),(379,'1988'),(379,'1989'),(379,'1990'),(379,'1991'),(380,'Moses'),(380,'Abraham'),(380,'Muhammad'),(380,'Jesus'),(380,'Buddha'),(381,'The Step Pyramid'),(381,'The Great Pyramid'),(381,'The Bent Pyramid'),(381,'The Red Pyramid'),(381,'The Pyramid of Djoser'),(382,'Redcoats'),(382,'Lobsterbacks'),(382,'Bumblebees'),(382,'Tommyhawks'),(382,'Yankees'),(383,'The French economy was in crisis'),(383,'The French people wanted more political power'),(383,'The French king was too weak'),(383,'The French queen was too powerful'),(383,'All of the above'),(384,'Montgomery'),(384,'Richmond'),(384,'Atlanta'),(384,'Nashville'),(384,'Charleston'),(385,'Egypt'),(385,'Greece'),(385,'Rome'),(385,'Persia'),(385,'China'),(386,'Andrew Johnson'),(386,'Richard Nixon'),(386,'Bill Clinton'),(386,'Donald Trump'),(386,'Joe Biden'),(387,'Marie Curie'),(387,'Mother Teresa'),(387,'Jane Addams'),(387,'Dorothy Hodgkin'),(387,'Alice Paul'),(389,'Bastille'),(389,'Versailles'),(389,'Notre Dame'),(389,'Louvre'),(389,'Eiffel Tower'),(390,'Korean War'),(390,'Boer War'),(390,'World War II'),(390,'Vietnam War'),(390,'Gulf War'),(388,'Greece'),(388,'Rome'),(388,'Egypt'),(388,'Babylon'),(388,'China'),(15,'Mitochondria'),(15,'Ribosome'),(15,'Nucleus'),(15,'Cell membrane'),(15,'electron'),(16,'Atom'),(16,'Molecule'),(16,'Cell'),(16,'Organism'),(16,'Hixibozon'),(20,'Skin'),(20,'Liver'),(20,'Brain'),(20,'Heart'),(20,'Vein'),(17,'Red blood cells'),(17,'White blood cells'),(17,'Platelets'),(17,'Plasma'),(17,'Virus'),(18,'Photosynthesis'),(18,'Cellular respiration'),(18,'Mitosis'),(18,'Meiosis'),(18,'Glucosis'),(19,'Metamorphosis'),(19,'Hibernation'),(19,'Migration'),(19,'Reproduction'),(19,'Snake'),(21,'Photosynthesis'),(21,'Cellular respiration'),(21,'Digestion'),(21,'Fermentation'),(21,'Extraction'),(22,'Melanin'),(22,'Keratin'),(22,'Collagen'),(22,'Elastin'),(22,'Ketosis'),(23,'Hemoglobin'),(23,'Myoglobin'),(23,'Actin'),(23,'Myosin'),(23,'Tyrosine'),(24,'Digestion'),(24,'Absorption'),(24,'Circulation'),(24,'Excretion'),(24,'Androsine'),(25,'Photosynthesis'),(25,'Cellular respiration'),(25,'Transpiration'),(25,'Diffusion'),(25,'Transfusion'),(26,'Serotonin'),(26,'Dopamine'),(26,'Adrenaline'),(26,'Endorphins'),(26,'Ligandrole'),(27,'Excretory system'),(27,'Nervous system'),(27,'Circulatory system'),(27,'Respiratory system'),(27,'Hormonal System'),(28,'Synovial fluid'),(28,'Cerebrospinal fluid'),(28,'Peritoneal fluid'),(28,'Lymph'),(28,'HCG'),(29,'Mitosis'),(29,'Meiosis'),(29,'Cytokinesis'),(29,'Interphase'),(29,'Trombosis'),(30,'Heart'),(30,'Lungs'),(30,'Liver'),(30,'Stomach'),(30,'Brain'),(31,'Cytoplasm'),(31,'Nucleoplasm'),(31,'Interstitium'),(31,'Endoplasmic reticulum'),(31,'Blood transfusion'),(33,'Keratin'),(33,'Collagen'),(33,'Elastin'),(33,'Myosin'),(33,'Protein'),(32,'Ligament'),(32,'Cartilage'),(32,'Tendon'),(32,'Joint capsule'),(32,'None of above'),(392,'june 21st'),(392,'january 3rd'),(392,'july 4th'),(392,'september 23rd'),(392,'march 27th'),(393,'21 Jun'),(393,'23 Jun'),(393,'4 July'),(393,'23 March'),(393,'27 March'),(394,'23 Jan'),(394,'27 Jul'),(394,'4 Jul'),(394,'27 March'),(394,'10 Feb'),(396,'Po'),(396,'Danube'),(396,'Una'),(396,'Volga'),(396,'Guadilquivir'),(397,'seismograph'),(397,'quake meter'),(397,'barometer'),(397,'tachograph'),(397,'none of above'),(398,'earthquake scale'),(398,'seismic scale '),(398,'richter scale'),(398,'temblor scale'),(398,'ermac scale'),(399,'strike'),(399,'comma'),(399,'epicenter'),(399,'origin'),(399,'erosion'),(400,'5 Jan'),(400,'5 Jul'),(400,'4 Jul'),(400,'27 March'),(400,'1 Feb'),(401,'USA'),(401,'Brasil'),(401,'Canada'),(401,'Russia'),(401,'Mexico'),(402,'Alps'),(402,'Himalayas'),(402,'Andes'),(402,'Pyreness'),(402,'Dinaric '),(403,'greenwich'),(403,'new york'),(403,'Indira point'),(403,'shiriharikota'),(403,'moscow'),(404,'nile'),(404,'amazon'),(404,'yangtse'),(404,'mississippi'),(404,'danube'),(405,'north sea'),(405,'timor sea'),(405,'red sea'),(405,'aral sea'),(405,'indian sea'),(406,'belgium'),(406,'luxemburg'),(406,'switzerland'),(406,'netherlands'),(406,'sweden'),(407,'cape route'),(407,'panama channel'),(407,'suez channel'),(407,'malacca straits'),(407,'gibraltar'),(408,'overland'),(408,'via canada'),(408,'over south pole'),(408,'over north pole '),(408,'sea rute'),(409,'London'),(409,'Rome'),(409,'Berlin'),(409,'Athens'),(409,'Sarajevo'),(410,'danemark'),(410,'norway'),(410,'canada'),(410,'north america'),(410,'south america'),(411,'indira col '),(411,'pamir knot'),(411,'kanchenjunga'),(411,'india point '),(411,'scotland'),(412,'floods'),(412,'construction roads'),(412,'fires'),(412,'soil erosion'),(412,'excessive fuel wood collection'),(413,'etna'),(413,'semeru'),(413,'purace'),(413,'colima'),(413,'vesima'),(414,'azarbaijan'),(414,'bulgaria'),(414,'yugoslavia'),(414,'great britain'),(414,'roman empire'),(415,'scotland'),(415,'finland'),(415,'estland '),(415,'iceland'),(415,'croatia'),(416,'6'),(416,'1000'),(416,'3600'),(416,'36000'),(416,'360000');
/*!40000 ALTER TABLE `question_choices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `answer` int NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `quiz_test_id` bigint DEFAULT NULL,
  `quiztests_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe94dknydu6xaiqf9uyo5mfgxg` (`quiz_test_id`),
  KEY `FK9mwoe5a0ju7x8t706ieq139fu` (`quiztests_id`),
  CONSTRAINT `FK9mwoe5a0ju7x8t706ieq139fu` FOREIGN KEY (`quiztests_id`) REFERENCES `quiztests` (`id`),
  CONSTRAINT `FKe94dknydu6xaiqf9uyo5mfgxg` FOREIGN KEY (`quiz_test_id`) REFERENCES `quiztests` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,1,'Beriberi is a result of deficiency of which of the following?','BIOLOGY',NULL,NULL),(2,0,'“Clavicle” in the human body is a ________?','BIOLOGY',NULL,NULL),(3,2,'Which among the following have a ‘mixed heart’ ,that is the heart in which the oxygenated and the deoxygenated blood is mixed?','BIOLOGY',NULL,NULL),(4,3,'Club Moss is placed in which of the following groups?','BIOLOGY',NULL,NULL),(5,3,'Fruitless flowering plants are called__?','BIOLOGY',NULL,NULL),(6,3,'Which sugar is present in DNA?','BIOLOGY',NULL,NULL),(7,0,'What is the common name of pteridophytes?','BIOLOGY',NULL,NULL),(8,0,'Spermology is the study of','BIOLOGY',NULL,NULL),(9,1,'Animal without red blood cells','BIOLOGY',NULL,NULL),(11,1,'The energy released by 1 gram of glucose is __ kcal ','BIOLOGY',NULL,NULL),(12,1,'The phenomenon of summer sleep by animals is called','BIOLOGY',NULL,NULL),(14,1,'What is the largest mammal in the world?','BIOLOGY',NULL,NULL),(15,2,'What is the powerhouse of the cell?','BIOLOGY',NULL,NULL),(16,0,'What is the smallest unit of life?','BIOLOGY',NULL,NULL),(17,3,'What type of blood cell fights infections?','BIOLOGY',NULL,NULL),(18,3,'What is the name of the process where plants make their own food?','BIOLOGY',NULL,NULL),(19,1,'What is the process called where a caterpillar transforms into a butterfly?','BIOLOGY',NULL,NULL),(20,0,'What is the largest organ in the human body?','BIOLOGY',NULL,NULL),(21,0,'What is the chemical process that occurs in plants to produce glucose?','BIOLOGY',NULL,NULL),(22,2,'What is the name of the pigment that gives skin and hair its color?','BIOLOGY',NULL,NULL),(23,1,'What is the name of the protein that gives shape to red blood cells?','BIOLOGY',NULL,NULL),(24,3,'What is the process called where animals break down food into simpler substances?','BIOLOGY',NULL,NULL),(25,2,'What is the process called where green plants release oxygen into the air?','BIOLOGY',NULL,NULL),(26,3,'What is the name of the chemical substance that carries messages in the brain?','BIOLOGY',NULL,NULL),(27,1,'What is the name of the body system that removes waste from the body?','BIOLOGY',NULL,NULL),(28,3,'What is the name of the fluid that lubricates joints in the body?','BIOLOGY',NULL,NULL),(29,2,'What is the name of the process where cells divide to create new cells?','BIOLOGY',NULL,NULL),(30,1,'What is the name of the muscle that pumps blood through the body?','BIOLOGY',NULL,NULL),(31,0,'What is the name of the fluid that fills the cells of the body?','BIOLOGY',NULL,NULL),(32,3,'What is the name of the structure that connects bones to other bones?','BIOLOGY',NULL,NULL),(33,2,'What is the name of the protein that makes up hair and nails?','BIOLOGY',NULL,NULL),(300,0,'Who was the first president of the United States?','HISTORY',NULL,NULL),(301,4,'What year did World War II end?','HISTORY',NULL,NULL),(302,1,'What was the main cause of World War I?','HISTORY',NULL,NULL),(303,2,'Who was the leader of the Soviet Union during World War II?','HISTORY',NULL,NULL),(304,3,'Which US president ordered the dropping of atomic bombs on Hiroshima and Nagasaki?','HISTORY',NULL,NULL),(305,1,'What is the Magna Carta?','HISTORY',NULL,NULL),(306,2,'Who was the leader of the Nazi Party?','HISTORY',NULL,NULL),(307,4,'Who is known as the father of the United States Constitution?','HISTORY',NULL,NULL),(308,0,'What was the Cold War?','HISTORY',NULL,NULL),(309,3,'Who wrote the Communist Manifesto?','HISTORY',NULL,NULL),(310,2,'What was the Holocaust?','HISTORY',NULL,NULL),(311,0,'What is the significance of the Battle of Hastings?','HISTORY',NULL,NULL),(312,3,'Who were the Axis Powers in World War II?','HISTORY',NULL,NULL),(313,1,'What was the Marshall Plan?','HISTORY',NULL,NULL),(314,3,'Who was the first emperor of Rome?','HISTORY',NULL,NULL),(315,2,'What is the significance of the Magna Carta?','HISTORY',NULL,NULL),(316,1,'What was the League of Nations?','HISTORY',NULL,NULL),(371,3,'Which ancient civilization built the Machu Picchu complex?','HISTORY',NULL,NULL),(372,2,'In which century was the Magna Carta signed?','HISTORY',NULL,NULL),(373,4,'Who invented the printing press?','HISTORY',NULL,NULL),(374,1,'Which Russian leader led the country during World War II?','HISTORY',NULL,NULL),(375,4,'What was the capital of the Byzantine Empire?','HISTORY',NULL,NULL),(376,1,'Which country was the first to establish a republic?','HISTORY',NULL,NULL),(377,3,'Who was the first Roman Emperor?','HISTORY',NULL,NULL),(378,2,'Who was the first female Prime Minister of the United Kingdom?','HISTORY',NULL,NULL),(379,5,'Which city was the capital of the Aztec Empire?','HISTORY',NULL,NULL),(380,2,'What was the name of the ship on which Charles Darwin traveled?','HISTORY',NULL,NULL),(381,5,'Which event marked the beginning of World War I?','HISTORY',NULL,NULL),(382,1,'What was the name of the first satellite launched into space?','HISTORY',NULL,NULL),(383,2,'Which king was executed during the English Civil War?','HISTORY',NULL,NULL),(384,3,'Which ancient civilization built the Colosseum?','HISTORY',NULL,NULL),(385,4,'Who was the first U.S. President to be impeached?','HISTORY',NULL,NULL),(386,1,'What was the name of the first permanent English settlement in North America?','HISTORY',NULL,NULL),(387,3,'Which queen is known for her support of exploration and colonization?','HISTORY',NULL,NULL),(388,4,'Which ancient civilization built the Great Wall of China?','HISTORY',NULL,NULL),(389,3,'Who was the first female ruler of England?','HISTORY',NULL,NULL),(390,2,'Which explorer discovered the Pacific Ocean?','HISTORY',NULL,NULL),(392,2,'The earth is at the largest distance from the sun (Apehelion) on ________','HISTORY',NULL,NULL),(393,2,'The earth is at the largest distance from the sun (Apehelion) on ________','HISTORY',NULL,NULL),(394,2,'The earth is at the largest distance from the sun (Apehelion) on ________','HISTORY',NULL,NULL),(396,1,'Biggest river in Europe is ___','GEOGRAPHY',NULL,NULL),(397,0,'Instrument used to measure earthquake is known as','GEOGRAPHY',NULL,NULL),(398,2,'Magnitude of energy released by an earthquake is calculated using','GEOGRAPHY',NULL,NULL),(399,2,'Place directly above focus on Earth\'s surface is known as','GEOGRAPHY',NULL,NULL),(400,2,'The earth is at the largest distance from the sun (Apehelion) on ________','GEOGRAPHY',NULL,NULL),(401,0,'Where is Lake Superior, the largest freshwater lake in the world located?','GEOGRAPHY',NULL,NULL),(402,2,'What is the longest mountain range in the world above sea-level ?','GEOGRAPHY',NULL,NULL),(403,1,'Where is “Ground Zero”?','GEOGRAPHY',NULL,NULL),(404,0,' The longest river is','GEOGRAPHY',NULL,NULL),(405,3,'Which from the following is a land-locked sea?','GEOGRAPHY',NULL,NULL),(406,0,' Which country is known as the “Cockpit of Europe”?','GEOGRAPHY',NULL,NULL),(407,2,'Which from the following is the busiest Oceanic trade route?','GEOGRAPHY',NULL,NULL),(408,3,'Which is the shortest route from Moscow to San Francisco?','HISTORY',NULL,NULL),(409,1,'Which of the following is also known as ‘Eternal City’?','GEOGRAPHY',NULL,NULL),(410,0,'The largest island in the world is Greenland. It is an integral part of___','GEOGRAPHY',NULL,NULL),(411,1,'What is called as the ‘Roof of the World\'?','GEOGRAPHY',NULL,NULL),(412,4,'The main reason for deforestation in Asia is','GEOGRAPHY',NULL,NULL),(413,3,'Which of the following volcanoes is situated in Mexico?','GEOGRAPHY',NULL,NULL),(414,2,'Bosnia-Herzegovina formed the parts of ______','GEOGRAPHY',NULL,NULL),(415,1,'Which country is known as the ‘Land of Thousand Lakes’?','GEOGRAPHY',NULL,NULL),(416,3,'Geostationary orbit is at a height of ________','GEOGRAPHY',NULL,NULL);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiztest_questions`
--

DROP TABLE IF EXISTS `quiztest_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiztest_questions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_id` bigint NOT NULL,
  `quiztest_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc5wxreuodl1crbp495lq22f8m` (`question_id`),
  KEY `FK3066qaig4qwlmcuntirse763t` (`quiztest_id`),
  CONSTRAINT `FK3066qaig4qwlmcuntirse763t` FOREIGN KEY (`quiztest_id`) REFERENCES `quiztests` (`id`),
  CONSTRAINT `FKc5wxreuodl1crbp495lq22f8m` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiztest_questions`
--

LOCK TABLES `quiztest_questions` WRITE;
/*!40000 ALTER TABLE `quiztest_questions` DISABLE KEYS */;
INSERT INTO `quiztest_questions` VALUES (1,18,51),(2,24,51),(3,25,51),(4,32,51),(5,31,51),(6,15,51),(7,14,51),(8,29,51),(9,314,52),(10,380,52),(11,301,52),(12,379,52),(13,313,52),(14,312,53),(15,390,53),(16,374,53),(17,305,53),(18,371,53),(19,381,53),(20,301,53),(28,27,55),(29,2,55),(30,26,55),(31,11,55),(32,17,55),(33,381,56),(34,307,56),(35,306,56),(36,305,56),(37,386,56),(38,388,57),(39,306,57),(40,382,57),(41,381,57),(42,371,57),(48,4,59),(49,7,59),(50,32,59),(51,6,59),(52,15,59),(64,16,62),(65,32,62),(66,21,62),(67,8,62),(68,25,62),(69,31,62),(85,307,66),(86,304,66),(87,382,66),(88,377,66),(89,373,66),(90,30,67),(91,5,67),(92,17,67),(93,11,67),(94,28,67),(95,384,68),(96,312,68),(97,307,68),(98,382,68),(99,376,68),(100,16,69),(101,26,69),(102,12,69),(103,25,69),(104,33,69),(105,315,70),(106,313,70),(107,387,70),(108,310,70),(109,380,70),(110,6,71),(111,27,71),(112,31,71),(113,15,71),(114,20,71),(115,25,71),(116,30,72),(117,19,72),(118,15,72),(119,16,72),(120,22,72),(138,374,76),(139,306,76),(140,300,76),(141,388,76),(142,383,76),(143,381,76),(144,316,76),(164,17,80),(165,5,80),(166,14,80),(167,28,80),(168,18,80),(175,29,82),(176,7,82),(177,15,82),(178,27,82),(179,5,82),(195,384,86),(196,302,86),(197,378,86),(198,311,86),(199,372,86),(211,373,89),(212,376,89),(213,306,89),(214,314,89),(215,309,89),(218,407,91),(219,414,91),(220,396,91),(221,401,91),(222,410,91),(223,415,92),(224,401,92),(225,402,92),(226,416,92),(227,399,92),(228,399,93),(229,397,93),(230,412,93),(231,413,93),(232,398,93),(233,404,93),(234,401,94),(235,409,94),(236,399,94),(237,400,94),(238,416,94),(239,412,94),(240,406,95),(241,413,95),(242,414,95),(243,397,95),(244,396,95),(245,411,96),(246,410,96),(247,405,96),(248,398,96),(249,399,96),(250,413,96),(251,400,97),(252,413,97),(253,405,97),(254,406,97),(255,416,97),(256,411,97),(257,397,98),(258,416,98),(259,400,98),(260,407,98),(261,402,98),(262,379,99),(263,378,99),(264,375,99),(265,377,99),(266,376,99),(267,371,99),(268,386,100),(269,306,100),(270,382,100),(271,305,100),(272,385,100),(273,411,101),(274,412,101),(275,410,101),(276,406,101),(277,400,101),(278,407,101);
/*!40000 ALTER TABLE `quiztest_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiztests`
--

DROP TABLE IF EXISTS `quiztests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiztests` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `creation_time` datetime NOT NULL,
  `evaluation` double NOT NULL,
  `quiz_test_topic` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd0es8u1x6ux24vl3wodjtixm5` (`user_id`),
  CONSTRAINT `FKd0es8u1x6ux24vl3wodjtixm5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiztests`
--

LOCK TABLES `quiztests` WRITE;
/*!40000 ALTER TABLE `quiztests` DISABLE KEYS */;
INSERT INTO `quiztests` VALUES (1,'2023-05-01 10:50:30',0,'HISTORY','Peter Lee Quiz 2023-05-01T10:50:29.747870700 HISTORY',29),(2,'2023-05-01 11:10:39',0,'HISTORY','Jane Doe Quiz 2023-05-01T11:10:39.101848300 HISTORY',22),(3,'2023-05-01 11:15:20',0,'HISTORY','Sean Brown Quiz 2023-05-01T11:15:20.424674500 HISTORY',34),(4,'2023-05-01 11:21:10',0,'HISTORY','Kelly Williams Quiz 2023-05-01T11:21:10.232757300 HISTORY',32),(5,'2023-05-01 11:36:15',0,'GEOGRAPHY','Ryan Lee Quiz 2023-05-01T11:36:15.313853600 GEOGRAPHY',40),(6,'2023-05-01 11:52:17',0,'HISTORY','Sarah Jones Quiz 2023-05-01T11:52:17.396329700 HISTORY',24),(7,'2023-05-01 13:13:17',0,'HISTORY','Jane Doe Quiz 2023-05-01T13:13:16.661809800 HISTORY',22),(8,'2023-05-01 13:21:16',0,'HISTORY','Jane Doe Quiz 2023-05-01T13:21:16.072748700 HISTORY',22),(9,'2023-05-06 10:49:01',0,'HISTORY','Jane Doe Quiz 2023-05-06T10:49:01.167446100 HISTORY',22),(10,'2023-05-06 11:10:23',0,'HISTORY','Jane Doe Quiz 2023-05-06T11:10:23.497811200 HISTORY',22),(11,'2023-05-06 11:13:54',0,'HISTORY','Peter Lee Quiz 2023-05-06T11:13:53.689407400 HISTORY',29),(12,'2023-05-06 11:21:55',0,'GEOGRAPHY','Jane Doe Quiz 2023-05-06T11:21:54.976691200 GEOGRAPHY',22),(13,'2023-05-06 11:22:37',0,'HISTORY','Jane Doe Quiz 2023-05-06T11:22:37.169021900 HISTORY',22),(14,'2023-05-06 11:25:06',0,'BIOLOGY','Jane Doe Quiz 2023-05-06T11:25:06.294206 BIOLOGY',22),(15,'2023-05-06 11:28:55',0,'GEOGRAPHY','Peter Lee Quiz 2023-05-06T11:28:54.942011 GEOGRAPHY',29),(16,'2023-05-06 12:43:25',0,'BIOLOGY','Peter Lee Quiz 2023-05-06T12:43:24.585548900 BIOLOGY',29),(17,'2023-05-06 12:44:33',0,'GEOGRAPHY','Peter Lee Quiz 2023-05-06T12:44:33.263658700 GEOGRAPHY',29),(18,'2023-05-06 12:47:51',0,'HISTORY','Peter Lee Quiz 2023-05-06T12:47:51.068278100 HISTORY',29),(19,'2023-05-06 12:48:49',0,'GEOGRAPHY','Peter Lee Quiz 2023-05-06T12:48:49.386021500 GEOGRAPHY',29),(20,'2023-05-06 12:50:18',0,'BIOLOGY','Jane Doe Quiz 2023-05-06T12:50:18.454760300 BIOLOGY',22),(21,'2023-05-06 14:30:00',0,'BIOLOGY','Jane Doe Quiz 2023-05-06T14:30:00.436083200 BIOLOGY',22),(22,'2023-05-06 14:36:17',0,'BIOLOGY','Jane Doe Quiz 2023-05-06T14:36:17.158552900 BIOLOGY',22),(23,'2023-05-06 14:43:59',0,'BIOLOGY','Jane Doe Quiz 2023-05-06T14:43:59.098681500 BIOLOGY',22),(24,'2023-05-06 14:47:11',0,'BIOLOGY','Jane Doe Quiz 2023-05-06T14:47:11.497451800 BIOLOGY',22),(25,'2023-05-06 14:54:31',0,'GEOGRAPHY','Jane Doe Quiz 2023-05-06T14:54:30.980894100 GEOGRAPHY',22),(26,'2023-05-06 14:58:39',0,'GEOGRAPHY','Jane Doe Quiz 2023-05-06T14:58:39.486885800 GEOGRAPHY',22),(27,'2023-05-06 15:01:46',0,'BIOLOGY','Jane Doe Quiz 2023-05-06T15:01:46.485811200 BIOLOGY',22),(28,'2023-05-06 15:11:43',0,'HISTORY','Jane Doe Quiz 2023-05-06T15:11:42.899352 HISTORY',22),(29,'2023-05-06 15:13:54',0,'BIOLOGY','Jane Doe Quiz 2023-05-06T15:13:54.202269900 BIOLOGY',22),(30,'2023-05-06 15:19:28',0,'GEOGRAPHY','Jane Doe Quiz 2023-05-06T15:19:28.262640400 GEOGRAPHY',22),(31,'2023-05-06 15:26:13',0,'GEOGRAPHY','Jane Doe Quiz 2023-05-06T15:26:12.602773 GEOGRAPHY',22),(32,'2023-05-06 15:29:47',0,'GEOGRAPHY','Jane Doe Quiz 2023-05-06T15:29:46.710655 GEOGRAPHY',22),(33,'2023-05-06 15:30:59',0,'HISTORY','Jane Doe Quiz 2023-05-06T15:30:59.043993300 HISTORY',22),(34,'2023-05-07 11:17:28',0,'GEOGRAPHY','Jane Doe Quiz 2023-05-07T11:17:28.161629500 GEOGRAPHY',22),(35,'2023-05-07 11:19:27',0,'HISTORY','Jane Doe Quiz 2023-05-07T11:19:26.846983 HISTORY',22),(36,'2023-05-07 11:21:52',0,'GEOGRAPHY','Jane Doe Quiz 2023-05-07T11:21:52.276148500 GEOGRAPHY',22),(37,'2023-05-07 11:55:45',0,'GEOGRAPHY','Jane Doe Quiz 2023-05-07T11:55:44.792116600 GEOGRAPHY',22),(38,'2023-05-07 12:05:44',0,'GEOGRAPHY','Peter Lee Quiz 2023-05-07T12:05:44.271924100 GEOGRAPHY',29),(39,'2023-05-07 12:10:21',0,'HISTORY','Peter Lee Quiz 2023-05-07T12:10:20.640521700 HISTORY',29),(40,'2023-05-07 12:11:13',0,'HISTORY','Peter Lee Quiz 2023-05-07T12:11:12.654124100 HISTORY',29),(41,'2023-05-07 12:17:15',0,'GEOGRAPHY','Peter Lee Quiz 2023-05-07T12:17:14.608327800 GEOGRAPHY',29),(42,'2023-05-07 12:24:16',0,'GEOGRAPHY','Peter Lee Quiz 2023-05-07T12:24:16.015676400 GEOGRAPHY',29),(43,'2023-05-07 12:38:39',0,'HISTORY','Peter Lee Quiz 2023-05-07T12:38:39.479284300 HISTORY',29),(44,'2023-05-07 12:50:18',0,'HISTORY','Jane Doe Quiz 2023-05-07T12:50:17.950057500 HISTORY',22),(45,'2023-05-07 13:06:30',0,'HISTORY','Jane Doe Quiz 2023-05-07T13:06:30.299890 HISTORY',22),(46,'2023-05-07 13:29:00',0,'GEOGRAPHY','Peter Lee Quiz 2023-05-07T13:28:59.516339600 GEOGRAPHY',29),(51,'2023-05-07 15:49:57',0,'BIOLOGY','Peter Lee Quiz 2023-05-07T15:49:57.041171800 BIOLOGY',29),(52,'2023-05-07 16:16:35',0,'HISTORY','Jane Doe HISTORY 2023-05-07T16:16:56.014178300',22),(53,'2023-05-07 16:18:46',0,'HISTORY','Jane Doe HISTORY 2023-05-07T16:18:57.807636900',22),(55,'2023-05-07 16:27:34',0,'BIOLOGY','Jane Doe BIOLOGY 2023-05-07T16:27:40.398338800',22),(56,'2023-05-07 16:29:48',0,'HISTORY','Jane Doe HISTORY 2023-05-07T16:29:55.959585700',22),(57,'2023-05-07 19:57:30',0,'HISTORY','Jane Doe HISTORY 2023-05-07T19:59:44.170459500',22),(59,'2023-05-07 20:05:06',0,'BIOLOGY','Peter Lee BIOLOGY 2023-05-07T20:05:18.526273900',29),(62,'2023-05-07 20:25:18',0,'BIOLOGY','Jane Doe Quiz 2023-05-07T20:25:17.882379300 BIOLOGY',22),(66,'2023-05-07 20:51:08',0,'HISTORY','Peter Lee Quiz 2023-05-07T20:51:08.214910800 HISTORY',29),(67,'2023-05-07 20:54:52',0,'BIOLOGY','Jane Doe BIOLOGY 2023-05-07T20:55:52.117865800',22),(68,'2023-05-07 20:59:47',0,'HISTORY','Jane Doe HISTORY 2023-05-07T20:59:54.676242600',22),(69,'2023-05-07 21:04:23',0,'BIOLOGY','Jane Doe BIOLOGY 2023-05-07T21:05:33.382671300',22),(70,'2023-05-07 21:11:45',0,'HISTORY','Jane Doe HISTORY 2023-05-07T21:11:51.509802300',22),(71,'2023-05-07 21:18:44',0,'BIOLOGY','Jane Doe BIOLOGY 07/05/2023 21:18:52',22),(72,'2023-05-07 21:21:19',0,'BIOLOGY','BIOLOGY 07/05/2023 21:21:26',29),(76,'2023-05-07 21:42:45',0.2857142857142857,'HISTORY','HISTORY 07/05/2023 21:43:34',29),(80,'2023-05-07 22:00:53',0,'BIOLOGY','BIOLOGY 07/05/2023 22:01:02',32),(82,'2023-05-07 22:11:39',0,'BIOLOGY','BIOLOGY 07/05/2023 22:11:48',29),(86,'2023-05-07 22:39:29',20,'HISTORY','HISTORY 07/05/2023 22:39:48',29),(89,'2023-05-08 18:08:07',0,'HISTORY','HISTORY 08/05/2023 18:08:26',29),(91,'2023-05-08 20:30:24',0,'GEOGRAPHY','Peter Lee Quiz 2023-05-08T20:30:24.229854400 GEOGRAPHY',29),(92,'2023-05-08 20:33:13',0,'GEOGRAPHY','Peter Lee Quiz 2023-05-08T20:33:13.315538500 GEOGRAPHY',29),(93,'2023-05-08 20:35:27',0,'GEOGRAPHY','Peter Lee Quiz 2023-05-08T20:35:27.346009300 GEOGRAPHY',29),(94,'2023-05-08 20:38:07',0,'GEOGRAPHY','Peter Lee Quiz 2023-05-08T20:38:07.143334300 GEOGRAPHY',29),(95,'2023-05-08 20:44:58',0,'GEOGRAPHY','Peter Lee Quiz 2023-05-08T20:44:58.193020600 GEOGRAPHY',29),(96,'2023-05-08 20:52:52',0,'GEOGRAPHY','Peter Lee Quiz 2023-05-08T20:52:52.139689600 GEOGRAPHY',29),(97,'2023-05-08 20:53:47',33.33333333333333,'GEOGRAPHY','GEOGRAPHY 08/05/2023 20:54:15',29),(98,'2023-05-08 21:02:20',60,'GEOGRAPHY','GEOGRAPHY 08/05/2023 21:02:50',29),(99,'2023-05-08 21:10:38',0,'HISTORY','Peter Lee Quiz 2023-05-08T21:10:37.981424500 HISTORY',29),(100,'2023-05-08 21:11:42',20,'HISTORY','HISTORY 08/05/2023 21:11:59',29),(101,'2023-05-08 21:38:05',66.66666666666666,'GEOGRAPHY','GEOGRAPHY 08/05/2023 21:38:50',22);
/*!40000 ALTER TABLE `quiztests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (21,'johndoe@example.com','John','Doe','password123','ADMIN'),(22,'janedoe@example.com','Jane','Doe','password123','STUDENT'),(23,'bobsmith@example.com','Bob','Smith','password123','ADMIN'),(24,'sarahjones@example.com','Sarah','Jones','password123','STUDENT'),(25,'mikebrown@example.com','Mike','Brown','password123','STUDENT'),(26,'emilydavis@example.com','Emily','Davis','password123','ADMIN'),(27,'davidsmith@example.com','David','Smith','password123','STUDENT'),(28,'lindajohnson@example.com','Linda','Johnson','password123','ADMIN'),(29,'peterlee@example.com','Peter','Lee','password123','STUDENT'),(30,'karenroberts@example.com','Karen','Roberts','password123','STUDENT'),(31,'jasonwhite@example.com','Jason','White','password123','ADMIN'),(32,'kellywilliams@example.com','Kelly','Williams','password123','STUDENT'),(33,'mariagonzalez@example.com','Maria','Gonzalez','password123','ADMIN'),(34,'seanbrown@example.com','Sean','Brown','password123','STUDENT'),(35,'cindygreen@example.com','Cindy','Green','password123','STUDENT'),(36,'stevenwilson@example.com','Steven','Wilson','password123','ADMIN'),(37,'samanthaadams@example.com','Samantha','Adams','password123','STUDENT'),(38,'tomjackson@example.com','Tom','Jackson','password123','STUDENT'),(39,'kellyjones@example.com','Kelly','Jones','password123','ADMIN'),(40,'ryanlee@example.com','Ryan','Lee','password123','STUDENT'),(41,'jimmyoliver@example.com','Jimmy','Oliver','password123','ADMIN'),(42,'meganpark@example.com','Megan','Park','password123','ADMIN'),(43,'danbrown@example.com','Dan','Brown','password123','ADMIN');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-08 21:46:25
