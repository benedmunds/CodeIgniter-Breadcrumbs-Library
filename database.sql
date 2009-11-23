# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     ci_template
# Server version:               5.1.36-community-log
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2009-11-23 00:25:28
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


DROP TABLE IF EXISTS "pages";

#
# Table structure for table 'pages'
#

CREATE TABLE "pages" (
  "id" int(10) NOT NULL AUTO_INCREMENT,
  "title" varchar(50) DEFAULT NULL,
  "controller" varchar(50) DEFAULT NULL,
  "view" varchar(50) DEFAULT '',
  "url" varchar(50) DEFAULT NULL,
  "menu" varchar(50) DEFAULT NULL,
  "order" int(2) unsigned DEFAULT NULL,
  "require_login" int(1) unsigned DEFAULT '0',
  "group_id" int(10) unsigned DEFAULT '0',
  "parent_id" int(10) unsigned DEFAULT NULL,
  "active" int(1) unsigned DEFAULT '1',
  PRIMARY KEY ("id")
) AUTO_INCREMENT=17;



#
# Dumping data for table 'pages'
#

LOCK TABLES "pages" WRITE;
/*!40000 ALTER TABLE "pages" DISABLE KEYS;*/
INSERT INTO "pages" ("id", "title", "controller", "view", "url", "menu", "order", "require_login", "group_id", "parent_id", "active") VALUES
	(1,'Home','welcome','',NULL,'main','1','0','0',NULL,'1');
INSERT INTO "pages" ("id", "title", "controller", "view", "url", "menu", "order", "require_login", "group_id", "parent_id", "active") VALUES
	(16,'Admin Control Panel','admin','',NULL,NULL,NULL,'0','1',NULL,'1');
INSERT INTO "pages" ("id", "title", "controller", "view", "url", "menu", "order", "require_login", "group_id", "parent_id", "active") VALUES
	(9,'Home','welcome','',NULL,'bottom','0','1','0',NULL,'1');
/*!40000 ALTER TABLE "pages" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
