--
-- Dumping data for table `band`
--

LOCK TABLES `band` WRITE;
INSERT INTO `band` VALUES (1,'test band name'),(2,'Apprentice'),(3,'Trainee'),(4,'Associate'),(5,'Senior Associate'),(6,'Consultant'),(7,'Manager'),(8,'Principal');
UNLOCK TABLES;

--
-- Dumping data for table `capability`
--

LOCK TABLES `capability` WRITE;
INSERT INTO `capability` VALUES (1,'test cap name','test lead','https://previews.123rf.com/images/kurhan/kurhan1103/kurhan110300100/9050894-happy-man.jpg','test message'),(2,'Applied Innovation','Thomas Gray','https://kainossoftwareltd.sharepoint.com/_layouts/15/userphoto.aspx?size=L&accountname=t.gray%40kainos.com','Our customers are increasingly asking what technologies will disrupt their business? The answer of course isn\'t simple - often a combination of technology, tools, techniques, business models, skills and culture executed at just the right time. This is a (broader) question that we need to ask ourselves and that our customers expect from us.'),(3,'Business Development','Paul Lemon','https://previews.123rf.com/images/kurhan/kurhan1103/kurhan110300100/9050894-happy-man.jpg','To create an holistic world-class business development and marketing capability for Kainos Group, \nfuelled by a diverse range of highly talented and motivated professionals working collaboratively and innovatively, \npropelling us to our next financial milestone (half a billion pounds in annual sales orders'),(4,'Product','Charlene McDonald','https://previews.123rf.com/images/zoomteam/zoomteam1210/zoomteam121000294/15918538-happy-smiling-business-woman-with-ok-hand-sign.jpg','We work with clients to identify and remove friction from their digital delivery initiatives. \nIdentifying where processes, practices and people can be developed further.'),(5,'Cyber Security','Peter Gallagher','https://previews.123rf.com/images/kurhan/kurhan1103/kurhan110300100/9050894-happy-man.jpg','We embed cyber security experts in our teams to help deliver the right level of security for our customers.  \nSecurity is important and we think every team should have an expert who is 100% dedicated to promoting, designing and assuring \nsecurity best practices. Our security team is well qualified.  We have GCHQ accredited master\'s degrees in Cyber Security, \nindustry recognised professional qualifications (CISSP), penetration testing qualifications (OSCP, OSCE) and cloud security \nspecialist qualifications in Amazon and Microsoft Azure environment'),(6,'Data & Analytics','Andy Burnage','https://previews.123rf.com/images/kurhan/kurhan1103/kurhan110300100/9050894-happy-man.jpg','Our vision is for data and analytics to be an integral part of all our \nengagements as our clients realise that understanding and exploiting data is a key enabler and differentiator for them.'),(7,'Engineering','Will Hamill','https://previews.123rf.com/images/kurhan/kurhan1103/kurhan110300100/9050894-happy-man.jpg','To support the scale of the Engineering capability, we have split ourselves into 8 working groups. \nEach working group is 3 or 4 people who collectively own that area while pulling in other capability members for support on the \nexecution of their plans. \nIf you’ve a question or a request from any of these areas, please either'),(8,'Delivery Management','Jakub Stempnik','https://previews.123rf.com/images/kurhan/kurhan1103/kurhan110300100/9050894-happy-man.jpg','Members of the capability (Agile Specialists, Agile Team Leads, Delivery Managers, \nClient Service Managers and Service Delivery Managers) manage the delivery of customer-facing Kainos teams, projects and services.\nThe vision for the capability is to be recognised by our people, our customers, \nour peers and the market as having world-class management and leadership underpinning our projects.'),(9,'Platforms','Matthew Downing','https://previews.123rf.com/images/kurhan/kurhan1103/kurhan110300100/9050894-happy-man.jpg','Ultimately accountable for delivery of the capability plan and point of escalation across all matters within Capability.');
UNLOCK TABLES;

--
-- Dumping data for table `competency_type`
--

LOCK TABLES `competency_type` WRITE;
INSERT INTO `competency_type` VALUES (1,'Commercial Awareness'),(2,'Planning and Organising'),(3,'Innovation and Continuous Inprovement'),(4,'Job Specific Knowledge'),(5,'Developing Yourself and Others'),(6,'Communicating & Teamwork'),(7,'Customer Focus');
UNLOCK TABLES;

