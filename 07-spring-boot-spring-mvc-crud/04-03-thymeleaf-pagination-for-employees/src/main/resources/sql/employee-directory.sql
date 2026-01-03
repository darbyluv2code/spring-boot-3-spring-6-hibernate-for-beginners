

CREATE DATABASE  IF NOT EXISTS `employee_directory`;
USE `employee_directory`;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `first_name` varchar(45) DEFAULT NULL,
                            `last_name` varchar(45) DEFAULT NULL,
                            `email` varchar(45) DEFAULT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

--
-- Data for table `employee`
--

INSERT INTO `employee` VALUES
                           (1,'Leslie','Andrews','leslie@luv2code.com'),
                           (2,'Emma','Baumgarten','emma@luv2code.com'),
                           (3,'Avani','Gupta','avani@luv2code.com'),
                           (4,'Yuri','Petrov','yuri@luv2code.com'),
                           (5,'Juan','Vega','juan@luv2code.com');


INSERT INTO employee (id, first_name, last_name, email) VALUES (6, 'Employee6', 'Test6', 'employee6.test6@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (7, 'Employee7', 'Test7', 'employee7.test7@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (8, 'Employee8', 'Test8', 'employee8.test8@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (9, 'Employee9', 'Test9', 'employee9.test9@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (10, 'Employee10', 'Test10', 'employee10.test10@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (11, 'Employee11', 'Test11', 'employee11.test11@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (12, 'Employee12', 'Test12', 'employee12.test12@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (13, 'Employee13', 'Test13', 'employee13.test13@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (14, 'Employee14', 'Test14', 'employee14.test14@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (15, 'Employee15', 'Test15', 'employee15.test15@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (16, 'Employee16', 'Test16', 'employee16.test16@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (17, 'Employee17', 'Test17', 'employee17.test17@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (18, 'Employee18', 'Test18', 'employee18.test18@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (19, 'Employee19', 'Test19', 'employee19.test19@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (20, 'Employee20', 'Test20', 'employee20.test20@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (21, 'Employee21', 'Test21', 'employee21.test21@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (22, 'Employee22', 'Test22', 'employee22.test22@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (23, 'Employee23', 'Test23', 'employee23.test23@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (24, 'Employee24', 'Test24', 'employee24.test24@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (25, 'Employee25', 'Test25', 'employee25.test25@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (26, 'Employee26', 'Test26', 'employee26.test26@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (27, 'Employee27', 'Test27', 'employee27.test27@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (28, 'Employee28', 'Test28', 'employee28.test28@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (29, 'Employee29', 'Test29', 'employee29.test29@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (30, 'Employee30', 'Test30', 'employee30.test30@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (31, 'Employee31', 'Test31', 'employee31.test31@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (32, 'Employee32', 'Test32', 'employee32.test32@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (33, 'Employee33', 'Test33', 'employee33.test33@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (34, 'Employee34', 'Test34', 'employee34.test34@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (35, 'Employee35', 'Test35', 'employee35.test35@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (36, 'Employee36', 'Test36', 'employee36.test36@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (37, 'Employee37', 'Test37', 'employee37.test37@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (38, 'Employee38', 'Test38', 'employee38.test38@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (39, 'Employee39', 'Test39', 'employee39.test39@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (40, 'Employee40', 'Test40', 'employee40.test40@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (41, 'Employee41', 'Test41', 'employee41.test41@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (42, 'Employee42', 'Test42', 'employee42.test42@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (43, 'Employee43', 'Test43', 'employee43.test43@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (44, 'Employee44', 'Test44', 'employee44.test44@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (45, 'Employee45', 'Test45', 'employee45.test45@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (46, 'Employee46', 'Test46', 'employee46.test46@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (47, 'Employee47', 'Test47', 'employee47.test47@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (48, 'Employee48', 'Test48', 'employee48.test48@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (49, 'Employee49', 'Test49', 'employee49.test49@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (50, 'Employee50', 'Test50', 'employee50.test50@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (51, 'Employee51', 'Test51', 'employee51.test51@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (52, 'Employee52', 'Test52', 'employee52.test52@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (53, 'Employee53', 'Test53', 'employee53.test53@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (54, 'Employee54', 'Test54', 'employee54.test54@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (55, 'Employee55', 'Test55', 'employee55.test55@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (56, 'Employee56', 'Test56', 'employee56.test56@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (57, 'Employee57', 'Test57', 'employee57.test57@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (58, 'Employee58', 'Test58', 'employee58.test58@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (59, 'Employee59', 'Test59', 'employee59.test59@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (60, 'Employee60', 'Test60', 'employee60.test60@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (61, 'Employee61', 'Test61', 'employee61.test61@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (62, 'Employee62', 'Test62', 'employee62.test62@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (63, 'Employee63', 'Test63', 'employee63.test63@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (64, 'Employee64', 'Test64', 'employee64.test64@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (65, 'Employee65', 'Test65', 'employee65.test65@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (66, 'Employee66', 'Test66', 'employee66.test66@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (67, 'Employee67', 'Test67', 'employee67.test67@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (68, 'Employee68', 'Test68', 'employee68.test68@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (69, 'Employee69', 'Test69', 'employee69.test69@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (70, 'Employee70', 'Test70', 'employee70.test70@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (71, 'Employee71', 'Test71', 'employee71.test71@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (72, 'Employee72', 'Test72', 'employee72.test72@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (73, 'Employee73', 'Test73', 'employee73.test73@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (74, 'Employee74', 'Test74', 'employee74.test74@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (75, 'Employee75', 'Test75', 'employee75.test75@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (76, 'Employee76', 'Test76', 'employee76.test76@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (77, 'Employee77', 'Test77', 'employee77.test77@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (78, 'Employee78', 'Test78', 'employee78.test78@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (79, 'Employee79', 'Test79', 'employee79.test79@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (80, 'Employee80', 'Test80', 'employee80.test80@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (81, 'Employee81', 'Test81', 'employee81.test81@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (82, 'Employee82', 'Test82', 'employee82.test82@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (83, 'Employee83', 'Test83', 'employee83.test83@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (84, 'Employee84', 'Test84', 'employee84.test84@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (85, 'Employee85', 'Test85', 'employee85.test85@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (86, 'Employee86', 'Test86', 'employee86.test86@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (87, 'Employee87', 'Test87', 'employee87.test87@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (88, 'Employee88', 'Test88', 'employee88.test88@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (89, 'Employee89', 'Test89', 'employee89.test89@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (90, 'Employee90', 'Test90', 'employee90.test90@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (91, 'Employee91', 'Test91', 'employee91.test91@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (92, 'Employee92', 'Test92', 'employee92.test92@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (93, 'Employee93', 'Test93', 'employee93.test93@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (94, 'Employee94', 'Test94', 'employee94.test94@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (95, 'Employee95', 'Test95', 'employee95.test95@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (96, 'Employee96', 'Test96', 'employee96.test96@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (97, 'Employee97', 'Test97', 'employee97.test97@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (98, 'Employee98', 'Test98', 'employee98.test98@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (99, 'Employee99', 'Test99', 'employee99.test99@example.com');
INSERT INTO employee (id, first_name, last_name, email) VALUES (100, 'Employee100', 'Test100', 'employee100.test100@example.com');


DESC table employee;

SELECT CURRENT_USER();


select * from employee;