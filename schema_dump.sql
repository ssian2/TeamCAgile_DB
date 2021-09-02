
--
-- Table structure for table `band`
--

DROP TABLE IF EXISTS `band`;
CREATE TABLE `band` (
  `band_id` smallint NOT NULL AUTO_INCREMENT,
  `band_name` varchar(30) DEFAULT NULL,
  `band_level` tinyint DEFAULT NULL,
  PRIMARY KEY (`band_id`),
  UNIQUE KEY `band_level` (`band_level`)
);

--
-- Table structure for table `capability`
--

DROP TABLE IF EXISTS `capability`;
CREATE TABLE `capability` (
  `capability_id` smallint NOT NULL AUTO_INCREMENT,
  `capability_name` varchar(20) DEFAULT NULL,
  `lead_name` varchar(100) DEFAULT NULL,
  `lead_photo` varchar(700) DEFAULT NULL,
  `lead_message` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`capability_id`)
);

--
-- Table structure for table `competency_type`
--

DROP TABLE IF EXISTS `competency_type`;
CREATE TABLE `competency_type` (
  `competency_type_id` tinyint NOT NULL AUTO_INCREMENT,
  `competency_type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`competency_type_id`)
);

--
-- Table structure for table `responsibility`
--

DROP TABLE IF EXISTS `responsibility`;
CREATE TABLE `responsibility` (
  `responsibility_id` smallint NOT NULL AUTO_INCREMENT,
  `responsibility_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`responsibility_id`)
);

--
-- Table structure for table `training`
--

DROP TABLE IF EXISTS `training`;
CREATE TABLE `training` (
  `training_id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `training_url` varchar(700) DEFAULT NULL,
  PRIMARY KEY (`training_id`)
);

--
-- Table structure for table `job_family`
--

DROP TABLE IF EXISTS `job_family`;
CREATE TABLE `job_family` (
  `job_family_id` smallint NOT NULL AUTO_INCREMENT,
  `job_family_name` varchar(60) NOT NULL,
  `capability_id` smallint DEFAULT NULL,
  PRIMARY KEY (`job_family_id`),
  KEY `capability_id` (`capability_id`),
  CONSTRAINT `job_family_ibfk_1` FOREIGN KEY (`capability_id`) REFERENCES `capability` (`capability_id`)
);

--
-- Table structure for table `band_training`
--

DROP TABLE IF EXISTS `band_training`;
CREATE TABLE `band_training` (
  `indexing_id` smallint NOT NULL AUTO_INCREMENT,
  `band_id` smallint DEFAULT NULL,
  `training_id` smallint DEFAULT NULL,
  PRIMARY KEY (`indexing_id`),
  KEY `band_id` (`band_id`),
  KEY `training_id` (`training_id`),
  CONSTRAINT `band_training_ibfk_1` FOREIGN KEY (`band_id`) REFERENCES `band` (`band_id`),
  CONSTRAINT `band_training_ibfk_2` FOREIGN KEY (`training_id`) REFERENCES `training` (`training_id`)
);

--
-- Table structure for table `competency`
--

DROP TABLE IF EXISTS `competency`;
CREATE TABLE `competency` (
  `competency_id` tinyint NOT NULL AUTO_INCREMENT,
  `competency_type_id` tinyint NOT NULL,
  `band_id` smallint NOT NULL,
  `competency_description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`competency_id`),
  UNIQUE KEY `competency_type_id_2` (`competency_type_id`,`band_id`),
  KEY `competency_type_id` (`competency_type_id`),
  KEY `band_id` (`band_id`),
  CONSTRAINT `competency_ibfk1` FOREIGN KEY (`competency_type_id`) REFERENCES `competency_type` (`competency_type_id`),
  CONSTRAINT `competency_ibfk2` FOREIGN KEY (`band_id`) REFERENCES `band` (`band_id`)
);

--
-- Table structure for table `employee_role`
--

DROP TABLE IF EXISTS `employee_role`;
CREATE TABLE `employee_role` (
  `role_id` smallint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(40) NOT NULL,
  `specification` varchar(300) DEFAULT NULL,
  `spec_doc_url` varchar(700) DEFAULT NULL,
  `band_id` smallint NOT NULL,
  `job_family_id` smallint DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  KEY `band_id` (`band_id`),
  KEY `responsibility_id` (`responsibility_id`),
  KEY `job_family_id` (`job_family_id`),
  CONSTRAINT `employee_role_ibfk_1` FOREIGN KEY (`band_id`) REFERENCES `band` (`band_id`),
  CONSTRAINT `employee_role_ibfk_2` FOREIGN KEY (`responsibility_id`) REFERENCES `responsibility` (`responsibility_id`),
  CONSTRAINT `employee_role_ibfk_3` FOREIGN KEY (`job_family_id`) REFERENCES `job_family` (`job_family_id`)
);

--
-- Table structure for table `responsibility_employee_role`
--

DROP TABLE IF EXISTS `responsibility_employee_role`;
CREATE TABLE `responsibility_employee_role` (
  `indexing_id` smallint NOT NULL AUTO_INCREMENT,
  `responsibility_id` smallint NOT NULL,
  `role_id` smallint NOT NULL,
  PRIMARY KEY (`indexing_id`),
  KEY `responsibility_id` (`responsibility_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `responsibility_employee_role_ibfk_1` FOREIGN KEY (`responsibility_id`) REFERENCES `responsibility` (`responsibility_id`),
  CONSTRAINT `responsibility_employee_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `employee_role` (`role_id`)
);
