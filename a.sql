-- MySQL dump 10.13  Distrib 5.7.20, for macos10.12 (x86_64)
--
-- Host: localhost    Database: guns_rest
-- ------------------------------------------------------
-- Server version	5.7.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mooc_actor_t`
--

DROP TABLE IF EXISTS `mooc_actor_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_actor_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `actor_name` varchar(50) DEFAULT NULL COMMENT '演员名称',
  `actor_img` varchar(200) DEFAULT NULL COMMENT '演员图片位置',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='演员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_actor_t`
--

LOCK TABLES `mooc_actor_t` WRITE;
/*!40000 ALTER TABLE `mooc_actor_t` DISABLE KEYS */;
INSERT INTO `mooc_actor_t` VALUES (1,'徐峥','actors/2b98c9d2e6d23a7eff25dcac8b584b0136045.jpg'),(2,'王传君','actors/b782d497577baffb5ed14de52841dcb164365.jpg'),(3,'谭卓','actors/acf7db57456cb1aed1a42f7ebffedaa842002.jpg'),(4,'张一围','actors/4.jpg'),(5,'舒淇','actors/6b32a489467283bb739a2bac3b2b929742175.jpg'),(6,'张艺兴','actors/b738d5e78a1f5c3379d9d42a9b18286f32246.jpeg'),(7,'强森','actors/7e3067d066c1e285b0cc17bfd5f1b34e108474.jpg'),(8,'杰森·斯坦森','actors/7ec0c90aec03c7904c1db3af1153162f77864.jpg'),(9,'李冰冰','actors/d2258cd0529950cf5099206519d91d0e51803.jpg'),(10,'汤姆·克鲁斯','actors/6afaea1cb4ca2b346e86e265347c78b833970.jpg');
/*!40000 ALTER TABLE `mooc_actor_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_area_dict_t`
--

DROP TABLE IF EXISTS `mooc_area_dict_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_area_dict_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `show_name` varchar(100) DEFAULT NULL COMMENT '显示名称',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='地域信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_area_dict_t`
--

LOCK TABLES `mooc_area_dict_t` WRITE;
/*!40000 ALTER TABLE `mooc_area_dict_t` DISABLE KEYS */;
INSERT INTO `mooc_area_dict_t` VALUES (1,'朝阳区'),(2,'海淀区'),(3,'丰台区'),(4,'大兴区'),(5,'东城区'),(6,'西城区'),(7,'通州区'),(8,'房山区'),(9,'昌平区'),(10,'顺义区'),(11,'怀柔区'),(12,'门头沟'),(13,'石景山区'),(14,'密云区'),(15,'平谷区'),(16,'延庆区'),(99,'全部');
/*!40000 ALTER TABLE `mooc_area_dict_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_banner_t`
--

DROP TABLE IF EXISTS `mooc_banner_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_banner_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `banner_address` varchar(50) DEFAULT NULL COMMENT 'banner图存放路径',
  `banner_url` varchar(200) DEFAULT NULL COMMENT 'banner点击跳转url',
  `is_valid` int(11) DEFAULT '0' COMMENT '是否弃用 0-失效,1-失效',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='banner信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_banner_t`
--

LOCK TABLES `mooc_banner_t` WRITE;
/*!40000 ALTER TABLE `mooc_banner_t` DISABLE KEYS */;
INSERT INTO `mooc_banner_t` VALUES (2,'banners/9d75708ae91d5fc918369b76e9e2edba197666.jpg','www.meetingshop.cn',0),(3,'banners/15b3730838f35d56a76d88a1787aaaa5186414.jpg','www.meetingshop.cn',0),(4,'banners/51afa73f0347e9b98957c53fa971d41491652.jpg','www.meetingshop.cn',0),(5,'banners/6605d3518e2bba10f29a6f9ae32b361987015.jpg','www.meetingshop.cn',0),(6,'banners/c1a713981cabef02c88ae5f42888de70183835.jpg','www.meetingshop.cn',0);
/*!40000 ALTER TABLE `mooc_banner_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_brand_dict_t`
--

DROP TABLE IF EXISTS `mooc_brand_dict_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_brand_dict_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `show_name` varchar(100) DEFAULT NULL COMMENT '显示名称',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='品牌信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_brand_dict_t`
--

LOCK TABLES `mooc_brand_dict_t` WRITE;
/*!40000 ALTER TABLE `mooc_brand_dict_t` DISABLE KEYS */;
INSERT INTO `mooc_brand_dict_t` VALUES (1,'大地影院'),(2,'万达影城'),(3,'耀莱成龙国际影城'),(4,'保利国际影城'),(5,'博纳国际影城'),(6,'金逸影城'),(7,'中影国际影城'),(8,'CGV影城'),(9,'橙天嘉禾影城'),(10,'新华国际影城'),(11,'星美国际影城'),(12,'百老汇影城'),(13,'UME国际影城'),(14,'幸福蓝海国际影城'),(15,'首都电影院'),(16,'华谊兄弟影院'),(17,'卢米埃影城'),(18,'沃美影城'),(19,'美嘉欢乐影城'),(20,'嘉华国际影城'),(21,'17.5影城'),(22,'太平洋电影城'),(23,'SFC上影影城'),(24,'嘉美国际影城'),(25,'东都影城'),(26,'鲁信影城'),(27,'华影国际影城'),(28,'搜秀影城'),(29,'横店电影城'),(99,'全部');
/*!40000 ALTER TABLE `mooc_brand_dict_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_cat_dict_t`
--

DROP TABLE IF EXISTS `mooc_cat_dict_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_cat_dict_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `show_name` varchar(100) DEFAULT NULL COMMENT '显示名称',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='类型信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_cat_dict_t`
--

LOCK TABLES `mooc_cat_dict_t` WRITE;
/*!40000 ALTER TABLE `mooc_cat_dict_t` DISABLE KEYS */;
INSERT INTO `mooc_cat_dict_t` VALUES (1,'爱情'),(2,'喜剧'),(3,'动画'),(4,'剧情'),(5,'恐怖'),(6,'惊悚'),(7,'科幻'),(8,'动作'),(9,'悬疑'),(10,'犯罪'),(11,'冒险'),(12,'战争'),(13,'奇幻'),(14,'运动'),(15,'家庭'),(16,'古装'),(17,'武侠'),(18,'西部'),(19,'历史'),(20,'传记'),(21,'歌舞'),(22,'短片'),(23,'纪录片'),(24,'黑色电影'),(99,'全部');
/*!40000 ALTER TABLE `mooc_cat_dict_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_cinema_t`
--

DROP TABLE IF EXISTS `mooc_cinema_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_cinema_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `cinema_name` varchar(50) DEFAULT NULL COMMENT '影院名称',
  `cinema_phone` varchar(50) DEFAULT NULL COMMENT '影院电话',
  `brand_id` int(11) DEFAULT NULL COMMENT '品牌编号',
  `area_id` int(11) DEFAULT NULL COMMENT '地域编号',
  `hall_ids` varchar(200) DEFAULT NULL COMMENT '包含的影厅类型,以#作为分割',
  `img_address` varchar(500) DEFAULT NULL COMMENT '影院图片地址',
  `cinema_address` varchar(200) DEFAULT NULL COMMENT '影院地址',
  `minimum_price` int(11) DEFAULT '0' COMMENT '最低票价',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='影院信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_cinema_t`
--

LOCK TABLES `mooc_cinema_t` WRITE;
/*!40000 ALTER TABLE `mooc_cinema_t` DISABLE KEYS */;
INSERT INTO `mooc_cinema_t` VALUES (1,'大地影院(顺义店)','18500003333',1,1,'#1#3#5#6#','/cinemas/30445282__5675168.jpg','北京市顺义区华联金街购物中心',60),(2,'大地影院(中关村店)','010-58391939',1,2,'#1#2#3#4#','/cinemas/30445282__5675168.jpg','北京市中关村海龙大厦',60),(3,'万达影院(大屯店)','010-58391939',2,3,'#5#6#7#8#','/cinemas/44374823__5777386.jpg','北京市朝阳区大屯路50号金街商场',60),(4,'万达影院(奥体中心店)','010-58391231',2,4,'#1#3#5#6#','/cinemas/44374823__5777386.jpg','北京市朝阳区奥林匹克公园新奥购物中心',60),(5,'万达影院(中南海店)','010-58398521',2,5,'#1#5#7#8#','/cinemas/44374823__5777386.jpg','北京市东城区中南海52号',60),(6,'万达影院(国贸店)','010-96385274',2,6,'#1#2#3#7#','/cinemas/5_0805163047.jpg','北京市朝阳区国贸CBD核心商场5012',60),(7,'慕课影院(大屯店)','010-98765432',3,7,'#1#5#8#9#','/cinemas/5_0805163047.jpg','北京市朝阳区大屯路50号金街商场',60);
/*!40000 ALTER TABLE `mooc_cinema_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_field_soldseats_t`
--

DROP TABLE IF EXISTS `mooc_field_soldseats_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_field_soldseats_t` (
  `UUID` varchar(100) NOT NULL COMMENT '主键编号',
  `cinema_id` int(11) DEFAULT NULL,
  `field_id` int(11) DEFAULT NULL,
  `seat_id` varchar(50) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  UNIQUE KEY `cfs` (`cinema_id`,`field_id`,`seat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='场次已售座位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_field_soldseats_t`
--

LOCK TABLES `mooc_field_soldseats_t` WRITE;
/*!40000 ALTER TABLE `mooc_field_soldseats_t` DISABLE KEYS */;
INSERT INTO `mooc_field_soldseats_t` VALUES ('15cce724b3e449c38d69c8147275a709',5,6,'3','2021-06-07 12:21:23'),('b1559e4096e54f789d2ee773bf45b67d',3,4,'4','2021-06-07 12:21:57'),('dc08333856524b528ed13c78846c692f',3,4,'5','2021-06-07 12:21:57'),('17aa6941cbc94f29b3efdb357617447a',5,6,'2','2021-06-07 12:39:02');
/*!40000 ALTER TABLE `mooc_field_soldseats_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_field_t`
--

DROP TABLE IF EXISTS `mooc_field_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_field_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `cinema_id` int(11) DEFAULT NULL COMMENT '影院编号',
  `film_id` int(11) DEFAULT NULL COMMENT '电影编号',
  `begin_time` varchar(50) DEFAULT NULL COMMENT '开始时间',
  `end_time` varchar(50) DEFAULT NULL COMMENT '结束时间',
  `hall_id` int(11) DEFAULT NULL COMMENT '放映厅类型编号',
  `hall_name` varchar(200) DEFAULT NULL COMMENT '放映厅名称',
  `price` int(11) DEFAULT NULL COMMENT '票价',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='放映场次表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_field_t`
--

LOCK TABLES `mooc_field_t` WRITE;
/*!40000 ALTER TABLE `mooc_field_t` DISABLE KEYS */;
INSERT INTO `mooc_field_t` VALUES (1,1,2,'09:50','11:20',1,'一号厅',60),(2,1,3,'11:50','13:20',2,'IMAX厅',60),(3,1,3,'13:50','15:20',3,'飞翔体验厅',60),(4,3,2,'11:50','13:20',3,'7号超大厅',60),(5,3,2,'11:50','13:20',4,'飞翔体验厅',60),(6,5,2,'11:50','13:20',5,'3号VIP厅',60),(7,6,2,'11:50','13:20',6,'5号4D厅',60);
/*!40000 ALTER TABLE `mooc_field_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_film_actor_t`
--

DROP TABLE IF EXISTS `mooc_film_actor_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_film_actor_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `film_id` int(11) DEFAULT NULL COMMENT '影片编号,对应mooc_film_t',
  `actor_id` int(11) DEFAULT NULL COMMENT '演员编号,对应mooc_actor_t',
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='影片与演员映射表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_film_actor_t`
--

LOCK TABLES `mooc_film_actor_t` WRITE;
/*!40000 ALTER TABLE `mooc_film_actor_t` DISABLE KEYS */;
INSERT INTO `mooc_film_actor_t` VALUES (1,2,1,'演员1'),(2,2,2,'演员2'),(3,2,3,'演员3'),(4,2,4,'演员4');
/*!40000 ALTER TABLE `mooc_film_actor_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_film_info_t`
--

DROP TABLE IF EXISTS `mooc_film_info_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_film_info_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `film_id` varchar(100) DEFAULT NULL COMMENT '影片编号',
  `film_en_name` varchar(50) DEFAULT NULL COMMENT '影片英文名称',
  `film_score` varchar(20) DEFAULT NULL COMMENT '影片评分',
  `film_score_num` int(11) DEFAULT NULL COMMENT '评分人数,以万为单位',
  `film_length` int(11) DEFAULT NULL COMMENT '播放时长，以分钟为单位，不足取整',
  `biography` text COMMENT '影片介绍',
  `director_id` int(11) DEFAULT NULL COMMENT '导演编号',
  `film_imgs` text COMMENT '影片图片集地址,多个图片以逗号分隔',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='影片主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_film_info_t`
--

LOCK TABLES `mooc_film_info_t` WRITE;
/*!40000 ALTER TABLE `mooc_film_info_t` DISABLE KEYS */;
INSERT INTO `mooc_film_info_t` VALUES (2,'2','Dying To Survive','9.7',225,117,'一位不速之客的意外到访，打破了神油店老板程勇（徐峥 饰）的平凡人生，他从一个交不起房租的男性保健品商贩，一跃成为印度仿制药“格列宁”的独家代理商。收获巨额利润的他，生活剧烈变化，被病患们冠以“药神”的称号。但是，一场关于救赎的拉锯战也在波涛暗涌中慢慢展开......',1,'films/3065271341357040f5f5dd988550951e586199.jpg,films/6b2b3fd6260ac37e5ad44d00ea474ea3651419.jpg,films/4633dd44c51ff15fc7e939679d7cdb67561602.jpg,films/df2d30b1a3bd58fb1d38b978662ae844648169.jpg,films/c845f6b04aa49059951fd55e6b0eddac454036.jpg');
/*!40000 ALTER TABLE `mooc_film_info_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_film_t`
--

DROP TABLE IF EXISTS `mooc_film_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_film_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `film_name` varchar(100) DEFAULT NULL COMMENT '影片名称',
  `film_type` int(11) DEFAULT NULL COMMENT '片源类型: 0-2D,1-3D,2-3DIMAX,4-无',
  `img_address` varchar(200) DEFAULT NULL COMMENT '影片主图地址',
  `film_score` varchar(20) DEFAULT NULL COMMENT '影片评分',
  `film_preSaleNum` int(11) DEFAULT NULL COMMENT '影片预售数量',
  `film_box_office` int(11) DEFAULT NULL COMMENT '影片票房：每日更新，以万为单位',
  `film_source` int(11) DEFAULT NULL COMMENT '影片片源，参照片源字典表',
  `film_cats` varchar(50) DEFAULT NULL COMMENT '影片分类，参照分类表,多个分类以#分割',
  `film_area` int(11) DEFAULT NULL COMMENT '影片区域，参照区域表',
  `film_date` int(11) DEFAULT NULL COMMENT '影片上映年代，参照年代表',
  `film_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '影片上映时间',
  `film_status` int(11) DEFAULT NULL COMMENT '影片状态,1-正在热映，2-即将上映，3-经典影片',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='影片主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_film_t`
--

LOCK TABLES `mooc_film_t` WRITE;
/*!40000 ALTER TABLE `mooc_film_t` DISABLE KEYS */;
INSERT INTO `mooc_film_t` VALUES (2,'我不是药神',0,'films/238e2dc36beae55a71cabfc14069fe78236351.jpg','9.7',231432491,309600,1,'#2#4#22#',1,13,'2018-07-04 16:00:00',1);
/*!40000 ALTER TABLE `mooc_film_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_hall_dict_t`
--

DROP TABLE IF EXISTS `mooc_hall_dict_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_hall_dict_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `show_name` varchar(100) DEFAULT NULL COMMENT '显示名称',
  `seat_address` varchar(200) DEFAULT NULL COMMENT '座位文件存放地址',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='地域信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_hall_dict_t`
--

LOCK TABLES `mooc_hall_dict_t` WRITE;
/*!40000 ALTER TABLE `mooc_hall_dict_t` DISABLE KEYS */;
INSERT INTO `mooc_hall_dict_t` VALUES (1,'IMAX厅','seats/123214.json'),(2,'CGS中国巨幕厅','seats/123214.json'),(3,'杜比全景声厅','seats/123214.json'),(4,'Dolby Cinema厅','seats/123214.json'),(5,'RealD厅','seats/123214.json'),(6,'RealD 6FL厅','seats/123214.json'),(7,'LUXE巨幕厅','seats/123214.json'),(8,'4DX厅','seats/123214.json'),(9,'DTS:X 临境音厅','seats/123214.json'),(10,'儿童厅','seats/123214.json'),(11,'4K厅','seats/123214.json'),(12,'4D厅','seats/123214.json'),(13,'巨幕厅','seats/123214.json'),(99,'全部',NULL);
/*!40000 ALTER TABLE `mooc_hall_dict_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_hall_film_info_t`
--

DROP TABLE IF EXISTS `mooc_hall_film_info_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_hall_film_info_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `film_id` int(11) DEFAULT NULL COMMENT '电影编号',
  `film_name` varchar(50) DEFAULT NULL COMMENT '电影名称',
  `film_length` varchar(50) DEFAULT NULL COMMENT '电影时长',
  `film_cats` varchar(200) DEFAULT NULL COMMENT '电影类型',
  `film_language` varchar(50) DEFAULT NULL COMMENT '电影语言',
  `actors` varchar(200) DEFAULT NULL COMMENT '演员列表',
  `img_address` varchar(500) DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='影厅电影信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_hall_film_info_t`
--

LOCK TABLES `mooc_hall_film_info_t` WRITE;
/*!40000 ALTER TABLE `mooc_hall_film_info_t` DISABLE KEYS */;
INSERT INTO `mooc_hall_film_info_t` VALUES (1,2,'我不是药神','117','喜剧,剧情','国语2D','程勇,曹斌,吕受益,刘思慧','films/238e2dc36beae55a71cabfc14069fe78236351.jpg'),(2,3,'爱情公寓','123','喜剧,动作,冒险','国语2D','曾小贤,胡一菲,唐悠悠,张伟','films/aiqinggongyu.jpg');
/*!40000 ALTER TABLE `mooc_hall_film_info_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_order_2017_t`
--

DROP TABLE IF EXISTS `mooc_order_2017_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_order_2017_t` (
  `UUID` varchar(100) DEFAULT NULL COMMENT '主键编号',
  `cinema_id` int(11) DEFAULT NULL COMMENT '影院编号',
  `field_id` int(11) DEFAULT NULL COMMENT '放映场次编号',
  `film_id` int(11) DEFAULT NULL COMMENT '电影编号',
  `seats_ids` varchar(50) DEFAULT NULL COMMENT '已售座位编号',
  `seats_name` varchar(200) DEFAULT NULL COMMENT '已售座位名称',
  `film_price` double DEFAULT NULL COMMENT '影片售价',
  `order_price` double DEFAULT NULL COMMENT '订单总金额',
  `order_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `order_user` int(11) DEFAULT NULL COMMENT '下单人',
  `order_status` int(11) DEFAULT '0' COMMENT '0-待支付,1-已支付,2-已关闭'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_order_2017_t`
--

LOCK TABLES `mooc_order_2017_t` WRITE;
/*!40000 ALTER TABLE `mooc_order_2017_t` DISABLE KEYS */;
INSERT INTO `mooc_order_2017_t` VALUES ('329123812gnfn31',1,1,2,'1,2,3,4','第一排1座,第一排2座,第一排3座,第一排4座',63.2,126.4,'2017-05-03 04:13:42',1,0);
/*!40000 ALTER TABLE `mooc_order_2017_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_order_2018_t`
--

DROP TABLE IF EXISTS `mooc_order_2018_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_order_2018_t` (
  `UUID` varchar(100) DEFAULT NULL COMMENT '主键编号',
  `cinema_id` int(11) DEFAULT NULL COMMENT '影院编号',
  `field_id` int(11) DEFAULT NULL COMMENT '放映场次编号',
  `film_id` int(11) DEFAULT NULL COMMENT '电影编号',
  `seats_ids` varchar(50) DEFAULT NULL COMMENT '已售座位编号',
  `seats_name` varchar(200) DEFAULT NULL COMMENT '已售座位名称',
  `film_price` double DEFAULT NULL COMMENT '影片售价',
  `order_price` double DEFAULT NULL COMMENT '订单总金额',
  `order_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `order_user` int(11) DEFAULT NULL COMMENT '下单人',
  `order_status` int(11) DEFAULT '0' COMMENT '0-待支付,1-已支付,2-已关闭'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_order_2018_t`
--

LOCK TABLES `mooc_order_2018_t` WRITE;
/*!40000 ALTER TABLE `mooc_order_2018_t` DISABLE KEYS */;
INSERT INTO `mooc_order_2018_t` VALUES ('124583135asdf81',1,1,2,'1,2,3,4','第一排1座,第一排2座,第一排3座,第一排4座',63.2,126.4,'2018-02-12 03:53:42',1,1),('287735711b6c4b95bf75259c8356d212',5,6,2,'7','单排座',60,60,'2021-05-31 08:04:39',2,1),('5de043e9cc8048019cad20448ddcd398',5,6,2,'4','单排座',60,60,'2021-05-31 14:07:50',2,1),('2188bc9eb1de446286261df09e527d17',5,6,2,'5','单排座',60,60,'2021-06-01 00:18:17',2,1),('03df2f9a39bd4ce1ab1ccca16cdef74b',5,6,2,'2','单排座',60,60,'2021-06-07 12:39:02',2,0);
/*!40000 ALTER TABLE `mooc_order_2018_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_order_t`
--

DROP TABLE IF EXISTS `mooc_order_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_order_t` (
  `UUID` varchar(100) DEFAULT NULL COMMENT '主键编号',
  `cinema_id` int(11) DEFAULT NULL COMMENT '影院编号',
  `field_id` int(11) DEFAULT NULL COMMENT '放映场次编号',
  `film_id` int(11) DEFAULT NULL COMMENT '电影编号',
  `seats_ids` varchar(50) DEFAULT NULL COMMENT '已售座位编号',
  `seats_name` varchar(200) DEFAULT NULL COMMENT '已售座位名称',
  `film_price` double DEFAULT NULL COMMENT '影片售价',
  `order_price` double DEFAULT NULL COMMENT '订单总金额',
  `order_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `order_user` int(11) DEFAULT NULL COMMENT '下单人',
  `order_status` int(11) DEFAULT '0' COMMENT '0-待支付,1-已支付,2-已关闭'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_order_t`
--

LOCK TABLES `mooc_order_t` WRITE;
/*!40000 ALTER TABLE `mooc_order_t` DISABLE KEYS */;
INSERT INTO `mooc_order_t` VALUES ('415sdf58ew12ds5fe1',1,1,2,'1,2,3,4','第一排1座,第一排2座,第一排3座,第一排4座',63.2,126.4,'2021-04-19 13:09:18',1,0);
/*!40000 ALTER TABLE `mooc_order_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_source_dict_t`
--

DROP TABLE IF EXISTS `mooc_source_dict_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_source_dict_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `show_name` varchar(100) DEFAULT NULL COMMENT '显示名称',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='区域信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_source_dict_t`
--

LOCK TABLES `mooc_source_dict_t` WRITE;
/*!40000 ALTER TABLE `mooc_source_dict_t` DISABLE KEYS */;
INSERT INTO `mooc_source_dict_t` VALUES (1,'大陆'),(2,'美国'),(3,'韩国'),(4,'日本'),(5,'中国香港'),(6,'中国台湾'),(7,'印度'),(8,'法国'),(9,'英国'),(10,'俄罗斯'),(11,'意大利'),(12,'西班牙'),(13,'德国'),(14,'波兰'),(15,'澳大利亚'),(16,'伊朗'),(99,'全部');
/*!40000 ALTER TABLE `mooc_source_dict_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_user_t`
--

DROP TABLE IF EXISTS `mooc_user_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_user_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户账号',
  `user_pwd` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `nick_name` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `user_sex` int(11) DEFAULT NULL COMMENT '用户性别 0-男，1-女',
  `birthday` varchar(50) DEFAULT NULL COMMENT '出生日期',
  `email` varchar(50) DEFAULT NULL COMMENT '用户邮箱',
  `user_phone` varchar(50) DEFAULT NULL COMMENT '用户手机号',
  `address` varchar(50) DEFAULT NULL COMMENT '用户住址',
  `head_url` varchar(50) DEFAULT NULL COMMENT '头像URL',
  `biography` varchar(200) DEFAULT NULL COMMENT '个人介绍',
  `life_state` int(11) DEFAULT NULL COMMENT '生活状态 0-单身，1-热恋中，2-已婚，3-为人父母',
  `begin_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_user_t`
--

LOCK TABLES `mooc_user_t` WRITE;
/*!40000 ALTER TABLE `mooc_user_t` DISABLE KEYS */;
INSERT INTO `mooc_user_t` VALUES (2,'admin','0192023a7bbd73250516f069df18b500','爱你一万年',1,'2005-12-12','admin@imooc.com','010-66666666','郭集','films/img/head-img.jpg','我是你爹',2,'2021-03-14 13:45:36','2021-03-18 07:53:27'),(3,'jiangzh','5e2de6bd1c9b50f6e27d4e55da43b917','阿里郎',0,'2018-08-20','jiangzh@mooc.com','13866666666','北京市朝阳区大望路万达广场','films/img/head-img.jpg','我喜欢隔壁泰山',1,'2021-03-14 13:45:36','2021-03-14 13:45:36'),(4,'mengyuan','c1350943283ad2f7f7909220e9377d9b',NULL,NULL,NULL,'mengyuan@mengyuan.com','010-88888888','少林寺',NULL,NULL,NULL,'2021-03-18 03:12:27','2021-03-18 03:12:27');
/*!40000 ALTER TABLE `mooc_user_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mooc_year_dict_t`
--

DROP TABLE IF EXISTS `mooc_year_dict_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mooc_year_dict_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `show_name` varchar(100) DEFAULT NULL COMMENT '显示名称',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='年代信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mooc_year_dict_t`
--

LOCK TABLES `mooc_year_dict_t` WRITE;
/*!40000 ALTER TABLE `mooc_year_dict_t` DISABLE KEYS */;
INSERT INTO `mooc_year_dict_t` VALUES (1,'更早'),(2,'70年代'),(3,'80年代'),(4,'90年代'),(5,'2000-2010'),(6,'2011'),(7,'2012'),(8,'2013'),(9,'2014'),(10,'2015'),(11,'2016'),(12,'2017'),(13,'2018'),(14,'2018以后'),(99,'全部');
/*!40000 ALTER TABLE `mooc_year_dict_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-08 18:14:13
