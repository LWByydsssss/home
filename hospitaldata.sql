﻿# Host: 127.0.0.1  (Version 5.7.38-log)
# Date: 2024-05-09 23:10:19
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "area"
#

DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `areaId` int(11) NOT NULL AUTO_INCREMENT,
  `areaName` varchar(50) NOT NULL,
  PRIMARY KEY (`areaId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "area"
#

INSERT INTO `area` VALUES (4,'河南省a有限公司 ');

#
# Structure for table "ban"
#

DROP TABLE IF EXISTS `ban`;
CREATE TABLE `ban` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "ban"
#

INSERT INTO `ban` VALUES (1,'有班'),(2,'无班');

#
# Structure for table "baoque"
#

DROP TABLE IF EXISTS `baoque`;
CREATE TABLE `baoque` (
  `baoqueid` int(11) NOT NULL AUTO_INCREMENT,
  `baoqueName` varchar(100) DEFAULT NULL,
  `baoqueNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`baoqueid`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

#
# Data for table "baoque"
#


#
# Structure for table "caigou"
#

DROP TABLE IF EXISTS `caigou`;
CREATE TABLE `caigou` (
  `caigouid` int(11) NOT NULL AUTO_INCREMENT,
  `caigouname` varchar(50) DEFAULT NULL,
  `gonghuoshang` varchar(50) DEFAULT NULL,
  `danwei` varchar(10) DEFAULT NULL,
  `candi` varchar(100) DEFAULT NULL,
  `leixing` varchar(20) DEFAULT NULL,
  `shuliang` int(11) DEFAULT NULL,
  PRIMARY KEY (`caigouid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

#
# Data for table "caigou"
#

/*!40000 ALTER TABLE `caigou` DISABLE KEYS */;
INSERT INTO `caigou` VALUES (16,'阿莫西林','春天大药房 ','盒','河南省a有限公司 ','西药',20);
/*!40000 ALTER TABLE `caigou` ENABLE KEYS */;

#
# Structure for table "checkup"
#

DROP TABLE IF EXISTS `checkup`;
CREATE TABLE `checkup` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `registerid` int(11) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `fk_rid` (`registerid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "checkup"
#


#
# Structure for table "departments"
#

DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `departmentId` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(300) NOT NULL,
  PRIMARY KEY (`departmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "departments"
#

INSERT INTO `departments` VALUES (7,'内科'),(8,'外科');

#
# Structure for table "bed"
#

DROP TABLE IF EXISTS `bed`;
CREATE TABLE `bed` (
  `bedId` int(11) NOT NULL AUTO_INCREMENT,
  `bedname` varchar(300) NOT NULL,
  `departmentId` int(11) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  PRIMARY KEY (`bedId`),
  KEY `fk_bedDepartmentid` (`departmentId`),
  CONSTRAINT `fk_bedDepartmentid` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`departmentid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "bed"
#

INSERT INTO `bed` VALUES (8,'外科1',8,1,10),(9,'内科一',7,0,10);

#
# Structure for table "home"
#

DROP TABLE IF EXISTS `home`;
CREATE TABLE `home` (
  `homeId` int(11) NOT NULL AUTO_INCREMENT,
  `homeName` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `carId` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`homeId`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

#
# Data for table "home"
#

/*!40000 ALTER TABLE `home` DISABLE KEYS */;
INSERT INTO `home` VALUES (73,'敲门','男',19,NULL,NULL),(74,'魏坚','男',19,'412823199912242414','17634525258');
/*!40000 ALTER TABLE `home` ENABLE KEYS */;

#
# Structure for table "hospitalprice"
#

DROP TABLE IF EXISTS `hospitalprice`;
CREATE TABLE `hospitalprice` (
  `hospitalpriceid` int(11) NOT NULL AUTO_INCREMENT,
  `registerId` int(11) NOT NULL,
  `durgname` varchar(500) NOT NULL,
  `durgnum` int(11) NOT NULL,
  `repiceprice` double NOT NULL,
  `repicetotal` double NOT NULL,
  `htime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`hospitalpriceid`),
  KEY `fk_registerId` (`registerId`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

#
# Data for table "hospitalprice"
#

/*!40000 ALTER TABLE `hospitalprice` DISABLE KEYS */;
INSERT INTO `hospitalprice` VALUES (104,12,'开颅手术',1,500,500,'2024-04-26 15:12:26',1),(105,12,'阿莫西林',2,30,60,'2024-04-26 15:13:47',2),(107,13,'阿莫西林',1,30,30,'2024-05-02 11:10:14',2);
/*!40000 ALTER TABLE `hospitalprice` ENABLE KEYS */;

#
# Structure for table "huishou"
#

DROP TABLE IF EXISTS `huishou`;
CREATE TABLE `huishou` (
  `huishouid` int(11) NOT NULL AUTO_INCREMENT,
  `huishouname` varchar(50) NOT NULL,
  `huishounumber` int(11) NOT NULL,
  `huishoupihao` varchar(50) DEFAULT NULL,
  `jbr` varchar(10) DEFAULT NULL,
  `beizhu` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`huishouid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "huishou"
#

/*!40000 ALTER TABLE `huishou` DISABLE KEYS */;
INSERT INTO `huishou` VALUES (5,'阿莫西林',17,'20191121','门诊','有问题，请更换 20盒');
/*!40000 ALTER TABLE `huishou` ENABLE KEYS */;

#
# Structure for table "jilu"
#

DROP TABLE IF EXISTS `jilu`;
CREATE TABLE `jilu` (
  `jiluid` int(11) NOT NULL AUTO_INCREMENT,
  `jiluname` varchar(50) NOT NULL,
  `jilutime` datetime NOT NULL,
  `jilutype` varchar(50) NOT NULL,
  `jilupeople` varchar(20) NOT NULL,
  `jilunumber` int(11) DEFAULT NULL,
  `jilupihao` varchar(50) NOT NULL,
  PRIMARY KEY (`jiluid`)
) ENGINE=MyISAM AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;

#
# Data for table "jilu"
#

/*!40000 ALTER TABLE `jilu` DISABLE KEYS */;
INSERT INTO `jilu` VALUES (187,'板蓝根','2024-04-26 14:58:00','常规入库','门诊',100,'20191121'),(188,'阿莫西林','2024-04-26 14:58:00','常规入库','门诊',30,'20191121'),(189,'阿莫西林','2024-04-26 14:58:00','正常出库','门诊',20,'20191121'),(190,'板蓝根','2024-04-26 14:58:00','正常出库','门诊',50,'20191121'),(191,'板蓝根','2024-04-26 14:58:00','紧急补给药房','门诊',10,'20191121'),(192,'阿莫西林','2024-04-26 14:58:00','正常出库','门诊',10,'20191121');
/*!40000 ALTER TABLE `jilu` ENABLE KEYS */;

#
# Structure for table "moneytype"
#

DROP TABLE IF EXISTS `moneytype`;
CREATE TABLE `moneytype` (
  `MoneyId` int(11) NOT NULL AUTO_INCREMENT,
  `Moneytype` varchar(300) NOT NULL,
  `Percent` varchar(30) NOT NULL,
  PRIMARY KEY (`MoneyId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Data for table "moneytype"
#

INSERT INTO `moneytype` VALUES (10,'无','0%'),(11,'城镇社保','30%'),(12,'农村医疗合作社','35%');

#
# Structure for table "pay"
#

DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay` (
  `payid` int(11) NOT NULL AUTO_INCREMENT,
  `registerid` int(11) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `payDate` datetime DEFAULT NULL,
  PRIMARY KEY (`payid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Data for table "pay"
#

INSERT INTO `pay` VALUES (9,12,10,'2024-04-26 14:58:00'),(10,13,10,'2024-04-26 14:58:00');

#
# Structure for table "projecttype"
#

DROP TABLE IF EXISTS `projecttype`;
CREATE TABLE `projecttype` (
  `projectId` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(300) NOT NULL,
  PRIMARY KEY (`projectId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "projecttype"
#

INSERT INTO `projecttype` VALUES (1,'住院医疗综合服务类'),(2,'门诊医疗综合服务类');

#
# Structure for table "registeredtype"
#

DROP TABLE IF EXISTS `registeredtype`;
CREATE TABLE `registeredtype` (
  `registeredId` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(300) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`registeredId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "registeredtype"
#

INSERT INTO `registeredtype` VALUES (5,'普通挂号',20),(6,'专家号',30);

#
# Structure for table "doctor"
#

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `doctorId` int(11) NOT NULL AUTO_INCREMENT,
  `doctorName` varchar(300) NOT NULL,
  `departmentId` int(11) NOT NULL,
  `registeredId` int(11) NOT NULL,
  `dstate` int(11) DEFAULT NULL,
  `amStartTime` varchar(10) DEFAULT '8:00',
  `amEndTime` varchar(10) DEFAULT '12:00',
  `pmStartTime` varchar(10) DEFAULT '14:00',
  `pmEndTime` varchar(10) DEFAULT '18:00',
  PRIMARY KEY (`doctorId`),
  KEY `fk_department` (`departmentId`),
  KEY `fk_registeredtype` (`registeredId`),
  CONSTRAINT `fk_department` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`departmentId`),
  CONSTRAINT `fk_registeredtype` FOREIGN KEY (`registeredId`) REFERENCES `registeredtype` (`registeredid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

#
# Data for table "doctor"
#

INSERT INTO `doctor` VALUES (13,'华佗',7,5,0,'8:00','12:00','14:00','18:00'),(14,'扁鹊',7,6,0,'8:00','12:00','14:00','18:00'),(15,'张春明',7,5,1,'8:00','12:00','14:00','18:00'),(16,'王二',8,5,1,'8:00','12:00','14:00','18:00');

#
# Structure for table "register"
#

DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `registerid` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `department` int(11) NOT NULL,
  `doctor` int(11) NOT NULL,
  `diagnose` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `Phone` varchar(30) DEFAULT NULL,
  `Idcard` varchar(60) DEFAULT NULL,
  `registerDate` datetime DEFAULT NULL,
  `bedNum` int(11) DEFAULT NULL,
  `Operator` varchar(200) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `price` double unsigned DEFAULT NULL,
  `discount` varchar(10) DEFAULT NULL,
  `zhuan` datetime DEFAULT NULL,
  PRIMARY KEY (`registerid`),
  KEY `fk_regdepartment` (`department`),
  KEY `fk_regdoctor` (`doctor`),
  CONSTRAINT `fk_regdepartment` FOREIGN KEY (`department`) REFERENCES `departments` (`departmentId`),
  CONSTRAINT `fk_regdoctor` FOREIGN KEY (`doctor`) REFERENCES `doctor` (`doctorId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Data for table "register"
#

INSERT INTO `register` VALUES (12,'李福州',20,'男',7,15,'脑部肿瘤','河南','15565792390','412827199605062586','2024-04-26 14:58:00',9,'门诊',10010,1,'2019-11-21 15:14:05',392,'30%',NULL),(13,'song',12,'男',8,16,'良好','河南','13271678052','412702199902080557','2024-04-26 14:58:00',8,'超级管理员',1010,0,NULL,39,'35%','2024-05-02 11:05:26');

#
# Structure for table "paiban"
#

DROP TABLE IF EXISTS `paiban`;
CREATE TABLE `paiban` (
  `paiId` int(11) NOT NULL AUTO_INCREMENT,
  `one` varchar(50) DEFAULT '无班',
  `two` varchar(50) DEFAULT '无班',
  `three` varchar(50) DEFAULT '无班',
  `four` varchar(50) DEFAULT '无班',
  `five` varchar(50) DEFAULT '无班',
  `six` varchar(50) DEFAULT '无班',
  `seven` varchar(50) DEFAULT '无班',
  `doctorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`paiId`),
  KEY `fk_paiId` (`doctorId`),
  CONSTRAINT `fk_paiId` FOREIGN KEY (`doctorId`) REFERENCES `doctor` (`doctorId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

#
# Data for table "paiban"
#

INSERT INTO `paiban` VALUES (12,'有班','有班','无班','有班','有班','有班','有班',16),(13,'有班','有班','有班','有班','有班','有班','有班',15),(14,'有班','有班','有班','有班','有班','有班','有班',14),(15,'有班','有班','有班','有班','有班','有班','有班',13);

#
# Structure for table "report"
#

DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `reportId` int(11) NOT NULL AUTO_INCREMENT,
  `reportName` varchar(100) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `doctor` int(11) DEFAULT NULL,
  `reportType` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `users` varchar(100) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `carid` varchar(100) NOT NULL,
  `zhuan` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`reportId`),
  KEY `fk_departmentr` (`department`),
  KEY `fk_doctor` (`doctor`),
  KEY `fk_reportType` (`reportType`),
  CONSTRAINT `fk_departmentr` FOREIGN KEY (`department`) REFERENCES `departments` (`departmentId`),
  CONSTRAINT `fk_doctor` FOREIGN KEY (`doctor`) REFERENCES `doctor` (`doctorId`),
  CONSTRAINT `fk_reportType` FOREIGN KEY (`reportType`) REFERENCES `registeredtype` (`registeredId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

#
# Data for table "report"
#

INSERT INTO `report` VALUES (28,'送高帅','男',20,7,14,6,30,'2024-04-26 14:58:00',NULL,3,'13183380740','412827199807156595','头痛，发烧'),(29,'李福州','男',20,7,14,6,30,'2024-04-26 14:58:00','门诊',5,'15565792390','412827199605062586','脑部肿瘤'),(30,'杨帅','男',20,7,14,6,30,'2024-04-26 14:58:00',NULL,3,'13183380740','412369199512023695','头痛'),(31,'song','男',12,7,13,5,20,'2024-04-26 14:58:00','超级管理员',5,'13271678052','412702199902080557','良好');

#
# Structure for table "cashier"
#

DROP TABLE IF EXISTS `cashier`;
CREATE TABLE `cashier` (
  `cashier` int(11) NOT NULL AUTO_INCREMENT,
  `reportId` int(11) NOT NULL,
  `durgname` varchar(500) NOT NULL,
  `durgnum` int(11) NOT NULL,
  `repiceprice` double NOT NULL,
  `repicetotal` double NOT NULL,
  `state` int(11) DEFAULT NULL,
  `ctime` date DEFAULT NULL,
  `ostate` int(11) DEFAULT NULL,
  `jie` varchar(500) DEFAULT NULL,
  `mstate` int(11) DEFAULT NULL,
  PRIMARY KEY (`cashier`),
  KEY `fk_reportId` (`reportId`),
  CONSTRAINT `fk_reportId` FOREIGN KEY (`reportId`) REFERENCES `report` (`reportid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

#
# Data for table "cashier"
#

INSERT INTO `cashier` VALUES (34,28,'板蓝根',1,30,30,0,'2024-04-26',NULL,NULL,NULL),(35,28,'阿莫西林',1,30,30,0,'2024-04-26',NULL,NULL,NULL),(36,28,'挂号费',1,30,30,2,'2024-04-26',NULL,NULL,NULL),(37,29,'ct',1,100,100,1,'2024-04-26',1,'脑部肿瘤',1),(38,29,'打针',1,20,20,1,'2024-04-26',0,NULL,1),(39,30,'阿莫西林',1,30,30,0,'2024-04-26',NULL,NULL,NULL),(40,30,'ct',1,100,100,1,'2024-04-26',1,'良好',1),(41,30,'挂号费',1,30,30,2,'2024-04-26',NULL,NULL,NULL),(43,31,'ct',1,100,100,1,'2024-04-26',1,'良好',1),(44,31,'打针',1,20,20,1,'2024-04-26',0,NULL,1);

#
# Structure for table "skull"
#

DROP TABLE IF EXISTS `skull`;
CREATE TABLE `skull` (
  `skullId` int(11) NOT NULL AUTO_INCREMENT,
  `skullName` varchar(300) NOT NULL,
  PRIMARY KEY (`skullId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "skull"
#

INSERT INTO `skull` VALUES (4,'张山');

#
# Structure for table "sys_menu"
#

DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `spread` int(255) DEFAULT NULL COMMENT '0不展开1展开',
  `target` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `available` int(255) DEFAULT NULL COMMENT '0不可用1可用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "sys_menu"
#

INSERT INTO `sys_menu` VALUES (1,0,'医院管理系统','',1,NULL,'&#xe68e;',1),(2,1,'门诊管理','',0,NULL,'&#xe653;',1),(3,1,'住院管理','',0,NULL,'&#xe663;',1),(4,1,'系统管理','',0,'','&#xe716;',1),(5,1,'统计管理','',0,NULL,'&#xe629;',1),(6,2,'用户挂号','../cao/index',0,NULL,'&#xe770;',1),(7,2,'处方划价','../caocc/cc',0,NULL,'&#xe657;',1),(8,3,'入院登记','../liao/admin',0,NULL,'&#xe65b;',1),(9,3,'缴费管理','../liao/pay',0,NULL,'&#xe6b2;',1),(11,3,'药品记账','../liao/drug',0,NULL,'&#xe705;',1),(12,4,'菜单管理','../toMenuManager',0,NULL,'&#xe60f;',1),(13,4,'角色管理','../toLoadAllRole',0,'','&#xe66f;',1),(14,4,'用户管理','../toLoadAllUser',0,NULL,'&#xe770;',1),(15,4,'图标管理','../icon',0,NULL,'&#xe655;',1),(17,4,'数据源监控','../druid',0,NULL,'&#xe857;',1),(18,5,'门诊月度统计','../toReportFinance',0,NULL,'&#xe63c;',1),(19,5,'住院月度统计','../toZhuYaunManage',0,NULL,'&#xe62c;',1),(20,5,'门诊年度统计','../toBingYear',0,NULL,'&#xe62d;',1),(27,2,'项目划价','../caoout/xiang',0,NULL,'&#xe60a;',1),(28,2,'项目缴费','../xpay/xiangpay',0,NULL,'&#xe65e;',1),(30,1,'医生管理','',0,NULL,'&#xe60a;',1),(31,30,'科室中心','../toDepartments',0,NULL,'&#xe68e;',1),(32,30,'医生列表','../toDoctor',0,NULL,'&#xe66f;',1),(33,30,'药品产地','../toArea',0,NULL,'&#xe630;',1),(36,30,'项目大类','../toProjectTypeManage',0,NULL,'&#xe620;',1),(37,30,'挂号类型','../toRegisteredType',0,NULL,'&#xe672;',1),(40,30,'仓库','../toWarehuose',0,NULL,'&#xe60a;',1),(41,30,'经办人','../toSkull',0,NULL,'&#xe612;',1),(42,30,'计量单位','../toUnit',0,NULL,'&#xe62a;',1),(43,30,'供货商','../toSupply',0,NULL,'&#xe613;',1),(44,30,'药品分类','../toType',0,NULL,'&#xe656;',1),(46,1,'排班管理','1',0,NULL,'&#xe770;',1),(47,46,'医生排班','../toPaiban',0,NULL,'&#xe770;',1),(48,30,'药品字典','../toDrugdictionary',0,NULL,'&#xe64d;',1),(49,3,'项目记账','../liao/item',0,NULL,'&#xe705;',1),(52,5,'住院年度统计','../toBing2',0,NULL,'&#xe630;',1),(53,2,'项目检查','../xpay/seljian',0,NULL,'&#xe674;',1),(54,1,'仓库管理','',0,NULL,'&#xe61c;',1),(55,54,'入库单','../dsnavigation/beputinstorage',0,NULL,'&#xe657;',1),(56,5,'医生统计对比','../toDoctorDuibi',0,NULL,'&#xe770;',1),(57,54,'库存查询','../dsnavigation/selectdurg',0,NULL,'&#xe62a;',1),(58,54,'出库单','../dsnavigation/selectchuku',0,NULL,'&#xe621;',1),(59,54,'库存不足','../dsnavigation/selectless',0,NULL,'&#xe6b2;',1),(60,54,'过期提醒','../dsnavigation/seldrugDate',0,NULL,'&#xe702;',1),(61,1,'药房管理','',0,NULL,'&#xe705;',1),(62,61,'药房详情','../dsnavigation/pharymacyhtml',0,NULL,'&#xe632;',1),(64,2,'药品缴费','../caoout/out',0,NULL,'&#xe65e;',1),(65,5,'门诊当天统计','../toCurrent',0,NULL,'&#xe60e;',1),(69,2,'门诊患者库','../caotake/haun',0,NULL,'&#xe66f;',1),(70,54,'操作记录','../dsnavigation/record',0,NULL,'&#xe6b2;',1),(71,54,'药品回收','../dsnavigation/recycle',0,NULL,'&#xe669;',1),(72,61,'门诊取药','../caotake/seltake',0,NULL,'&#xe857;',1),(73,61,'住院取药','../liao/pharmacy',0,NULL,'&#xe63c;',1),(86,3,'出院结算','../liao/leave',0,NULL,'&#xe65a;',1),(90,2,'test','',0,NULL,'&#xe678;',1);

#
# Structure for table "sys_role"
#

DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  `roledesc` varchar(255) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "sys_role"
#

INSERT INTO `sys_role` VALUES (1,'超级管理员','拥有所有菜单权限',1),(4,'门诊管理','拥有门诊管理的权限',1),(5,'医生','',1),(6,'患者','',1);

#
# Structure for table "sys_role_menu"
#

DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `rid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`rid`,`mid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "sys_role_menu"
#

INSERT INTO `sys_role_menu` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,17),(1,18),(1,19),(1,20),(1,27),(1,28),(1,30),(1,31),(1,32),(1,33),(1,36),(1,37),(1,40),(1,41),(1,42),(1,43),(1,44),(1,46),(1,47),(1,48),(1,49),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,61),(1,62),(1,64),(1,65),(1,69),(1,70),(1,71),(1,72),(1,73),(1,86),(1,88),(4,1),(4,2),(4,6),(4,7),(4,27),(4,28),(4,53),(4,64),(4,69),(4,90),(5,1),(5,2),(5,3),(5,5),(5,6),(5,7),(5,8),(5,9),(5,11),(5,18),(5,19),(5,20),(5,27),(5,28),(5,30),(5,31),(5,32),(5,33),(5,36),(5,37),(5,40),(5,41),(5,42),(5,43),(5,44),(5,46),(5,47),(5,48),(5,49),(5,52),(5,53),(5,56),(5,64),(5,65),(5,69),(5,86),(5,90),(6,1),(6,2),(6,6);

#
# Structure for table "sys_role_user"
#

DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user` (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`rid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "sys_role_user"
#

INSERT INTO `sys_role_user` VALUES (1,1),(9,1),(10,1),(11,1),(12,1),(13,1),(28,5);

#
# Structure for table "sys_user"
#

DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` int(255) DEFAULT NULL COMMENT '0女1男',
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `type` int(255) DEFAULT '2' COMMENT '1，超级管理员,2，系统用户',
  `available` int(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "sys_user"
#

INSERT INTO `sys_user` VALUES (1,'admin','412365199601236544','超级管理员',1,'武汉','13800138000','29f5e5fe4cf29083c176862084cfeef6','CEO',1,1,'d27324'),(28,'mz','412827199807156565','医生',1,'河南','13800138000','3e1c6d31efbf135017b1ede093cde252','医生',2,1,'a8a207'),(31,'wrer','445121198987675621','werwe',1,'22322','13500088812','91bc9205009cde85fa626ac2c8e2188a','2322',2,1,'496825'),(32,'erwer','445121119097652321','werewr',1,'121212','13500088231','daea35901a4442b5d1864766b8778407','1212',2,1,'88232f');

#
# Structure for table "type"
#

DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(50) NOT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "type"
#

INSERT INTO `type` VALUES (5,'西药'),(6,'中药');

#
# Structure for table "unit"
#

DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `unitId` int(11) NOT NULL AUTO_INCREMENT,
  `unitName` varchar(50) NOT NULL,
  PRIMARY KEY (`unitId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "unit"
#

INSERT INTO `unit` VALUES (7,'盒'),(8,'次'),(9,'袋');

#
# Structure for table "drugdictionary"
#

DROP TABLE IF EXISTS `drugdictionary`;
CREATE TABLE `drugdictionary` (
  `drugId` int(11) NOT NULL AUTO_INCREMENT,
  `drugName` varchar(50) NOT NULL,
  `unitId` int(11) NOT NULL,
  `sellingPrice` double NOT NULL,
  `areaId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  PRIMARY KEY (`drugId`),
  KEY `fk_unitid` (`unitId`),
  KEY `fk_areaId` (`areaId`),
  KEY `fk_typeId` (`typeId`),
  CONSTRAINT `fk_areaId` FOREIGN KEY (`areaId`) REFERENCES `area` (`areaId`),
  CONSTRAINT `fk_typeId` FOREIGN KEY (`typeId`) REFERENCES `type` (`typeid`),
  CONSTRAINT `fk_unitid` FOREIGN KEY (`unitId`) REFERENCES `unit` (`unitid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Data for table "drugdictionary"
#

INSERT INTO `drugdictionary` VALUES (9,'阿莫西林',7,30,4,5),(10,'板蓝根',9,30,4,5);

#
# Structure for table "inhospitaltype"
#

DROP TABLE IF EXISTS `inhospitaltype`;
CREATE TABLE `inhospitaltype` (
  `inhospitalId` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(300) NOT NULL,
  `unit` int(11) NOT NULL,
  `price` double NOT NULL,
  `bigprojectId` int(11) NOT NULL,
  PRIMARY KEY (`inhospitalId`),
  KEY `fk_inhospitaltype` (`bigprojectId`),
  KEY `fk_inhunit` (`unit`),
  CONSTRAINT `fk_inhospitaltype` FOREIGN KEY (`bigprojectId`) REFERENCES `projecttype` (`projectid`),
  CONSTRAINT `fk_inhunit` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "inhospitaltype"
#


#
# Structure for table "inoutpatienttype"
#

DROP TABLE IF EXISTS `inoutpatienttype`;
CREATE TABLE `inoutpatienttype` (
  `inoutpatientId` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(300) NOT NULL,
  `unit` int(11) NOT NULL,
  `bigproJectId` int(11) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`inoutpatientId`),
  KEY `fk_inoutpatienttype` (`bigproJectId`),
  KEY `fk_intunit` (`unit`),
  CONSTRAINT `fk_inoutpatienttype` FOREIGN KEY (`bigproJectId`) REFERENCES `projecttype` (`projectid`),
  CONSTRAINT `fk_intunit` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "inoutpatienttype"
#

INSERT INTO `inoutpatienttype` VALUES (5,'开颅手术',8,1,500);

#
# Structure for table "outpatienttype"
#

DROP TABLE IF EXISTS `outpatienttype`;
CREATE TABLE `outpatienttype` (
  `outpatientId` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(300) NOT NULL,
  `unit` int(11) NOT NULL,
  `bigprojectId` int(11) NOT NULL,
  `price` double NOT NULL,
  `ostate` int(10) DEFAULT NULL,
  PRIMARY KEY (`outpatientId`),
  KEY `fk_outpatienttype` (`bigprojectId`),
  KEY `fk_outunit` (`unit`),
  CONSTRAINT `fk_outpatienttype` FOREIGN KEY (`bigprojectId`) REFERENCES `projecttype` (`projectid`),
  CONSTRAINT `fk_outunit` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "outpatienttype"
#

INSERT INTO `outpatienttype` VALUES (7,'ct',8,2,100,1),(8,'打针',8,2,20,0);

#
# Structure for table "upplier"
#

DROP TABLE IF EXISTS `upplier`;
CREATE TABLE `upplier` (
  `supplierId` int(11) NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(300) NOT NULL,
  `supplierPhone` varchar(100) DEFAULT NULL,
  `supplierAddress` varchar(300) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`supplierId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "upplier"
#

INSERT INTO `upplier` VALUES (5,'春天大药房 ',NULL,NULL,0);

#
# Structure for table "warehuose"
#

DROP TABLE IF EXISTS `warehuose`;
CREATE TABLE `warehuose` (
  `warehouseId` int(11) NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(300) NOT NULL,
  PRIMARY KEY (`warehouseId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "warehuose"
#

INSERT INTO `warehuose` VALUES (2,'仓库');

#
# Structure for table "drugstore"
#

DROP TABLE IF EXISTS `drugstore`;
CREATE TABLE `drugstore` (
  `rugstoreId` int(11) NOT NULL AUTO_INCREMENT,
  `drugstoreName` varchar(100) NOT NULL,
  `supplierId` int(11) DEFAULT NULL,
  `skullId` int(11) DEFAULT NULL,
  `warehouseId` int(11) DEFAULT NULL,
  `unit` int(11) NOT NULL,
  `tradePrice` double NOT NULL,
  `sellingPrice` double NOT NULL,
  `area` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `produceDate` date NOT NULL,
  `validDate` date NOT NULL,
  `drugstorenum` int(11) NOT NULL,
  `batch` varchar(200) NOT NULL,
  PRIMARY KEY (`rugstoreId`),
  KEY `fk_supplierId` (`supplierId`),
  KEY `fk_skullId` (`skullId`),
  KEY `fk_warehouseId` (`warehouseId`),
  KEY `fk_dgarea` (`area`),
  KEY `fk_dgunit` (`unit`),
  KEY `fk_dtype` (`type`),
  CONSTRAINT `fk_dgarea` FOREIGN KEY (`area`) REFERENCES `area` (`areaId`),
  CONSTRAINT `fk_dgunit` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`),
  CONSTRAINT `fk_dtype` FOREIGN KEY (`type`) REFERENCES `type` (`typeid`),
  CONSTRAINT `fk_skullId` FOREIGN KEY (`skullId`) REFERENCES `skull` (`skullid`),
  CONSTRAINT `fk_supplierId` FOREIGN KEY (`supplierId`) REFERENCES `upplier` (`supplierid`),
  CONSTRAINT `fk_warehouseId` FOREIGN KEY (`warehouseId`) REFERENCES `warehuose` (`warehouseid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Data for table "drugstore"
#

INSERT INTO `drugstore` VALUES (12,'板蓝根',5,4,2,9,10,30,4,5,'2019-10-30','2020-01-04',40,'20191121');

#
# Structure for table "pharmacy"
#

DROP TABLE IF EXISTS `pharmacy`;
CREATE TABLE `pharmacy` (
  `pharmacyId` int(11) NOT NULL AUTO_INCREMENT,
  `pharmacyName` varchar(50) NOT NULL,
  `drugstoreId` int(11) DEFAULT NULL,
  `skullId` int(11) DEFAULT NULL,
  `warehouseId` int(11) DEFAULT NULL,
  `unit` int(11) NOT NULL,
  `sellingPrice` double NOT NULL,
  `area` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `produceDate` date NOT NULL,
  `validDate` date NOT NULL,
  `drugstorenum` int(11) NOT NULL,
  `skullbatch` varchar(200) NOT NULL,
  PRIMARY KEY (`pharmacyId`),
  KEY `fk_drugstoreIdp` (`drugstoreId`),
  KEY `fk_skullIdp` (`skullId`),
  KEY `fk_warehouseIdp` (`warehouseId`),
  KEY `fk_dgareap` (`area`),
  KEY `fk_unitp` (`unit`),
  KEY `fk_typep` (`type`),
  CONSTRAINT `fk_dgareap` FOREIGN KEY (`area`) REFERENCES `area` (`areaId`),
  CONSTRAINT `fk_drugstoreIdp` FOREIGN KEY (`drugstoreId`) REFERENCES `drugstore` (`rugstoreId`),
  CONSTRAINT `fk_skullIdp` FOREIGN KEY (`skullId`) REFERENCES `skull` (`skullid`),
  CONSTRAINT `fk_typep` FOREIGN KEY (`type`) REFERENCES `type` (`typeid`),
  CONSTRAINT `fk_unitp` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`),
  CONSTRAINT `fk_warehouseIdp` FOREIGN KEY (`warehouseId`) REFERENCES `warehuose` (`warehouseid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Data for table "pharmacy"
#

INSERT INTO `pharmacy` VALUES (11,'板蓝根',NULL,4,2,9,30,4,5,'2024-04-26','2025-04-26',59,'20191121'),(12,'阿莫西林',NULL,4,2,7,30,4,5,'2024-04-26','2025-04-26',8,'20191121');