--
-- Dumping data for table `responsibility`
--

LOCK TABLES `responsibility` WRITE;
INSERT INTO `responsibility` VALUES (1,'test responsibility name'),(2,'developing high quality soluti');
UNLOCK TABLES;

--
-- Dumping data for table `training`
--

LOCK TABLES `training` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `job_family`
--

LOCK TABLES `job_family` WRITE;
INSERT INTO `job_family` VALUES (1,'Corporate Security',5),(2,'Engineering Strategy and Planning',7),(3,'Engineering',7),(4,'Architecture',7),(5,'Testing and Quality Assurance',7),(6,'Product Specialist',7),(7,'Security Strategy and Planning',5),(9,'Test Job family',1),(10,'Platform Engineering',2),(11,'Product Consultancy',4),(12,'Testing and Quality Assurance',5);
UNLOCK TABLES;

--
-- Dumping data for table `band_training`
--

LOCK TABLES `band_training` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `competency`
--

LOCK TABLES `competency` WRITE;
INSERT INTO `competency` VALUES (1,1,2,'Placeholder description for App. C.A'),(2,2,2,'Placeholder description for App. P&O'),(3,3,2,'Placeholder description for App. I&C.I'),(4,4,2,'Placeholder description for App. J.S.K'),(5,5,2,'Placeholder description for App. D.Y&O'),(6,6,2,'Placeholder description for App. C&T'),(7,7,2,'Placeholder description for App. C.F'),(8,7,3,'Placeholder description for Train. C.F'),(9,6,3,'Placeholder description for Train. C&T');
UNLOCK TABLES;

--
-- Dumping data for table `employee_role`
--

LOCK TABLES `employee_role` WRITE;
INSERT INTO `employee_role` VALUES (1,'test role','test spec','google.com',1,9),(2,'Test Engineer','As a Test Engineer (Associate) in Kainos, you’ll be responsible for good quality of the software',NULL,4,12),(5,'Software Engineer','As a Software Engineer in Kainos, you’ll be responsible for\n developing high quality solutions which delight our customers and impact the lives of users worldwide.',NULL,3,3),(6,'Software Engineer','As a Software Engineer in Kainos, you’ll be responsible for\n developing high quality solutions which delight our customers and impact the lives of users worldwide.','https://kainossoftwareltd.sharepoint.com/people/Job%20Specifications/Forms/AllItems.aspx?id=%2Fpeople%2FJob%20Specifications%2FEngineering%2FJob%20profile%20%2D%20Software%20Engineer%20%28Associate%29%2Epdf&parent=%2Fpeople%2FJob%20Specifications%2FEngineering&p=true&originalPath=aHR0cHM6Ly9rYWlub3Nzb2Z0d2FyZWx0ZC5zaGFyZXBvaW50LmNvbS86YjovZy9wZW9wbGUvRVlUQ3Yxc3NsNnBPdUg1OXpYdG9GOVlCOHFOYUVNTlNrWklrQ3RoREFZNUtqZz9ydGltZT1sWEpNc29SbzJVZw',4,7),(7,'Product Specialist','As a Product Specialist at Kainos you will be responsible for delivering high quality solutions which delight our customers and\nimpact the lives of users worldwide.',NULL,8,11),(8,'Digital Advisory Consultant','Work with delivery managers and solution architects to shape the approach for the work you and the wider team undertakes',NULL,8,13),(9,'Specialist Consultant','Work with delivery managers and solution architects to shape the approach for the work you and the wider team undertakes',NULL,8,14),(10,'Digital Advisory Consultant','Work with delivery managers and solution architects to shape the approach for the work you and the wider team undertakes',NULL,7,13),(11,'Specialist Consultant','Work with delivery managers and solution architects to shape the approach for the work you and the wider team undertakes',NULL,7,14);
UNLOCK TABLES;

--
-- Dumping data for table `responsibility_employee_role`
--

LOCK TABLES `responsibility_employee_role` WRITE;
INSERT INTO `responsibility_employee_role` VALUES (1,1,1),(2,2,2),(3,1,2);
UNLOCK TABLES;
