# Host: localhost  (Version: 5.5.53)
# Date: 2018-03-02 16:58:13
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "jtbc_aboutus"
#

DROP TABLE IF EXISTS `jtbc_aboutus`;
CREATE TABLE `jtbc_aboutus` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_topic` varchar(200) DEFAULT NULL COMMENT '{"autoRequestFormat":"notEmpty","fieldType":"text"}',
  `a_content` text COMMENT '{"fieldType":"editor"}',
  `a_att` text COMMENT '{"fieldType":"att","fieldRelatedEditor":"content","uploadStatusAutoUpdate":"true"}',
  `a_publish` int(11) DEFAULT '0' COMMENT '{"fieldType":"publish"}',
  `a_time` datetime DEFAULT NULL COMMENT '{"fieldType":"text","fieldHideMode":"0"}',
  `a_lang` int(11) DEFAULT '0',
  `a_delete` int(11) DEFAULT '0',
  PRIMARY KEY (`a_id`),
  KEY `a_delete` (`a_delete`,`a_lang`,`a_publish`) USING BTREE,
  KEY `a_time` (`a_time`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "jtbc_aboutus"
#

INSERT INTO `jtbc_aboutus` VALUES (1,'公司介绍',NULL,NULL,1,'2017-07-07 07:07:07',0,0);

#
# Structure for table "jtbc_career"
#

DROP TABLE IF EXISTS `jtbc_career`;
CREATE TABLE `jtbc_career` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_topic` varchar(200) DEFAULT NULL COMMENT '{"autoRequestFormat":"notEmpty","fieldType":"text"}',
  `c_intro` varchar(200) DEFAULT NULL COMMENT '{"autoRequestFormat":"notEmpty","fieldType":"textarea"}',
  `c_email` varchar(200) DEFAULT NULL COMMENT '{"autoRequestFormat":"email","fieldType":"text"}',
  `c_publish` int(11) DEFAULT '0' COMMENT '{"fieldType":"publish"}',
  `c_time` datetime DEFAULT NULL COMMENT '{"fieldType":"text","fieldHideMode":"0"}',
  `c_lang` int(11) DEFAULT '0',
  `c_delete` int(11) DEFAULT '0',
  PRIMARY KEY (`c_id`),
  KEY `c_delete` (`c_delete`,`c_lang`,`c_publish`) USING BTREE,
  KEY `c_time` (`c_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "jtbc_career"
#


#
# Structure for table "jtbc_case"
#

DROP TABLE IF EXISTS `jtbc_case`;
CREATE TABLE `jtbc_case` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_topic` varchar(200) DEFAULT NULL COMMENT '{"autoRequestFormat":"notEmpty","fieldType":"text"}',
  `c_image` varchar(200) DEFAULT NULL COMMENT '{"autoRequestFormat":"notEmpty","fieldType":"upfile","fieldHasTips":"auto","uploadStatusAutoUpdate":"true"}',
  `c_category` int(11) DEFAULT '0' COMMENT '{"autoRequestFormat":"notEmpty","fieldType":"category"}',
  `c_content` text COMMENT '{"fieldType":"editor"}',
  `c_att` text COMMENT '{"fieldType":"att","fieldRelatedEditor":"content","uploadStatusAutoUpdate":"true"}',
  `c_publish` int(11) DEFAULT '0' COMMENT '{"fieldType":"publish"}',
  `c_time` datetime DEFAULT NULL COMMENT '{"fieldType":"text","fieldHideMode":"0"}',
  `c_lang` int(11) DEFAULT '0',
  `c_delete` int(11) DEFAULT '0',
  PRIMARY KEY (`c_id`),
  KEY `c_delete` (`c_delete`,`c_lang`,`c_publish`) USING BTREE,
  KEY `c_time` (`c_time`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "jtbc_case"
#

INSERT INTO `jtbc_case` VALUES (1,'wer','{\"fileurl\":\"common/assets/upload/2018/0226/004406jo.jpg\",\"uploadid\":\"2\"}',1,'<p>asdf</p>\r\n','',1,'2018-02-26 00:44:10',0,0);

#
# Structure for table "jtbc_console_account"
#

DROP TABLE IF EXISTS `jtbc_console_account`;
CREATE TABLE `jtbc_console_account` (
  `ca_id` int(11) NOT NULL AUTO_INCREMENT,
  `ca_username` varchar(50) DEFAULT NULL COMMENT '{"autoRequestFormat":"notEmpty"}',
  `ca_password` varchar(50) DEFAULT NULL,
  `ca_email` varchar(50) DEFAULT NULL COMMENT '{"autoRequestFormat":"email"}',
  `ca_role` int(11) DEFAULT '0',
  `ca_lock` int(11) DEFAULT '0',
  `ca_lastip` varchar(50) DEFAULT NULL,
  `ca_lasttime` datetime DEFAULT NULL,
  `ca_time` datetime DEFAULT NULL,
  `ca_delete` int(11) DEFAULT '0',
  PRIMARY KEY (`ca_id`),
  KEY `ca_username` (`ca_username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "jtbc_console_account"
#

INSERT INTO `jtbc_console_account` VALUES (1,'kangzhengfei','7114078d4264ca107b041116c0a79f75','aa@aa.com',-1,0,'::1','2018-03-02 00:33:30','2018-02-26 00:32:29',0);

#
# Structure for table "jtbc_console_account_login"
#

DROP TABLE IF EXISTS `jtbc_console_account_login`;
CREATE TABLE `jtbc_console_account_login` (
  `cal_id` int(11) NOT NULL AUTO_INCREMENT,
  `cal_account_id` int(11) DEFAULT '0',
  `cal_date` int(11) DEFAULT '0',
  `cal_status` int(11) DEFAULT '0',
  PRIMARY KEY (`cal_id`),
  KEY `cal_account_id` (`cal_account_id`,`cal_date`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "jtbc_console_account_login"
#

INSERT INTO `jtbc_console_account_login` VALUES (1,1,20180226,1),(2,1,20180228,0),(3,1,20180228,1),(4,1,20180301,1),(5,1,20180301,1),(6,1,20180302,1);

#
# Structure for table "jtbc_console_log"
#

DROP TABLE IF EXISTS `jtbc_console_log`;
CREATE TABLE `jtbc_console_log` (
  `cl_id` int(11) NOT NULL AUTO_INCREMENT,
  `cl_genre` varchar(200) DEFAULT NULL,
  `cl_content` varchar(200) DEFAULT NULL,
  `cl_userip` varchar(200) DEFAULT NULL,
  `cl_account_id` int(200) DEFAULT '0',
  `cl_delete` int(11) DEFAULT '0',
  `cl_time` datetime DEFAULT NULL,
  PRIMARY KEY (`cl_id`),
  KEY `cl_account_id` (`cl_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

#
# Data for table "jtbc_console_log"
#

INSERT INTO `jtbc_console_log` VALUES (1,'console','登录成功','::1',1,0,'2018-02-26 00:32:42'),(2,'case','上传文件[common/assets/upload/2018/0226/004336bp.jpg]成功','::1',1,0,'2018-02-26 00:43:36'),(3,'universal/category','添加分类[1]成功','::1',1,0,'2018-02-26 00:43:51'),(4,'case','上传文件[common/assets/upload/2018/0226/004406jo.jpg]成功','::1',1,0,'2018-02-26 00:44:06'),(5,'case','添加案例[1]成功','::1',1,0,'2018-02-26 00:44:11'),(6,'console','登录成功','::1',1,0,'2018-02-28 23:28:51'),(7,'console/file','编辑文件[common/language/index.jtbc]成功','::1',1,0,'2018-02-28 23:32:26'),(8,'console','登录成功','::1',1,0,'2018-03-01 22:34:02'),(9,'console/xml','添加节点[.tpl.public/chinstyleheader]成功','::1',1,0,'2018-03-01 22:34:54'),(10,'console/xml','编辑节点[.tpl.public/chinstyleheader]成功','::1',1,0,'2018-03-01 22:35:26'),(11,'console/xml','编辑节点[.tpl.index/default]成功','::1',1,0,'2018-03-01 22:35:54'),(12,'console/xml','编辑节点[.tpl.public/chinstyleheader]成功','::1',1,0,'2018-03-01 22:50:43'),(13,'console/xml','编辑节点[.tpl.public/chinstyleheader]成功','::1',1,0,'2018-03-01 22:58:27'),(14,'console/xml','编辑节点[.tpl.public/chinstyleheader]成功','::1',1,0,'2018-03-01 23:02:34'),(15,'console/xml','编辑节点[.tpl.public/chinstyleheader]成功','::1',1,0,'2018-03-01 23:03:58'),(16,'console/xml','编辑节点[.tpl.public/chinstyleheader]成功','::1',1,0,'2018-03-01 23:04:31'),(17,'console/xml','添加节点[.tpl.public/chinastyle_footer]成功','::1',1,0,'2018-03-01 23:05:09'),(18,'console/xml','编辑节点[.tpl.public/chinastyle_footer]成功','::1',1,0,'2018-03-01 23:07:52'),(19,'console/xml','编辑节点[.tpl.index/default]成功','::1',1,0,'2018-03-01 23:08:27'),(20,'console/xml','编辑节点[.tpl.index/default]成功','::1',1,0,'2018-03-01 23:08:46'),(21,'console/xml','编辑节点[.tpl.public/chinstyleheader]成功','::1',1,0,'2018-03-01 23:10:34'),(22,'console/xml','添加节点[.tpl.index/china_index]成功','::1',1,0,'2018-03-01 23:12:08'),(23,'console/xml','编辑节点[.tpl.index/china_index]成功','::1',1,0,'2018-03-01 23:12:20'),(24,'console/xml','添加节点[.tpl.public/chinastyle_banner]成功','::1',1,0,'2018-03-01 23:22:30'),(25,'console/xml','编辑节点[.tpl.public/chinastyle_banner]成功','::1',1,0,'2018-03-01 23:22:40'),(26,'console/xml','添加节点[.tpl.index/china_style_index]成功','::1',1,0,'2018-03-01 23:23:08'),(27,'console/xml','编辑节点[.tpl.index/china_style_index]成功','::1',1,0,'2018-03-01 23:23:12'),(28,'console/xml','删除节点[.tpl.index/china_index]成功','::1',1,0,'2018-03-01 23:23:21'),(29,'console/xml','编辑节点[.tpl.index/china_style_index]成功','::1',1,0,'2018-03-01 23:23:40'),(30,'console/xml','添加节点[.tpl.index/chinastyle_index]成功','::1',1,0,'2018-03-01 23:24:05'),(31,'console/xml','编辑节点[.tpl.index/chinastyle_index]成功','::1',1,0,'2018-03-01 23:24:09'),(32,'console/xml','删除节点[.tpl.index/china_style_index]成功','::1',1,0,'2018-03-01 23:24:20'),(33,'console/xml','编辑节点[.tpl.index/chinastyle_index]成功','::1',1,0,'2018-03-01 23:24:36'),(34,'console/xml','编辑节点[.tpl.index/default]成功','::1',1,0,'2018-03-01 23:25:14'),(35,'console/xml','添加节点[.tpl.public/chinastyle_header]成功','::1',1,0,'2018-03-01 23:25:52'),(36,'console/xml','编辑节点[.tpl.public/chinastyle_header]成功','::1',1,0,'2018-03-01 23:25:56'),(37,'console/xml','删除节点[.tpl.public/chinstyleheader]成功','::1',1,0,'2018-03-01 23:26:06'),(38,'console/xml','编辑节点[.tpl.index/default]成功','::1',1,0,'2018-03-01 23:26:14'),(39,'console/cache','清空所有缓存成功','::1',1,0,'2018-03-01 23:26:25'),(40,'console/xml','编辑节点[.tpl.index/default]成功','::1',1,0,'2018-03-01 23:26:49'),(41,'console/xml','编辑节点[.tpl.index/default]成功','::1',1,0,'2018-03-01 23:27:25'),(42,'console/xml','编辑节点[.tpl.index/default]成功','::1',1,0,'2018-03-01 23:30:03'),(43,'console/xml','编辑节点[.tpl.public/chinastyle_footer]成功','::1',1,0,'2018-03-01 23:34:29'),(44,'console/xml','编辑节点[.tpl.public/chinastyle_header]成功','::1',1,0,'2018-03-01 23:35:16'),(45,'console/cache','清空所有缓存成功','::1',1,0,'2018-03-01 23:37:27'),(46,'console','登录成功','::1',1,0,'2018-03-01 23:51:41'),(47,'console/xml','编辑节点[.tpl.index/default]成功','::1',1,0,'2018-03-02 00:01:31'),(48,'console/xml','编辑节点[.tpl.index/default]成功','::1',1,0,'2018-03-02 00:19:47'),(49,'universal/category','编辑分类[1]成功','::1',1,0,'2018-03-02 00:30:44'),(50,'console','登录成功','::1',1,0,'2018-03-02 00:33:30'),(51,'universal/category','添加分类[2]成功','::1',1,0,'2018-03-02 00:36:12'),(52,'console/cache','清空所有缓存成功','::1',1,0,'2018-03-02 00:48:49'),(53,'dongtaibobao','添加动态[1]成功','::1',1,0,'2018-03-02 00:52:56'),(54,'dongtaibobao','添加动态[2]成功','::1',1,0,'2018-03-02 00:53:06'),(55,'dongtaibobao','添加动态[3]成功','::1',1,0,'2018-03-02 00:53:15'),(56,'dongtaibobao','添加动态[4]成功','::1',1,0,'2018-03-02 00:53:25'),(57,'dongtaibobao','添加动态[5]成功','::1',1,0,'2018-03-02 00:53:39'),(58,'console/xml','编辑节点[.tpl.index/default]成功','::1',1,0,'2018-03-02 00:56:36'),(59,'console/xml','编辑节点[.tpl.index/default]成功','::1',1,0,'2018-03-02 00:57:02'),(60,'console/xml','编辑节点[.tpl.index/default]成功','::1',1,0,'2018-03-02 00:57:30'),(61,'dongtaibobao','编辑动态[1]成功','::1',1,0,'2018-03-02 01:01:10'),(62,'dongtaibobao','编辑动态[2]成功','::1',1,0,'2018-03-02 01:01:56'),(63,'console/xml','编辑节点[.tpl.index/default]成功','::1',1,0,'2018-03-02 01:03:48'),(64,'console/xml','编辑节点[.tpl.index/default]成功','::1',1,0,'2018-03-02 01:05:47'),(65,'dongtaibobao','编辑动态[3]成功','::1',1,0,'2018-03-02 01:06:31'),(66,'dongtaibobao','编辑动态[4]成功','::1',1,0,'2018-03-02 01:07:15'),(67,'dongtaibobao','编辑动态[5]成功','::1',1,0,'2018-03-02 01:07:42');

#
# Structure for table "jtbc_console_role"
#

DROP TABLE IF EXISTS `jtbc_console_role`;
CREATE TABLE `jtbc_console_role` (
  `cr_id` int(11) NOT NULL AUTO_INCREMENT,
  `cr_topic` varchar(200) DEFAULT NULL COMMENT '{"autoRequestFormat":"notEmpty"}',
  `cr_popedom` varchar(10000) DEFAULT NULL,
  `cr_lang` varchar(200) DEFAULT NULL,
  `cr_delete` int(11) DEFAULT '0',
  `cr_time` datetime DEFAULT NULL,
  PRIMARY KEY (`cr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "jtbc_console_role"
#


#
# Structure for table "jtbc_consult"
#

DROP TABLE IF EXISTS `jtbc_consult`;
CREATE TABLE `jtbc_consult` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(200) DEFAULT NULL COMMENT '{"autoRequestFormat":"notEmpty","fieldType":"text"}',
  `c_mobile` varchar(200) DEFAULT NULL COMMENT '{"fieldType":"text"}',
  `c_email` varchar(200) DEFAULT NULL COMMENT '{"fieldType":"text"}',
  `c_content` varchar(1000) DEFAULT NULL COMMENT '{"fieldType":"textarea"}',
  `c_userip` varchar(200) DEFAULT NULL,
  `c_dispose` int(11) DEFAULT '0' COMMENT '{"fieldType":"dispose"}',
  `c_time` datetime DEFAULT NULL COMMENT '{"fieldType":"text","fieldHideMode":"0"}',
  `c_lang` int(11) DEFAULT '0',
  `c_delete` int(11) DEFAULT '0',
  PRIMARY KEY (`c_id`),
  KEY `c_delete` (`c_delete`,`c_lang`,`c_dispose`) USING BTREE,
  KEY `c_time` (`c_time`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "jtbc_consult"
#

INSERT INTO `jtbc_consult` VALUES (1,'234','18610315389','ws@aa.com','234234','::1',0,'2018-03-01 00:08:34',0,0);

#
# Structure for table "jtbc_hotact"
#

DROP TABLE IF EXISTS `jtbc_hotact`;
CREATE TABLE `jtbc_hotact` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `n_topic` varchar(200) DEFAULT NULL COMMENT '{"autoRequestFormat":"notEmpty","fieldType":"text"}',
  `n_content` text COMMENT '{"fieldType":"editor"}',
  `n_att` text COMMENT '{"fieldType":"att","fieldRelatedEditor":"content","uploadStatusAutoUpdate":"true"}',
  `n_publish` int(11) DEFAULT '0' COMMENT '{"fieldType":"publish"}',
  `n_time` datetime DEFAULT NULL COMMENT '{"fieldType":"text","fieldHideMode":"0"}',
  `n_lang` int(11) DEFAULT '0',
  `n_delete` int(11) DEFAULT '0',
  PRIMARY KEY (`n_id`),
  KEY `n_delete` (`n_delete`,`n_lang`,`n_publish`) USING BTREE,
  KEY `n_time` (`n_time`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "jtbc_hotact"
#

INSERT INTO `jtbc_hotact` VALUES (1,'中国出版集团公司与淮安市人民政府签署战略合作协议','<p>7月14日，中国出版集团公司与淮安市人民政府在淮安市政府会议中心签署了战略合作协议。双方就共同传播中华传统诗词，共同实施&ldquo;中华优秀传统文化新媒体工程&rdquo;、&ldquo;中华优秀传统文化国民素养提高工程&rdquo;，共同打造国学书店，共同举办&ldquo;纪念周恩来诞辰120周年全球华语诗词大赛&rdquo;，共同打造文化教育类图书出版发行基地等事宜达成合作。</p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;淮安市代市长蔡丽新出席并致辞，中国出版集团副总裁潘凯雄与淮安市副市长王红红分别代表合作双方签署了协议。中国出版传媒股份有限公司出版部主任刘祚臣、科技与数字出版部主任赖雪梅、中版文化传播总经理包岩、副总经理沈昊，以及淮安市委宣传部、市发改委、财政局、教育局、统计局、里运河办、西游记集团等部门负责人出席了仪式。淮安市文广新局局长、党委书记张冲林主持了签约仪式。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"http://www.chinstyle.com/zbwh/132821/143050/%E7%AD%BE%E7%BA%A6%E7%8E%B0%E5%9C%BA.jpg\" /></p>\r\n\r\n<p>签约现场</p>\r\n\r\n<p><img src=\"http://www.chinstyle.com/zbwh/132821/143050/%E6%BD%98%E5%87%AF%E9%9B%84%E5%89%AF%E6%80%BB%E8%A3%81%E8%AE%B2%E8%AF%9D.jpg\" /></p>\r\n\r\n<p>潘凯雄副总裁讲话</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"http://www.chinstyle.com/zbwh/132821/143050/%E8%94%A1%E4%B8%BD%E6%96%B0%E4%BB%A3%E5%B8%82%E9%95%BF%E8%AE%B2%E8%AF%9D.jpg\" /></p>\r\n\r\n<p>蔡丽新代市长讲话</p>\r\n\r\n<p><br />\r\n<strong>&ldquo;诗词中国&rdquo;入驻淮安，&ldquo;诗词中国博物馆&rdquo;正在筹备</strong></p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;此次合作，中国出版集团旗下最知名的传统文化普及推广品牌&ldquo;诗词中国&rdquo;将入驻淮安，设立&ldquo;诗词中国博物馆&rdquo;，面向淮安市中小学生和广大市民全方位推广中国传统诗词。据悉，诗词中国博物馆将设置&ldquo;诗词中国青少年互动体验中心&rdquo;、&ldquo;诗词中国Chinstyle文创产品工作坊&rdquo;、&ldquo;诗词中国创作基地&rdquo;等互动场地。在14日的活动上，淮安市文化广电新闻出版局局长、党委书记张冲林与中版文化传播总经理包岩共同为&ldquo;诗词中国博物馆筹备处&rdquo;揭牌。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"http://www.chinstyle.com/zbwh/resource/cms/2017/07/%E5%8D%9A%E7%89%A9%E9%A6%86%E6%8F%AD%E7%89%8C2(1).jpg\" /></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>纪念周恩来系列活动启动，为中华之崛起而读书</strong></p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为中华之崛起而读书&mdash;&mdash;揭幕仪式上，随着人民网总编辑余清楚先生题写的这幅书法作品被徐徐展开，由双方携手打造的&ldquo;为中华之崛起而读书&rdquo;全球华语诗词大赛正式启动。</p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;淮安是伟人周恩来的故乡，也是一座具有深厚文化底蕴和丰富文化资源的城市。此次合作，中国出版集团公司携手人民网及淮安市政府，围绕&ldquo;纪念周恩来诞辰120周年&rdquo;这一主题，开展了一系列的文化活动。其中，全球华语诗词大赛将由一手打造了全国最大规模线上诗词大赛的中国出版集团&ldquo;诗词中国&rdquo;团队操刀负责，有望继&ldquo;诗词中国&rdquo;之后，再现一个&ldquo;高规格、大规模、全媒体&rdquo;的诗词盛会。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"http://www.chinstyle.com/zbwh/132821/143050/%E5%A4%A7%E8%B5%9B%E4%B8%BB%E9%A2%98%E5%8F%91%E5%B8%83.jpg\" /></p>\r\n\r\n<p>人民网总编辑余清楚（左三）、中国出版传媒股份有限公司科技与数字出版部主任赖雪梅（右三）、</p>\r\n\r\n<p>中版文化传播副总经理沈昊（右二）等与淮安市相关部门负责人共同发布大赛主题</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>国学直播+知识竞赛，两大&ldquo;工程&rdquo;打造国学大赛</strong></p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp; 随着《中国诗词大会》、《诗书中华》等节目的播出，社会上掀起了一股中华优秀传统文化的复兴热潮，国学教育也成为了人们普遍关注的话题。<br />\r\n&nbsp;&nbsp;&nbsp; 此次中国出版集团公司与淮安市政府的合作中明确提出，双方将围绕国学普及与传播，共同实施&ldquo;中华优秀传统文化新媒体工程&rdquo;和&ldquo;中华优秀传统文化国民素养提高工程&rdquo;。这两项工程包含了在淮安市小学、初高中范围内实现中国优秀传统文化课的直播互动教学，以及以新媒体方式分享一线城市、一流大学、示范中学、一流教师的优秀国学教学资源，并组织中小学生参加由中国出版集团公司举办的&ldquo;国学考级&rdquo;及&ldquo;中华之星&rdquo;传统文化常识知识培训及学科竞赛等。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"http://www.chinstyle.com/zbwh/resource/cms/2017/07/%E4%B8%AD%E5%BF%83%E6%8F%AD%E7%89%8C2(1).jpg\" /></p>\r\n\r\n<p>中国出版传媒股份有限公司出版部主任刘祚臣（右）与唐晓军先生为&ldquo;中版集团文教图书印制发行中心&rdquo;揭牌</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; 此外，该战略合作协议中还包括在淮安共同建设&ldquo;最美国学书店&rdquo;、促进国学阅读推广，建立&ldquo;24小时国学图书自助驿站&rdquo;，建立教材教辅出版发行基地，建立数字出版基地等事宜。&ldquo;中国出版集团是出版业的&ldquo;国家队&rdquo;，集聚了中国出版业一批最具品牌影响力、文化积累非常厚重的出版单位。淮安是历史文化名城，也是&lsquo;诗词之乡&rsquo;，人杰地灵。此次，双方携手打造城市文化战略，相信一定能有光明的前景，同时预祝合作圆满成功。&rdquo;</p>\r\n','',1,'2018-03-02 00:52:56',0,0),(2,'【视频】“诗意中国”中秋原创诗会','<p><strong>第三届&ldquo;诗词中国&rdquo;投稿突破22万<br />\r\n联手世纪坛举办&ldquo;诗意中国&rdquo;原创诗会</strong></p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 由中华书局发起，联合中国出版集团、中央电视台、光明日报、中华诗词研究院、中华诗词学会、人民网、中国移动共同举办的第三届&ldquo;诗词中国&rdquo;传统诗词创作大赛，已于2016年11月30日结束征稿。组委会日前发布消息，大赛自开赛至今，征集到的原创诗词作品已突破22万首，超过前两届之和。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&ldquo;第三届诗词中国在延续了充分运用新媒体工具的同时，增加了对落地活动的建设，让&lsquo;诗词中国&rsquo;的品牌更加亲民，这也是投稿量大幅增长的一个重要原因。&rdquo;组委会工作人员表示。2016年6月18日，第三届&ldquo;诗词中国&rdquo;大赛暨影响力诗人评选活动在人民日报新媒体大楼一号演播厅举办；9月14日，大赛组委会与中华世纪坛联手举办的&ldquo;诗意中国&rdquo;中秋原创诗会在世纪坛南广场精彩上演，来自全国各地的诗人代表，首都军人、学生、聋哑儿童、诗词爱好者、企业代表和美好家庭代表，中华世纪坛会员及合作教育机构代表等共700余人欢聚一堂，共迎中秋佳节。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 诗会以&ldquo;月亮&rdquo;为线索，分为把酒共赏月、望月怀故乡、邀月共团圆、天涯共婵娟四个篇章，分别从赏月、怀乡、团圆、寄情四个层次传递中秋意蕴。以诗歌为核心，采用朗诵、演唱、舞蹈、演奏、情景表演、杂技等多种表演形式多维度呈现。著名演播艺术家雅坤，著名老艺术家谢芳、张目，央视节目主持人朱迅，京剧表演艺术家储兰兰，青年演员蒋小涵、孙茜等作为表演嘉宾助阵诗会。作为第三届&ldquo;诗词中国&rdquo;的全程合作伙伴，碧桂园&bull;森林城市也对本次诗会给予了大力支持。</p>\r\n','',1,'2018-03-02 00:53:06',0,0),(3,'“诗词中国”传统诗词大赛鸣锣','<p>本报讯（实习生 于芳溪）第三届&ldquo;诗词中国&rdquo;传统诗词创作大赛日前在京启动，&ldquo;互联网+诗词&rdquo;成为本届大赛的鲜明特色。</p>\r\n\r\n<p>　　本届大赛将通过全媒体进行传播，在延续前两届活动的基础上成立了诗词中国云科技联盟，新增咪咕诗词咖秀大赛，将时下流行的原创音视频及动漫元素与传统诗词相融合。启动仪式现场发布了&ldquo;诗词中国&rdquo;公众影响力诗人、网络影响力诗人、新诗影响力诗人和卓越影响力诗人，刘征、欧阳鹤、蔡厚示等文化名家，以及余秀华、伊沙等当代优秀诗人在现场接受了这份荣誉。最后，组委会设计了&ldquo;诗词中国&rdquo;主题研讨会环节，嘉宾就&ldquo;中国传统诗词在新媒体环境下的发展与传播&rdquo;&ldquo;一脉骚香传域外&mdash;&mdash;中日名家谈海外汉诗&rdquo;&ldquo;中国传统诗词文化继承与发扬&rdquo;三个主题展开讨论。</p>\r\n\r\n<p>　　第三届&ldquo;诗词中国&rdquo;传统诗词创作大赛自2016年6月18日开始征稿，用户可通过官网、微信等多种渠道上传作品进行投稿。作品分绝句、律诗、词、古风四个组别，经过初审、复审、终审三个环节，评选出四个组别的月度及年度创作奖。</p>\r\n','',1,'2018-03-02 00:53:15',0,0),(4,'第三届“诗词中国”7月月度创作奖揭晓，7月复活机制启动~','<p>第三届&ldquo;诗词中国&rdquo;传统诗词创作大赛7月月度创作奖名单经过三天的公示，现正式揭晓，欢迎围观~</p>\r\n\r\n<p>&nbsp;2016年6月18日至7月31日的投稿作品，经过两轮筛选，绝句、律诗、词、古风4个组别共评出月度创作奖拟获奖作品59首。其中：</p>\r\n\r\n<p>&nbsp;绝句29首，律诗12首，词12首，古风6首。同等奖作品排名不分先后。</p>\r\n\r\n<p>详细名单如下：</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t<p>第三届&ldquo;诗词中国&rdquo;传统诗词创作大赛&nbsp;&nbsp; 7月份月度创作奖名单&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td colspan=\"1\">&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t<p>绝句组&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t<p>一等奖4名，二等奖10名，三等奖15名。总计29名。</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>作品ID&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>标题&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>手机号码&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>奖项&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>101295</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>喜雨</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>158****3578</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>一等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>112783</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>咏芭蕉</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>189****4514</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>一等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>166105</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>大暑</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>138****6005</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>一等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>166062</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>雨旅途记</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>185****2957</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>一等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>132589</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>七七感怀</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>188****2171</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>154842</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>题帝喾祠</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>182****5872</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>166506</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>高铁过淮河平原</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>137****2510</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>113902</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二月兰</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>139****2705</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>117375</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>小楼听雨</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>136****6089</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>117515</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>惹巴拉</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>135****2031</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>119147</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>客舍闻笛</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>152****6466</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>167173</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>无题</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>158****2627</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>166797</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>晚霞中的山背梯田</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>177****4999</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>117419</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>咏藕</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>134****8702</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>118958</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>钓月</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>152****9561</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>117506</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>日暮</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>135****7962</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>117524</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>客江南</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>150****0097</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>117607</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>归舟</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>136****2335</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>133466</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>盛夏木棉树</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>134****2101</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>163043</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>农家乐</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>135****4408</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>165966</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>题图(新韵)</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>138****5504</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>166021</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>七绝 &nbsp; &nbsp;乡村六月</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>138****6226</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>166171</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>观桃花有寄</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>158****6920</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>171547</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>八一散步感怀</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>139****2880</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>111895</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>七绝&nbsp; 思梦叠字复字诗</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>136****4688</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>121393</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>柳絮</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>182****3835</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>132676</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>故园</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>130****5616</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>163109</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>七绝&nbsp; 谒高邮镇国寺</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>158****1146</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>166005</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>月夜听琴</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>139****6739</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t<p>第三届&ldquo;诗词中国&rdquo;传统诗词创作大赛&nbsp;&nbsp;&nbsp; 7月份月度创作奖名单&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t<p>律诗组&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t<p>一等奖2名，二等奖4名，三等奖6名。总计12名。</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>作品ID&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>标题&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>手机号码&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>等级&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>116015</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>筑路郎</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>130****2232</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>一等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>120940</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>踏春</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>152****9561</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>一等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>110608</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>芒种日所见</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>133****1116</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>110622</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>沧桑</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>130****9699</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>115873</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>谒杨虎城将军故居</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>138****1176</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>134678</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>游呼伦贝尔大草原</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>150****1921</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>111042</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>七律.远眺江陵城楼怀古（押尤韵）</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>137****3888</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>115893</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>遣怀</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>136****9367</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>126995</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>七律&nbsp; 品茶</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>137****5798</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>132999</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>元旦有感</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>139****8961</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>130316</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>夏夜</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>180****6580</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>129574</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>闲居　秋日感怀</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>139****9460</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t<p>第三届&ldquo;诗词中国&rdquo;传统诗词创作大赛&nbsp;&nbsp;&nbsp; 7月份月度创作奖名单&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t<p>词组&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"4\">\r\n\t\t\t<p>一等奖2名，二等奖4名，三等奖6名。总计12名。</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>作品ID&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>标题&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>手机号码&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>等级&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>139805</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>水调歌头　谒稼轩祠</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>134****9966</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>一等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>166733</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>鹧鸪天&nbsp; 桂</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>152****4598</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>一等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>122815</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>破阵子&nbsp; 南海风云</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>130****6398</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>139705</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>生查子　月与我</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>182****3949</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>117591</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>浪淘沙　雨霁他乡</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>136****2335</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>154873</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>清平乐&nbsp; 村晚</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>151****5638</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>139815</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>鹧鸪天　黑芝麻</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>136****9936</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>139173</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>醉花阴</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>158****3578</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>140624</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>鹧鸪天 - 咏荷</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>135****7552</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>151602</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>鹧鸪天&nbsp; 兄妹情</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>136****5836</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>151801</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>沁园春&nbsp; 大足石刻</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>152****9561</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>117494</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>鹧鸪天</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>177****0370</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t<p>第三届&ldquo;诗词中国&rdquo;传统诗词创作大赛&nbsp;&nbsp;&nbsp; 7月份月度创作奖名单&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t<p>古风组&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td colspan=\"5\">\r\n\t\t\t<p>一等奖1名，二等奖2名，三等奖3名。总计6名。</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>作品ID&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>标题&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>手机号码 &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>等级&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>169377</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>环卫工</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>139****0812</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>一等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>138638</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>黄鹤楼怀古</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>139****0103</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>108356</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>七古&nbsp; 再上白云山</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>136****4688</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>二等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>120003</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>乙未年腊月十五送好友</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>183****5865</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>121841</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>别家</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>151****1868</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p>125600</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>望松花江（古风）</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>136****7717</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>三等奖</p>\r\n\t\t\t</td>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>【说明】&nbsp;<br />\r\n&nbsp;月度创作奖的评选主要以作品的格律与文学性为综合考量因素。其中，格律涉及用韵、平仄、对仗等，获奖作品在格律上力求标准。用韵方面平水韵、新声韵皆可，同一首作品中只能用一种。&nbsp;</p>\r\n','',1,'2018-03-02 00:53:25',0,0),(5,'诗心已共春花发：以文化自信重建“诗的国度”','<p>　<strong>摘要：</strong>2016年的春天，&ldquo;诗词中国&rdquo;微信平台上的&ldquo;我有一壶酒&rdquo;文化现象，孕育着令人激动的梦想。诗歌曾经是中国文学的主流，中国亦被称为&ldquo;诗的国度&rdquo;。但是，已经一段时期，我国绝大部分民众的日常生活与诗歌之间并没有什么联系。今天，我们应当树立的是面向未来的目标，那就是，在中国经济令世界瞩目的大背景下，亦唤起所有国人的文化自信&mdash;&mdash;我们完全可以重建一个诗的国度。</p>\r\n\r\n<p>　　------------------------------------------</p>\r\n\r\n<p>　　&ldquo;文章合为时而著，歌诗合为事而作。&rdquo;进入三四月份，中国大江南北的春花次第开放，万千美图早已刷遍了微信朋友圈。令人惊喜的是，伴随春花怒放的，还有全国人民喷薄而出的诗心。今年的春天，花开了，诗来了，久违的&ldquo;春兴勃发、诗情并茂&rdquo;的繁荣景象终又重现。</p>\r\n\r\n<p><strong>　　镜象：诗词创作的&ldquo;集体自觉&rdquo;</strong></p>\r\n\r\n<p>　　诗性勃发的一个重要例证是今年春天出现的&ldquo;我有一壶酒&rdquo;全民续诗高潮。</p>\r\n\r\n<p>　　今年2月，有网友在微博改编唐人韦应物的一句诗，发出&ldquo;我有一壶酒，足以慰风尘&rdquo;征集下文的呼吁。&ldquo;诗词中国&rdquo;微信公众号立刻组织诗友在手机端参与续诗，众多公号转发互动，结果一周时间，阅读量即达到300万次，续诗达到3万余条。这绝对是一个令人吃惊的数字。我们知道，在当下的中国，诗词爱好者群体原本被认为纯属少数，没想到大众一旦被唤醒，稍加引导，就瞬间创造了一场波澜壮阔的花期春潮。全民写诗场面令人始料不及，有人高呼：&ldquo;国人诗性未死！&rdquo;这呼声，是人们重新发现自我的由衷喜悦。</p>\r\n\r\n<p>　　在众多网友续写的作品中，一署名&ldquo;夜帝王NW&rdquo;的诗友写道：&ldquo;我有一壶酒，足以慰风尘。尽倾江海里，赠饮天下人。&rdquo;因其大气、豪气和充满正能量的高尚情怀而受到了广泛赞誉。也有各行各业各个年龄段的民众续写的大量打油诗，那种热爱生活的意气风发，自由风趣，亦令人莞尔。</p>\r\n\r\n<p>　　不但大众个体参与诗词创作意识强烈，各路媒体也在最近三年开始自觉发起诗词交流活动。作为传统出版单位的中华书局自2012年开始发起&ldquo;诗词中国&rdquo;，利用新媒体传播迅速的特点举办传统诗词大赛及全民性诗词活动，覆盖人群过亿，参与人次达5000万之众，征集优秀诗作15万首。</p>\r\n\r\n<p>　　不断涌现的自媒体更是助推的好手。&ldquo;诗词中国&rdquo;手机客户端下载量达到1600万次，民间众创的诗词类自媒体如&ldquo;为你读诗&rdquo;、&ldquo;长安诗社&rdquo;、&ldquo;诗词世界&rdquo;、&ldquo;诗词云&rdquo;等都团结了一大批诗歌爱好者，起到了重要的推动作用。</p>\r\n\r\n<p>　　由民间人士创办的&ldquo;中华诗词论坛&rdquo;，如今注册诗友20万人，每天的新贴量就达到3万条左右。诗友们不知疲倦地在这个精神家园里谈诗作赋，往来切磋。</p>\r\n\r\n<p>　　2016年清明节过后，中央电视台经过一年的策划筹备，在中央一套推出了&ldquo;中国诗词大会&rdquo;，该节目播出后犹如一声春雷，在表现平淡的收视市场上一直遥遥领先，受到老百姓的普遍欢迎。在收视回访中我们发现，很多家庭是一家子围坐在电视机前，或点评选手，或你争我赶参与互动答题，随着比赛的日趋激烈，观众参与热情也持续高涨。</p>\r\n\r\n<p><strong>　　动因：进入文化自信的新时代</strong></p>\r\n\r\n<p>　　这样诗性勃发，诗意蓬勃的局面何以在当代出现呢？在我看来，这是中国人整体文化自信的集中反映。</p>\r\n\r\n<p>　　文化自信一方面是指主体自信，就是说，拥有这一文化的主体，对自己的文化有着积极的心态，发自内心地认同、信任，并愿意践行传播。中国在经过数十年的经济高速发展之后，国际社会和人民大众普遍对中国模式予以肯定，显然，经济发展成就的取得，是国人树立文化自信的前提条件之一。</p>\r\n\r\n<p>　　文化自信的另一方面是内容自信，中华民族几千年来形成的哲学思想、文学传统、历史经验在现代人的社会生活中仍然发挥着重要的作用。比如，中国人的&ldquo;天人合一&rdquo;思想，内容非常丰富，建立了独具特色的人和自然、人和未知世界的关系模式，至今仍然具有深刻的社会实践和人生哲学价值，给人类社会未来的走向提供了独特的选择。儒释道三家思想长期浸润中国文学，思想时刻转化为诗意，而中国文学则以诗歌等形式塑造和影响着普通大众的世界观、人生观、价值观。我们的文化本来就富含诗意。类似例子不胜枚举。</p>\r\n\r\n<p>　　诗歌，承载和传递着中国人的哲学思想、伦理道德、审美情趣，中国传统诗词的凝练文字、声律之美更代表着中国人对汉语言最精妙的应用。如今，读诗、写诗，又回到了大众生活当中，发挥了特有的言志抒情作用，成为了大众可以日常使用的表达方式，这不能不说是一件当今时代的大喜之事。</p>\r\n\r\n<p>　　终上可见一斑，传统诗词的热潮今日重现，并非一时之现象，而是中华民族进入整体文化自信的集中表现之一。</p>\r\n\r\n<p><strong>　　启示：以诗教人、成风化人的力量</strong></p>\r\n\r\n<p>　　在中国历史上，诗歌和社会生活的联系是非常紧密的。古代祭神拜祖要唱诗，聚会饯行要写诗，游览观光要题诗，科举考试要考诗，谈恋爱更少不了互相赠诗。春秋时期，外交场合也要用到诗，&ldquo;不学诗，无以言&rdquo;。诗和百姓、官员、帝王的生活都是密不可分的。也正因如此，诗的创作与传播，是日常生活的一个组成部分，也是历代执政者对民众的重要教化方式之一。</p>\r\n\r\n<p>　　一个国家、一个民族的强盛，总是以文化兴盛为支撑的。&ldquo;君子如欲化民成俗，其必由学乎。&rdquo;以诗来教化民众，并通过民众创作那些反映时代的优秀作品，在中国社会的发展和文化传承中，也一直起着重要作用。</p>\r\n\r\n<p>　　&ldquo;诗教&rdquo;一词最早见于《礼记》，&ldquo;其为人也温柔敦厚，《诗》教也。&rdquo; 孔子说过：&ldquo;兴于诗，立于礼，成于乐。&rdquo; 兴，就是起的意思，君子修身，当先学诗。 孔门之&ldquo;温柔敦厚&rdquo;，原指研读好《诗》这部诗歌总集，可以博学，可以修身，可以践行，还可以让人对政治阙失进行讽谏怨刺的时候拿捏分寸，颂美褒扬的时候也要发自内心。也就是说，无论在语言的表达上还是性情的修炼上君子都应该做到温柔敦厚。后来，&ldquo;温柔敦厚&rdquo;的原则被广泛应用，对整个中国文学和中国社会都产生了巨大影响。通过诗歌的力量，使人温柔敦厚而不失之于愚，可以说是诗教的精髓。</p>\r\n\r\n<p>　　诗歌是人之性情的表达，感发的力量非常大，也最能打动人，好的作品常常于不知不觉中作用于人心，所以，中国传统向来重视诗教，要求诗能够&ldquo;发乎情而止乎礼义&rdquo;。诗教因其直接作用于人心，也能最有效地唤起当代人的&ldquo;礼义廉耻&rdquo;之心，化民成俗的功效自然十分显著。</p>\r\n\r\n<p>　　以诗化民，以德育人，温柔敦厚，这是传统给我们的启示，是中国文化的遗产，也是中华民族伟大复兴的一个重要文化资源。</p>\r\n\r\n<p><strong>　　信心：重建诗的国度、重塑诗的味道</strong></p>\r\n\r\n<p>　　习总书记指出，文艺是时代前进的号角，最能代表一个时代的风貌，最能引领一个时代的风气。这个2016年的春天，人们对诗词所倾注的热情，正是这个伟大时代精神风貌的写照。在&ldquo;我有一壶酒&rdquo;文化事件的背后，孕育着令人激动的梦想，那就是人们对重建&ldquo;诗的国度&rdquo;出现了一种自信和自觉。</p>\r\n\r\n<p>　　诗歌曾经是中国文学的主流，无论是发源的时间、持续兴盛的长度，还是覆盖的广度、渗透到社会生活的深度，都是其他文学形式无法比拟的。中国也因此被称为&ldquo;诗的国度&rdquo;。&ldquo;诗的国度&rdquo;是对整个中国文学发展历史的归纳和提炼。在我们许多人经历了只有&ldquo;眼前的苟且&rdquo;，经历了很长一段时期&ldquo;金钱至上&rdquo;以后，诗和远方开始走近心灵，成为了我们生活的一部分。</p>\r\n\r\n<p>　　大多数文学形式都是起源于民间，再经过文人的加工而最终成熟的。有人说，诗歌发展到今天，也已经走过了她的青涩与辉煌时期，似乎再无发展的可能，这仅仅是基于对这种文体的判断。以更广阔的视角去看，对任何一个时代的社会来说，没有诗的提炼与晕染，那这个社会一定是如同工业机器般生硬而苍白地运转，既缺乏了美善，也缺乏了真情。</p>\r\n\r\n<p>　</p>\r\n\r\n<p>　　重建诗的国度，是重新唤起民间诗性，是以我们先人对世界对人生的智慧去帮助我们面对如今的世界与当下的人生，是希望我们以经济大国还要同时以文化大国之形象进入国际舞台，是希望以中国的特色延续历史文化与世界文明的血脉。</p>\r\n\r\n<p>　　是的，我们的精神，还&ldquo;太忙碌于现实，太驰骛于外界，而不遑回到内心&rdquo;，中华民族整体的文化素养还需要提升。但到时候了，我们要自信地提出：重建我们&ldquo;诗的国度&rdquo;。</p>\r\n','',1,'2018-03-02 00:53:39',0,0);

#
# Structure for table "jtbc_news"
#

DROP TABLE IF EXISTS `jtbc_news`;
CREATE TABLE `jtbc_news` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `n_topic` varchar(200) DEFAULT NULL COMMENT '{"autoRequestFormat":"notEmpty","fieldType":"text"}',
  `n_category` int(11) DEFAULT '0' COMMENT '{"autoRequestFormat":"notEmpty","fieldType":"category"}',
  `n_content` text COMMENT '{"fieldType":"editor"}',
  `n_att` text COMMENT '{"fieldType":"att","fieldRelatedEditor":"content","uploadStatusAutoUpdate":"true"}',
  `n_publish` int(11) DEFAULT '0' COMMENT '{"fieldType":"publish"}',
  `n_time` datetime DEFAULT NULL COMMENT '{"fieldType":"text","fieldHideMode":"0"}',
  `n_lang` int(11) DEFAULT '0',
  `n_delete` int(11) DEFAULT '0',
  PRIMARY KEY (`n_id`),
  KEY `n_delete` (`n_delete`,`n_lang`,`n_publish`) USING BTREE,
  KEY `n_time` (`n_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "jtbc_news"
#


#
# Structure for table "jtbc_team"
#

DROP TABLE IF EXISTS `jtbc_team`;
CREATE TABLE `jtbc_team` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(200) DEFAULT NULL COMMENT '{"autoRequestFormat":"notEmpty","fieldType":"text"}',
  `t_photo` varchar(200) DEFAULT NULL COMMENT '{"autoRequestFormat":"notEmpty","fieldType":"upfile","fieldHasTips":"auto","uploadStatusAutoUpdate":"true"}',
  `t_position` varchar(200) DEFAULT NULL COMMENT '{"fieldType":"text"}',
  `t_intro` varchar(200) DEFAULT NULL COMMENT '{"fieldType":"textarea"}',
  `t_publish` int(11) DEFAULT '0' COMMENT '{"fieldType":"publish"}',
  `t_time` datetime DEFAULT NULL COMMENT '{"fieldType":"text","fieldHideMode":"0"}',
  `t_lang` int(11) DEFAULT '0',
  `t_delete` int(11) DEFAULT '0',
  PRIMARY KEY (`t_id`),
  KEY `t_delete` (`t_delete`,`t_lang`,`t_publish`) USING BTREE,
  KEY `t_time` (`t_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "jtbc_team"
#


#
# Structure for table "jtbc_universal_category"
#

DROP TABLE IF EXISTS `jtbc_universal_category`;
CREATE TABLE `jtbc_universal_category` (
  `uc_id` int(11) NOT NULL AUTO_INCREMENT,
  `uc_topic` varchar(50) DEFAULT NULL COMMENT '{"autoRequestFormat":"notEmpty"}',
  `uc_image` varchar(200) DEFAULT NULL COMMENT '{"uploadStatusAutoUpdate":"true"}',
  `uc_intro` varchar(1000) DEFAULT NULL,
  `uc_fid` int(11) DEFAULT '0',
  `uc_order` int(11) DEFAULT '0',
  `uc_time` datetime DEFAULT NULL,
  `uc_genre` varchar(200) DEFAULT NULL,
  `uc_lang` int(11) DEFAULT '0',
  `uc_delete` int(11) DEFAULT '0',
  PRIMARY KEY (`uc_id`),
  KEY `uc_genre` (`uc_genre`,`uc_delete`,`uc_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "jtbc_universal_category"
#

INSERT INTO `jtbc_universal_category` VALUES (1,'动态播报','','',0,888888,'2018-02-26 00:43:51','case',0,0),(2,'ABC','','',0,888888,'2018-03-02 00:36:12','case',0,0);

#
# Structure for table "jtbc_universal_link"
#

DROP TABLE IF EXISTS `jtbc_universal_link`;
CREATE TABLE `jtbc_universal_link` (
  `ul_id` int(11) NOT NULL AUTO_INCREMENT,
  `ul_topic` varchar(50) DEFAULT NULL COMMENT '{"autoRequestFormat":"notEmpty"}',
  `ul_image` varchar(200) DEFAULT NULL COMMENT '{"uploadStatusAutoUpdate":"true"}',
  `ul_url` varchar(200) DEFAULT NULL COMMENT '{"autoRequestFormat":"notEmpty"}',
  `ul_target` varchar(50) DEFAULT NULL,
  `ul_group` int(11) DEFAULT '0',
  `ul_publish` int(11) DEFAULT '0',
  `ul_time` datetime DEFAULT NULL,
  `ul_lang` int(11) DEFAULT '0',
  `ul_delete` int(11) DEFAULT '0',
  PRIMARY KEY (`ul_id`),
  KEY `ul_publish` (`ul_publish`,`ul_lang`,`ul_delete`),
  KEY `ul_group` (`ul_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "jtbc_universal_link"
#


#
# Structure for table "jtbc_universal_material"
#

DROP TABLE IF EXISTS `jtbc_universal_material`;
CREATE TABLE `jtbc_universal_material` (
  `um_id` int(11) NOT NULL AUTO_INCREMENT,
  `um_topic` varchar(200) DEFAULT NULL,
  `um_filepath` varchar(200) DEFAULT NULL,
  `um_fileurl` varchar(200) DEFAULT NULL,
  `um_filetype` varchar(20) DEFAULT NULL,
  `um_filesize` int(11) DEFAULT '0',
  `um_filegroup` int(11) DEFAULT '0',
  `um_time` datetime DEFAULT NULL,
  `um_hot` int(11) DEFAULT '0',
  `um_lang` int(11) DEFAULT '0',
  `um_delete` int(11) DEFAULT '0',
  PRIMARY KEY (`um_id`),
  KEY `um_filetype` (`um_filetype`),
  KEY `um_hot` (`um_hot`),
  KEY `um_lang` (`um_lang`,`um_delete`),
  KEY `um_time` (`um_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "jtbc_universal_material"
#


#
# Structure for table "jtbc_universal_upload"
#

DROP TABLE IF EXISTS `jtbc_universal_upload`;
CREATE TABLE `jtbc_universal_upload` (
  `uu_id` int(11) NOT NULL AUTO_INCREMENT,
  `uu_topic` varchar(200) DEFAULT NULL,
  `uu_filesize` int(11) DEFAULT '0',
  `uu_filesizetext` varchar(50) DEFAULT NULL,
  `uu_filetype` varchar(50) DEFAULT NULL,
  `uu_filepath` varchar(200) DEFAULT NULL,
  `uu_fileurl` varchar(200) DEFAULT NULL,
  `uu_filemode` int(11) DEFAULT '0',
  `uu_genre` varchar(200) DEFAULT NULL,
  `uu_associated_id` int(11) DEFAULT '0',
  `uu_status` int(11) DEFAULT '0',
  `uu_delete` int(11) DEFAULT '0',
  `uu_time` datetime DEFAULT NULL,
  PRIMARY KEY (`uu_id`),
  KEY `uu_genre` (`uu_genre`),
  KEY `uu_status` (`uu_status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "jtbc_universal_upload"
#

INSERT INTO `jtbc_universal_upload` VALUES (1,'p_large_0aty_7bac0000576a2d0d.jpg',47821,'46.7KB','jpg','common/assets/upload/2018/0226/004336bp.jpg','common/assets/upload/2018/0226/004336bp.jpg',0,'case',0,0,0,'2018-02-26 00:43:36'),(2,'p_large_0aty_7bac0000576a2d0d.jpg',47821,'46.7KB','jpg','common/assets/upload/2018/0226/004406jo.jpg','common/assets/upload/2018/0226/004406jo.jpg',0,'case',1,1,0,'2018-02-26 00:44:06');
