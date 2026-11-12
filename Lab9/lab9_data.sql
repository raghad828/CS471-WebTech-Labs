BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "usermodule_author" (
	"id"	integer NOT NULL,
	"name"	varchar(200) NOT NULL,
	"DOB"	date,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "usermodule_book" (
	"id"	integer NOT NULL,
	"title"	varchar(100) NOT NULL,
	"price"	real NOT NULL,
	"quantity"	integer NOT NULL,
	"pubdate"	datetime NOT NULL,
	"rating"	smallint NOT NULL,
	"publisher_id"	bigint,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("publisher_id") REFERENCES "usermodule_publisher"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "usermodule_book_authors" (
	"id"	integer NOT NULL,
	"book_id"	bigint NOT NULL,
	"author_id"	bigint NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("author_id") REFERENCES "usermodule_author"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("book_id") REFERENCES "usermodule_book"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "usermodule_publisher" (
	"id"	integer NOT NULL,
	"name"	varchar(200) NOT NULL,
	"location"	varchar(300) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "usermodule_author" VALUES (1,'Jaxspan','1968-05-03');
INSERT INTO "usermodule_author" VALUES (2,'Twimm','1987-11-13');
INSERT INTO "usermodule_author" VALUES (3,'Jabberstorm','1954-09-11');
INSERT INTO "usermodule_author" VALUES (4,'Brightbean','1974-11-13');
INSERT INTO "usermodule_author" VALUES (5,'Oyoyo','1981-02-25');
INSERT INTO "usermodule_author" VALUES (6,'Gabvine','1974-07-14');
INSERT INTO "usermodule_author" VALUES (7,'Blogspan','1969-10-22');
INSERT INTO "usermodule_author" VALUES (8,'Abatz','1980-02-17');
INSERT INTO "usermodule_author" VALUES (9,'Voomm','1976-05-22');
INSERT INTO "usermodule_author" VALUES (10,'Topdrive','1990-03-17');
INSERT INTO "usermodule_author" VALUES (11,'Geba','1951-12-01');
INSERT INTO "usermodule_author" VALUES (12,'Browsecat','1951-06-23');
INSERT INTO "usermodule_author" VALUES (13,'Skaboo','1965-05-14');
INSERT INTO "usermodule_author" VALUES (14,'Tagpad','1988-01-31');
INSERT INTO "usermodule_author" VALUES (15,'Talane','1970-08-25');
INSERT INTO "usermodule_author" VALUES (16,'Trudoo','1960-02-02');
INSERT INTO "usermodule_author" VALUES (17,'Bubbletube','1964-10-11');
INSERT INTO "usermodule_author" VALUES (18,'Geba','1964-09-08');
INSERT INTO "usermodule_author" VALUES (19,'Digitube','1967-12-17');
INSERT INTO "usermodule_author" VALUES (20,'Jabbercube','1968-04-12');
INSERT INTO "usermodule_book" VALUES (1,'Osterman Weekend, The',28.79,3,'2005-12-18 18:44:38',5,5);
INSERT INTO "usermodule_book" VALUES (2,'Shock',197.32,1,'2024-07-03 06:48:31',3,2);
INSERT INTO "usermodule_book" VALUES (3,'Englishman in New York, An',134.28,10,'2024-03-31 13:42:07',4,2);
INSERT INTO "usermodule_book" VALUES (4,'Bank, The',20.83,5,'2014-05-14 11:51:53',3,4);
INSERT INTO "usermodule_book" VALUES (5,'Fire-Eater (Tulennielijä)',146.0,6,'2021-01-20 21:05:40',1,5);
INSERT INTO "usermodule_book" VALUES (6,'Morgen',195.68,1,'2005-01-05 19:12:33',3,5);
INSERT INTO "usermodule_book" VALUES (7,'Revenge of Frankenstein, The',51.61,4,'2019-01-26 19:04:22',2,1);
INSERT INTO "usermodule_book" VALUES (8,'In This Our Life',54.29,10,'2001-11-12 16:53:36',4,1);
INSERT INTO "usermodule_book" VALUES (9,'The Trip to Bountiful',107.79,6,'2005-12-17 02:59:50',2,9);
INSERT INTO "usermodule_book" VALUES (10,'Conan the Barbarian',199.76,13,'2015-08-24 02:55:49',5,10);
INSERT INTO "usermodule_book" VALUES (11,'Dog Nail Clipper (Koirankynnenleikkaaja)',108.46,20,'2012-09-28 17:51:58',1,2);
INSERT INTO "usermodule_book" VALUES (12,'Little Girl Who Lives Down the Lane, The',100.22,2,'2019-11-17 10:51:52',5,10);
INSERT INTO "usermodule_book" VALUES (13,'The Broken Jug',85.03,19,'2024-05-08 02:52:56',4,10);
INSERT INTO "usermodule_book" VALUES (14,'Neighbors',94.74,5,'2013-06-09 14:52:02',4,2);
INSERT INTO "usermodule_book" VALUES (15,'Game of Death II (a.k.a. Tower of Death) (Si wang ta)',70.34,12,'2021-03-06 04:22:36',5,10);
INSERT INTO "usermodule_book" VALUES (16,'Casualties of War',38.41,3,'2021-05-14 16:14:22',4,9);
INSERT INTO "usermodule_book" VALUES (17,'Hope Springs',66.44,13,'2011-12-09 06:51:10',3,10);
INSERT INTO "usermodule_book" VALUES (18,'Armored Car Robbery',107.24,3,'2025-05-02 08:41:33',5,7);
INSERT INTO "usermodule_book" VALUES (19,'Funky Forest: The First Contact',144.96,2,'2024-06-10 05:42:18',5,6);
INSERT INTO "usermodule_book" VALUES (20,'Fame',44.53,11,'2021-12-02 00:51:56',3,6);
INSERT INTO "usermodule_book" VALUES (21,'Pollyanna',109.97,5,'2023-05-10 04:56:43',4,9);
INSERT INTO "usermodule_book" VALUES (22,'Innocent, The (Innocente, L'')',92.36,15,'2014-12-03 01:49:03',2,3);
INSERT INTO "usermodule_book" VALUES (23,'Sundown',65.87,16,'2014-12-17 05:24:33',4,3);
INSERT INTO "usermodule_book" VALUES (24,'Edge of Fear (Ella y el miedo)',100.25,18,'2019-06-16 21:32:16',5,4);
INSERT INTO "usermodule_book" VALUES (25,'Make the Yuletide Gay',35.01,18,'2007-04-23 00:25:23',1,10);
INSERT INTO "usermodule_book" VALUES (26,'Usual Suspects, The',117.35,10,'2011-07-02 08:32:27',3,7);
INSERT INTO "usermodule_book" VALUES (27,'Myriad of Lights (Lights of Ten Thousand Homes, The) (Wanjia denghuo)',143.44,19,'2012-03-28 19:58:09',1,6);
INSERT INTO "usermodule_book" VALUES (28,'Scent of a Woman (Profumo di donna)',37.92,15,'2024-05-29 22:36:27',5,8);
INSERT INTO "usermodule_book" VALUES (29,'Fur: An Imaginary Portrait of Diane Arbus',39.01,14,'2015-04-30 13:06:03',1,8);
INSERT INTO "usermodule_book" VALUES (30,'Night Ambush (Ill Met by Moonlight)',118.11,14,'2024-12-03 10:55:04',5,7);
INSERT INTO "usermodule_book" VALUES (31,'Intern, The',25.1,18,'2025-05-25 02:50:32',5,1);
INSERT INTO "usermodule_book" VALUES (32,'Stephen Tobolowsky''s Birthday Party',174.77,19,'2021-03-26 14:37:19',3,2);
INSERT INTO "usermodule_book" VALUES (33,'Reel Rock 7 ',72.42,4,'2024-06-30 16:41:59',1,5);
INSERT INTO "usermodule_book" VALUES (34,'Super',91.87,5,'2014-03-30 08:04:19',3,6);
INSERT INTO "usermodule_book" VALUES (35,'Sex Galaxy',93.61,18,'2013-03-28 19:06:03',1,4);
INSERT INTO "usermodule_book" VALUES (36,'Kevin Nealon: Whelmed, But Not Overly',23.84,13,'2021-01-11 15:32:38',3,5);
INSERT INTO "usermodule_book" VALUES (37,'A Fight For',195.37,4,'2022-04-14 06:24:02',5,5);
INSERT INTO "usermodule_book" VALUES (38,'Poll Diaries, The (Poll)',173.97,19,'2019-03-27 04:02:31',5,6);
INSERT INTO "usermodule_book" VALUES (39,'Grave Halloween',184.18,9,'2019-10-09 19:52:02',3,3);
INSERT INTO "usermodule_book" VALUES (40,'Detective (Détective)',88.91,3,'2007-08-06 10:50:18',5,9);
INSERT INTO "usermodule_book" VALUES (41,'Wonderful and Loved by All (Underbar och älskad av alla)',28.93,11,'2022-02-15 17:52:02',5,9);
INSERT INTO "usermodule_book" VALUES (42,'Bullfighter and the Lady',140.24,1,'2024-08-25 16:26:00',3,7);
INSERT INTO "usermodule_book" VALUES (43,'Kill Me Again',190.52,8,'2004-11-21 15:44:47',4,4);
INSERT INTO "usermodule_book" VALUES (44,'Adam''s Apples (Adams æbler)',166.69,5,'2009-05-19 04:14:23',3,10);
INSERT INTO "usermodule_book" VALUES (45,'Dolly and Her Lover (Räpsy ja Dolly eli Pariisi odottaa)',117.99,16,'2000-05-05 15:00:21',4,3);
INSERT INTO "usermodule_book" VALUES (46,'Devil and Daniel Webster, The (All That Money Can Buy)',162.6,18,'2007-12-19 16:47:22',5,6);
INSERT INTO "usermodule_book" VALUES (47,'Last Waltz, The',179.82,4,'2011-02-26 04:50:45',5,9);
INSERT INTO "usermodule_book" VALUES (48,'Nurse Betty',181.85,15,'2015-07-17 14:52:32',5,10);
INSERT INTO "usermodule_book" VALUES (49,'Humble Pie (American Fork)',105.7,6,'2001-01-08 14:32:41',3,5);
INSERT INTO "usermodule_book" VALUES (50,'Witnesses, The (Les témoins)',115.76,13,'2023-06-23 05:01:50',5,10);
INSERT INTO "usermodule_book" VALUES (51,'Sunshine',94.41,1,'2011-11-10 00:37:55',3,3);
INSERT INTO "usermodule_book" VALUES (52,'Stick',184.87,7,'2025-03-02 19:08:42',5,6);
INSERT INTO "usermodule_book" VALUES (53,'Hercules',26.18,17,'2000-04-20 09:15:03',2,8);
INSERT INTO "usermodule_book" VALUES (54,'Happy Together (a.k.a. Buenos Aires Affair) (Chun gwong cha sit)',181.84,6,'2023-12-16 15:10:56',1,10);
INSERT INTO "usermodule_book" VALUES (55,'Strong Man, The',67.78,5,'2012-12-27 20:27:44',2,8);
INSERT INTO "usermodule_book" VALUES (56,'Halloween is Grinch Night',53.06,7,'2001-12-01 16:54:52',5,4);
INSERT INTO "usermodule_book" VALUES (57,'Enforcer, The (Gei ba ba de xin)',85.34,12,'2008-04-19 06:16:26',1,4);
INSERT INTO "usermodule_book" VALUES (58,'Dinner for One (Der 90. Geburtstag oder Dinner for One)',100.61,12,'2003-07-01 13:40:25',2,10);
INSERT INTO "usermodule_book" VALUES (59,'My Prairie Home',133.59,12,'2014-01-27 16:36:12',3,5);
INSERT INTO "usermodule_book" VALUES (60,'Ugly, The',32.3,14,'2004-10-08 16:06:34',2,5);
INSERT INTO "usermodule_book" VALUES (61,'Head Games',162.11,6,'2021-09-16 12:54:44',1,5);
INSERT INTO "usermodule_book" VALUES (62,'Royal Scandal, The',175.14,6,'2009-05-02 06:19:27',5,7);
INSERT INTO "usermodule_book" VALUES (63,'Julie & Julia',44.26,19,'2011-09-15 11:23:18',1,10);
INSERT INTO "usermodule_book" VALUES (64,'Colorado Territory',80.45,4,'2009-01-19 13:24:53',5,2);
INSERT INTO "usermodule_book" VALUES (65,'Coffee Town',144.99,17,'2000-01-29 20:44:15',1,8);
INSERT INTO "usermodule_book" VALUES (66,'Dying Room Only',102.52,5,'2015-12-18 21:42:08',4,4);
INSERT INTO "usermodule_book" VALUES (67,'Jerusalema (Gangster''s Paradise: Jerusalema)',137.23,1,'2010-11-26 18:42:26',1,9);
INSERT INTO "usermodule_book" VALUES (68,'Beyond Outrage',16.49,2,'2023-03-21 19:50:34',5,2);
INSERT INTO "usermodule_book" VALUES (69,'Battered Bastards of Baseball, The',26.37,7,'2012-11-22 07:15:59',3,9);
INSERT INTO "usermodule_book" VALUES (70,'Generation P',110.72,11,'2001-04-23 02:37:26',3,9);
INSERT INTO "usermodule_book" VALUES (71,'28 Days Later',35.31,4,'2012-03-26 16:27:45',3,10);
INSERT INTO "usermodule_book" VALUES (72,'Blue Vinyl',56.74,17,'2012-12-21 09:12:15',3,9);
INSERT INTO "usermodule_book" VALUES (73,'Something the Lord Made',40.95,19,'2015-06-21 23:38:22',1,9);
INSERT INTO "usermodule_book" VALUES (74,'Basic',44.2,10,'2004-04-29 00:37:15',3,7);
INSERT INTO "usermodule_book" VALUES (75,'Private War of Major Benson, The',40.97,2,'2007-10-17 02:05:08',5,4);
INSERT INTO "usermodule_book" VALUES (76,'Punk''s Not Dead',137.2,5,'2010-09-21 11:32:19',3,5);
INSERT INTO "usermodule_book" VALUES (77,'Comme les 5 doigts de la main',80.84,5,'2000-02-07 21:54:45',4,5);
INSERT INTO "usermodule_book" VALUES (78,'Sacrificio: Who Betrayed Che Guevara',61.31,17,'2017-01-08 09:18:52',3,4);
INSERT INTO "usermodule_book" VALUES (79,'Homesman, The',65.48,14,'2023-10-21 01:12:04',5,2);
INSERT INTO "usermodule_book" VALUES (80,'Dracula Has Risen from the Grave',72.56,18,'2005-11-02 16:22:43',2,1);
INSERT INTO "usermodule_book" VALUES (81,'Loneliness of the Long Distance Runner, The',146.95,7,'2013-08-20 03:17:06',4,1);
INSERT INTO "usermodule_book" VALUES (82,'United States of Leland, The',187.87,5,'2024-01-28 06:25:54',4,7);
INSERT INTO "usermodule_book" VALUES (83,'Wives and Lovers',113.46,3,'2011-10-19 11:52:19',4,4);
INSERT INTO "usermodule_book" VALUES (84,'Congorama',22.66,18,'2016-11-28 23:10:12',4,2);
INSERT INTO "usermodule_book" VALUES (85,'Lilla Jönssonligan och Cornflakeskuppen',197.97,8,'2017-01-01 02:53:20',2,10);
INSERT INTO "usermodule_book" VALUES (86,'National Lampoon''s Pucked',126.74,15,'2007-12-13 06:31:38',3,2);
INSERT INTO "usermodule_book" VALUES (87,'Invisible Stripes',182.31,10,'2007-04-09 16:06:21',2,1);
INSERT INTO "usermodule_book" VALUES (88,'Strange Case of Dr. Jekyll and Miss Osbourne, The (Dr. Jekyll and His Women) (Docteur Jekyll et les femmes)',112.37,2,'2017-06-19 11:15:16',2,10);
INSERT INTO "usermodule_book" VALUES (89,'Thirteenth Floor, The',69.96,5,'2005-07-16 02:47:57',5,1);
INSERT INTO "usermodule_book" VALUES (90,'El Robobo De La Jojoya',88.78,4,'2023-12-12 00:16:10',2,10);
INSERT INTO "usermodule_book" VALUES (91,'True Heart Susie',122.55,8,'2004-05-20 15:39:35',1,5);
INSERT INTO "usermodule_book" VALUES (92,'Babe, The',60.12,2,'2016-02-01 13:18:59',2,8);
INSERT INTO "usermodule_book" VALUES (93,'Christmas Holiday',170.88,7,'2023-09-08 01:58:17',1,3);
INSERT INTO "usermodule_book" VALUES (94,'Sleepwalkers',76.86,1,'2008-01-11 01:44:23',2,5);
INSERT INTO "usermodule_book" VALUES (95,'High Life',17.47,12,'2019-04-21 18:05:37',4,2);
INSERT INTO "usermodule_book" VALUES (96,'Wild Oranges',145.63,12,'2000-10-19 00:09:03',2,10);
INSERT INTO "usermodule_book" VALUES (97,'Signs',70.9,8,'2010-09-28 23:18:31',3,10);
INSERT INTO "usermodule_book" VALUES (98,'Slackers',137.23,3,'2021-09-18 12:40:09',2,5);
INSERT INTO "usermodule_book" VALUES (99,'Blow Out',193.14,14,'2025-11-14 09:04:01',4,5);
INSERT INTO "usermodule_book" VALUES (100,'Le Week-End',28.82,20,'2021-02-08 03:34:03',4,3);
INSERT INTO "usermodule_book_authors" VALUES (1,7,8);
INSERT INTO "usermodule_book_authors" VALUES (2,8,9);
INSERT INTO "usermodule_book_authors" VALUES (3,31,12);
INSERT INTO "usermodule_book_authors" VALUES (4,80,1);
INSERT INTO "usermodule_book_authors" VALUES (5,81,2);
INSERT INTO "usermodule_book_authors" VALUES (6,87,8);
INSERT INTO "usermodule_book_authors" VALUES (7,89,10);
INSERT INTO "usermodule_book_authors" VALUES (8,2,3);
INSERT INTO "usermodule_book_authors" VALUES (9,3,4);
INSERT INTO "usermodule_book_authors" VALUES (10,11,12);
INSERT INTO "usermodule_book_authors" VALUES (11,14,15);
INSERT INTO "usermodule_book_authors" VALUES (12,32,13);
INSERT INTO "usermodule_book_authors" VALUES (13,64,5);
INSERT INTO "usermodule_book_authors" VALUES (14,68,9);
INSERT INTO "usermodule_book_authors" VALUES (15,79,20);
INSERT INTO "usermodule_book_authors" VALUES (16,84,5);
INSERT INTO "usermodule_book_authors" VALUES (17,86,7);
INSERT INTO "usermodule_book_authors" VALUES (18,95,16);
INSERT INTO "usermodule_book_authors" VALUES (19,22,3);
INSERT INTO "usermodule_book_authors" VALUES (20,23,4);
INSERT INTO "usermodule_book_authors" VALUES (21,39,20);
INSERT INTO "usermodule_book_authors" VALUES (22,45,6);
INSERT INTO "usermodule_book_authors" VALUES (23,51,12);
INSERT INTO "usermodule_book_authors" VALUES (24,93,14);
INSERT INTO "usermodule_book_authors" VALUES (25,100,1);
INSERT INTO "usermodule_book_authors" VALUES (26,4,5);
INSERT INTO "usermodule_book_authors" VALUES (27,24,5);
INSERT INTO "usermodule_book_authors" VALUES (28,35,16);
INSERT INTO "usermodule_book_authors" VALUES (29,43,4);
INSERT INTO "usermodule_book_authors" VALUES (30,56,17);
INSERT INTO "usermodule_book_authors" VALUES (31,57,18);
INSERT INTO "usermodule_book_authors" VALUES (32,66,7);
INSERT INTO "usermodule_book_authors" VALUES (33,75,16);
INSERT INTO "usermodule_book_authors" VALUES (34,78,19);
INSERT INTO "usermodule_book_authors" VALUES (35,83,4);
INSERT INTO "usermodule_book_authors" VALUES (36,1,2);
INSERT INTO "usermodule_book_authors" VALUES (37,5,6);
INSERT INTO "usermodule_book_authors" VALUES (38,6,7);
INSERT INTO "usermodule_book_authors" VALUES (39,33,14);
INSERT INTO "usermodule_book_authors" VALUES (40,36,17);
INSERT INTO "usermodule_book_authors" VALUES (41,37,18);
INSERT INTO "usermodule_book_authors" VALUES (42,49,10);
INSERT INTO "usermodule_book_authors" VALUES (43,59,20);
INSERT INTO "usermodule_book_authors" VALUES (44,60,1);
INSERT INTO "usermodule_book_authors" VALUES (45,61,2);
INSERT INTO "usermodule_book_authors" VALUES (46,76,17);
INSERT INTO "usermodule_book_authors" VALUES (47,77,18);
INSERT INTO "usermodule_book_authors" VALUES (48,91,12);
INSERT INTO "usermodule_book_authors" VALUES (49,94,15);
INSERT INTO "usermodule_book_authors" VALUES (50,98,19);
INSERT INTO "usermodule_book_authors" VALUES (51,99,20);
INSERT INTO "usermodule_book_authors" VALUES (52,19,20);
INSERT INTO "usermodule_book_authors" VALUES (53,20,1);
INSERT INTO "usermodule_book_authors" VALUES (54,27,8);
INSERT INTO "usermodule_book_authors" VALUES (55,34,15);
INSERT INTO "usermodule_book_authors" VALUES (56,38,19);
INSERT INTO "usermodule_book_authors" VALUES (57,46,7);
INSERT INTO "usermodule_book_authors" VALUES (58,52,13);
INSERT INTO "usermodule_book_authors" VALUES (59,18,19);
INSERT INTO "usermodule_book_authors" VALUES (60,26,7);
INSERT INTO "usermodule_book_authors" VALUES (61,30,11);
INSERT INTO "usermodule_book_authors" VALUES (62,42,3);
INSERT INTO "usermodule_book_authors" VALUES (63,62,3);
INSERT INTO "usermodule_book_authors" VALUES (64,74,15);
INSERT INTO "usermodule_book_authors" VALUES (65,82,3);
INSERT INTO "usermodule_book_authors" VALUES (66,28,9);
INSERT INTO "usermodule_book_authors" VALUES (67,29,10);
INSERT INTO "usermodule_book_authors" VALUES (68,53,14);
INSERT INTO "usermodule_book_authors" VALUES (69,55,16);
INSERT INTO "usermodule_book_authors" VALUES (70,65,6);
INSERT INTO "usermodule_book_authors" VALUES (71,92,13);
INSERT INTO "usermodule_book_authors" VALUES (72,9,10);
INSERT INTO "usermodule_book_authors" VALUES (73,16,17);
INSERT INTO "usermodule_book_authors" VALUES (74,21,2);
INSERT INTO "usermodule_book_authors" VALUES (75,40,1);
INSERT INTO "usermodule_book_authors" VALUES (76,41,2);
INSERT INTO "usermodule_book_authors" VALUES (77,47,8);
INSERT INTO "usermodule_book_authors" VALUES (78,67,8);
INSERT INTO "usermodule_book_authors" VALUES (79,69,10);
INSERT INTO "usermodule_book_authors" VALUES (80,70,11);
INSERT INTO "usermodule_book_authors" VALUES (81,72,13);
INSERT INTO "usermodule_book_authors" VALUES (82,73,14);
INSERT INTO "usermodule_book_authors" VALUES (83,10,11);
INSERT INTO "usermodule_book_authors" VALUES (84,12,13);
INSERT INTO "usermodule_book_authors" VALUES (85,13,14);
INSERT INTO "usermodule_book_authors" VALUES (86,15,16);
INSERT INTO "usermodule_book_authors" VALUES (87,17,18);
INSERT INTO "usermodule_book_authors" VALUES (88,25,6);
INSERT INTO "usermodule_book_authors" VALUES (89,44,5);
INSERT INTO "usermodule_book_authors" VALUES (90,48,9);
INSERT INTO "usermodule_book_authors" VALUES (91,50,11);
INSERT INTO "usermodule_book_authors" VALUES (92,54,15);
INSERT INTO "usermodule_book_authors" VALUES (93,58,19);
INSERT INTO "usermodule_book_authors" VALUES (94,63,4);
INSERT INTO "usermodule_book_authors" VALUES (95,71,12);
INSERT INTO "usermodule_book_authors" VALUES (96,85,6);
INSERT INTO "usermodule_book_authors" VALUES (97,88,9);
INSERT INTO "usermodule_book_authors" VALUES (98,90,11);
INSERT INTO "usermodule_book_authors" VALUES (99,96,17);
INSERT INTO "usermodule_book_authors" VALUES (100,97,18);
INSERT INTO "usermodule_book_authors" VALUES (101,81,9);
INSERT INTO "usermodule_book_authors" VALUES (102,87,15);
INSERT INTO "usermodule_book_authors" VALUES (103,3,11);
INSERT INTO "usermodule_book_authors" VALUES (104,84,12);
INSERT INTO "usermodule_book_authors" VALUES (105,39,7);
INSERT INTO "usermodule_book_authors" VALUES (106,45,13);
INSERT INTO "usermodule_book_authors" VALUES (107,51,19);
INSERT INTO "usermodule_book_authors" VALUES (108,93,1);
INSERT INTO "usermodule_book_authors" VALUES (109,24,12);
INSERT INTO "usermodule_book_authors" VALUES (110,57,5);
INSERT INTO "usermodule_book_authors" VALUES (111,66,14);
INSERT INTO "usermodule_book_authors" VALUES (112,75,3);
INSERT INTO "usermodule_book_authors" VALUES (113,78,6);
INSERT INTO "usermodule_book_authors" VALUES (114,6,14);
INSERT INTO "usermodule_book_authors" VALUES (115,33,1);
INSERT INTO "usermodule_book_authors" VALUES (116,36,4);
INSERT INTO "usermodule_book_authors" VALUES (117,60,8);
INSERT INTO "usermodule_book_authors" VALUES (118,99,7);
INSERT INTO "usermodule_book_authors" VALUES (119,27,15);
INSERT INTO "usermodule_book_authors" VALUES (120,18,6);
INSERT INTO "usermodule_book_authors" VALUES (121,30,18);
INSERT INTO "usermodule_book_authors" VALUES (122,42,10);
INSERT INTO "usermodule_book_authors" VALUES (123,9,17);
INSERT INTO "usermodule_book_authors" VALUES (124,21,9);
INSERT INTO "usermodule_book_authors" VALUES (125,69,17);
INSERT INTO "usermodule_book_authors" VALUES (126,72,20);
INSERT INTO "usermodule_book_authors" VALUES (127,12,20);
INSERT INTO "usermodule_book_authors" VALUES (128,15,3);
INSERT INTO "usermodule_book_authors" VALUES (129,48,16);
INSERT INTO "usermodule_book_authors" VALUES (130,54,2);
INSERT INTO "usermodule_book_authors" VALUES (131,63,11);
INSERT INTO "usermodule_book_authors" VALUES (132,90,18);
INSERT INTO "usermodule_book_authors" VALUES (133,96,4);
INSERT INTO "usermodule_publisher" VALUES (1,'Quaxo','Sukabatu');
INSERT INTO "usermodule_publisher" VALUES (2,'Youbridge','Dobra');
INSERT INTO "usermodule_publisher" VALUES (3,'Divape','La Unión');
INSERT INTO "usermodule_publisher" VALUES (4,'Twitterlist','Lalapanzi');
INSERT INTO "usermodule_publisher" VALUES (5,'Mydo','Aurillac');
INSERT INTO "usermodule_publisher" VALUES (6,'InnoZ','Saeul');
INSERT INTO "usermodule_publisher" VALUES (7,'Aimbo','Błaszki');
INSERT INTO "usermodule_publisher" VALUES (8,'Youspan','Kocēni');
INSERT INTO "usermodule_publisher" VALUES (9,'Gabcube','Évreux');
INSERT INTO "usermodule_publisher" VALUES (10,'Mudo','Chantilly');
CREATE INDEX IF NOT EXISTS "usermodule_book_authors_author_id_5fbf38dd" ON "usermodule_book_authors" (
	"author_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "usermodule_book_authors_book_id_author_id_e09cd5b4_uniq" ON "usermodule_book_authors" (
	"book_id",
	"author_id"
);
CREATE INDEX IF NOT EXISTS "usermodule_book_authors_book_id_e4fb4d2d" ON "usermodule_book_authors" (
	"book_id"
);
CREATE INDEX IF NOT EXISTS "usermodule_book_publisher_id_ea3db7cd" ON "usermodule_book" (
	"publisher_id"
);
COMMIT;
