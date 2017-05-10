/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.27 : Database - dedecms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `dede_addonarticle` */

DROP TABLE IF EXISTS `dede_addonarticle`;

CREATE TABLE `dede_addonarticle` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext,
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_addonarticle` */

insert  into `dede_addonarticle`(`aid`,`typeid`,`body`,`redirecturl`,`templet`,`userip`) values (1,2,'啊但是发射点法我擦奥维啊','','','127.0.0.1');

/*Table structure for table `dede_addonimages` */

DROP TABLE IF EXISTS `dede_addonimages`;

CREATE TABLE `dede_addonimages` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pagestyle` smallint(6) NOT NULL DEFAULT '1',
  `maxwidth` smallint(6) NOT NULL DEFAULT '600',
  `imgurls` text,
  `row` smallint(6) NOT NULL DEFAULT '0',
  `col` smallint(6) NOT NULL DEFAULT '0',
  `isrm` smallint(6) NOT NULL DEFAULT '0',
  `ddmaxwidth` smallint(6) NOT NULL DEFAULT '200',
  `pagepicnum` smallint(6) NOT NULL DEFAULT '12',
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  `body` mediumtext,
  PRIMARY KEY (`aid`),
  KEY `imagesMain` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_addonimages` */

/*Table structure for table `dede_addoninfos` */

DROP TABLE IF EXISTS `dede_addoninfos`;

CREATE TABLE `dede_addoninfos` (
  `aid` int(11) NOT NULL DEFAULT '0',
  `typeid` int(11) NOT NULL DEFAULT '0',
  `channel` smallint(6) NOT NULL DEFAULT '0',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `litpic` varchar(60) NOT NULL DEFAULT '',
  `userip` varchar(15) NOT NULL DEFAULT ' ',
  `senddate` int(11) NOT NULL DEFAULT '0',
  `flag` set('c','h','p','f','s','j','a','b') DEFAULT NULL,
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `scores` mediumint(8) NOT NULL DEFAULT '0',
  `goodpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `badpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `nativeplace` smallint(5) unsigned NOT NULL DEFAULT '0',
  `infotype` char(20) NOT NULL DEFAULT '0',
  `body` mediumtext,
  `endtime` int(11) NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `linkman` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`,`nativeplace`,`infotype`),
  KEY `channel` (`channel`,`arcrank`,`mid`,`click`,`title`,`litpic`,`senddate`,`flag`,`endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_addoninfos` */

/*Table structure for table `dede_addonshop` */

DROP TABLE IF EXISTS `dede_addonshop`;

CREATE TABLE `dede_addonshop` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext,
  `price` float NOT NULL DEFAULT '0',
  `trueprice` float NOT NULL DEFAULT '0',
  `brand` varchar(250) NOT NULL DEFAULT '',
  `units` varchar(250) NOT NULL DEFAULT '',
  `templet` varchar(30) NOT NULL,
  `userip` char(15) NOT NULL,
  `redirecturl` varchar(255) NOT NULL,
  `vocation` char(20) NOT NULL DEFAULT '0',
  `infotype` char(20) NOT NULL DEFAULT '0',
  `uptime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_addonshop` */

/*Table structure for table `dede_addonsoft` */

DROP TABLE IF EXISTS `dede_addonsoft`;

CREATE TABLE `dede_addonsoft` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `softtype` varchar(10) NOT NULL DEFAULT '',
  `accredit` varchar(10) NOT NULL DEFAULT '',
  `os` varchar(30) NOT NULL DEFAULT '',
  `softrank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `officialUrl` varchar(30) NOT NULL DEFAULT '',
  `officialDemo` varchar(50) NOT NULL DEFAULT '',
  `softsize` varchar(10) NOT NULL DEFAULT '',
  `softlinks` text,
  `introduce` text,
  `daccess` smallint(5) NOT NULL DEFAULT '0',
  `needmoney` smallint(5) NOT NULL DEFAULT '0',
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `softMain` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_addonsoft` */

/*Table structure for table `dede_addonspec` */

DROP TABLE IF EXISTS `dede_addonspec`;

CREATE TABLE `dede_addonspec` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `note` text,
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_addonspec` */

/*Table structure for table `dede_admin` */

DROP TABLE IF EXISTS `dede_admin`;

CREATE TABLE `dede_admin` (
  `id` int(10) unsigned NOT NULL,
  `usertype` float unsigned DEFAULT '0',
  `userid` char(30) NOT NULL DEFAULT '',
  `pwd` char(32) NOT NULL DEFAULT '',
  `uname` char(20) NOT NULL DEFAULT '',
  `tname` char(30) NOT NULL DEFAULT '',
  `email` char(30) NOT NULL DEFAULT '',
  `typeid` text,
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_admin` */

insert  into `dede_admin`(`id`,`usertype`,`userid`,`pwd`,`uname`,`tname`,`email`,`typeid`,`logintime`,`loginip`) values (1,10,'admin','f297a57a5a743894a0e4','admin','','','0',1491974809,'127.0.0.1');

/*Table structure for table `dede_admintype` */

DROP TABLE IF EXISTS `dede_admintype`;

CREATE TABLE `dede_admintype` (
  `rank` float NOT NULL DEFAULT '1',
  `typename` varchar(30) NOT NULL DEFAULT '',
  `system` smallint(6) NOT NULL DEFAULT '0',
  `purviews` text,
  PRIMARY KEY (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_admintype` */

insert  into `dede_admintype`(`rank`,`typename`,`system`,`purviews`) values (1,'信息发布员',1,'t_AccList a_AccNew a_AccList a_MyList a_MyEdit a_MyDel sys_MdPwd sys_Feedback sys_MyUpload plus_留言簿模块 ');
insert  into `dede_admintype`(`rank`,`typename`,`system`,`purviews`) values (5,'频道管理员',1,'t_AccList t_AccNew t_AccEdit t_AccDel a_AccNew a_AccList a_AccEdit a_AccDel a_AccCheck a_MyList a_MyEdit a_MyDel a_MyCheck co_AddNote co_EditNote co_PlayNote co_ListNote co_ViewNote spec_New spec_List spec_Edit sys_MdPwd sys_Log sys_ArcTj sys_Source sys_Writer sys_Keyword sys_MakeHtml sys_Feedback sys_Upload sys_MyUpload member_List member_Edit plus_站内新闻发布 plus_友情链接模块 plus_留言簿模块 plus_投票模块 plus_广告管理 ');
insert  into `dede_admintype`(`rank`,`typename`,`system`,`purviews`) values (10,'超级管理员',1,'admin_AllowAll ');

/*Table structure for table `dede_advancedsearch` */

DROP TABLE IF EXISTS `dede_advancedsearch`;

CREATE TABLE `dede_advancedsearch` (
  `mid` int(11) NOT NULL,
  `maintable` varchar(256) NOT NULL DEFAULT '',
  `mainfields` text,
  `addontable` varchar(256) DEFAULT NULL,
  `addonfields` text,
  `forms` text,
  `template` varchar(256) NOT NULL DEFAULT '',
  UNIQUE KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_advancedsearch` */

/*Table structure for table `dede_arcatt` */

DROP TABLE IF EXISTS `dede_arcatt`;

CREATE TABLE `dede_arcatt` (
  `sortid` smallint(6) NOT NULL DEFAULT '0',
  `att` char(10) NOT NULL DEFAULT '',
  `attname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`att`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_arcatt` */

insert  into `dede_arcatt`(`sortid`,`att`,`attname`) values (5,'s','滚动');
insert  into `dede_arcatt`(`sortid`,`att`,`attname`) values (1,'h','头条');
insert  into `dede_arcatt`(`sortid`,`att`,`attname`) values (3,'f','幻灯');
insert  into `dede_arcatt`(`sortid`,`att`,`attname`) values (2,'c','推荐');
insert  into `dede_arcatt`(`sortid`,`att`,`attname`) values (7,'p','图片');
insert  into `dede_arcatt`(`sortid`,`att`,`attname`) values (8,'j','跳转');
insert  into `dede_arcatt`(`sortid`,`att`,`attname`) values (4,'a','特荐');
insert  into `dede_arcatt`(`sortid`,`att`,`attname`) values (6,'b','加粗');

/*Table structure for table `dede_arccache` */

DROP TABLE IF EXISTS `dede_arccache`;

CREATE TABLE `dede_arccache` (
  `md5hash` char(32) NOT NULL DEFAULT '',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `cachedata` mediumtext,
  PRIMARY KEY (`md5hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_arccache` */

/*Table structure for table `dede_archives` */

DROP TABLE IF EXISTS `dede_archives`;

CREATE TABLE `dede_archives` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid2` varchar(90) NOT NULL DEFAULT '0',
  `sortrank` int(10) unsigned NOT NULL DEFAULT '0',
  `flag` set('c','h','p','f','s','j','a','b') DEFAULT NULL,
  `ismake` smallint(6) NOT NULL DEFAULT '0',
  `channel` smallint(6) NOT NULL DEFAULT '1',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `click` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `money` smallint(6) NOT NULL DEFAULT '0',
  `title` char(60) NOT NULL DEFAULT '',
  `shorttitle` char(36) NOT NULL DEFAULT '',
  `color` char(7) NOT NULL DEFAULT '',
  `writer` char(20) NOT NULL DEFAULT '',
  `source` char(30) NOT NULL DEFAULT '',
  `litpic` char(100) NOT NULL DEFAULT '',
  `pubdate` int(10) unsigned NOT NULL DEFAULT '0',
  `senddate` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `keywords` char(30) NOT NULL DEFAULT '',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `scores` mediumint(8) NOT NULL DEFAULT '0',
  `goodpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `badpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `voteid` mediumint(8) NOT NULL,
  `notpost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(40) NOT NULL DEFAULT '',
  `dutyadmin` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tackid` int(10) NOT NULL DEFAULT '0',
  `mtype` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `weight` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sortrank` (`sortrank`),
  KEY `mainindex` (`arcrank`,`typeid`,`channel`,`flag`,`mid`),
  KEY `lastpost` (`lastpost`,`scores`,`goodpost`,`badpost`,`notpost`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_archives` */

insert  into `dede_archives`(`id`,`typeid`,`typeid2`,`sortrank`,`flag`,`ismake`,`channel`,`arcrank`,`click`,`money`,`title`,`shorttitle`,`color`,`writer`,`source`,`litpic`,`pubdate`,`senddate`,`mid`,`keywords`,`lastpost`,`scores`,`goodpost`,`badpost`,`voteid`,`notpost`,`description`,`filename`,`dutyadmin`,`tackid`,`mtype`,`weight`) values (1,2,'0',1491974856,'',0,1,0,197,0,'测试文章','','','admin','未知','',1491974856,1491974894,1,'测试,文章,啊,但是,发射点,法我,擦,奥维,',0,0,0,0,0,0,'啊但是发射点法我擦奥维啊','',1,0,0,0);

/*Table structure for table `dede_arcmulti` */

DROP TABLE IF EXISTS `dede_arcmulti`;

CREATE TABLE `dede_arcmulti` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` char(60) NOT NULL DEFAULT '',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `innertext` varchar(255) NOT NULL DEFAULT '',
  `pagesize` int(11) NOT NULL DEFAULT '0',
  `arcids` text NOT NULL,
  `ordersql` varchar(255) DEFAULT NULL,
  `addfieldsSql` varchar(255) DEFAULT NULL,
  `addfieldsSqlJoin` varchar(255) DEFAULT NULL,
  `attstr` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_arcmulti` */

/*Table structure for table `dede_arcrank` */

DROP TABLE IF EXISTS `dede_arcrank`;

CREATE TABLE `dede_arcrank` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `membername` char(20) NOT NULL DEFAULT '',
  `adminrank` smallint(6) NOT NULL DEFAULT '0',
  `money` smallint(8) unsigned NOT NULL DEFAULT '500',
  `scores` mediumint(8) NOT NULL DEFAULT '0',
  `purviews` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `dede_arcrank` */

insert  into `dede_arcrank`(`id`,`rank`,`membername`,`adminrank`,`money`,`scores`,`purviews`) values (1,0,'开放浏览',5,0,0,'');
insert  into `dede_arcrank`(`id`,`rank`,`membername`,`adminrank`,`money`,`scores`,`purviews`) values (2,-1,'待审核稿件',0,0,0,'');
insert  into `dede_arcrank`(`id`,`rank`,`membername`,`adminrank`,`money`,`scores`,`purviews`) values (3,10,'注册会员',5,0,100,'');
insert  into `dede_arcrank`(`id`,`rank`,`membername`,`adminrank`,`money`,`scores`,`purviews`) values (4,50,'中级会员',5,300,200,'');
insert  into `dede_arcrank`(`id`,`rank`,`membername`,`adminrank`,`money`,`scores`,`purviews`) values (5,100,'高级会员',5,800,500,'');
insert  into `dede_arcrank`(`id`,`rank`,`membername`,`adminrank`,`money`,`scores`,`purviews`) values (6,20,'低级会员',5,0,500,'');
insert  into `dede_arcrank`(`id`,`rank`,`membername`,`adminrank`,`money`,`scores`,`purviews`) values (7,150,'给力会员',5,1000,500,'');
insert  into `dede_arcrank`(`id`,`rank`,`membername`,`adminrank`,`money`,`scores`,`purviews`) values (8,180,'超能会员',5,1100,500,'');

/*Table structure for table `dede_arctiny` */

DROP TABLE IF EXISTS `dede_arctiny`;

CREATE TABLE `dede_arctiny` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid2` varchar(90) NOT NULL DEFAULT '0',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `channel` smallint(5) NOT NULL DEFAULT '1',
  `senddate` int(10) unsigned NOT NULL DEFAULT '0',
  `sortrank` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sortrank` (`sortrank`),
  KEY `idx_typeid_arcrank_sortrank` (`typeid`,`arcrank`,`sortrank`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `dede_arctiny` */

insert  into `dede_arctiny`(`id`,`typeid`,`typeid2`,`arcrank`,`channel`,`senddate`,`sortrank`,`mid`) values (1,2,'0',0,1,1491974894,1491974856,1);

/*Table structure for table `dede_arctype` */

DROP TABLE IF EXISTS `dede_arctype`;

CREATE TABLE `dede_arctype` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `reid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `topid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sortrank` smallint(5) unsigned NOT NULL DEFAULT '50',
  `typename` char(30) NOT NULL DEFAULT '',
  `typedir` char(60) NOT NULL DEFAULT '',
  `isdefault` smallint(6) NOT NULL DEFAULT '0',
  `defaultname` char(15) NOT NULL DEFAULT 'index.html',
  `issend` smallint(6) NOT NULL DEFAULT '0',
  `channeltype` smallint(6) DEFAULT '1',
  `maxpage` smallint(6) NOT NULL DEFAULT '-1',
  `ispart` smallint(6) NOT NULL DEFAULT '0',
  `corank` smallint(6) NOT NULL DEFAULT '0',
  `tempindex` char(50) NOT NULL DEFAULT '',
  `templist` char(50) NOT NULL DEFAULT '',
  `temparticle` char(50) NOT NULL DEFAULT '',
  `namerule` char(50) NOT NULL DEFAULT '',
  `namerule2` char(50) NOT NULL DEFAULT '',
  `modname` char(20) NOT NULL DEFAULT '',
  `description` char(150) NOT NULL DEFAULT '',
  `keywords` varchar(60) NOT NULL DEFAULT '',
  `seotitle` varchar(80) NOT NULL DEFAULT '',
  `moresite` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sitepath` char(60) NOT NULL DEFAULT '',
  `siteurl` char(50) NOT NULL DEFAULT '',
  `ishidden` smallint(6) NOT NULL DEFAULT '0',
  `cross` tinyint(1) NOT NULL DEFAULT '0',
  `crossid` text,
  `content` text,
  `smalltypes` text,
  PRIMARY KEY (`id`),
  KEY `reid` (`reid`,`isdefault`,`channeltype`,`ispart`,`corank`,`topid`,`ishidden`),
  KEY `sortrank` (`sortrank`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `dede_arctype` */

insert  into `dede_arctype`(`id`,`reid`,`topid`,`sortrank`,`typename`,`typedir`,`isdefault`,`defaultname`,`issend`,`channeltype`,`maxpage`,`ispart`,`corank`,`tempindex`,`templist`,`temparticle`,`namerule`,`namerule2`,`modname`,`description`,`keywords`,`seotitle`,`moresite`,`sitepath`,`siteurl`,`ishidden`,`cross`,`crossid`,`content`,`smalltypes`) values (1,0,0,992,'问答','http://localhost/de/ask',1,'index.php',0,1,-1,2,0,'','','','','','default','','','',0,'','',0,0,'0','',NULL);
insert  into `dede_arctype`(`id`,`reid`,`topid`,`sortrank`,`typename`,`typedir`,`isdefault`,`defaultname`,`issend`,`channeltype`,`maxpage`,`ispart`,`corank`,`tempindex`,`templist`,`temparticle`,`namerule`,`namerule2`,`modname`,`description`,`keywords`,`seotitle`,`moresite`,`sitepath`,`siteurl`,`ishidden`,`cross`,`crossid`,`content`,`smalltypes`) values (2,0,0,50,'测试栏目','{cmspath}/a/ceshilanmu',1,'index.html',1,1,-1,0,0,'{style}/index_article.htm','{style}/list_article.htm','{style}/article_article.htm','{typedir}/{Y}/{M}{D}/{aid}.html','{typedir}/list_{tid}_{page}.html','default','','','',0,'','',0,0,'','','');

/*Table structure for table `dede_area` */

DROP TABLE IF EXISTS `dede_area`;

CREATE TABLE `dede_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `reid` int(10) unsigned NOT NULL DEFAULT '0',
  `disorder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3118 DEFAULT CHARSET=utf8;

/*Data for the table `dede_area` */

insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1,'北京市',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (102,'西城区',1,2);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (126,'崇文区',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (104,'宣武区',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (105,'朝阳区',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (106,'海淀区',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (107,'丰台区',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (108,'石景山区',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (109,'门头沟区',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (110,'房山区',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (111,'通州区',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (112,'顺义区',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (113,'昌平区',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (114,'大兴区',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (115,'平谷县',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (116,'怀柔县',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (117,'密云县',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (118,'延庆县',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2,'上海市',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (201,'黄浦区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (202,'卢湾区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (203,'徐汇区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (204,'长宁区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (205,'静安区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (206,'普陀区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (207,'闸北区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (208,'虹口区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (209,'杨浦区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (210,'宝山区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (211,'闵行区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (212,'嘉定区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (213,'浦东新区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (214,'松江区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (215,'金山区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (216,'青浦区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (217,'南汇区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (218,'奉贤区',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (219,'崇明县',2,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3,'天津市',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (301,'和平区',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (302,'河东区',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (303,'河西区',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (304,'南开区',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (305,'河北区',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (306,'红桥区',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (307,'塘沽区',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (308,'汉沽区',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (309,'大港区',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (310,'东丽区',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (311,'西青区',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (312,'北辰区',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (313,'津南区',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (314,'武清区',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (315,'宝坻区',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (316,'静海县',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (317,'宁河县',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (318,'蓟县',3,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (4,'重庆市',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (401,'渝中区',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (402,'大渡口区',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (403,'江北区',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (404,'沙坪坝区',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (405,'九龙坡区',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (406,'南岸区',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (407,'北碚区',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (408,'万盛区',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (409,'双桥区',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (410,'渝北区',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (411,'巴南区',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (412,'万州区',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (413,'涪陵区',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (414,'黔江区',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (415,'永川市',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (416,'合川市',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (417,'江津市',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (418,'南川市',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (419,'长寿县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (420,'綦江县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (421,'潼南县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (422,'荣昌县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (423,'璧山县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (424,'大足县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (425,'铜梁县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (426,'梁平县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (427,'城口县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (428,'垫江县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (429,'武隆县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (430,'丰都县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (431,'奉节县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (432,'开县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (433,'云阳县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (434,'忠县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (435,'巫溪县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (436,'巫山县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (437,'石柱县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (438,'秀山县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (439,'酉阳县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (440,'彭水县',4,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (5,'广东省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (501,'广州市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (502,'深圳市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (503,'珠海市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (504,'汕头市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (505,'韶关市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (506,'河源市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (507,'梅州市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (508,'惠州市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (509,'汕尾市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (510,'东莞市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (511,'中山市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (512,'江门市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (513,'佛山市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (514,'阳江市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (515,'湛江市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (516,'茂名市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (517,'肇庆市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (518,'清远市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (519,'潮州市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (520,'揭阳市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (521,'云浮市',5,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (6,'福建省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (601,'福州市',6,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (602,'厦门市',6,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (603,'三明市',6,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (604,'莆田市',6,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (605,'泉州市',6,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (606,'漳州市',6,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (607,'南平市',6,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (608,'龙岩市',6,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (609,'宁德市',6,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (7,'浙江省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (701,'杭州市',7,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (702,'宁波市',7,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (703,'温州市',7,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (704,'嘉兴市',7,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (705,'湖州市',7,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (706,'绍兴市',7,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (707,'金华市',7,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (708,'衢州市',7,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (709,'舟山市',7,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (710,'台州市',7,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (711,'丽水市',7,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (8,'江苏省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (801,'南京市',8,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (802,'徐州市',8,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (803,'连云港市',8,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (804,'淮安市',8,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (805,'宿迁市',8,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (806,'盐城市',8,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (807,'扬州市',8,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (808,'泰州市',8,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (809,'南通市',8,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (810,'镇江市',8,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (811,'常州市',8,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (812,'无锡市',8,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (813,'苏州市',8,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (9,'山东省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (901,'济南市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (902,'青岛市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (903,'淄博市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (904,'枣庄市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (905,'东营市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (906,'潍坊市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (907,'烟台市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (908,'威海市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (909,'济宁市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (910,'泰安市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (911,'日照市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (912,'莱芜市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (913,'德州市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (914,'临沂市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (915,'聊城市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (916,'滨州市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (917,'菏泽市',9,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (10,'辽宁省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1001,'沈阳市',10,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1002,'大连市',10,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1003,'鞍山市',10,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1004,'抚顺市',10,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1005,'本溪市',10,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1006,'丹东市',10,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1007,'锦州市',10,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1008,'葫芦岛市',10,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1009,'营口市',10,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1010,'盘锦市',10,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1011,'阜新市',10,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1012,'辽阳市',10,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1013,'铁岭市',10,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1014,'朝阳市',10,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (11,'江西省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1101,'南昌市',11,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1102,'景德镇市',11,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1103,'萍乡市',11,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1104,'新余市',11,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1105,'九江市',11,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1106,'鹰潭市',11,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1107,'赣州市',11,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1108,'吉安市',11,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1109,'宜春市',11,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1110,'抚州市',11,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1111,'上饶市',11,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (12,'四川省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1201,'成都市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1202,'自贡市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1203,'攀枝花市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1204,'泸州市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1205,'德阳市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1206,'绵阳市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1207,'广元市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1208,'遂宁市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1209,'内江市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1210,'乐山市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1211,'南充市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1212,'宜宾市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1213,'广安市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1214,'达州市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1215,'巴中市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1216,'雅安市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1217,'眉山市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1218,'资阳市',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1219,'阿坝州',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1220,'甘孜州',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1221,'凉山州',12,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (13,'陕西省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3114,'西安市',13,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1302,'铜川市',13,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1303,'宝鸡市',13,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1304,'咸阳市',13,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1305,'渭南市',13,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1306,'延安市',13,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1307,'汉中市',13,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1308,'榆林市',13,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1309,'安康市',13,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1310,'商洛地区',13,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (14,'湖北省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1401,'武汉市',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1402,'黄石市',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1403,'襄樊市',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1404,'十堰市',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1405,'荆州市',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1406,'宜昌市',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1407,'荆门市',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1408,'鄂州市',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1409,'孝感市',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1410,'黄冈市',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1411,'咸宁市',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1412,'随州市',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1413,'仙桃市',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1414,'天门市',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1415,'潜江市',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1416,'神农架',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1417,'恩施州',14,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (15,'河南省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1501,'郑州市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1502,'开封市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1503,'洛阳市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1504,'平顶山市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1505,'焦作市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1506,'鹤壁市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1507,'新乡市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1508,'安阳市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1509,'濮阳市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1510,'许昌市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1511,'漯河市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1512,'三门峡市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1513,'南阳市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1514,'商丘市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1515,'信阳市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1516,'周口市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1517,'驻马店市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1518,'济源市',15,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (16,'河北省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1601,'石家庄市',16,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1602,'唐山市',16,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1603,'秦皇岛市',16,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1604,'邯郸市',16,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1605,'邢台市',16,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1606,'保定市',16,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1607,'张家口市',16,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1608,'承德市',16,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1609,'沧州市',16,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1610,'廊坊市',16,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1611,'衡水市',16,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (17,'山西省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1701,'太原市',17,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1702,'大同市',17,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1703,'阳泉市',17,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1704,'长治市',17,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1705,'晋城市',17,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1706,'朔州市',17,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1707,'晋中市',17,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1708,'忻州市',17,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1709,'临汾市',17,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1710,'运城市',17,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1711,'吕梁地区',17,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (18,'内蒙古',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1801,'呼和浩特',18,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1802,'包头市',18,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1803,'乌海市',18,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1804,'赤峰市',18,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1805,'通辽市',18,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1806,'鄂尔多斯',18,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1807,'乌兰察布',18,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1808,'锡林郭勒',18,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1809,'呼伦贝尔',18,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1810,'巴彦淖尔',18,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1811,'阿拉善盟',18,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1812,'兴安盟',18,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (19,'吉林省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1901,'长春市',19,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1902,'吉林市',19,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1903,'四平市',19,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1904,'辽源市',19,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1905,'通化市',19,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1906,'白山市',19,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1907,'松原市',19,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1908,'白城市',19,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (1909,'延边州',19,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (20,'黑龙江',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2001,'哈尔滨市',20,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2002,'齐齐哈尔',20,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2003,'鹤岗市',20,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2004,'双鸭山市',20,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2005,'鸡西市',20,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2006,'大庆市',20,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2007,'伊春市',20,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2008,'牡丹江市',20,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2009,'佳木斯市',20,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2010,'七台河市',20,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2011,'黑河市',20,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2012,'绥化市',20,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2013,'大兴安岭',20,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (21,'安徽省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2101,'合肥市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2102,'芜湖市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2103,'蚌埠市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2104,'淮南市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2105,'马鞍山市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2106,'淮北市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2107,'铜陵市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2108,'安庆市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2109,'黄山市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2110,'滁州市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2111,'阜阳市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2112,'宿州市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2113,'巢湖市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2114,'六安市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2115,'亳州市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2116,'宣城市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2117,'池州市',21,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (22,'湖南省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2201,'长沙市',22,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2202,'株州市',22,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2203,'湘潭市',22,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2204,'衡阳市',22,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2205,'邵阳市',22,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2206,'岳阳市',22,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2207,'常德市',22,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2208,'张家界市',22,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2209,'益阳市',22,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2210,'郴州市',22,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2211,'永州市',22,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2212,'怀化市',22,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2213,'娄底市',22,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2214,'湘西州',22,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (23,'广西区',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2301,'南宁市',23,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2302,'柳州市',23,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2303,'桂林市',23,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2304,'梧州市',23,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2305,'北海市',23,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2306,'防城港市',23,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2307,'钦州市',23,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2308,'贵港市',23,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2309,'玉林市',23,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2310,'南宁地区',23,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2311,'柳州地区',23,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2312,'贺州地区',23,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2313,'百色地区',23,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2314,'河池地区',23,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (24,'海南省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2401,'海口市',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2402,'三亚市',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2403,'五指山市',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2404,'琼海市',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2405,'儋州市',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2406,'琼山市',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2407,'文昌市',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2408,'万宁市',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2409,'东方市',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2410,'澄迈县',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2411,'定安县',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2412,'屯昌县',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2413,'临高县',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2414,'白沙县',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2415,'昌江县',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2416,'乐东县',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2417,'陵水县',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2418,'保亭县',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2419,'琼中县',24,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (25,'云南省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2501,'昆明市',25,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2502,'曲靖市',25,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2503,'玉溪市',25,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2504,'保山市',25,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2505,'昭通市',25,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2506,'思茅地区',25,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2507,'临沧地区',25,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2508,'丽江地区',25,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2509,'文山州',25,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2510,'红河州',25,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2511,'西双版纳',25,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2512,'楚雄州',25,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2513,'大理州',25,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2514,'德宏州',25,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2515,'怒江州',25,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2516,'迪庆州',25,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (26,'贵州省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2601,'贵阳市',26,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2602,'六盘水市',26,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2603,'遵义市',26,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2604,'安顺市',26,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2605,'铜仁地区',26,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2606,'毕节地区',26,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2607,'黔西南州',26,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2608,'黔东南州',26,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2609,'黔南州',26,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (27,'西藏区',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2701,'拉萨市',27,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2702,'那曲地区',27,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2703,'昌都地区',27,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2704,'山南地区',27,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2705,'日喀则',27,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2706,'阿里地区',27,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2707,'林芝地区',27,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (28,'甘肃省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2801,'兰州市',28,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2802,'金昌市',28,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2803,'白银市',28,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2804,'天水市',28,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2805,'嘉峪关市',28,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2806,'武威市',28,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2807,'定西地区',28,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2808,'平凉地区',28,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2809,'庆阳地区',28,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2810,'陇南地区',28,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2811,'张掖地区',28,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2812,'酒泉地区',28,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2813,'甘南州',28,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2814,'临夏州',28,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (29,'宁夏区',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2901,'银川市',29,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2902,'石嘴山市',29,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2903,'吴忠市',29,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (2904,'固原市',29,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (30,'青海省',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3001,'西宁市',30,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3002,'海东地区',30,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3003,'海北州',30,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3004,'黄南州',30,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3005,'海南州',30,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3006,'果洛州',30,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3007,'玉树州',30,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3008,'海西州',30,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (31,'新疆区',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3101,'乌鲁木齐',31,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3102,'克拉玛依',31,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3103,'石河子市',31,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3104,'吐鲁番',31,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3105,'哈密地区',31,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3106,'和田地区',31,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3107,'阿克苏',31,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3108,'喀什地区',31,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3109,'克孜勒苏',31,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3110,'巴音郭楞',31,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3111,'昌吉州',31,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3112,'博尔塔拉',31,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3113,'伊犁州',31,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (3117,'东城区',1,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (32,'香港区',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (33,'澳门区',0,0);
insert  into `dede_area`(`id`,`name`,`reid`,`disorder`) values (35,'台湾省',0,0);

/*Table structure for table `dede_ask` */

DROP TABLE IF EXISTS `dede_ask`;

CREATE TABLE `dede_ask` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tidname` char(50) NOT NULL DEFAULT '',
  `tid2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tid2name` char(50) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `digest` tinyint(1) NOT NULL DEFAULT '0',
  `reward` smallint(6) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `expiredtime` int(10) unsigned NOT NULL DEFAULT '0',
  `solvetime` int(10) unsigned NOT NULL DEFAULT '0',
  `bestanswer` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `disorder` smallint(6) NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `lastanswer` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `disorder` (`tid`,`tid2`,`status`,`dateline`),
  KEY `digest` (`digest`),
  KEY `expiredtime` (`expiredtime`),
  KEY `reward` (`reward`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_ask` */

/*Table structure for table `dede_ask_scores` */

DROP TABLE IF EXISTS `dede_ask_scores`;

CREATE TABLE `dede_ask_scores` (
  `mid` int(11) NOT NULL,
  `userid` char(20) NOT NULL,
  `ascores` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mscores` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_ask_scores` */

/*Table structure for table `dede_askanswer` */

DROP TABLE IF EXISTS `dede_askanswer`;

CREATE TABLE `dede_askanswer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `askid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ifanswer` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid2` smallint(6) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(32) NOT NULL DEFAULT '',
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `goodrate` smallint(6) unsigned NOT NULL DEFAULT '0',
  `badrate` smallint(6) unsigned NOT NULL DEFAULT '0',
  `userip` char(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `ifcheck` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `askid` (`askid`),
  KEY `uid` (`uid`),
  KEY `dateline` (`askid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_askanswer` */

/*Table structure for table `dede_asktype` */

DROP TABLE IF EXISTS `dede_asktype`;

CREATE TABLE `dede_asktype` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL DEFAULT '',
  `reid` int(10) unsigned NOT NULL DEFAULT '0',
  `disorder` int(10) unsigned NOT NULL DEFAULT '0',
  `asknum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `askwarrnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `disorder` (`disorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_asktype` */

/*Table structure for table `dede_channeltype` */

DROP TABLE IF EXISTS `dede_channeltype`;

CREATE TABLE `dede_channeltype` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `nid` varchar(20) NOT NULL DEFAULT '',
  `typename` varchar(30) NOT NULL DEFAULT '',
  `maintable` varchar(50) NOT NULL DEFAULT 'dede_archives',
  `addtable` varchar(50) NOT NULL DEFAULT '',
  `addcon` varchar(30) NOT NULL DEFAULT '',
  `mancon` varchar(30) NOT NULL DEFAULT '',
  `editcon` varchar(30) NOT NULL DEFAULT '',
  `useraddcon` varchar(30) NOT NULL DEFAULT '',
  `usermancon` varchar(30) NOT NULL DEFAULT '',
  `usereditcon` varchar(30) NOT NULL DEFAULT '',
  `fieldset` text,
  `listfields` text,
  `allfields` text,
  `issystem` smallint(6) NOT NULL DEFAULT '0',
  `isshow` smallint(6) NOT NULL DEFAULT '1',
  `issend` smallint(6) NOT NULL DEFAULT '0',
  `arcsta` smallint(6) NOT NULL DEFAULT '-1',
  `usertype` char(10) NOT NULL DEFAULT '',
  `sendrank` smallint(6) NOT NULL DEFAULT '10',
  `isdefault` smallint(6) NOT NULL DEFAULT '0',
  `needdes` tinyint(1) NOT NULL DEFAULT '1',
  `needpic` tinyint(1) NOT NULL DEFAULT '1',
  `titlename` varchar(20) NOT NULL DEFAULT '标题',
  `onlyone` smallint(6) NOT NULL DEFAULT '0',
  `dfcid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nid` (`nid`,`isshow`,`arcsta`,`sendrank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_channeltype` */

insert  into `dede_channeltype`(`id`,`nid`,`typename`,`maintable`,`addtable`,`addcon`,`mancon`,`editcon`,`useraddcon`,`usermancon`,`usereditcon`,`fieldset`,`listfields`,`allfields`,`issystem`,`isshow`,`issend`,`arcsta`,`usertype`,`sendrank`,`isdefault`,`needdes`,`needpic`,`titlename`,`onlyone`,`dfcid`) values (1,'article','普通文章','dede_archives','dede_addonarticle','article_add.php','content_list.php','article_edit.php','article_add.php','content_list.php','article_edit.php','<field:body itemname=\"文章内容\" autofield=\"0\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"split\">	\n</field:body>	\n','','',1,1,1,-1,'',10,0,1,1,'标题',0,0);
insert  into `dede_channeltype`(`id`,`nid`,`typename`,`maintable`,`addtable`,`addcon`,`mancon`,`editcon`,`useraddcon`,`usermancon`,`usereditcon`,`fieldset`,`listfields`,`allfields`,`issystem`,`isshow`,`issend`,`arcsta`,`usertype`,`sendrank`,`isdefault`,`needdes`,`needpic`,`titlename`,`onlyone`,`dfcid`) values (2,'image','图片集','dede_archives','dede_addonimages','album_add.php','content_i_list.php','album_edit.php','album_add.php','content_list.php','album_edit.php','<field:pagestyle itemname=\"页面风格\" type=\"number\" isnull=\"true\" default=\"2\" rename=\"\" notsend=\"1\" />	\n<field:imgurls itemname=\"图片集合\" type=\"img\" isnull=\"true\" default=\"\" rename=\"\" page=\"split\"/>	\n<field:body itemname=\"图集内容\" autofield=\"0\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\"></field:body>','','',1,1,1,-1,'',10,0,1,1,'标题',0,0);
insert  into `dede_channeltype`(`id`,`nid`,`typename`,`maintable`,`addtable`,`addcon`,`mancon`,`editcon`,`useraddcon`,`usermancon`,`usereditcon`,`fieldset`,`listfields`,`allfields`,`issystem`,`isshow`,`issend`,`arcsta`,`usertype`,`sendrank`,`isdefault`,`needdes`,`needpic`,`titlename`,`onlyone`,`dfcid`) values (3,'soft','软件','dede_archives','dede_addonsoft','soft_add.php','content_i_list.php','soft_edit.php','','','','<field:filetype islist=\"1\" itemname=\"文件类型\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:language islist=\"1\" itemname=\"语言\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:softtype islist=\"1\" itemname=\"软件类型\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:accredit islist=\"1\" itemname=\"授权方式\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:os islist=\"1\" itemname=\"操作系统\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:softrank  islist=\"1\" itemname=\"软件等级\" type=\"int\" isnull=\"true\" default=\"3\" rename=\"\" function=\"GetRankStar(@me)\" notsend=\"1\"/>	\n<field:officialUrl  itemname=\"官方网址\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:officialDemo itemname=\"演示网址\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:softsize  itemname=\"软件大小\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:softlinks  itemname=\"软件地址\" type=\"softlinks\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:introduce  itemname=\"详细介绍\" type=\"htmltext\" isnull=\"trnue\" default=\"\" rename=\"\" />	\n<field:daccess islist=\"1\" itemname=\"下载级别\" type=\"int\" isnull=\"true\" default=\"0\" rename=\"\" function=\"\" notsend=\"1\"/>	\n<field:needmoney islist=\"1\" itemname=\"需要金币\" type=\"int\" isnull=\"true\" default=\"0\" rename=\"\" function=\"\" notsend=\"1\" />','filetype,language,softtype,os,accredit,softrank','',1,1,1,-1,'',10,0,1,1,'标题',0,0);
insert  into `dede_channeltype`(`id`,`nid`,`typename`,`maintable`,`addtable`,`addcon`,`mancon`,`editcon`,`useraddcon`,`usermancon`,`usereditcon`,`fieldset`,`listfields`,`allfields`,`issystem`,`isshow`,`issend`,`arcsta`,`usertype`,`sendrank`,`isdefault`,`needdes`,`needpic`,`titlename`,`onlyone`,`dfcid`) values (-1,'spec','专题','dede_archives','dede_addonspec','spec_add.php','content_s_list.php','spec_edit.php','','','','<field:note type=\"specialtopic\" isnull=\"true\" default=\"\" rename=\"\"/>','','',1,1,0,-1,'',10,0,1,1,'标题',0,0);
insert  into `dede_channeltype`(`id`,`nid`,`typename`,`maintable`,`addtable`,`addcon`,`mancon`,`editcon`,`useraddcon`,`usermancon`,`usereditcon`,`fieldset`,`listfields`,`allfields`,`issystem`,`isshow`,`issend`,`arcsta`,`usertype`,`sendrank`,`isdefault`,`needdes`,`needpic`,`titlename`,`onlyone`,`dfcid`) values (6,'shop','商品','dede_archives','dede_addonshop','archives_add.php','content_list.php','archives_edit.php','archives_add.php','content_list.php','archives_edit.php','<field:body itemname=\"详细介绍\" autofield=\"1\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"\" page=\"split\">	\n</field:body>	\n<field:price itemname=\"市场价\" autofield=\"1\" notsend=\"0\" type=\"float\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"\">	\n</field:price>	\n<field:trueprice itemname=\"优惠价\" autofield=\"1\" notsend=\"0\" type=\"float\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"\">	\n</field:trueprice>	\n<field:brand itemname=\"品牌\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:brand>	\n<field:units itemname=\"计量单位\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:units>	\n\n	\n\n<field:vocation itemname=\"行业\" autofield=\"1\" notsend=\"0\"type=\"stepselect\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:vocation>	\n\n<field:infotype itemname=\"信息类型\" autofield=\"1\" notsend=\"0\" type=\"stepselect\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:infotype>	\n\n<field:uptime itemname=\"上架时间\" autofield=\"1\" notsend=\"0\" type=\"datetime\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:uptime>	\n','price,trueprice,brand,units','',0,1,1,-1,'',10,0,1,1,'商品名称',0,0);
insert  into `dede_channeltype`(`id`,`nid`,`typename`,`maintable`,`addtable`,`addcon`,`mancon`,`editcon`,`useraddcon`,`usermancon`,`usereditcon`,`fieldset`,`listfields`,`allfields`,`issystem`,`isshow`,`issend`,`arcsta`,`usertype`,`sendrank`,`isdefault`,`needdes`,`needpic`,`titlename`,`onlyone`,`dfcid`) values (-8,'infos','分类信息','dede_archives','dede_addoninfos','archives_sg_add.php','content_sg_list.php','archives_sg_edit.php','archives_sg_add.php','content_sg_list.php','archives_sg_edit.php','<field:channel itemname=\"频道id\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:channel>	\n<field:arcrank itemname=\"浏览权限\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"5\" page=\"\"></field:arcrank>	\n<field:mid itemname=\"会员id\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:mid>	\n<field:click itemname=\"点击\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:click>	\n<field:title itemname=\"标题\" autofield=\"0\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"60\" page=\"\"></field:title>	\n<field:senddate itemname=\"发布时间\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:senddate>	\n<field:flag itemname=\"推荐属性\" autofield=\"0\" notsend=\"0\" type=\"checkbox\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:flag>	\n<field:litpic itemname=\"缩略图\" autofield=\"0\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"60\" page=\"\"></field:litpic>	\n<field:userip itemname=\"会员IP\" autofield=\"0\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"0\"  maxlength=\"15\" page=\"\"></field:userip>	\n<field:lastpost itemname=\"最后评论时间\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:lastpost>	\n<field:scores itemname=\"评论积分\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:scores>	\n<field:goodpost itemname=\"好评数\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:goodpost>	\n<field:badpost itemname=\"差评数\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:badpost>	\n<field:nativeplace itemname=\"地区\" autofield=\"1\" notsend=\"0\" type=\"stepselect\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"250\" page=\"\">	\n</field:nativeplace>	\n<field:infotype itemname=\"信息类型\" autofield=\"1\" notsend=\"0\" type=\"stepselect\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"250\" page=\"\">	\n</field:infotype>	\n<field:body itemname=\"信息内容\" autofield=\"1\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:body>	\n<field:endtime itemname=\"截止日期\" autofield=\"1\" notsend=\"0\" type=\"datetime\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:endtime>	\n<field:linkman itemname=\"联系人\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"50\" page=\"\">	\n</field:linkman>	\n<field:tel itemname=\"联系电话\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\" maxlength=\"50\" page=\"\">	\n</field:tel>	\n<field:email itemname=\"电子邮箱\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"50\" page=\"\">	\n</field:email>	\n<field:address itemname=\"地址\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"100\" page=\"\">	\n</field:address>	\n','channel,arcrank,mid,click,title,senddate,flag,litpic,lastpost,scores,goodpost,badpost,nativeplace,infotype,endtime','',-1,1,1,-1,'',0,0,0,1,'信息标题',0,0);

/*Table structure for table `dede_co_htmls` */

DROP TABLE IF EXISTS `dede_co_htmls`;

CREATE TABLE `dede_co_htmls` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `nid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `litpic` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `isdown` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isexport` tinyint(1) NOT NULL DEFAULT '0',
  `result` mediumtext,
  PRIMARY KEY (`aid`),
  KEY `nid` (`nid`),
  KEY `typeid` (`typeid`,`title`,`url`,`dtime`,`isdown`,`isexport`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_co_htmls` */

/*Table structure for table `dede_co_mediaurls` */

DROP TABLE IF EXISTS `dede_co_mediaurls`;

CREATE TABLE `dede_co_mediaurls` (
  `nid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hash` char(32) NOT NULL DEFAULT '',
  `tofile` char(60) NOT NULL DEFAULT '',
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_co_mediaurls` */

/*Table structure for table `dede_co_note` */

DROP TABLE IF EXISTS `dede_co_note`;

CREATE TABLE `dede_co_note` (
  `nid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `channelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `notename` varchar(50) NOT NULL DEFAULT '',
  `sourcelang` varchar(10) NOT NULL DEFAULT 'gb2312',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `cotime` int(10) unsigned NOT NULL DEFAULT '0',
  `pnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isok` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `usemore` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listconfig` text,
  `itemconfig` text,
  PRIMARY KEY (`nid`),
  KEY `isok` (`isok`,`channelid`,`cotime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_co_note` */

/*Table structure for table `dede_co_onepage` */

DROP TABLE IF EXISTS `dede_co_onepage`;

CREATE TABLE `dede_co_onepage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(60) NOT NULL DEFAULT '',
  `title` varchar(60) NOT NULL DEFAULT '',
  `issource` smallint(6) NOT NULL DEFAULT '1',
  `lang` varchar(10) NOT NULL DEFAULT 'gb2312',
  `rule` text,
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `dede_co_onepage` */

insert  into `dede_co_onepage`(`id`,`url`,`title`,`issource`,`lang`,`rule`) values (5,'www.dedecms.com','织梦网络',1,'gb2312','<div class=\"content\">{@body}<div class=\"cupage\">');
insert  into `dede_co_onepage`(`id`,`url`,`title`,`issource`,`lang`,`rule`) values (4,'www.techweb.com.cn','Techweb',1,'gb2312','<div class=\"content_txt\">{@body}</div>	\n');
insert  into `dede_co_onepage`(`id`,`url`,`title`,`issource`,`lang`,`rule`) values (6,'tw.news.yahoo.com','台湾雅虎',1,'big5','<div id=\"ynwsartcontent\">{@body}</div>	\n');

/*Table structure for table `dede_co_urls` */

DROP TABLE IF EXISTS `dede_co_urls`;

CREATE TABLE `dede_co_urls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `nid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_co_urls` */

/*Table structure for table `dede_diyforms` */

DROP TABLE IF EXISTS `dede_diyforms`;

CREATE TABLE `dede_diyforms` (
  `diyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `posttemplate` varchar(50) NOT NULL,
  `viewtemplate` varchar(50) NOT NULL,
  `listtemplate` varchar(50) NOT NULL,
  `table` varchar(50) NOT NULL DEFAULT '',
  `info` text,
  `public` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`diyid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_diyforms` */

/*Table structure for table `dede_dl_log` */

DROP TABLE IF EXISTS `dede_dl_log`;

CREATE TABLE `dede_dl_log` (
  `id` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(16) NOT NULL,
  `lang` char(6) NOT NULL,
  `dtype` varchar(10) NOT NULL,
  `dltime` int(10) unsigned NOT NULL DEFAULT '0',
  `referrer` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dltime` (`dltime`),
  KEY `dl_ip` (`ip`,`dltime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_dl_log` */

/*Table structure for table `dede_downloads` */

DROP TABLE IF EXISTS `dede_downloads`;

CREATE TABLE `dede_downloads` (
  `hash` char(32) NOT NULL,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `downloads` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_downloads` */

/*Table structure for table `dede_erradd` */

DROP TABLE IF EXISTS `dede_erradd`;

CREATE TABLE `dede_erradd` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` mediumint(8) unsigned NOT NULL,
  `mid` mediumint(8) unsigned DEFAULT NULL,
  `title` char(60) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `errtxt` mediumtext,
  `oktxt` mediumtext,
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_erradd` */

/*Table structure for table `dede_feedback` */

DROP TABLE IF EXISTS `dede_feedback`;

CREATE TABLE `dede_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `arctitle` varchar(60) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `ischeck` smallint(6) NOT NULL DEFAULT '0',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bad` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `good` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ftype` set('feedback','good','bad') NOT NULL DEFAULT 'feedback',
  `face` smallint(5) unsigned NOT NULL DEFAULT '0',
  `msg` text,
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`,`ischeck`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_feedback` */

/*Table structure for table `dede_flink` */

DROP TABLE IF EXISTS `dede_flink`;

CREATE TABLE `dede_flink` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sortrank` smallint(6) NOT NULL DEFAULT '0',
  `url` char(60) NOT NULL DEFAULT '',
  `webname` char(30) NOT NULL DEFAULT '',
  `msg` char(200) NOT NULL DEFAULT '',
  `email` char(50) NOT NULL DEFAULT '',
  `logo` char(60) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ischeck` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `dede_flink` */

insert  into `dede_flink`(`id`,`sortrank`,`url`,`webname`,`msg`,`email`,`logo`,`dtime`,`typeid`,`ischeck`) values (2,1,'http://www.dedecms.com','织梦CMS官方','','','',1226375403,1,2);
insert  into `dede_flink`(`id`,`sortrank`,`url`,`webname`,`msg`,`email`,`logo`,`dtime`,`typeid`,`ischeck`) values (9,1,'http://docs.dedecms.com/','DedeCMS维基手册','','','',1227772717,1,2);
insert  into `dede_flink`(`id`,`sortrank`,`url`,`webname`,`msg`,`email`,`logo`,`dtime`,`typeid`,`ischeck`) values (8,1,'http://bbs.dedecms.com','织梦技术论坛','','','',1227772703,1,2);

/*Table structure for table `dede_flinktype` */

DROP TABLE IF EXISTS `dede_flinktype`;

CREATE TABLE `dede_flinktype` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `dede_flinktype` */

insert  into `dede_flinktype`(`id`,`typename`) values (1,'综合网站');
insert  into `dede_flinktype`(`id`,`typename`) values (2,'娱乐类');
insert  into `dede_flinktype`(`id`,`typename`) values (3,'教育类');
insert  into `dede_flinktype`(`id`,`typename`) values (4,'计算机类');
insert  into `dede_flinktype`(`id`,`typename`) values (5,'电子商务');
insert  into `dede_flinktype`(`id`,`typename`) values (6,'网上信息');
insert  into `dede_flinktype`(`id`,`typename`) values (7,'论坛类');
insert  into `dede_flinktype`(`id`,`typename`) values (8,'其它类型');

/*Table structure for table `dede_freelist` */

DROP TABLE IF EXISTS `dede_freelist`;

CREATE TABLE `dede_freelist` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `namerule` varchar(50) NOT NULL DEFAULT '',
  `listdir` varchar(60) NOT NULL DEFAULT '',
  `defaultpage` varchar(20) NOT NULL DEFAULT '',
  `nodefault` smallint(6) NOT NULL DEFAULT '0',
  `templet` varchar(50) NOT NULL DEFAULT '',
  `edtime` int(11) NOT NULL DEFAULT '0',
  `maxpage` smallint(5) unsigned NOT NULL DEFAULT '100',
  `click` int(11) NOT NULL DEFAULT '1',
  `listtag` mediumtext,
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `dede_freelist` */

insert  into `dede_freelist`(`aid`,`title`,`namerule`,`listdir`,`defaultpage`,`nodefault`,`templet`,`edtime`,`maxpage`,`click`,`listtag`,`keywords`,`description`) values (1,'测试内容','{listdir}/index_{listid}_{page}.html','{cmspath}/freelist/','index.html',1,'{style}/list_free.htm',1289712633,100,0,'{dede:list  pagesize=\"30\" col=\"1\" titlelen=\"60\" orderby=\"pubdate\" orderway=\"desc\"  typeid=\"1\"  channel=\"1\" }<li>[field:imglink/] [field:textlink/] <span class=info><small>日期：</small>[field:pubdate function=\"getdatemk(@me)\"/] <small>点击：</small>[field:click/] <small>好评：</small>[field:scores/] </span>	\n<p class=intro>[field:description/]...</p></li>{/dede:list}','阿三大厦大大','阿三大厦大厦大撒');
insert  into `dede_freelist`(`aid`,`title`,`namerule`,`listdir`,`defaultpage`,`nodefault`,`templet`,`edtime`,`maxpage`,`click`,`listtag`,`keywords`,`description`) values (10,'Google SiteMap 生成器','{listdir}googlemap_{page}.xml','{cmspath}','index.html',1,'{style}/googlemap.htm',1226884666,100,0,'{dede:list  pagesize=\"500\" col=\"1\" titlelen=\"60\" orderby=\"pubdate\" orderway=\"desc\" 	\n channel=\"1\"  keyword=\"\" }<url>	\n   <loc>[field:arcurl function=\"Gmapurl(@me)\"/]</loc> 	\n   <title>[field:title function=\"HtmlReplace(@me)\"/]</title>	\n   <news:news>	\n  <news:keywords>[field:keywords/]</news:keywords>	\n <news:publication_date>[field:senddate function=\"strftime(\"%Y-%m-%d\",@me)\"/]</news:publication_date>	\n </news:news>	\n</url>{/dede:list}','','');

/*Table structure for table `dede_homepageset` */

DROP TABLE IF EXISTS `dede_homepageset`;

CREATE TABLE `dede_homepageset` (
  `templet` char(50) NOT NULL DEFAULT '',
  `position` char(30) NOT NULL DEFAULT '',
  `showmod` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_homepageset` */

insert  into `dede_homepageset`(`templet`,`position`,`showmod`) values ('default/index.htm','../index.html',0);

/*Table structure for table `dede_keywords` */

DROP TABLE IF EXISTS `dede_keywords`;

CREATE TABLE `dede_keywords` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` char(16) NOT NULL DEFAULT '',
  `rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sta` smallint(6) NOT NULL DEFAULT '1',
  `rpurl` char(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `keyword` (`keyword`,`rank`,`sta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_keywords` */

/*Table structure for table `dede_log` */

DROP TABLE IF EXISTS `dede_log`;

CREATE TABLE `dede_log` (
  `lid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `adminid` smallint(8) unsigned NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `method` char(10) NOT NULL DEFAULT '',
  `query` char(200) NOT NULL DEFAULT '',
  `cip` char(15) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_log` */

/*Table structure for table `dede_member` */

DROP TABLE IF EXISTS `dede_member`;

CREATE TABLE `dede_member` (
  `mid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mtype` varchar(20) NOT NULL DEFAULT '个人',
  `userid` char(20) NOT NULL DEFAULT '',
  `pwd` char(32) NOT NULL DEFAULT '',
  `uname` char(36) NOT NULL DEFAULT '',
  `sex` enum('男','女','保密') NOT NULL DEFAULT '保密',
  `rank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `exptime` smallint(6) NOT NULL DEFAULT '0',
  `money` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` char(50) NOT NULL DEFAULT '',
  `scores` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `matt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spacesta` smallint(6) NOT NULL DEFAULT '0',
  `face` char(50) NOT NULL DEFAULT '',
  `safequestion` smallint(5) unsigned NOT NULL DEFAULT '0',
  `safeanswer` char(30) NOT NULL DEFAULT '',
  `jointime` int(10) unsigned NOT NULL DEFAULT '0',
  `joinip` char(16) NOT NULL DEFAULT '',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginip` char(16) NOT NULL DEFAULT '',
  `checkmail` smallint(6) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`mid`),
  KEY `userid` (`userid`,`sex`),
  KEY `logintime` (`logintime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `dede_member` */

insert  into `dede_member`(`mid`,`mtype`,`userid`,`pwd`,`uname`,`sex`,`rank`,`uptime`,`exptime`,`money`,`email`,`scores`,`matt`,`spacesta`,`face`,`safequestion`,`safeanswer`,`jointime`,`joinip`,`logintime`,`loginip`,`checkmail`) values (1,'个人','admin','21232f297a57a5a743894a0e4a801fc3','admin','男',100,0,0,0,'',10000,10,0,'',0,'',1490614423,'',1491974809,'127.0.0.1',-1);

/*Table structure for table `dede_member_company` */

DROP TABLE IF EXISTS `dede_member_company`;

CREATE TABLE `dede_member_company` (
  `mid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `company` varchar(36) NOT NULL DEFAULT '',
  `product` varchar(50) NOT NULL DEFAULT '',
  `place` smallint(5) unsigned NOT NULL DEFAULT '0',
  `vocation` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cosize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tel` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `linkman` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(50) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `introduce` text,
  `comface` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_company` */

/*Table structure for table `dede_member_feed` */

DROP TABLE IF EXISTS `dede_member_feed`;

CREATE TABLE `dede_member_feed` (
  `fid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mid` smallint(8) unsigned NOT NULL DEFAULT '0',
  `userid` char(20) NOT NULL DEFAULT '',
  `uname` char(36) NOT NULL DEFAULT '',
  `type` char(20) CHARACTER SET gb2312 NOT NULL DEFAULT '0',
  `aid` mediumint(8) NOT NULL DEFAULT '0',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `title` char(253) NOT NULL,
  `note` char(200) NOT NULL DEFAULT '',
  `ischeck` smallint(6) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_feed` */

/*Table structure for table `dede_member_flink` */

DROP TABLE IF EXISTS `dede_member_flink`;

CREATE TABLE `dede_member_flink` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_flink` */

/*Table structure for table `dede_member_friends` */

DROP TABLE IF EXISTS `dede_member_friends`;

CREATE TABLE `dede_member_friends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `floginid` char(20) NOT NULL DEFAULT '',
  `funame` char(36) NOT NULL DEFAULT '',
  `mid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ftype` tinyint(4) NOT NULL DEFAULT '0',
  `groupid` int(8) NOT NULL DEFAULT '1',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_friends` */

/*Table structure for table `dede_member_group` */

DROP TABLE IF EXISTS `dede_member_group`;

CREATE TABLE `dede_member_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL,
  `mid` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_group` */

insert  into `dede_member_group`(`id`,`groupname`,`mid`) values (1,'朋友',0);

/*Table structure for table `dede_member_guestbook` */

DROP TABLE IF EXISTS `dede_member_guestbook`;

CREATE TABLE `dede_member_guestbook` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gid` varchar(20) NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `uname` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(50) NOT NULL DEFAULT '',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` text,
  PRIMARY KEY (`aid`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_guestbook` */

/*Table structure for table `dede_member_model` */

DROP TABLE IF EXISTS `dede_member_model`;

CREATE TABLE `dede_member_model` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `table` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL,
  `state` int(2) NOT NULL DEFAULT '0',
  `issystem` int(2) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_model` */

insert  into `dede_member_model`(`id`,`name`,`table`,`description`,`state`,`issystem`,`info`) values (1,'个人','dede_member_person','个人会员模型',1,1,'	\n<field:onlynet itemname=\"联系方式限制\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"1\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:onlynet>	\n	\n<field:sex itemname=\"性别\" autofield=\"1\" type=\"radio\" isnull=\"true\" default=\"男,女,保密\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:sex>	\n	\n<field:uname itemname=\"昵称/公司名称\" autofield=\"1\" type=\"textchar\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:uname>	\n	\n<field:qq itemname=\"QQ\" autofield=\"1\" type=\"textchar\" isnull=\"true\" default=\"\"  maxlength=\"12\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:qq>	\n	\n<field:msn itemname=\"MSN\" autofield=\"1\" type=\"textchar\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:msn>	\n	\n<field:tel itemname=\"电话号码\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"15\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:tel>	\n	\n<field:mobile itemname=\"手机\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"15\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:mobile>	\n	\n<field:place itemname=\"目前所在地\" autofield=\"1\" type=\"int\" default=\"0\"  maxlength=\"5\" issearch=\"0\" isshow=\"0\" state=\"1\">	\n</field:place>	\n	\n	\n<field:oldplace itemname=\"家乡所在地\" autofield=\"1\" type=\"int\" default=\"0\"  maxlength=\"5\" issearch=\"0\" isshow=\"0\" state=\"1\">	\n</field:oldplace>	\n	\n	\n<field:birthday itemname=\"生日\" autofield=\"1\" type=\"datetime\" isnull=\"true\" default=\"\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:birthday>	\n	\n<field:star itemname=\"星座\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"1\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:star>	\n	\n<field:income itemname=\"收入\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:income>	\n	\n<field:education itemname=\"学历\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:education>	\n	\n<field:height itemname=\"身高\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"160\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:height>	\n	\n<field:bodytype itemname=\"体重\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:bodytype>	\n	\n<field:blood itemname=\"血型\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:blood>	\n	\n<field:vocation itemname=\"职业\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:vocation>	\n	\n<field:smoke itemname=\"吸烟\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:smoke>	\n	\n<field:marital itemname=\"婚姻状况\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:marital>	\n	\n<field:house itemname=\"住房\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:house>	\n	\n<field:drink itemname=\"饮酒\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:drink>	\n	\n<field:datingtype itemname=\"交友\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:datingtype>	\n	\n<field:language itemname=\"语言\" autofield=\"1\" type=\"checkbox\" isnull=\"true\" default=\"普通话,上海话,广东话,英语,日语,韩语,法语,意大利语,德语,西班牙语,俄语,阿拉伯语\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:language>	\n	\n	\n<field:nature itemname=\"性格\" autofield=\"1\" type=\"checkbox\" isnull=\"true\" default=\"性格外向,性格内向,活泼开朗,豪放不羁,患得患失,冲动,幽默,稳重,轻浮,沉默寡言,多愁善感,时喜时悲,附庸风雅,能说会道,坚强,脆弱,幼稚,成熟,快言快语,损人利己,狡猾善变,交际广泛,优柔寡断,自私,真诚,独立,依赖,难以琢磨,悲观消极,郁郁寡欢,胆小怕事,乐观向上,任性,自负,自卑,拜金,温柔体贴,小心翼翼,暴力倾向,逆来顺受,不拘小节,暴躁,倔强,豪爽,害羞,婆婆妈妈,敢做敢当,助人为乐,耿直,虚伪,孤僻,老实,守旧,敏感,迟钝,婆婆妈妈,武断,果断,刻薄\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:nature>	\n	\n<field:lovemsg itemname=\"人生格言\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"100\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:lovemsg>	\n	\n<field:address itemname=\"家庭住址\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:address>	\n	\n<field:uptime itemname=\"更新时间\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"\"  maxlength=\"10\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:uptime>	\n');
insert  into `dede_member_model`(`id`,`name`,`table`,`description`,`state`,`issystem`,`info`) values (2,'企业','dede_member_company','公司企业会员模型',1,1,'	\n<field:company itemname=\"公司名称\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"36\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:company>	\n	\n<field:product itemname=\"公司产品\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:product>	\n	\n<field:place itemname=\"所在地址\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:place>	\n	\n<field:vocation itemname=\"所属行业\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:vocation>	\n	\n<field:cosize itemname=\"公司规模\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:cosize>	\n	\n<field:tel itemname=\"电话号码\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:tel>	\n	\n<field:fax itemname=\"传真\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:fax>	\n	\n<field:linkman itemname=\"联系人\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"20\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:linkman>	\n	\n<field:address itemname=\"详细地址\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:address>	\n	\n<field:mobile itemname=\"手机\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:mobile>	\n	\n<field:email itemname=\"邮箱\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:email>	\n	\n<field:url itemname=\"地址\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:url>	\n	\n<field:uptime itemname=\"更新时间\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"10\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:uptime>	\n	\n<field:checked itemname=\"是否审核\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"1\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:checked>	\n	\n<field:introduce itemname=\"公司简介\" autofield=\"1\" type=\"multitext\" isnull=\"true\" default=\"\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:introduce>	\n	\n<field:comface itemname=\"公司标志\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"255\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:comface>	\n');

/*Table structure for table `dede_member_msg` */

DROP TABLE IF EXISTS `dede_member_msg`;

CREATE TABLE `dede_member_msg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` char(20) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `ischeck` smallint(6) NOT NULL DEFAULT '0',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` text,
  PRIMARY KEY (`id`),
  KEY `id` (`ischeck`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_msg` */

/*Table structure for table `dede_member_operation` */

DROP TABLE IF EXISTS `dede_member_operation`;

CREATE TABLE `dede_member_operation` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `buyid` varchar(80) NOT NULL DEFAULT '',
  `pname` varchar(50) NOT NULL DEFAULT '',
  `product` varchar(10) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `mid` int(11) NOT NULL DEFAULT '0',
  `sta` int(11) NOT NULL DEFAULT '0',
  `oldinfo` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `buyid` (`buyid`),
  KEY `pid` (`pid`,`mid`,`sta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_operation` */

/*Table structure for table `dede_member_person` */

DROP TABLE IF EXISTS `dede_member_person`;

CREATE TABLE `dede_member_person` (
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `onlynet` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sex` enum('男','女','保密') NOT NULL DEFAULT '男',
  `uname` char(30) NOT NULL DEFAULT '',
  `qq` char(12) NOT NULL DEFAULT '',
  `msn` char(50) NOT NULL DEFAULT '',
  `tel` varchar(15) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `place` smallint(5) unsigned NOT NULL DEFAULT '0',
  `oldplace` smallint(5) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '1980-01-01',
  `star` smallint(6) unsigned NOT NULL DEFAULT '1',
  `income` smallint(6) NOT NULL DEFAULT '0',
  `education` smallint(6) NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '160',
  `bodytype` smallint(6) NOT NULL DEFAULT '0',
  `blood` smallint(6) NOT NULL DEFAULT '0',
  `vocation` smallint(6) NOT NULL DEFAULT '0',
  `smoke` smallint(6) NOT NULL DEFAULT '0',
  `marital` smallint(6) NOT NULL DEFAULT '0',
  `house` smallint(6) NOT NULL DEFAULT '0',
  `drink` smallint(6) NOT NULL DEFAULT '0',
  `datingtype` smallint(6) NOT NULL DEFAULT '0',
  `language` set('普通话','上海话','广东话','英语','日语','韩语','法语','意大利语','德语','西班牙语','俄语','阿拉伯语') DEFAULT NULL,
  `nature` set('性格外向','性格内向','活泼开朗','豪放不羁','患得患失','冲动','幽默','稳重','轻浮','沉默寡言','多愁善感','时喜时悲','附庸风雅','能说会道','坚强','脆弱','幼稚','成熟','快言快语','损人利己','狡猾善变','交际广泛','优柔寡断','自私','真诚','独立','依赖','难以琢磨','悲观消极','郁郁寡欢','胆小怕事','乐观向上','任性','自负','自卑','拜金','温柔体贴','小心翼翼','暴力倾向','逆来顺受','不拘小节','暴躁','倔强','豪爽','害羞','婆婆妈妈','敢做敢当','助人为乐','耿直','虚伪','孤僻','老实','守旧','敏感','迟钝','婆婆妈妈','武断','果断','刻薄') DEFAULT NULL,
  `lovemsg` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_person` */

insert  into `dede_member_person`(`mid`,`onlynet`,`sex`,`uname`,`qq`,`msn`,`tel`,`mobile`,`place`,`oldplace`,`birthday`,`star`,`income`,`education`,`height`,`bodytype`,`blood`,`vocation`,`smoke`,`marital`,`house`,`drink`,`datingtype`,`language`,`nature`,`lovemsg`,`address`,`uptime`) values (1,1,'男','admin','','','','',0,0,'1980-01-01',1,0,0,160,0,0,0,0,0,0,0,0,'','','','',0);

/*Table structure for table `dede_member_pms` */

DROP TABLE IF EXISTS `dede_member_pms`;

CREATE TABLE `dede_member_pms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `floginid` varchar(20) NOT NULL DEFAULT '',
  `fromid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tologinid` char(20) NOT NULL DEFAULT '',
  `folder` enum('inbox','outbox') DEFAULT 'inbox',
  `subject` varchar(60) NOT NULL DEFAULT '',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `writetime` int(10) unsigned NOT NULL DEFAULT '0',
  `hasview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `message` text,
  PRIMARY KEY (`id`),
  KEY `sendtime` (`sendtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_pms` */

/*Table structure for table `dede_member_snsmsg` */

DROP TABLE IF EXISTS `dede_member_snsmsg`;

CREATE TABLE `dede_member_snsmsg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` varchar(20) NOT NULL,
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_snsmsg` */

/*Table structure for table `dede_member_space` */

DROP TABLE IF EXISTS `dede_member_space`;

CREATE TABLE `dede_member_space` (
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pagesize` smallint(5) unsigned NOT NULL DEFAULT '10',
  `matt` smallint(6) NOT NULL DEFAULT '0',
  `spacename` varchar(50) NOT NULL DEFAULT '',
  `spacelogo` varchar(50) NOT NULL DEFAULT '',
  `spacestyle` varchar(20) NOT NULL DEFAULT '',
  `sign` varchar(100) NOT NULL DEFAULT '没签名',
  `spacenews` text,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_space` */

insert  into `dede_member_space`(`mid`,`pagesize`,`matt`,`spacename`,`spacelogo`,`spacestyle`,`sign`,`spacenews`) values (1,10,0,'admin的空间','','person','','');

/*Table structure for table `dede_member_stow` */

DROP TABLE IF EXISTS `dede_member_stow`;

CREATE TABLE `dede_member_stow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` char(60) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_stow` */

/*Table structure for table `dede_member_stowtype` */

DROP TABLE IF EXISTS `dede_member_stowtype`;

CREATE TABLE `dede_member_stowtype` (
  `stowname` varchar(30) NOT NULL,
  `indexname` varchar(30) NOT NULL,
  `indexurl` varchar(50) NOT NULL,
  PRIMARY KEY (`stowname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_stowtype` */

insert  into `dede_member_stowtype`(`stowname`,`indexname`,`indexurl`) values ('sys','系统收藏','archives_do.php');
insert  into `dede_member_stowtype`(`stowname`,`indexname`,`indexurl`) values ('book','小说收藏','/book/book.php?bid');

/*Table structure for table `dede_member_tj` */

DROP TABLE IF EXISTS `dede_member_tj`;

CREATE TABLE `dede_member_tj` (
  `mid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `article` smallint(5) unsigned NOT NULL DEFAULT '0',
  `album` smallint(5) unsigned NOT NULL DEFAULT '0',
  `archives` smallint(5) unsigned NOT NULL DEFAULT '0',
  `homecount` int(10) unsigned NOT NULL DEFAULT '0',
  `pagecount` int(10) unsigned NOT NULL DEFAULT '0',
  `feedback` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friend` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stow` smallint(5) unsigned NOT NULL DEFAULT '0',
  `soft` int(10) NOT NULL DEFAULT '0',
  `info` int(10) NOT NULL DEFAULT '0',
  `shop` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_tj` */

insert  into `dede_member_tj`(`mid`,`article`,`album`,`archives`,`homecount`,`pagecount`,`feedback`,`friend`,`stow`,`soft`,`info`,`shop`) values (1,0,0,0,0,0,0,0,0,0,0,0);

/*Table structure for table `dede_member_type` */

DROP TABLE IF EXISTS `dede_member_type`;

CREATE TABLE `dede_member_type` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL DEFAULT '0',
  `pname` varchar(50) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT '0',
  `exptime` int(11) NOT NULL DEFAULT '30',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_type` */

insert  into `dede_member_type`(`aid`,`rank`,`pname`,`money`,`exptime`) values (1,50,'中级会员半年',100,7);

/*Table structure for table `dede_member_vhistory` */

DROP TABLE IF EXISTS `dede_member_vhistory`;

CREATE TABLE `dede_member_vhistory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `loginid` char(20) NOT NULL DEFAULT '',
  `vid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vloginid` char(20) NOT NULL DEFAULT '',
  `count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `vip` char(15) NOT NULL DEFAULT '',
  `vtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `vtime` (`vtime`),
  KEY `mid` (`mid`,`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_member_vhistory` */

/*Table structure for table `dede_moneycard_record` */

DROP TABLE IF EXISTS `dede_moneycard_record`;

CREATE TABLE `dede_moneycard_record` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `ctid` int(11) NOT NULL DEFAULT '0',
  `cardid` varchar(50) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `isexp` smallint(6) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `utime` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `ctid` (`ctid`),
  KEY `cardid` (`cardid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_moneycard_record` */

/*Table structure for table `dede_moneycard_type` */

DROP TABLE IF EXISTS `dede_moneycard_type`;

CREATE TABLE `dede_moneycard_type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL DEFAULT '500',
  `money` int(11) NOT NULL DEFAULT '50',
  `pname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `dede_moneycard_type` */

insert  into `dede_moneycard_type`(`tid`,`num`,`money`,`pname`) values (1,100,30,'100点卡');
insert  into `dede_moneycard_type`(`tid`,`num`,`money`,`pname`) values (2,200,55,'200点卡');
insert  into `dede_moneycard_type`(`tid`,`num`,`money`,`pname`) values (3,300,75,'300点卡');

/*Table structure for table `dede_mtypes` */

DROP TABLE IF EXISTS `dede_mtypes`;

CREATE TABLE `dede_mtypes` (
  `mtypeid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mtypename` char(40) NOT NULL,
  `channelid` smallint(6) NOT NULL DEFAULT '1',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mtypeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_mtypes` */

/*Table structure for table `dede_multiserv_config` */

DROP TABLE IF EXISTS `dede_multiserv_config`;

CREATE TABLE `dede_multiserv_config` (
  `remoteuploads` smallint(6) NOT NULL DEFAULT '0',
  `remoteupUrl` text NOT NULL,
  `rminfo` text,
  `servinfo` mediumtext,
  PRIMARY KEY (`remoteuploads`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_multiserv_config` */

/*Table structure for table `dede_myad` */

DROP TABLE IF EXISTS `dede_myad`;

CREATE TABLE `dede_myad` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `clsid` smallint(5) NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tagname` varchar(30) NOT NULL DEFAULT '',
  `adname` varchar(60) NOT NULL DEFAULT '',
  `timeset` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `normbody` text,
  `expbody` text,
  PRIMARY KEY (`aid`),
  KEY `tagname` (`tagname`,`typeid`,`timeset`,`endtime`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_myad` */

/*Table structure for table `dede_myadtype` */

DROP TABLE IF EXISTS `dede_myadtype`;

CREATE TABLE `dede_myadtype` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_myadtype` */

/*Table structure for table `dede_mytag` */

DROP TABLE IF EXISTS `dede_mytag`;

CREATE TABLE `dede_mytag` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tagname` varchar(30) NOT NULL DEFAULT '',
  `timeset` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `normbody` text,
  `expbody` text,
  PRIMARY KEY (`aid`),
  KEY `tagname` (`tagname`,`typeid`,`timeset`,`endtime`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_mytag` */

/*Table structure for table `dede_payment` */

DROP TABLE IF EXISTS `dede_payment`;

CREATE TABLE `dede_payment` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(120) NOT NULL DEFAULT '',
  `fee` varchar(10) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `dede_payment` */

insert  into `dede_payment`(`id`,`code`,`name`,`fee`,`description`,`rank`,`config`,`enabled`,`cod`,`online`) values (3,'alipay','支付宝','2','支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/>DedeCMS联合支付宝推出支付宝接口。<br/><a href=\"https://www.alipay.com/himalayas/practicality_customer.htm?customer_external_id=C4335994340215837114&market_type=from_agent_contract&pro_codes=6ACD133C5F350958F7F62F29651356BB \" target=\"_blank\"><font color=\"red\">立即在线申请</font></a>',1,'a:4:{s:14:\"alipay_account\";a:4:{s:5:\"title\";s:14:\"支付宝用户账号\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:20:\"yuan12345xin@163.com\";}s:10:\"alipay_key\";a:4:{s:5:\"title\";s:14:\"交易安全校验码\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:6:\"dsfsdf\";}s:14:\"alipay_partner\";a:4:{s:5:\"title\";s:12:\"合作者身份ID\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:1:\"1\";}s:17:\"alipay_pay_method\";a:5:{s:5:\"title\";s:14:\"支付宝账号类型\";s:11:\"description\";s:52:\"请选择您最后一次跟支付宝签订的协议里面说明的接口类型\";s:4:\"type\";s:6:\"select\";s:5:\"iterm\";s:58:\"0:使用标准双接口,1:使用担保交易接口,2:使用即时到帐交易接口\";s:5:\"value\";s:1:\"1\";}}',1,0,1);
insert  into `dede_payment`(`id`,`code`,`name`,`fee`,`description`,`rank`,`config`,`enabled`,`cod`,`online`) values (2,'bank','银行汇款/转帐','0','银行名称	\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。	\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。',4,'a:0:{}',1,1,0);
insert  into `dede_payment`(`id`,`code`,`name`,`fee`,`description`,`rank`,`config`,`enabled`,`cod`,`online`) values (1,'cod','货到付款','0','开通城市：×××	\n货到付款区域：×××',3,'a:0:{}',1,1,0);
insert  into `dede_payment`(`id`,`code`,`name`,`fee`,`description`,`rank`,`config`,`enabled`,`cod`,`online`) values (6,'yeepay','YeePay易宝','12','YeePay易宝（北京通融通信息技术有限公司）是专业从事多元化电子支付业务一站式服务的领跑者。在立足于网上支付的同时，YeePay易宝不断创新，将互联网、手机、固定电话整合在一个平台上，继短信支付、手机充值之后，首家推出了YeePay易宝电话支付业务，真正实现了离线支付，为更多传统行业搭建了电子支付的高速公路。YeePay易宝融合世界先进的电子支付文化，聚合众多金融、电信、IT、互联网等领域内的巨擘，旨在通过创新的支付机制，推动中国电子商务新进程。YeePay易宝致力于成为世界一流的电子支付应用和服务提供商，专注于金融增值服务和移动增值服务两大领域，创新并推广多元化、低成本的、安全有效的支付服务。<input type=\"button\" name=\"Submit\" value=\"立即注册\" onclick=\"window.open(\"https://www.yeepay.com/selfservice/requestRegister.action\")\" />',2,'a:2:{s:10:\"yp_account\";a:4:{s:5:\"title\";s:8:\"商户编号\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:2:\"aa\";}s:6:\"yp_key\";a:4:{s:5:\"title\";s:8:\"商户密钥\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:3:\"dsa\";}}',1,0,1);

/*Table structure for table `dede_plus` */

DROP TABLE IF EXISTS `dede_plus`;

CREATE TABLE `dede_plus` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `plusname` varchar(30) NOT NULL DEFAULT '',
  `menustring` varchar(200) NOT NULL DEFAULT '',
  `mainurl` varchar(50) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `isshow` smallint(6) NOT NULL DEFAULT '1',
  `filelist` text,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `dede_plus` */

insert  into `dede_plus`(`aid`,`plusname`,`menustring`,`mainurl`,`writer`,`isshow`,`filelist`) values (27,'友情链接模块','<m:item name=\'友情链接\' link=\'friendlink_main.php\' rank=\'plus_友情链接\' target=\'main\' />','','织梦团队',1,'');
insert  into `dede_plus`(`aid`,`plusname`,`menustring`,`mainurl`,`writer`,`isshow`,`filelist`) values (24,'文件管理器','<m:item name=\'文件管理器\' link=\'file_manage_main.php\' rank=\'plus_文件管理器\' target=\'main\' />','','织梦团队',1,'');
insert  into `dede_plus`(`aid`,`plusname`,`menustring`,`mainurl`,`writer`,`isshow`,`filelist`) values (23,'百度新闻','<m:item name=\'百度新闻\' link=\'baidunews.php\' rank=\'plus_百度新闻\' target=\'main\' />','','织梦团队',1,'baidunews.php');
insert  into `dede_plus`(`aid`,`plusname`,`menustring`,`mainurl`,`writer`,`isshow`,`filelist`) values (28,'投票模块','<m:item name=\'投票模块\' link=\'vote_main.php\' rank=\'plus_投票模块\' target=\'main\' />','','织梦团队',1,'');
insert  into `dede_plus`(`aid`,`plusname`,`menustring`,`mainurl`,`writer`,`isshow`,`filelist`) values (25,'广告管理','<m:item name=\'广告管理\' link=\'ad_main.php\' rank=\'plus_广告管理\' target=\'main\' />','','织梦官方',1,'');
insert  into `dede_plus`(`aid`,`plusname`,`menustring`,`mainurl`,`writer`,`isshow`,`filelist`) values (10,'挑错管理','<m:item name=\'挑错管理\' link=\'erraddsave.php\' rank=\'plus_挑错管理\' target=\'main\' />','','织梦团队',1,'<m:item name=\'挑错管理\' link=\'catalog_do.php?dopost=erraddsave.php\' rank=\'plus_挑错管理\' target=\'main\' />');

/*Table structure for table `dede_plus_mda_setting` */

DROP TABLE IF EXISTS `dede_plus_mda_setting`;

CREATE TABLE `dede_plus_mda_setting` (
  `skey` varchar(255) NOT NULL DEFAULT '',
  `svalue` text NOT NULL,
  `stime` int(10) NOT NULL,
  PRIMARY KEY (`skey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_plus_mda_setting` */

insert  into `dede_plus_mda_setting`(`skey`,`svalue`,`stime`) values ('version','0.0.1',0);
insert  into `dede_plus_mda_setting`(`skey`,`svalue`,`stime`) values ('channel_uuid','',0);
insert  into `dede_plus_mda_setting`(`skey`,`svalue`,`stime`) values ('channel_secret','',0);
insert  into `dede_plus_mda_setting`(`skey`,`svalue`,`stime`) values ('email','',0);

/*Table structure for table `dede_plus_seoinfo` */

DROP TABLE IF EXISTS `dede_plus_seoinfo`;

CREATE TABLE `dede_plus_seoinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(11) DEFAULT NULL,
  `alexa_num` varchar(50) DEFAULT NULL,
  `alexa_area_num` varchar(50) DEFAULT NULL,
  `baidu_count` varchar(50) DEFAULT NULL,
  `sogou_count` varchar(50) DEFAULT NULL,
  `haosou360_count` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_plus_seoinfo` */

/*Table structure for table `dede_purview` */

DROP TABLE IF EXISTS `dede_purview`;

CREATE TABLE `dede_purview` (
  `mid` mediumint(8) DEFAULT '0',
  `typeid` smallint(5) DEFAULT '0',
  `rank` smallint(6) DEFAULT NULL,
  `pkey` varchar(30) CHARACTER SET latin1 NOT NULL,
  `pvalue` text NOT NULL,
  KEY `pkey` (`pkey`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_purview` */

/*Table structure for table `dede_pwd_tmp` */

DROP TABLE IF EXISTS `dede_pwd_tmp`;

CREATE TABLE `dede_pwd_tmp` (
  `mid` mediumint(8) NOT NULL,
  `membername` char(16) NOT NULL DEFAULT '',
  `pwd` char(32) NOT NULL DEFAULT '',
  `mailtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_pwd_tmp` */

/*Table structure for table `dede_ratings` */

DROP TABLE IF EXISTS `dede_ratings`;

CREATE TABLE `dede_ratings` (
  `id` varchar(11) NOT NULL,
  `total_votes` int(11) NOT NULL DEFAULT '0',
  `total_value` int(11) NOT NULL DEFAULT '0',
  `used_ips` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_ratings` */

/*Table structure for table `dede_scores` */

DROP TABLE IF EXISTS `dede_scores`;

CREATE TABLE `dede_scores` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `titles` char(15) NOT NULL,
  `icon` smallint(6) unsigned DEFAULT '0',
  `integral` int(10) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `integral` (`integral`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `dede_scores` */

insert  into `dede_scores`(`id`,`titles`,`icon`,`integral`,`isdefault`) values (2,'列兵',1,0,1);
insert  into `dede_scores`(`id`,`titles`,`icon`,`integral`,`isdefault`) values (3,'班长',2,1000,1);
insert  into `dede_scores`(`id`,`titles`,`icon`,`integral`,`isdefault`) values (4,'少尉',3,2000,1);
insert  into `dede_scores`(`id`,`titles`,`icon`,`integral`,`isdefault`) values (5,'中尉',4,3000,1);
insert  into `dede_scores`(`id`,`titles`,`icon`,`integral`,`isdefault`) values (6,'上尉',5,4000,1);
insert  into `dede_scores`(`id`,`titles`,`icon`,`integral`,`isdefault`) values (7,'少校',6,5000,1);
insert  into `dede_scores`(`id`,`titles`,`icon`,`integral`,`isdefault`) values (8,'中校',7,6000,1);
insert  into `dede_scores`(`id`,`titles`,`icon`,`integral`,`isdefault`) values (9,'上校',8,9000,1);
insert  into `dede_scores`(`id`,`titles`,`icon`,`integral`,`isdefault`) values (10,'少将',9,14000,1);
insert  into `dede_scores`(`id`,`titles`,`icon`,`integral`,`isdefault`) values (11,'中将',10,19000,1);
insert  into `dede_scores`(`id`,`titles`,`icon`,`integral`,`isdefault`) values (12,'上将',11,24000,1);
insert  into `dede_scores`(`id`,`titles`,`icon`,`integral`,`isdefault`) values (15,'大将',12,29000,1);

/*Table structure for table `dede_search_cache` */

DROP TABLE IF EXISTS `dede_search_cache`;

CREATE TABLE `dede_search_cache` (
  `hash` char(32) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `rsnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ids` mediumtext,
  PRIMARY KEY (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_search_cache` */

/*Table structure for table `dede_search_keywords` */

DROP TABLE IF EXISTS `dede_search_keywords`;

CREATE TABLE `dede_search_keywords` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` char(30) NOT NULL DEFAULT '',
  `spwords` char(50) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `result` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `channelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_search_keywords` */

/*Table structure for table `dede_sgpage` */

DROP TABLE IF EXISTS `dede_sgpage`;

CREATE TABLE `dede_sgpage` (
  `aid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '',
  `ismake` smallint(6) NOT NULL DEFAULT '1',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(30) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '',
  `likeid` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext,
  PRIMARY KEY (`aid`),
  KEY `ismake` (`ismake`,`uptime`),
  KEY `likeid` (`likeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_sgpage` */

/*Table structure for table `dede_shangbiao_detail` */

DROP TABLE IF EXISTS `dede_shangbiao_detail`;

CREATE TABLE `dede_shangbiao_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indexId` int(11) DEFAULT NULL,
  `code` varchar(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `detail` text,
  `status` varchar(3) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=495 DEFAULT CHARSET=utf8;

/*Data for the table `dede_shangbiao_detail` */

insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (1,1,'0101 ','工业气体，单质','（一）氨*010061，无水氨010066，氩010082，氮010092，一氧化二氮010093，氯气010183，氟010302，焊接用保护气体010326，工业用固态气体010328，干冰（二氧化碳）010333，氦010344，氢010359，氪010372，氖010401，氧010413，氡010457，氙010551<br />※液体二氧化硫C010001，三氧化硫C010002，液体二氧化碳C010003<br /><br />（二）锑010074，砷010084，砹010086，钡010101，铋010125，碳010148，镥010153，铈010161，铯010163，镝010250，铒010276，铕010287，化学用硫华010299，工业用石墨010305，钆010318，镓010321，钬010345，化学用碘010365，工业用碘010368，镧010375，锂010379，汞010387，准金属010390，钕010400，磷010430，钾010447，镨010449，铼010463，铷010466，钐010470，钪010473，硒010479，硅010483，钠010485，硫磺010493，锶010498，锝010516，碲010517，铽010519，稀土010526，铊010532，铥010534，镱010552，钇010553，碱金属010560，化学用溴010585<br />※钙C010004，工业硅C010005，结晶硅C010006，海绵钯C010007<br />注：1.本类似群各部分之间商品不类似；<br />2.氨，无水氨与0102第（二）部分工业用挥发碱（氨水），工业用氨水（挥发性碱）类似，与第九版及以前版本工业用挥发碱（氨），工业用氨（挥发性碱），工业用挥发性碱（氨水）交叉检索。<br />',NULL,'2017-05-08 23:06:38',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (2,1,'0102 ','用于工业、科学、农业、园艺、林业的工业化工原料','<br />注：本类似群各部分之间商品不类似；每部分内的商品根据功能、用途确定类似商品。<br /><br />（一）酸*010014，盐酸溶液010058，亚砷酸010085，硝酸010095，工业用硼酸010135，碳酸010150，盐酸010185，铬酸010191，氢氟酸010304，碘酸010367，无机酸010396，过硫酸010425，磷酸010433，磺酸010501，亚硫酸010502，硫酸010503，钨酸010541<br />※蓄电池硫酸C010008，氯磺酸C010009，铬酸酐C010010，钼酸C010011<br /><br />注：本部分为无机酸。<br /><br />（二）碱010037，苛性碱010038，氢氧化铝010048，碱（化学制剂）010106，工业用苛性碱010489，工业用苛性钠010490，工业用挥发碱（氨水）010558，工业用氨水（挥发性碱）010558<br />※氢氧化钾C010012，碳酸氢钠C010013，氢氧化锶C010014，氢氧化镁C010015，氢氧化铈C010016，氢氧化锂C010017，氢氧化镨C010018<br /><br />注：1.本部分为无机碱；<br />2.工业用挥发碱（氨水），工业用氨水（挥发性碱）与0101氨，无水氨，0109商品类似。<br /><br />（三）氧化锑010075，氧化钡010102，二氧化锰010124，氧化铬010189，氧化锂010378，氧化汞010389，氧化铅010441，工业用二氧化钛010536，氧化锆010556，工业用氧化钴010599<br /><br />注：1.本部分为金属氧化物；<br />2.工业用二氧化钛与0202二氧化钛（颜料）类似。<br /><br />（四）矾土010046，铝矾010047，硅酸铝010049，氯化铝010050，碘化铝010051，明矾010052，氯化铵010057，氨盐010060，氨明矾010063，硫化锑010076，砷酸铅010083，苏打灰010100，纯碱010100，钡化合物010104，二氯化锡010118，重铬酸钾010119，重铬酸钠010120，碱式酸铋010126，硼砂010134，钾盐镁矾010140，碳酸盐010146，碳酸镁010147，二硫化碳010149，碳化物010151，碳化钙010152，稀土金属盐010162，碳酸钙010172，氯化钙010173，氯酸盐010182，盐酸盐010184，铬酸盐010187，铬矾010188，铬盐010190，蓝矾010225，硫酸铜（蓝矾）010225，氰化物010228，氰亚铁酸盐010229，工业用白云石010248，铁盐010290，莹石化合物010303，岩盐010331，水合物010356，次氯酸苏打010360，连二亚硫酸盐010361，碘盐010366，硅藻土010371，菱镁矿010382，氯化镁010383，锰酸盐010384，汞盐010388，工业用贵重金属盐010391，工业用盐010397，硝酸铀010405，橄榄石（硅酸盐矿石）010408，氯金酸钠010409，氯化钯010415，过硼酸钠010421，过碳酸盐010422，高氯酸盐010423，过硫酸盐010424，碳酸钾010446，碳酸钾水010448，硝酸钾010469，盐类（化学制剂）010475，原盐010476，正铬盐010477，硅酸盐010481，硫化物010486，煅烧苏打010488，钠盐（化合物）010491，化学用次硝酸铋010494，重晶石010495，尖晶石（氧化物矿石）010496，滑石（镁铝合金硅酸盐）010506，钙盐010510，榍石010537，硫化剂010549，碳酸钡石010550，氯化物010554，硫酸盐010555，工业用碱性碘化物010559，碱金属盐010561，铵盐010567，硝酸银010569，硝酸盐010572，硫酸钡010574，化学用小苏打010578，硅藻土010632，氯化铵溶液010678，碳化硅（原材料）010689，硝酸铵010700<br />※麦饭石C010019，碳化铌C010021，碳化钨C010022，合成钡C010023，工业用硝酸铋C010024，重碳酸铵C010025，轻质碳酸钙C010026，镍盐C010027，硅酸钾C010028，硅酸钙C010029，冰晶粉C010031，锆酸钴C010032，碳酸铜C010033，碳酸锌C010034，碳酸锂C010035，钨酸铵C010036，钨酸钙C010037，钨酸锌C010038，氟硅酸钾C010039，锆氟酸钾C010040，硫氢化钙C010041，碳酸锶C010042，氯化钴C010043，氯化镉C010044，硫化铁C010045<br /><br />注：1.本部分为无机盐及其他金属化合物；<br />2.氯化铵，硝酸钾，硝酸铵与0109商品类似；<br />3.尖晶石（氧化物矿石）与0104第（四）部分搪瓷着色化学品，玻璃着色化学品类似，与第十版及以前版本搪瓷或玻璃着色化学品交叉检索；<br />4.硫化剂与0104第（十一）部分，0108第（二）部分类。<br /><br />（五）醋酸酐010010，酐010067，邻氨基苯甲酸010070，苯基酸010110，苯酸010112，焦木酸010133，木醋010133，儿茶010139，胆酸010186，工业用柠檬酸010199，冰醋酸（稀醋酸）010277，甲酸010310，制墨用酸010320，脂肪酸010340，乳酸010373，油酸010407，草酸010412，苦味酸010437，焦酸010453，水杨酸010468，癸二酸010474，硬脂酸010497，单宁010508，单宁酸010511，酒石酸010515，工业用谷氨酸010683<br />※冰醋酸C010046，蚁酸C010047，稀醋酸C010048，丙酸C010049，丁酸C010050，甲基丙烯酸C010051，琥珀酸C010052，己二酸C010053，氯乙酸C010054，环烷酸C010055，石油磺酸C010056，对苯二甲酸C010057，苯醋酸C010058，苯二甲酸酐C010059，顺丁烯二酸酐（即失水草果酸酐）C010060，二甲酸酐C010070，没食子酸C010073<br /><br />注：1.本部分为有机酸及酸酐类化合物；<br />2.儿茶，单宁，单宁酸与0114商品类似。<br /><br />（六）醋酸盐（化学品）*010007，草酸氢钾010123，醋酸钙010171，化学用酒石酸氢钾010219，一水草酸氢钾010410，草酸盐010411，醋酸铅010440，非药用酒石010514，工业用藻酸盐010564，乙酸铝*010565，醋酸铝*010565，工业用酒石酸氢钾010668<br />※米吐尔C010061，氯化苄C010062，蚁酸钠C010063，醋酸钾C010064，醋酸锌C010065，醋酸钴C010066，醋酸锰C010067，吐酒石（即酒石酸锑钾）C010068，酒石酸锑钠C010069，戊基醋酸盐C010072<br /><br />注：1.本部分为有机盐类化合物；<br />2.非药用酒石与第九版及以前版本0104第（十九）部分非医用酒石乳剂交叉检索；<br />3.工业用藻酸盐与第九版及以前版本0104第（十九）部分非食用藻酸盐（胶化和加压剂）交叉检索。<br /><br />（七）乙炔010012，四氯化乙炔010013，苯衍生物010111，甲基异丙基苯010230，乙烷010280，甲烷010394，萘010399，四氯化碳010528，四氯化物010529，甲苯010538，工业用甲基苯010576，甲基苯010577，工业用樟脑010638<br />※乙烯C010074，丁烯C010075，异丁烯C010076，异戊二烯C010077，乙基苯C010078，苯乙烯C010079，异丙苯C010080，苯烷C010081，轻苯C010083，氯乙烯C010084，氯丁二烯C010085，二氯乙烷C010086，环氧丙烷C010087，一氯甲烷C010088，二氯甲烷C010089，工业用三氯甲烷C010090，氯乙烷C010091，三氯乙烯C010092，过氯乙烯C010093，偏氯乙烯C010094，对二氯苯C010095，邻二氯苯C010096，二硝基氯化苯C010097，对硝基氯化苯C010098，邻硝基氯化苯C010099，联苯C010100，间二氯苯C010101，环氧乙烷C010120<br /><br />注：1.本部分为烃类及苯衍生物；<br />2.甲苯，工业用甲基苯，甲基苯，轻苯与0401混合二甲苯，二甲苯，苯，粗制苯类似。<br /><br />（八）酒精*010040，乙醇010041，戊醇010065，木醇010131，工业用甘油010252，乙二醇010337，酒精010547<br />※精甲醇C010102，异丙醇C010103，丁醇C010104，辛醇C010105，丙二醇C010106，氯乙醇C010107，丙烯醇C010108，异丁醇C010109，叔丁醇C010110，己醇C010111，环己醇C010112，一缩二乙二醇C010113，二缩三乙二醇C010114，季戊四醇C010115，糖醇C010116，山梨醇C010117，单季戊入醇C010118<br /><br />注：本部分为醇类化合物。<br /><br />（九）醚*010281，乙醚010282，乙二醇醚010283，甲醚010284，硫酸醚010285<br />※联苯醚C010119，异丙醚C010121<br /><br />注：本部分为醚类化合物。<br /><br />（十）工业用酚010426<br />※肉桂油C010071，愈疮木酚C010122，对硝基苯酚C010123，对苯二酚C010124，间苯二酚C010125，对硝基苯酚钠C010126，对氨基酚C010127，间氨基酚C010128，苯酚C010129，2－萘酚C010130<br /><br />注：本部分为酚类化合物。<br /><br />（十一）联氨010358，对称二苯硫脲010533，生物碱*010562<br />※苯胺C010082，一乙基苯胺C010131，二苯胺C010132，乙酰苯胺C010133，苯乙酰胺C010134，多乙烯多胺C010135，甲萘胺C010136，盐酸羟基胺C010137，双氰胺C010138，三聚氰胺C010139，甲酰胺C010140，一甲胺C010141，二甲胺C010142，二乙胺C010143，乙二胺C010144，三乙醇胺C010145，二乙醇胺C010146，一乙醇胺C010147，硫脲C010148，硝酸胍C010149，硫酸肼C010150，过氧化二苯甲醇C010151，乙腈C010152，三氯三聚氰C010153，皂素C010154，四甲基吡啶C010155，溴化棕榈酸吡啶C010156，丙烯腈C010157<br /><br />注：本部分为胺类及其衍生物。<br /><br />（十二）丙酮010011，酮010164<br />※环己酮C010164，对硝基苯乙酮C010165，双乙酮C010166<br /><br />注：本部分为酮类化合物。<br /><br />（十三）醛*010042，氨醛010062，巴豆醛010220，化学用甲醛010311<br />※苯甲醛C010158，丁醛C010159，糠醛C010160，庚醛C010161，三聚甲醛C010162，多聚甲醛C010163，丙烯醛C010167<br /><br />注：本部分为醛类化合物。<br /><br />（十四）乙酸戊酯010064，酯*010279，甘油酯010336<br />※硫酸二甲酯C010168，乙酰乙酸乙酯C010169，甲基丙烯酸甲酯C010170，磷酸三丁酯C010171，醛酯C010172，醋乙酯丁酯C010173，丙烯乙酯C010174，丁酯C010175，丙烯酸2-乙基乙酯C010176<br /><br />注：本部分为酯类化合物。<br /><br />（十五）琼脂010029，动植物白朊（原料）010033，碘化蛋白010034，麦芽蛋白010035，蛋白纸010036，动物蛋白（原料）010069，磷脂010429，蛋白质（原料）010452，卵磷脂（原料）010588，工业酪蛋白010591，工业用卵磷脂010664，工业用果胶010666，工业用谷蛋白010671，工业用胶原蛋白010688，生产用蛋白质010697<br /><br />注：本部分为蛋白类及其他高分子化合物。<br /><br />（十六）工业用淀粉010055，纤维素010155，糖苷010335，碳水化合物010357，工业用木薯粉010512，工业用纤维素酯010590，纤维素衍生物（化学品）010592，工业用纤维素醚010593，工业用葡萄糖010614，工业用乳糖010673，乳糖（原料）010674<br /><br />注：1.本部分为碳水化合物及其衍生物；<br />2.工业用淀粉与0104第（十九）部分工业用面粉，工业用土豆粉类似。<br /><br />（十七）工业淀粉酶010244，工业用酶制剂010272，工业用酶010273，化学用酵素010291<br /><br />注：1.本部分为工业用酶；<br />2.工业淀粉酶，工业用酶制剂，工业用酶与0104第（十九）部分催化剂，0106生物化学催化剂类似。<br /><br />（十八）表面活性剂010518<br /><br />注：本部分为表面活性化学剂。<br /><br />（十九）工业用过氧化氢010414<br /><br />注：本部分为过氧化氢。<br /><br />（二十）蒸馏水010247<br />※硅胶C010020<br /><br />注：1.本部分为单一商品；<br />2.硅胶与0104第（十七）部分商品类似。<br />',NULL,'2017-05-08 23:06:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (3,1,'0103 ','放射性元素及其化学品','锕010018，镅010054，原子堆用燃料010087，锫010115，锎010142，镄010159，核反应堆减速材料010179，可裂变化学元素010180，锔010226，重水010253，核能用可裂变物质010297，钫010314，工业用同位素010369，镎010402，钚010442，钋010443，钷010450，镤010451，科学用放射性元素010456，科学用镭010458，钍010535，铀010542，氧化铀010543<br />',NULL,'2017-05-08 23:06:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (4,1,'0104 ','用于工业、科学的化学品、化学制剂，不属于其他类别的产品用的化学制品','<br />注：本类似群各部分之间商品不类似，但所有商品与工业用化学品类似，与第十版及以及以前版本工业化学品交叉检索。<br /><br />（一）纺织工业用上浆料010077，纺织品上光化学品010091，长袜用防抽丝物质010105，漂白用润湿剂010127，漂白用浸湿剂010127，蜡漂白化学品010128，罩面漆和底漆上浆料010202，织物用防污化学品010286，纺织工业用漂洗剂010312，漂洗剂010313，五倍子010319，脂肪漂白化学品010339，纺织品防水化学品010362，纺织品浸渍化学品010363，染色用润湿剂010398，染色用浸湿剂010398，纺织工业用漂白土010525，纺织工业用润湿剂010530，纺织工业用浸湿剂010530<br />※染料助剂C010177，印染用保险粉C010178，印染用吊白粉C010179，固色剂C010180，印染用扩散剂C010181，印染用溶解盐C010182，印染用太古油C010183，印染用渗透剂C010184，增白剂C010185，漂毛粉C010186，防染盐C010187，印染用净洗剂C010188，匀染剂C010189，印染用海藻酸钠C010190，柔软剂C010191，防皱剂C010192，印染用整理剂C010193，纤维润滑剂C010194<br /><br />注：五倍子与0114商品类似。<br /><br />（二）混凝土用凝结剂010030，混凝土充气用化学品010116，除油漆和油外的混凝土防腐剂010117，除油漆外的水泥防水化学品010195，除油漆和油外的水泥防腐剂010196，除油漆和油外的石建筑防腐剂010380，除油漆和油外的砖建筑防腐剂010381，除油漆和油外的砖瓦防腐剂010540，除油漆外的砖石建筑防潮化学品010617<br /><br />（三）易燃制剂（发动机燃料用化学添加剂）010001，发动机燃料化学添加剂010020，汽车燃料化学添加剂010020，汽油净化添加剂010021，喷雾器用气体推进剂01026，内燃机抗爆剂010071，防冻剂010072，引擎脱碳用化学品010089，液压循环用传动液010197，油分离化学品010233，燃料节省剂010257，制动液010315，刹车液010315，石油分散剂010351，油分散剂010352，油漂白化学品010353，油净化化学品010354，油脂分离剂010604，吸油用合成材料010620，动力转向液010643，传动液010644，引擎冷却剂用抗沸剂010645，运载工具引擎用冷却剂010647，油类用化学添加剂010654<br />※起动液C010197，润闸液C010200，硅油乙基C010214<br /><br />（四）除颜料外的制造搪瓷用化学品010107，膨润土010109，陶瓷釉010160，搪瓷遮光剂010262，玻璃遮光剂010263，搪瓷着色化学品010265，瓷土010370，高岭土010370，制毛玻璃用化学品010386，玻璃着色化学品010521，水玻璃（硅酸钠水溶液）010544，制技术陶瓷用合成物010631，烧结用颗粒状和粉状陶瓷物质010646<br /><br />注：1.陶瓷釉与0205瓷釉（漆），瓷漆，釉料（漆、清漆）类似；<br />2.搪瓷着色化学品，玻璃着色化学品与0102第（四）部分尖晶石（氧化物矿石）类似，与第十版及以前版本尖晶石（化学制剂）交叉检索。<br /><br />（五）蓄电池用防泡沫溶液010006，电池用防泡沫深液010006，促进金属合金形成用化学制剂010045，镀银用银盐溶液010081，镀锌液010098，电镀液010098，蓄电池充电用酸性水010251，电池充电用酸性水010251，原电池盐010261，电镀制剂010324，蓄电池硫酸盐清除剂010500，电池硫酸盐清除剂010500<br />※电刷镀溶液C010201<br /><br />（六）气体净化剂010275，过滤材料（化学制剂）010611，过滤材料（矿物质）010612，过滤材料（植物质）010613，用作过滤介质的颗粒状陶瓷材料010621<br /><br />（七）铸造制模用制剂010307，铸造用砂010467<br />※铸粉C010202<br /><br />（八）水软化剂010023，澄清剂010254，净化剂（澄清剂）010254，离子交换剂010255，絮凝剂010587，水净化用化学品010608，工业用软化剂010609<br /><br />（九）防水垢剂010073，清洁烟筒用化学品010174，生产加工用除脂剂010231，除水垢剂010240，生产加工用去污剂010241，镜头防污剂010377，工业用肥皂（含金属）010472，玻璃防污剂010522，窗玻璃防污用化学品010523，非家用除垢剂010635，散热器清洗化学品010648<br />※工业用洗净剂C010211<br /><br />注：防水垢剂，除水垢剂与第九版及以前版本0104第（十九）部分防水锈剂，除水锈剂交叉检索。<br /><br />（十）制清漆用的羯布罗香膏010343，制漆用化学品010575，清漆溶剂010606<br /><br />注：清漆溶剂与0205油漆稀释剂，漆稀释剂，松节油（涂料稀释剂），稀料，松香水，天那水，信那水，0302去漆剂类似。<br /><br />（十一）硫化加速剂010005，橡胶防腐剂010145，非家用抗静电剂010260，工业用炭黑010597，橡胶用化学增强剂010640，生产用抗氧化剂010693<br />※促进剂C010203，乌洛托品C010204，抗静电剂C010210，抗氧剂C010206<br /><br />注：本部分与0102第（四）部分硫化剂，0108第（二）部分类似。<br /><br />（十二）钻探泥浆用化学添加剂010019，钻探泥浆010136<br /><br />（十三）和研磨剂配用的辅助液010004<br /><br />（十四）液化淀粉制剂（去胶剂）010056，分离和脱胶用制剂010232，脱胶制剂（分离）010232，脱胶和分离用制剂010232，脱胶制剂（溶胶）010234，胶溶剂010234，墙纸清除剂010653<br /><br />注：墙纸清除剂与第八版及以前版本0205墙纸清除剂交叉检索。<br /><br />（十五）动物炭010068，动物碳制剂010165，骨炭010167，血炭010168，兽碳010568<br /><br />（十六）非食品用防腐盐010003，耐酸化学物质010016，防霉化学制剂010395<br />※化学防腐剂C010260<br /><br />注：化学防腐剂与0104第（二）部分除油漆和油外的混凝土防腐剂，除油漆和油外的水泥防腐剂，除油漆和油外的石建筑防腐剂，除油漆和油外的砖建筑防腐剂，除油漆和油外的砖瓦防腐剂类似，与第九版及以前版本0206防腐剂交叉检索。<br /><br />（十七）活性碳010025，过滤用碳010166，吸气剂（化学活性物质）010332，工业用脱色剂010580<br /><br />注：本部分与0102第（二十）部分硅胶类似。<br /><br />（十八）工业用亮色化学品010570，制颜料用化学品010679<br /><br />（十九）未加工醋酸纤维素010008，化学冷凝制剂010015，钢材精加工制剂010017，铝土矿010108，防冷凝化学品010138，催化剂010154，节煤剂010169，工业用化学品010176，火棉胶*010206，金属着色用盐010207，制药工业用保存剂010210，腐蚀剂010214，脱模制剂010237，去光材料010238，工业脱水制剂010239，唱片修复制剂010246，金属硬化剂010249，闪光灯用制剂010256，乳化剂010268，工业用面粉010289，加工螺纹用合成剂010295，石灰石硬化物010301，工业用灯黑010316，工业用红树皮010385，毒气中和剂010403，工业用土豆粉010444，工业用白雀树皮010454，制冷剂010459，工业用谷物加工的副产品010460，工业或农业用炭黑010499，工业用蒸煮激发剂010557，木醇蒸馏剂010582，化学用杂酚油010602，制唱片用合成物010603，金属腐蚀剂010633，工业用海水010636，纸用化学增强剂010639，工业用磁性液010642，车身填充物010649<br />※防水浆消泡剂C010205，荧光粉C010207，油墨抗凝剂C010208，固香剂C010209，探伤气雾剂C010212，松醇油C010213<br /><br />注：1.本部分根据商品的功能、用途确定类似商品；<br />2.未加工醋酸纤维素与0108第（一）部分类似；<br />3.催化剂与0102第（十七）部分工业淀粉酶，工业用酶制剂，工业用酶，0106生物化学催化剂类似；<br />4.工业用化学品，工业化学品与0104所有商品类似；<br />5.工业用面粉，工业用土豆粉与0102第（十六）部分工业用淀粉类似；<br />6.制唱片用合成物与第九版及以前版本0107制唱片用混合剂交叉检索。<br /><br />（二十）镶玻璃用油灰010651，油石灰（油灰）010655<br /><br />注：本部分与0205商品类似。<br />',NULL,'2017-05-08 23:06:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (5,1,'0105 ','用于农业、园艺、林业的化学品、化学制剂','除杀真菌剂、除草剂、杀虫剂、杀寄生虫剂外的农业化学品010031，花用保鲜剂010209，脱叶剂010236，杀虫剂用化学添加剂010308，杀真菌剂用化学添加剂010309，除杀真菌剂、除草剂、杀虫剂、杀寄生虫剂外的园艺化学品010347，预防小麦枯萎病（黑穗病）的化学制剂010404，预防小麦黑穗病的化学制剂010404，保存种籽物质010480，除杀真菌剂、除草剂、杀虫剂、杀寄生虫剂外的林业用化学品010505，预防藤蔓病化学品010546，植物保护用蒽油010586，植物用微量元素制剂010637<br />※防微生物剂C010215，赤霉素C010216，增润剂C010219<br />树洞填充物（林业）010080，树木嫁接用蜡010198，加工烟草用加味料010471<br />※烟草用防霉剂C010217，消辣剂C010218<br />注：1.第一、二自然段与0505第一、二自然段类似；<br />2.第一、二自然段与0109植物生长调节剂，0113水果催熟用激素类似，与第九版及以前版本0113水果催熟激素交叉检索；<br />3.植物用微量元素制剂与0109商品类似。<br /><br />',NULL,'2017-05-08 23:06:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (6,1,'0106 ','化学试剂。','生物化学催化剂010122，科学用化学制剂（非医用、非兽医用）010177，非医用、非兽医用化学试剂010178，实验室分析用化学品（非医用、非兽医用）010181，实验室分析用化学物质（非医用、非兽医用）010181，低温实验制剂010221，非医用、非兽医用诊断制剂010243，试纸（非医用、非兽医用）010259，化学试纸010278，硝酸盐纸010416，石蕊试纸010419，非医用、非兽医用生物制剂010579，非医用、非兽医用细菌制剂010594，非医用、非兽医用细菌学研究制剂010595，非医用、非兽医用微生物培养物010596，非医用、非兽医用电泳凝胶010650，农业生产用种子基因010656，非医用、非兽医用干细胞010657，非医用、非兽医用生物组织培养物010658，非医用、非兽医用微生物制剂010680，非医用、非兽医用佐剂010690<br />注：生物化学催化剂与0102第（十七）部分工业淀粉酶，工业用酶制剂，工业用酶，0104第（十九）部分催化剂类似。<br />',NULL,'2017-05-08 23:06:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (7,1,'0107 ','摄影用化学用品及材料','摄影用还原剂010027，蛋白纸010036，自动着色纸（摄影用）010090，定影液（摄影用）010097，调色定影液（摄影用）010099，氧化钡纸010103，摄影用化学制剂010211，照相感光布010212，感光板010213，晒蓝图用溶液010227，重氮纸010245，摄影感光乳剂010267，感光照相板010269，铁板照相板（摄影用）010292，定影溶液（摄影用）010298，相纸010322，摄影用明胶010329，胶印感光用板010406，光度测定纸010417，感光纸010418，摄影用果胶010420，蓝图纸010432，蓝图布010434，摄影用显影剂010435，摄影用感光剂010436，未曝光的X光感光胶片010464，调色盐（摄影用）010548，未曝光的感光胶片010581，未曝光的感光电影胶片010598<br />※光谱感光板C010220，晒图纸C010222<br />注：1.未曝光的X光感光胶片，未曝光的感光胶片，未曝光的感光电影胶片与0923商品类似，蛋白纸与第十版及以前版本0102第（十五）部分蛋白纸交叉检索。<br />',NULL,'2017-05-08 23:06:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (8,1,'0108 ','未加工的人造合成树脂，未加工塑料物质（不包括未加工的天然树脂）','（一）未加工的环氧树脂010274，未加工塑料010438，未加工合成树脂010455，未加工丙烯酸树脂010461，未加工人造树脂010462，硅酮010484，硅氧烷010484，过滤材料（未加工塑料）010610<br />※聚丙烯C010224，赛璐珞C010225，酚醛树脂C010226，脲醛树脂C010227，酪素树脂C010229，聚氯乙烯树脂C010230，玛脂C010231，电木粉C010232，胶木粉C010233，硅塑料C010235，模塑料C010236，塑膏C010237，磷酸三甲酚酯C010238，有机硅树脂C010239，离子交换树脂C010240，尼龙66盐C010243<br /><br />（二）增塑剂010143，塑料分散剂010605<br />注：1.本类似群各部分之间商品不类似；<br />2.第（一）部分与0104第（十九）部分未加工醋酸纤维素类似；<br />3.第（二）部分与0102第（四）部分硫化剂，0104第（十一）部分类似。<br />',NULL,'2017-05-08 23:06:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (9,1,'0109 ','肥料。','海藻（肥料）010043，土壤调节制剂010053，氮肥010094，氰氨化钙（肥料）010141，肥料010271，农业用肥010271，肥料制剂010293，鸟粪010342，腐殖土010355，磷酸盐（肥料）010427，矿碴（肥料）010428，过磷酸盐（肥料）010431，园艺用罐装泥炭010445，盐类（肥料）010478，种植土010524，壤土010527，泥炭（肥料）010539，无土生长培养基（农业）010589，混合肥料010622，植物生长调节剂010634，腐殖质表层肥010641，溶液培养的植物用多孔粘土010652，鱼粉肥料010659，盆栽土010681，降解有机物（肥料）010686<br />※化学肥料C010244，植物肥料C010245，动物肥料C010246<br />注：1.本类似群与0105植物用微量元素制剂类似；<br />2.本类似群与0102第（二）部分工业用挥发碱（氨水），工业用氨水（挥发性碱）类似，与第九版及以前版本0102第（二）部分工业用挥发碱（氨），工业用氨（挥发性碱），工业用挥发性碱（氨水）交叉检索；<br />3.本类似群与0102第（四）部分氯化铵，硝酸钾，硝酸铵类似，与第九版及以前版本0102第（四）部分卤砂、氯化铵，硝酸钠交叉检索；<br />4.本类似群与第六版及以前版本3103腐殖质高效肥交叉检索；<br />5.植物生长调节剂与0105第一、二自然段，0113水果催熟用激素，0505第一、二自然段类似，与第九版及以前版本0113水果催熟激素交叉检索。<br />',NULL,'2017-05-08 23:06:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (10,1,'0110 ','灭火、防火用合成物','灭火合成物010288，防火制剂010294<br />※消防泡沫液C010247，灭火药粉C010248，阻燃剂C010199 <br />注：阻燃剂与第十版及以前版本0104第（三）部分阻燃剂交叉检索。<br />',NULL,'2017-05-08 23:06:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (11,1,'0111 ','淬火用化学制剂','金属退火剂010393，金属回火剂010682<br />※淬火剂C010249，淬火油C010250<br />',NULL,'2017-05-08 23:06:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (12,1,'0112 ','焊接用化学制剂','铜焊制剂010137，焊接用化学品010487，铜焊助剂010583，助焊剂010584<br />',NULL,'2017-05-08 23:06:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (13,1,'0113 ','食药用化学品（不包括食品用防腐盐）','醋化用细菌制剂010009，食物防腐用化学品010044，酿葡萄酒用杀菌剂（制葡萄酒用化学制剂）010096，苯甲酸酰亚胺010113，糖精010114，啤酒澄清剂和防腐剂010121，（未发酵）葡萄汁澄清剂010200，葡萄酒澄清剂010205，饮料工业用的过滤制剂010296，熏肉用化学制剂010317，水果催熟用激素010346，保存食物用油010348，化学用牛奶发酵剂010374，工业用嫩肉剂010545，防止蔬菜发芽剂010571，人造增甜剂（化学制剂）010607，啤酒防腐剂010619，食品工业用酶制剂010660，食品工业用酶010661，食品工业用葡萄糖010662，食品工业用卵磷脂010663，食品工业用果胶010665，食品工业用酒石酸氢钾010667，食品工业用藻酸盐010669，食品工业用谷蛋白010670，食品工业用乳糖010672，食品工业用牛奶发酵剂010675，工业用牛奶发酵剂010676，食品工业用酪蛋白010677，制药用茶提取物010684，食品工业用茶提取物010685，制化妆品用茶提取物010687，制食品补充剂用维生素010691，食品工业用维生素010692，制化妆品用抗氧化剂010694，制药用抗氧化剂010695，制食品补充剂用抗氧化剂010696，制食品补充剂用蛋白质010698，食品工业用蛋白质010699，制药用维生素010701，制化妆品用维生素010702<br />注：1.水果催熟用激素与0105第一、二自然段，0109植物生长调节剂，0505第一、二自然段类似；<br />2.人造增甜剂（化学制剂）与3003天然增甜剂类似。<br />',NULL,'2017-05-08 23:06:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (14,1,'0114 ','鞣料及皮革用化学品','鞣料木010130，皮革翻新用化学品010175，使皮革软化的脱灰碱液010208，除油外的皮革处理剂010208，皮革鞣剂010215，生皮鞣剂010216，皮革表面处理用化学制品010223，皮革浸渍化学品010224，上浆剂010270，鞣酸010323，黑儿茶010325，制革用油010349，鞣革用油010350，皮革防水化学品010364，鞣革用漆叶010504，鞣料（鞣革剂）010507，鞣革物010509，皮革整理用油010601<br />注：1.本类似群与0102第（五）部分儿茶，单宁，单宁酸，0104第（一）部分五倍子类似，与第九版及以前版本0104第（一）部分苦味五倍子交叉检索；<br />2.上浆剂与第十版及以前版本0104第（一）部分上浆料（化学制剂）交叉检索；<br />3.制革用油，鞣革用油，皮革整理用油与0401皮革用油脂类似，与第九版及以前版本制革用脂交叉检索。<br />',NULL,'2017-05-08 23:06:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (15,1,'0115 ','工业用粘合剂和胶（不包括纸用粘合剂）','工业用粘合剂010002，外科绷带用粘合制剂010022，工业用黄蓍胶010024，粘贴海报用粘合剂010028，补轮胎内胎用合成物010032，工业用阿拉伯树胶010078，树木嫁接用粘性制剂010079，粘胶液010157，冶金粘合剂010158，鞋用粘合剂010170，皮革粘合剂010192，充气轮胎粘合剂010193，轮胎粘合剂010193，轮胎胶粘剂010193，修补破碎物品的粘合剂010194，裱墙纸用粘合剂010203，墙纸用粘合剂010203，皮革胶010222，上浆糊精010242，铸造用粘合物质010306，工业用明胶010330，粘鸟胶010334，树木嫁接用胶粘剂010341，增塑溶胶010439，补轮胎用合成物010465，非文具、非家用淀粉浆糊010566，墙砖粘合剂010573，工业用胶010600，非文具、非家用谷朊胶010615，业用树胶（粘合剂）010616，非文具、非家用、非食用鱼胶010618<br />※聚氨酯C010251，氯丁胶C010252，聚醋酸乙烯乳液C010253，固化剂C010254<br />注：1.本类似群与1701液态橡胶，橡胶水类似，与第九版及以前版本1701液体橡胶交叉检索；<br />2.本类似群与1702补漏用化学合成物类似，与第九版及以前版本1702补裂缝用化学化合物交叉检索。<br />',NULL,'2017-05-08 23:06:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (16,1,'0116 ','纸浆','木浆010132，纸浆010156<br />※纤维素浆C010255<br />',NULL,'2017-05-08 23:06:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (17,1,'0117 ','能源。','<br />注：本类似群第九版时移入0407。<br />',NULL,'2017-05-08 23:06:40',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (18,2,'0201 ','染料，媒染剂（不包括食用）','媒染剂*020002，茜素染料020006，木材媒染剂020027，木料染色剂020028，鞋染料020041，着色剂020047，苯胺染料020052，制革用媒染剂020057，皮革染色剂020057，染料*020058，姜黄（染料）020060，黄桑（染料）020074，靛青（染料）020086，复活节彩蛋用染色纸020096，藏红染料020099，染料木020111，染料木提取物（染料）020112<br />注：跨类似群保护商品：着色剂（0201，0202）。<br />',NULL,'2017-05-08 23:06:40',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (19,2,'0202 ','颜料（不包括食用、绝缘用），绘画、装饰、印刷和艺术用金属箔及金属粉','绘画用铝粉020008，石棉颜料020009，水彩固定剂020011，银乳剂（颜料）020015，金胺020018，赭石土（颜料）020029，绘画用青铜粉020032，铅白020038，炭黑（颜料）020039，氧化钴（颜料）020044，胭脂虫红020045，着色剂*020047，颜料020059，灯黑（颜料）020073，绘画用藤黄020076，氧化锌（颜料）020081，铅黄020089，黄丹020089，绘画、装饰、印刷和艺术用金属粉020090，绘画、装饰、印刷和艺术用金属箔020092，铅红020095，红丹020095，胭脂树橙（颜料）020098，烟灰色（颜料）020101，二氧化钛（颜料）020106，艺术用水彩020126，艺术用油彩020127<br />※色母粒C020001，立德粉（锌钡白）C020014<br />注：1.二氧化钛（颜料）与0102第（三）部分工业用二氧化钛类似；<br />2.跨类似群保护商品：着色剂（0201，0202）。<br />',NULL,'2017-05-08 23:06:40',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (20,2,'0203 ','食品着色剂','饮料色素020004，食物色素020005，食品用着色剂020005，黄油色素020023，啤酒色素020024，焦糖（食品色素）020034，麦芽焦糖（食品色素）020035，麦芽色素020048，利口酒用色素020088<br />',NULL,'2017-05-08 23:06:40',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (21,2,'0204 ','油墨','（一）制革用墨020033，印刷膏（油墨）020043，印刷油墨020066，动物打印记用墨020067，雕刻油墨020080，复印机用墨（调色剂）020121，复印机用调色剂（墨）020121，打印机和复印机用已填充的鼓粉盒020123，可食用墨020128，已填充可食用墨的打印机墨盒020129<br />※计算机、打印机、文字处理机墨盒C020002，激光打印机墨盒C020015，喷墨打印机墨盒C020016，复印机用碳粉C020017<br /><br />（二）皮肤绘画用墨020069<br />注：本类似群各部分之间商品不类似。<br />',NULL,'2017-05-08 23:06:40',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (22,2,'0205 ','涂料，油漆及附料（不包括绝缘漆）','油漆*020001，清漆*020003，铝涂料020007，银涂料020014，银镀粉020016，黑亮漆020017，杀菌漆020019，粉刷用石灰浆020020，沥青油漆020025，木材涂料（油漆）020026，青铜漆020031，屋顶毡用涂料（油漆）020036，油毛毡涂料（油漆）020036，陶瓷涂料020037，运载工具底盘防蚀涂层020040，运载工具底盘底漆020040，粉刷用石灰水020042，油漆稀释剂020053，漆稀释剂020054，油漆增稠剂020055，刷墙粉020062，瓷釉（漆）020064，瓷漆020065，油漆催干剂020068，涂层（油漆）020070，固定剂（清漆）020072，釉料（漆、清漆）020075，虫胶020077，防火漆020085，油漆凝结剂020087，油漆粘合剂020087，清漆用苏模鞣料020102，底漆020108，粉刷用白垩灰浆020110，苯乙烯树脂漆020114，漆020115，防污涂料020122，松节油（涂料稀释剂）020124，油漆补片（可替换的）020125<br />※稀料C020003，松香水C020004，可赛银C020005，防水冷胶料C020006，水溶性内外墙有光喷塑料C020007，聚乙烯胶泥C020008，无粘性化学涂料（不粘锅用）C020009，天那水C020010，信那水C020011，防水粉（涂料）C020012，树脂胶泥C020013，磁漆C020018<br />注：1.瓷釉（漆），瓷漆，釉料（漆、清漆）与0104第（四）部分陶瓷釉类似，与第十版及以前版本陶瓷釉料交叉检索；<br />2.油漆稀释剂，漆稀释剂，松节油（涂料稀释剂），稀料，松香水，天那水，信那水与0104第（十）部分清漆溶剂，0302去漆剂类似；<br />3.防水粉（涂料）与1705防水隔热粉类似；<br />4.虫胶与0207商品类似；<br />5.本类似群与0104第（二十）部分，1912商品类似。<br />',NULL,'2017-05-08 23:06:40',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (23,2,'0206 ','防锈剂，木材防腐剂','防腐蚀剂020010，防腐蚀带020021，木材防腐剂020049，木材防腐用杂酚油020056，防锈油脂020079，木材防腐油020082，防锈油020083，金属防锈制剂020093，金属用保护制剂020094，防锈制剂020107，羰基（木头防腐剂）020113<br />注：防锈油脂，防锈油，金属防锈制剂，金属用保护制剂，防锈制剂（储藏用）与第九版及以前版本0104第（十九）部分防水锈剂交叉检索。<br />',NULL,'2017-05-08 23:06:40',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (24,2,'0207 ','未加工的天然树脂','加拿大香脂020022，松香020046，天然硬树脂020050，天然树脂（原料）020061，树胶脂020078，天然树脂020091，山达脂020100<br />注：本类似群与0205虫胶近似。<br />',NULL,'2017-05-08 23:06:40',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (25,3,'0301 ','肥皂，香皂及其他人用洗洁物品，洗衣用漂白剂及其他物料','杏仁肥皂030007，肥皂030012，剃须皂030017，洗发液030034，消毒皂030080，洗涤用皂树皮030093，洁肤乳液030123，药皂030130，洗发剂030134，汗足皂030143，除臭皂030149，香皂030152，防汗皂030163，非医用沐浴盐030175，个人清洁或祛味用下体注洗液030218，干洗式洗发剂030223，非医用洗浴制剂030230<br />※洗手膏C030001，洗发粉C030002，香波C030003，洗发软皂C030004，柔发剂C030005，护发素030231，洗面奶C030007，浴液C030008，浴盐C030009，抑菌洗手剂C030010<br />洗涤上光粉030009，洗衣用浆粉030010，洗衣用淀粉030010，纺织品上光皂030013，洗衣用上蓝剂030014，漂白盐030026，漂白碱030027，洗衣用漂白剂030028，洗衣上光剂030029，洗衣用蜡030051，漂白水030089，洗衣浸泡剂030098，浸洗衣服制剂030098，洗衣剂030124，光滑剂（上浆）030127，家用亮色化学品（洗衣用）030174，家庭洗衣用亮色化学品030174，洗衣用织物柔顺剂030193，干洗剂030205<br />※护领膜C030012，洗衣粉C030067<br />注：1.第一、二自然段与0306商品类似；<br />2.第一、二自然段与0501药浴制剂，浴用泥浆，药浴用海水类似，与第九版及以前版本0501医用浴剂交叉检索；<br />3.非医用沐浴盐，浴盐与0501矿泉水沐浴盐类似，与第九版及以前版本矿泉水浴盐交叉检索；<br />4.个人清洁或祛味用下体注洗液与0501第（一）部分医用下体注洗液，阴道清洗液类似；<br />5.第三、四自然段与0302商品类似；<br />6.第三、四自然段与0303皮革漂白制剂，皮革洗涤剂类似；<br />7.漂白盐，漂白碱，洗衣用漂白剂，漂白剂（洗衣）与0503漂白粉（消毒）类似，与第九版及以前版本0104第（一）部分漂白剂交叉检索。<br />',NULL,'2017-05-08 23:06:41',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (26,3,'0302 ','清洁、去渍用制剂','刮面石（收敛剂）030005，白垩粉030022，清洁用火山灰030038，清洁用白垩030067，去污剂030068，清洗用洗涤碱030072，非生产操作用、非医用的去污剂030075，擦洗溶液030076，非生产过程中用的脱脂剂030077，家用除垢剂030081，家用抗静电剂030083，去漆剂030085，去色剂030087，次氯酸钾030089，清洁制剂030104，清洁用油030117，挡风玻璃清洗剂030126，墙纸洗涤剂030138，苏打碱液030153，脱脂用松节油030157，除蜡用松节油030158，氨水（挥发性碱）（去污剂）030167，挥发碱（氨水）（去污剂）030167，明矾石（收敛剂）030168，除锈制剂030170，去颜料制剂030179，疏通下水道制剂030195，地蜡清除剂（刷净剂）030206，用于清洁和除尘的罐装压缩空气030209，浸清洁剂的清洁布030211，洗碗机用催干剂030214<br />※硅清洁剂C030013，厕所清洗剂C030014，玻璃擦净剂C030015，去蜡水C030016，去油剂C030017，去渍剂C030018，去油渍油C030019，去雾水C030020，去污粉C030021，地毯清洗剂C030022，洗洁精C030068<br />注：1.本类似群与0301第三、四自然段类似；<br />2.厕所清洗剂与0503化学盥洗室用消毒剂，厕所除臭剂类似；<br />3.去漆剂与0104第（十）部分清漆溶剂，0205油漆稀释剂，漆稀释剂，松节油（涂料稀释剂），稀料，松香水，天那水，信那水类似；<br />4.浸清洁剂的清洁布与第八版及以前版本2112浸清洁剂的清洁布交叉检索。<br />',NULL,'2017-05-08 23:06:41',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (27,3,'0303 ','抛光、擦亮制剂','抛光铁丹030011，皮革漂白制剂030025，擦鞋膏030039，抛光制剂030045，鞋蜡030046，家具或地板用抛光剂030047，擦亮用剂030048，鞋匠用蜡030049，鞋线蜡030050，地板蜡030053，拼花地板蜡030053，抛光蜡030054，裁缝用蜡030055，皮革保护剂（上光）030061，抛光乳膏030070，磨剃刀皮带用软膏030073，皮革膏030074，皮革用蜡030074，抛光用纸030139，抛光用硅藻石030164，地板防滑蜡030207，地板防滑液030208，植物叶子发光剂030212，鞋油030228<br />※上光剂C030023，夹克油C030024，鞋粉C030025，帽粉C030026，汽车、自行车上光蜡C030027，擦铜水C030028，皮革擦亮纸（浸擦亮剂）C030029，皮革洗涤剂C030030，水果擦亮剂C030066<br />注：1.地板蜡，拼花地板蜡，上光蜡，地板防滑蜡，地板防滑液与0404地蜡，地蜡（石蜡）类似；<br />2.皮革保护剂（上光），皮革防腐剂（抛光剂），皮革膏，皮革用蜡与0401皮革防腐剂（油和脂），皮革保护剂（油和脂），皮革保护油类似”改为“皮革保护剂（上光），皮革膏，皮革用蜡与0401皮革保护剂（油和脂），皮革保护油类似，与第十版及以前版本0401皮革防腐剂（油和脂）交叉检索；<br />3.皮革漂白制剂，皮革洗涤剂与0301第三、四自然段类似。<br />',NULL,'2017-05-08 23:06:41',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (28,3,'0304 ','研磨用材料及其制剂','磨光用石头030002，研磨剂030003，磨利用制剂030003，金属碳化钙（研磨料）030035，碳化硅（研磨料）030036，磨光制剂030044，金刚砂（研磨用）030062，金钢铝（研磨料）030082，金刚砂纸030084，金刚砂布030086，金刚砂030094，砂纸030140，磨光石030144，浮石030145，砂布030160，玻璃砂布030161，研磨材料*030165，砂纸030166<br />※磨光粉C030032，研磨膏C030033，玻璃砂（研磨用）C030034，研磨用刚玉砂C030035，白刚玉C030036，裁布机用砂带C030073<br />',NULL,'2017-05-08 23:06:41',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (29,3,'0305 ','香料，香精油','杏仁油030006，八角茴香香精030015，香柠檬油030021，杉木香精油030037，柠檬香精油030056，含醚香料030099，香精油030100，花精（香料）030101，花香料原料030105，熏香制剂（香料）030106，蛋糕用调味香精油030107，冬青油030108，香草醇030110，天芥菜精030113，茉莉油030115，薰衣草油030116，制香料香水用油030118，玫瑰油030119，薄荷油（芳香油）030128，香料用薄荷030129，麝香（香料）030132，香料030141，黄樟油精030151，萜烯烃（香精油）030159，芳香剂（香精油）030172，饮料用调味香精油030173，香橼香精油030226，紫罗酮（香料）030121，食物用调味香精油030236<br />※烟用香精C030037，月桂油C030038，香草油C030039，珠兰油C030040，桉叶油C030041，椰子醛C030042，安息香酸乙酯C030043，香叶醇C030044，人造麝香酮C030045，工业用香料C030046，化妆品用香料C030047，香皂香精C030048，芳香精油C030069，安神用香精油C030070，降低食欲用香精油C030071<br />',NULL,'2017-05-08 23:06:41',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (30,3,'0306 ','化妆品（不包括动物用化妆品）','假发粘贴剂030001，琥珀香水030008，洗澡用化妆品030016，唇膏030018，口红030018，化妆用棉签030019，美容面膜030020，皮肤增白霜030023，指甲擦光剂030032，指甲油030032，化妆剂030033，染发剂030040，毛发卷曲剂030041，烫发剂030041，假睫毛030042，睫毛用化妆制剂030043，胡须用蜡030052，古龙水（科隆香水）030058，梳妆用颜料030060，成套化妆品030064，化妆品030065，化妆棉030066，化妆笔030069，化妆用雪花膏030071，化妆品清洗剂030078，除指甲油制剂030088，熏衣草水030090，带香味的水030091，淡香水030092，脱毛剂030096，脱毛制剂030096，除汗毛用蜡030097，化妆品030102，化妆用矿脂030109，化妆用油脂030111，化妆用过氧化氢030112，化妆用油030114，梳妆用油030120，化妆洗液030122，梳妆用品030125，眉毛化妆品030131，烫发中和剂030133，香水030135，假指甲030136，指甲护剂030137，护肤用化妆剂030142，化妆用润发脂030146，化妆粉030147，修面剂030148，眉笔030154，梳妆用滑石粉030155，化妆染料030156，防汗剂（化妆用品）030162，化妆用杏仁乳030169，晒黑制剂（化妆品）030171，胡须染料030176，减肥用化妆品030177，假睫毛粘胶030178，个人或动物用除臭剂030180，化妆用装饰变色剂030181，化妆用收敛剂030191，化妆用漂白剂（脱色剂）030192，浸化妆水的薄纸030197，化妆用粘合剂030199，剃须后用液030200，喷发胶030201，染睫毛油030202，化妆用芦荟制剂030219，非医用按摩凝胶030220，唇彩030221，非医用香膏030222，指甲彩绘贴片030224，防晒剂030225，散沫花（化妆用染料）030227，唇膏盒030229，头发拉直制剂030232，浸卸妆液的薄纸030233，化妆用胶原蛋白制剂030234<br />※防皱霜C030049，增白霜C030050，粉刺霜C030051，去斑霜C030052，痱子粉C030053，爽身粉C030054，去痱水C030055，胭脂C030056，眼影膏C030057，乌发乳C030058，头油C030059，生发油C030060，摩丝C030062，油制剂C030063，双眼皮胶C030064，花露水C030072<br />注：1.本类似群与0301第一、二自然段类似；<br />2.化妆用棉签，化妆棉，唇膏盒与2110商品类似；<br />3.浸化妆水的薄纸，浸卸妆液的薄纸与0506消毒纸巾，1603卫生纸，纸手帕，卸妆用薄纸，纸餐巾，纸巾，纸制洗脸巾类似，与第十版及以前版本1603卸妆用纸巾交叉检索；<br />4.洗澡用化妆品与0501药浴制剂，浴用泥浆，药浴用海水类似，与第九版及以前版本0501医用浴剂交叉检索。<br />5.跨类似群保护商品：个人或动物用除臭剂（0306，0309）。<br />6.化妆用棉签与0506医用棉签类似。<br />',NULL,'2017-05-08 23:06:41',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (31,3,'0307 ','牙膏，洗牙用制剂','非医用漱口剂030031，牙膏030079，假牙清洁剂030194，假牙用抛光剂030198，口气清新喷雾030204，牙用漂白凝胶030210，口气清新片030216，牙齿美白贴030235<br />※口香水C030065<br />',NULL,'2017-05-08 23:06:41',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (32,3,'0308 ','熏料','香木030030，香030095，薰日用织品用香囊030150，干花瓣与香料混合物（香料）030203，祭祀用香030213<br />',NULL,'2017-05-08 23:06:41',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (33,3,'0309 ','动物用洗涤剂，化妆品','动物用化妆品030063，个人或动物用除臭剂030180，宠物用香030196，宠物用除臭剂030217<br />注：1.宠物用香波与0504狗用洗涤液，狗用洗涤剂类似；<br />2.跨类似群保护商品：个人或动物用除臭剂（0306，0309）。<br />',NULL,'2017-05-08 23:06:41',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (34,3,'0310 ','室内芳香剂','<P> 空气芳香剂030215 </P><P></P><P> <FONT color=#dc143c><br />注：本类似群与0503商品类似。</FONT></P><br />',NULL,'2017-05-08 23:06:41',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (35,4,'0401 ','工业用油及油脂，润滑油，润滑剂（不包括燃料用油）','传动带防滑剂040009，鞋用油脂040026，皮革用油脂040034，工业用油脂040035，脱模油（建筑）040036，动物脂040037，石油醚040044，工业用矿脂040047，煤焦油040053，煤石脑油040054，砖石建筑保护用油040055，非食用鱼油040057，灶具防粘用豆油制剂040058，重油040064，工业用菜油040065，石脑油040066，工业用骨油040067，油精040068，石油（原油或精炼油）040071，硬脂（精）040073，羊毛脂040074，工业用葵花籽油040075，混合二甲苯040077，二甲苯040078，纺织用油040080，苯040082，粗制苯040083，皮革保护剂（油和脂）040086，工业用油040087，工业用蓖麻油040089，皮革保护油040090，切割液040101，绘画用油040102，发动机油040104，石油挥发油040110<br />※桐油C040001，木油C040002，梓油（即青油）C040003，樟木油C040004，椰子油（工业用）C040005，核桃油（工业用）C040006，橄榄油（工业用）C040007，乳化油C040008，钟表油C040009，缝纫机油C040010，擦枪油C040011，唱机唱片两用油C040012，显微镜油（即香柏油）C040013，白油C040014，硬化油C040015，溶剂油C040016，精密仪器油C040017，切割油C040018，皮带油C040019，车轮防滑膏C040024<br />武器用润滑油040011，传动带用润滑油040033，润滑油040042，润滑石墨040052，润湿油040056，润滑脂040060，润滑剂040063<br />※轻油C040021，加脂油C040022，导热油C040023，齿轮油C040025<br />注：1.石油（原油或精炼油）与0402燃料，挥发性混合燃料，挥发性燃料混合物，照明用油脂，轻石油，柴油，粗柴油，汽油，煤油，汽车燃料，燃料油，石油气类似；<br />2.皮革保护剂（油和脂），皮革保护油与0303皮革保护剂（上光），皮革膏，皮革用蜡类似，与第十版及以前版本0303皮革防腐剂（抛光剂）交叉检索；<br />3.皮革用油脂与0114制革用油，鞣革用油，皮革整理用油类似，与第九版及以前版本0114皮革加脂用油交叉检索；<br />4.混合二甲苯，二甲苯，苯，粗制苯与0102第（七）部分甲苯，工业用甲基苯，甲基苯，轻苯类似。<br />',NULL,'2017-05-08 23:06:41',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (36,4,'0402 ','液体、气体燃料和照明燃料','甲基化酒精040002，酒精（燃料）040003，以酒精为主的燃料040004，挥发性混合燃料040020，燃料040025，照明用油脂040039，照明燃料040041，汽油040043，轻石油040045，柴油040048，粗柴油040048，汽油040051，煤油040059，碳氢燃料040081，汽车燃料040081，燃料油040084，发动机燃料用非化学添加剂040085，乙醇（燃料）040107<br />照明用气体040040，气体燃料040049，石油气040050，固态气体（燃料）040088，发生炉煤气040103<br />注：1.跨类似群保护商品：燃料（0402，0403）；<br />2.燃料，挥发性混合燃料，挥发性燃料混合物，照明用油脂，轻石油，柴油，粗柴油，汽油，煤油，汽车燃料，燃料油，石油气与0401石油（原油或精炼油）类似。<br />',NULL,'2017-05-08 23:06:42',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (37,4,'0403 ','固体燃料','点火用木片040006，引火物040007，无烟煤040008，木柴040013，木炭（燃料）040014，煤球040016，泥炭块（燃料）040017，泥煤球（燃料）040017，木质煤040018，易燃煤球040019，煤040023，泥炭（燃料）040024，焦炭040031，矿物燃料040032，褐煤040062，煤屑（燃料）040072，燃料040025，生物质燃料040111<br />注：跨类似群保护商品：燃料（0402，0403）。<br />',NULL,'2017-05-08 23:06:42',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (38,4,'0404 ','工业用蜡','蜂蜡040001，棕榈蜡040021，地蜡040022，蜡（原料）040027，传动带用蜡040028，工业用蜡040030，地蜡（石蜡）040069，石蜡040070<br />注：地蜡，地蜡（石蜡）与0303地板蜡，拼花地板蜡，上光蜡，地板防滑蜡，地板防滑液类似，与第十版以前版本上光蜡交叉检索。<br />',NULL,'2017-05-08 23:06:42',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (39,4,'0405 ','照明用蜡烛和灯芯','点火用纸捻040005，圣诞树用蜡烛040010，蜡烛040015，小蜡烛040015，照明用蜡040029，蜡烛芯040046，灯芯040061，夜间照明物（蜡烛）040076，香味蜡烛040105，火绒040108<br />',NULL,'2017-05-08 23:06:42',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (40,4,'0406 ','吸收、润湿和粘结灰尘用合成物','清扫用粘结灰尘合成物040012，除尘制剂040038，沉积灰尘用合成物040079，吸收灰尘用合成物040109<br />',NULL,'2017-05-08 23:06:42',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (41,4,'0407 ','能源','电能040106<br />※核聚变产生的能源C040027，电C040028<br />注：本类似群与第八版及以前版本0117交叉检索。<br />',NULL,'2017-05-08 23:06:42',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (42,5,'0501 ','药品，消毒剂，中药药材，药酒','（一）维生素制剂*050090，鱼肝油050150，补药050262，医用卵磷脂050313，药用蜂王浆050316，人用药050328，药物饮料050332，膳食纤维050367，医用珍珠粉050410，药用蜂胶050426<br />※赖氨酸冲剂C050010，赖氨酸盐酸盐C050011，珍珠层粉C050013，洋参冲剂C050026，蜂王精C050027，人参C050046，枸杞C050047<br />乌头碱050002，饮食疗法用或药用淀粉050013，麻醉剂050017，医用安果斯都拉树皮050020，气喘茶050022，治痔剂050025，防寄生虫制剂050029，防尿制剂050032，医用及兽医用细菌学研究制剂050037，细菌抑制剂050038，医用及兽医用细菌制剂050039，医用止痛制剂050046，药用铋制剂050053，古拉尔氏水（稀次醋酸铅溶液）050054，铅水050054，药用木炭050056，治疗烧伤制剂050061，除口臭药片050062，胼胝治疗剂050063，斑蝥粉050065，药用糖浆050067，药用胶囊050068，医药制剂050069，化学药物制剂050077，药用水合氯醛050079，氯仿（医用）050080，医用无烟草香烟050081，可卡因050086，医用南美牛奶菜的干皮050092，缓和便秘的药物050093，化学避孕剂050095，巴豆茎皮050105，马钱子050106，疫苗050107，煎好的药050109，药用助消化剂050122，洋地黄甘050123，止痛药050124，医用药物050125，轻便药箱（已装药的）050126，药用氧化镁050127，药用蜂花水050128，药用树皮050132，酏剂（药物制剂）050133，医用盐050137，药用酯050138，药用乙醚050139，药用桉树脑050141，药用桉树050142，泻药050143，药用面粉050144，药用谷粉050144，解热剂050146，医用茴香050147，药茶050149，杀真菌剂050151，神经镇定剂050152，药用邻甲氧基苯酚050153，驱肠虫药050154，轻泻剂050156，医用凝胶050157，药用龙胆050158，杀菌剂050159，甘油磷酸酯050160，药用亚麻籽050162，乳脂050165，血红蛋白元050168，血红蛋白050169，药草050170，医用激素050171，白毛茛碱050174，白毛茛分碱050175，药用蛋白胨050180，三碘甲烷050181，医用角叉菜050182，球根牵牛制泻药050183，药浸枣050184，药用甘草050185，药用牛奶发酵剂050187，药用亚麻籽粉050190，药用酵母050194，药用蛇麻腺050197，药用红树皮050199，药用薄荷050201，药用麦芽050203，血清050209，薄荷醇050210，医用或兽医用微生物制剂050213，药用锭剂050214，药用芥末050219，医药用樱桃李树皮050221，麻醉药050223，嗅盐050224，医用药膏050225，鸦片制剂050226，鸦片050227，器官疗法制剂050229，药用果胶050231，药用苯酚050236，药用草药茶050240，药用胃蛋白酶050242，药用扁胶囊050243，急救箱（备好药的）050244，药用磷酸盐050245，汗足药050247，血浆050248，毒药050249，医用钾盐050251，医用破斧木050253，医用苦木药050254，医用金鸡纳树皮050255，医用奎宁050256，医用喹啉050257，药用植物根050260，药用大黄根050261，药用次硝酸铋050263，医用菝葜050264，医用血050265，医用水蛭050266，镇静药050268，镇静剂050268，药用麦角050269，血清疗法药剂050270，安眠药050273，医用钠盐050274，灭菌剂050275，马钱子碱050276，止血剂050277，医用糖050278，磺胺（药）050279，药用酒石050281，药用松脂050282，医药用松节油050283，药用麝香草酚050284，祛汗药050285，发疱剂050290，药用醋酸盐050291，药用酸050292，医用生物碱050296，药用醋酸铝050299，药用甘草茎050303，药用小苏打050304，医用生物制剂050305，药用溴050306，医用樟脑油050308，医用樟脑050309，减肥用药剂050317，药用纤维素脂050318，药用苛性碱050319，药用纤维素醚050320，饮食疗法用或医用谷类加工副产品050321，药用化学制剂050323，药用酒石酸氢钾050325，药用杂酚油050326，牙科用药050327，药用酵素050333，药用硫华050334，医用发烟药草050336，药用酸050338，医用葡萄糖050340，医用藤黄050341，医用蓖麻油050344，药用碘050346，药用碘化物050347，药用碱性碘化物050348，医用化学制剂050362，医用淀粉酶050366，医用酶050368，医用酶制剂050370，医用催干剂050373，人用和动物用微量元素制剂050375，医用氨基酸050376，药用鱼粉050381，医用漱口剂050383，外科和矫形用骨结合剂050385，抗生素050388，医用食欲抑制剂050389，支气管扩张制剂050390，阴道清洗液050393，医用头发增长剂050394，类固醇050395，医用佐药050396，活体外科移植物050397，医用下体注洗液050402，医用干细胞050403，医用生物组织培养物050405，医用冷却喷雾050407，个人用性交润滑剂050408，药用芦荟制剂050409，性欲抑制剂050411，洗眼剂050414，食欲抑制剂050415，减肥药050416，晒黑用药050417，抗氧化药050418，药用藻酸盐050433<br />※针剂C050001，片剂C050002，酊剂C050003，水剂C050004，膏剂C050005，口服补盐液C050012，原料药C050014，中药成药C050015，生化药品C050022，血液制品C050023，胶丸C050024，药酒C050025，减肥茶C050050，杀寄生虫药C050051<br />医用酒精050008，药用乙醛050009，药用莳萝油050018，冻伤药膏050023，抗菌剂050030，治疣药笔050033，医用香膏050050，甘汞050064，石灰制药剂050074，熏蒸香锭050085，眼药水050088，除鸡眼药物050098，治晒伤用药剂050100，冻疮制剂050103，医用去污剂050108，清除橡皮膏溶剂050134，浸制药液050148，医用油脂050163，药油050167，医用芥子油050172，碘酒050179，药用洗液050191，搽剂050196，硫磺棒（消毒用）050205，医用润发脂050207，医用酊剂050208，汞软膏050211，肥皂樟脑搽剂050228，芥子膏药纸050237，芥子敷剂纸050237，护肤药剂050239，治头皮屑药剂050241，芥子膏药050271，芥子泥敷剂050271，栓剂050280，治晒伤软膏050301，医用甘油050331，药用甲醛050335，医用熏蒸制剂050337，医用矿脂050339，医用陀螺状羯布罗香油（香膏）050342，药用蛇麻子浸膏050343，医用过氧化氢050345，药用酒精050438<br />※油剂C050006，止痒水C050007，去灰指甲油C050008，艾卷C050020，贴剂C050021，风湿油C050043，伤风油C050044，清凉油C050045<br />医用洗浴制剂050041，矿泉水沐浴盐050042，药浴用海水050044，浴用治疗剂050045，医用泥浆050058，医用沉淀泥050058，浴用泥浆050059，泥敷剂050070，医用矿泉水050129，矿泉水盐050130，温泉水050131，医用淋浴盐050302<br />怀孕诊断用化学制剂050166，医用诊断制剂050330，医用或兽医用化学试剂050364，试纸（医用或兽医用）050437，医用生物标志物诊断试剂050443，痤疮治疗制剂050444，移植物（活体组织）050450，医用胶原蛋白050451，药用植物提取物050452<br /><br />（二）医用放射性造影物质050096，医用放射性物质050258，医用镭050259，医用同位素050349<br />※放射性药品C050009<br /><br />（三）浴用氧气050043，医用气体050314，医用氧050399<br /><br />（四）心电图描记器电极用化学导体050091<br /><br />（五）人工授精用精液050177<br /><br />（六）卫生消毒剂050118，消毒剂050441<br /><br />（七）隐形眼镜用溶液050094，隐形眼镜清洁剂050365<br /><br />（八）培养细菌用介质050036，培养细菌用肉汤050036，细菌培养基050036，微生物用营养物质050212，医用或兽医用微生物培养物050454<br />注：1.本类似群各部分之间商品不类似，但杀真菌剂，杀菌剂，灭菌剂，卫生消毒剂，消毒剂互为类似商品；<br />2.第（一）部分第一、二自然段与0502第一自然段药制糖果，医用树胶，医用糖果及第二自然段商品类似；<br />3.第（一）部分第一、二自然段（人用药除外）与3005商品类似;<br />4.药茶，药用草药茶，减肥茶与第九版及以前版本3002茶叶代用品交叉检索；<br />5.杀真菌剂，杀菌剂，灭菌剂，卫生消毒剂，消毒剂与0503化学盥洗室用消毒剂，0505灭干朽真菌制剂，灭微生物剂，土壤消毒制剂，农业用杀菌剂类似，与第八版及以前版本0503污物消毒剂，污物消毒制剂，第九版及以前版本0505土壤消毒剂交叉检索；<br />6.牙科用药与第六版及以前版本0507牙科用药交叉检索；<br />7.轻便药箱（已装药的），急救箱（备好药的）与1001外科医生和医生用器械箱，医疗器械箱，外科医生和医生用箱类似；<br />8.防寄生虫制剂，驱肠虫药，医用及兽医用细菌学研究制剂，医用或兽医用微生物培养物，医用或兽医用微生物制剂，杀寄生虫药，医用或兽医用化学试剂，人用和动物用微量元素制剂与0504商品类似；<br />9.药浴制剂，浴用泥浆，药浴用海水与0301第一、二自然段，0306洗澡用化妆品类似；<br />10.阴道清洗液、医用下体注洗液与0301个人清洁或祛味用下体注洗液类似；<br />11.矿泉水沐浴盐与0301非医用沐浴盐，浴盐类似；<br />12.杀寄生虫药与0505杀寄生虫剂类似；<br />13.除口臭药片与0502医用口香糖类似。<br />',NULL,'2017-05-08 23:06:43',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (43,5,'0502 ','医用营养品，人用膳食补充剂，婴儿食品','医用白朊食品050006，医用白朊制剂050007，药制糖果050057，糖尿病人食用的面包050121，医用树胶050161，医用麦乳精饮料050188，药用乳糖050192，医用口香糖050198，药用杏仁乳050300，医用糖果050310<br />医用营养食物050297，医用营养饮料050307，医用营养品050350，矿物质食品补充剂050382，营养补充剂050384，白朊膳食补充剂050420，亚麻籽膳食补充剂050421，亚麻籽油膳食补充剂050422，小麦胚芽膳食补充剂050423，酵母膳食补充剂050424，蜂王浆膳食补充剂050425，蜂胶膳食补充剂050427，花粉膳食补充剂050428，酶膳食补充剂050429，葡萄糖膳食补充剂050430，卵磷脂膳食补充剂050431，藻酸盐膳食补充剂050432，酪蛋白膳食补充剂050434，蛋白质膳食补充剂050435<br />婴儿含乳面粉050145，婴儿食品050298，婴儿配方奶粉050448，婴儿奶粉050449<br />注：1.药制糖果，医用树胶，医用糖果与0501第（一）部分第一、二自然段类似；<br />2.第二自然段与0501第（一）部分第一、二自然段，3005商品类似；<br />3.婴儿含乳面粉，婴儿食品，婴儿配方奶粉，婴儿奶粉与2907牛奶，牛奶饮料（以牛奶为主），牛奶制品，白朊牛奶，蛋白质牛奶，奶粉类似；<br />4.医用口香糖与0501除口臭药片类似。<br />',NULL,'2017-05-08 23:06:43',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (44,5,'0503 ','净化制剂','空气净化制剂050005，净化剂050117，非人用、非动物用除臭剂050119，除霉化学制剂050202，化学盥洗室用消毒剂050380，衣服和纺织品用除臭剂050400，空气除臭剂050401<br />※冰箱除臭剂（去味剂）C050029，厕所除臭剂C050030，漂白粉（消毒）C050031<br />注：1.化学盥洗室用消毒剂，厕所除臭剂与0302厕所清洗剂类似；<br />2.漂白粉（消毒）与第九版及以前版本0104第（一）部分漂白剂交叉检索，与0301漂白盐，漂白碱，漂白苏打，漂白剂（洗衣用），漂白剂（洗衣）类似；<br />3.化学盥洗室用消毒剂与0501杀真菌剂，杀菌剂，灭菌剂，卫生消毒剂，消毒剂，0505灭干朽真菌制剂，灭微生物剂，土壤消毒制剂，农业用杀菌剂类似，与第九版及以前版本0505土壤消毒剂交叉检索；<br />4.本类似群与0310商品类似。<br />',NULL,'2017-05-08 23:06:43',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (45,5,'0504 ','兽药，动物用膳食补充剂','牲畜用洗涤剂050051，狗用洗涤液050075，狗用驱虫剂050076，动物蹄用胶合剂050083，动物用防寄生虫颈圈050087，兽医用油脂050164，动物用洗涤剂050189，兽医用洗液050220，兽医用制剂050287，狗用洗涤剂050322，兽医用药050329，兽医用生物制剂050361，兽医用化学制剂050363，兽医用酶050369，兽医用酶制剂050371，兽医用氨基酸050377，兽医用干细胞050404，兽医用生物组织培养物050406，动物用膳食补充剂050419，动物用蛋白质补充剂050436，含药物的饲料050445，兽医用诊断制剂050446<br />注：1.狗用洗涤液，狗用洗涤剂与0309宠物用香波类似；<br />2.本类似群与0501防寄生虫制剂，驱肠虫药，医用及兽医用细菌学研究制剂，医用或兽医用微生物培养物，医用或兽医用微生物制剂，杀寄生虫药，医用或兽医用化学试剂，人用和动物用微量元素制剂类似，与第九版及以前版本0501防寄生虫制剂（人或兽用），打虫药（人或兽用），驱虫剂（人或兽用），医用或兽用培养基，医用或兽用微生物培养体，杀寄生虫药（人或兽用），人用和兽用微量元素制剂交叉检索；<br />',NULL,'2017-05-08 23:06:43',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (46,5,'0505 ','杀虫剂，除莠剂，农药','消灭有害动物制剂050021，灭干朽真菌制剂050026，灭微生物剂050052，杀昆虫剂050055，灭鼠剂050120，抗隐花植物制剂050135，驱昆虫剂050178，烟精（杀虫剂）050186，灭幼虫剂050193，除蛞蝓剂050195，除莠剂050204，消灭有害植物制剂050204，除草剂050204，鼠药050216，治小麦枯萎病（黑穗病）的化学制剂050222，治小麦黑穗病的化学制剂050222，治葡蚜用化学制剂050246，除虫菊粉050252，土壤消毒制剂050272，治藤蔓病化学品050288，杀寄生虫剂050238，蒽油（杀寄生虫用）050311，除藻剂050312，驱虫用香050386，杀螨剂050387，杀虫剂050439，杀害虫制剂050289<br />※农业用杀菌剂C050048<br />防蛀剂050028，粘蝇纸050035，捕苍蝇用粘胶050217，粘蝇胶050217，灭蝇剂050218，防蛀纸050286，用于驱虫的杉木050379<br />※蚊香C050032，熏蚁纸C050033，粘蝇带C050034，卫生球C050035<br />注：1.第一、二自然段与0105第一、二自然段，0109植物生长调节剂，0113水果催熟用激素类似，与第九版及以前版本0113水果催熟激素交叉检索；<br />2.灭干朽真菌制剂，灭微生物剂，土壤消毒制剂，农业用杀菌剂与0501杀真菌剂，杀菌剂，灭菌剂，卫生消毒剂，消毒剂，0503化学盥洗室用消毒剂类似，与第八版及以前版本0503污物消毒剂，污物消毒制剂交叉检索；<br />3.杀寄生虫剂与0501杀寄生虫药类似。<br />',NULL,'2017-05-08 23:06:43',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (47,5,'0506 ','卫生用品，绷敷材料，医用保健袋','（一）卫生巾带050071，月经内裤050200，卫生内裤050200，卫生棉条050232，卫生护垫050233，卫生巾050234，内裤衬里（卫生用）050315，失禁用尿布050351，失禁用吸收裤050372，浸药液的薄纸050374，婴儿尿布050412，婴儿尿裤050413<br />※消毒纸巾C050036，失禁用衣C050049<br /><br />（二）防风湿手环050015，防风湿指环050016，橡皮膏050019，防腐棉050031，无菌棉050034，脚戴除鸡眼环050040，包扎绷带050049，医用手镯050060，医用填料050072，医用棉绒050073，敷布050089，医用棉050099，治头痛药笔050101，腐蚀性药笔050102，止血药笔050104，医用敷料050114，外伤药用棉050136，外科敷料050140，敷料纱布050155，脱脂棉050176，能吸附的填塞物050176，外科用肩绷带050267，医用胶带050294，医用胶布050294，药用火棉胶050324，防溢乳垫050378，拇囊炎衬垫050391，医用包足绷带050392，医用眼罩050398，外科胶水050442，医用棉签050447<br />※救急包C050037，止血栓C050038，中药袋C050039，药枕C050040，产包C050041，医用保健袋C050042<br />注：1.本类似群各部分之间商品不类似；<br />2.卫生棉条，卫生垫，卫生巾，浸药液的薄纸，消毒纸巾与1603卫生纸，纸手帕，卸妆用薄纸，纸餐巾，纸巾，纸制洗脸巾，纸制抹布类似，与第十版及以前版本1603卸妆用纸巾，第九版及以前版本1603纸或纤维素制婴儿餐巾（一次性），纸制或纤维制婴儿餐巾（一次性）交叉检索；<br />3.卫生内裤，月经内裤与2501内裤，内裤（服装）类似”改为“月经内裤，卫生内裤与2501内裤，女士内裤类似，与第十版及以前版本2501内裤（服装）交叉检索；<br />4.失禁用尿布，失禁用吸收裤，婴儿尿布，婴儿尿裤与1004失禁用垫类似，与第九版及以前版本1603纸或纤维素制婴儿尿布（一次性），纸制和纤维制婴儿尿布（一次性），纸或纤维素制婴儿尿布裤（一次性），纸制和纤维制婴儿尿裤（一次性），纸制或纤维制婴儿尿布（一次性）交叉检索；<br />5.婴儿尿布，婴儿尿裤与第九版及以前版本2502婴儿纺织品尿布交叉检索；<br />6.外科用肩绷带，卫生绷带，包扎绷带与1008矫形用关节绷带，支撑绷带，弹性绷带，悬吊式绷带，矫形用膝绷带，矫形用石膏绷带（模压品），吊带（支撑绷带）类似；与第九版及以前版本1008吊绷带交叉检索；<br />7.消毒纸巾与0306浸化妆水的薄纸类似，与第九版及以前版本0306浸化妆品的卫生纸，浸化妆品的薄纸交叉检索”改为“消毒纸巾与0306浸化妆水的薄纸，浸卸妆液的薄纸类似，与第九版及以前版本0306浸化妆品的卫生纸，浸化妆品的薄纸交叉检索；<br />8.治头痛用品与第九版及以前版本0501治头痛药品交叉检索。<br />9.医用棉签与0306化妆用棉签类似，与第十版及以前版本0306棉签（梳妆用品）交叉检索。<br />',NULL,'2017-05-08 23:06:43',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (48,5,'0507 ','填塞牙孔用料，牙科用蜡','牙用研磨剂050001，假牙粘合剂050003，牙科用贵重金属合金050010，牙科用汞合金050012，牙科用橡胶050066，牙科用粘固粉050082，牙医用造型蜡050084，牙医制模用蜡050084，牙填料050110，牙科用印模材料050111，牙用光洁剂050112，牙用粘胶剂050113，假牙用瓷料050115，出牙剂050116，牙科用金汞合金050230<br />',NULL,'2017-05-08 23:06:43',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (49,6,'0601 ','普通金属及其合金、板、各种型材（不包括焊接及铁路用金属材料）','未锻造或半锻造的钢060001，钢合金060002，铸钢060005，镍银060016，铝060017，青铜060018，耐磨金属060027，锌白铜060031，镀银的锡合金060032，铍060043，白合金060046，镉060061，铪060067，铬060079，铬铁060080，钴（未加工的）060088，未加工或半加工铜060109，生铁或半锻造铁060115，未加工或半加工的铸铁060133，钼铁060136，硅铁060137，钛铁060138，钨铁060139，铅封060146，锗060147，铟060154，未加工或半加工黄铜060157，金属锉屑060161，普通金属锭060164，大钢坯（冶金）060168，镁060169，锰060174，未加工或半加工普通金属060182，可自燃金属060185，钼060189，镍060193，铌060194，未加工或半加工的铅060214，锌060223，钽（金属）060246，钛060251，顿巴黄铜060253，钨060257，钒060259，锆060264，普通金属合金060269，铝箔*060270，锡060373，马口铁060374，锡箔060375，包装和打包用金属箔060416，粉末状金属*060434<br />※钢砂C060001，铁砂C060002，白铁皮C060003，电解铜C060004，电解铅C060005，铝锭C060007，钨粉C060008，锰粉C060009，锌粉C060010，电解镍C060011，钢纤维C060043<br />钢条060003，钢桅杆060006，钢板060010，锚定板060020，垫板060020，金属桅杆060023，金属杆060024，装甲金属板060047，铁板060052，铁条060131，金属板条060160，金属桩060188，金属板桩060188，金属柱060205，角铁060345，金属支架060372，金属片和金属板060376，金属陶瓷060401，3D打印机用金属箔或金属粉060453<br />注：1.第三自然段商品与0603建筑用金属盖板，建筑用金属衬板，金属隔板，建筑用金属板，建筑用金属嵌板，钢模板，建筑用金属平板等金属制板材类似；<br />2.锚定板与0604铁路金属材料类似；<br />3.金属支架与第九版及以前版本的0603装货物用金属支架交叉检索；<br />4.镁与0101碱土金属类似。<br />',NULL,'2017-05-08 23:06:43',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (50,6,'0602 ','普通金属管及其配件','钢管060011，金属喷头060014，金属喷嘴060021，绳索用金属套管060058，中央供暖装置用金属管道060076，中央供热装置用金属管道060076，金属水管060091，金属套筒（金属制品）060092，管道用金属弯头060099，金属套管柱060111，金属排水管060114，金属管060127，滑油嘴060151，金属制管套筒060173，管道用金属接头060229，金属阀门（非机器部件）060243，金属管道060258，压缩空气管道用金属配件060267，管道用金属加固材料060275，紧固管道用金属环060312，管道用金属墙钩C060046，缆绳和管道用金属夹060313，金属排水阱（阀）060335，油井用金属套管060337，金属雨水管060356，金属水管阀060359，金属分岔管060366，通风和空调设备用金属管060415，管道用金属歧管060420，金属压力水管060421<br />注：1.本类似群商品与1108第（一）部分商品类似；<br />2.金属阀门（非机器零件），金属排水阱（阀），金属水管阀与0749第（二）部分商品类似。<br />3.管道用金属墙钩与第9版及以前版本0608管道用金属墙钩交叉检索；<br />4.跨类似群保护商品：缆绳和管道用金属夹（0602，0606）。<br />',NULL,'2017-05-08 23:06:44',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (51,6,'0603 ','金属建筑材料，可移动金属建筑物（不包括建筑小五金）','金属楼梯060124，金属格栅060152，金属火箭发射台060159，可移动金属建筑物060170，金属围篱060198，溜冰场（金属结构）060203，金属电线杆060222，可移动的金属温室060236，金属筒仓060239，金属格架060256，鸟舍（金属结构）060263，不发光金属信号台060282，游泳池（金属结构）060290，金属制自行车停放设备060293，金属制简易小屋060308，喷漆用金属间060310，金属烟囱罩060318，金属烟囱管帽060331，金属建筑物060339，金属梯060361，乘客登乘用可移动金属梯060362，电线用金属杆060365，金属栅栏060368，炉用金属护栏060390，公路防撞用金属护栏060397，金属广告栏060411，金属烟囱060413，金属烟囱柱060414，金属电话间060422，金属电话亭060422，金属鸡房060425，（壁炉的）柴架060431，凉亭（金属结构）060436，金属牲畜棚060437，金属猪圈060438，金属预制房（成套组件）060439，金属蓄水池060232<br />※镀锌铁塔C060012，桥梁支承C060013，金属果皮箱C060014，电缆桥架C060015，金属护栏C060034，金属井盖C060035，预应力锚具，C060036，金属锚具C060037<br />钢制百叶卷帘060009，混凝土用金属加固材料060033，金属地板砖060040，金属栅栏用杆060042，建筑用金属架060074，建筑用金属柱06009，金属制屋顶防雨板060098，金属门*060100，窗用铁制品060106，建筑用金属托架060123，建筑用金属附件060140，金属固定百叶窗060156，室外金属百叶窗060158，金属楼梯基（楼梯部件）060162，金属楣060165，金属台阶（梯子）060177，门廊（金属结构）060179，建筑用金属制墙包层060192，建筑用金属盖板060195，金属百叶窗060197，建筑用金属制墙衬料060201，金属制帐篷桩060208，金属天花板060209，金属地板060210，建筑用金属包层060458，建筑用金属衬板060211，金属屋瓦060213，金属跳水板060215，金属大门060218，金属门板060219，金属梁060224，金属搁栅060225，预制金属台060226，金属槛060233，金属屋顶060252，金属旋转栅门060255，金属竖铰链窗060260，钢结构建筑060266，金属护壁板060274，建筑用金属加固材料060276，金属建筑材料060291，混凝土用金属模板060292，金属铺路块料060294，金属窗框060315，温室用金属架060316，金属垫路板060317，建筑用金属砖瓦060321，金属砖地板060322，建筑用金属框架060328，金属门框060329，金属门框架060329，金属檐槽060332，金属隔板060336，金属檐口060343，檐板金属嵌条060344，金属窗060346，门用铁制品060347，金属检修孔盖060349，金属制屋顶覆盖物060350，金属楼梯踏板060355，金属脚手架060360，建筑用金属板060381，建筑用金属嵌板060381，金属制防昆虫纱窗060428，金属耐火建筑材料060435，金属制街道排水沟060441，金属墙砖060445，金属铺地平板060446，建筑用金属平板060447，金属梯凳060448，太阳能电池组成的金属屋顶板060449，金属装甲门060450，金属波形瓦\r\n060456，金属栏杆060457<br />※钢模板C060016，金属脚手架扣件C060038，铝塑板C060042<br />注：1.建筑用金属盖板，建筑用金属衬板，金属隔板，建筑用金属板，建筑用金属嵌板，钢模板，建筑用金属平板等金属制板材与0601第三自然段商品类似；<br />2.铝塑板与第八版及以前版本的1909铝塑板（以塑料为主）交叉检索；<br />3.金属门，金属固定百叶窗，室外金属百叶窗，金属百叶窗，金属大门，金属竖铰链窗等金属制门窗与1909塑钢门窗类似；<br />4.0603与第九版及以前版本的0615金属鸟舍（建筑物）交叉检索；<br />5.预应力锚具与0733预应力锚具张拉设备类似；<br />6.金属脚手架扣件与第七版及以前版本的金属脚手架扣件交叉检索；<br />7.旋转栅门与第九版及以前版本的0914自动旋转栅门交叉检索。<br />8.太阳能电池组成的金属屋顶板与0922太阳能电池，发电用太阳能电池板类似。<br />',NULL,'2017-05-08 23:06:44',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (52,6,'0604 ','铁路用金属材料','铁路转辙器060013，铁路道岔060013，铁路金属材料060089，铁路金属护轨060095，鱼尾形接轨夹（铁路）060116，金属轨道060129，转车盘（铁道）060212，铁路用金属枕木060245，铁路货车用金属载量规杆060326，缆索铁道永久导轨用金属材料060330<br />※止轮器C060017，铁道防爬器C060018<br />注：铁路金属材料与0601锚定板类似。<br />',NULL,'2017-05-08 23:06:44',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (53,6,'0605 ','非电气用缆索和金属线、网、带','钢箍060003，钢丝060004，铝丝060019，装卸用金属吊带060026，带刺金属丝060041，高架缆车的缆绳060057，普通金属线060108，铁箍060131，铁丝060132，金属丝网060184，普通金属合金丝（除保险丝外）060268，捆扎用金属带060285，包装或捆扎用金属带060285，捆扎用金属线060286，装卸用金属带060305，装卸用金属吊索060306，金属制非电气缆绳060311，农业用金属捆扎线060319，金属绳索060341，非绝缘铜线060353，金属捆扎物060363，金属捆扎线060396，金属绳060427<br />※电焊网C060020，钢带C060044，铁带C060045<br />',NULL,'2017-05-08 23:06:44',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (54,6,'0606 ','缆绳用非电气金属附件','非电气缆绳用金属接头060059，缆绳和管道用金属夹060313，缆绳用金属接线螺钉060314<br />※铁接板C060021，马蹄形钩环（脚扣、铁鞋）C060022，紧线夹头C060023，铝合金滑车C060024<br />注：跨类似群保护商品：缆绳和管道用金属夹（0602，0606）。<br />',NULL,'2017-05-08 23:06:44',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (55,6,'0607 ','钉及标准紧固件','金属垫圈060037，金属环*060038，金属止动环*060038，盒用金属紧固扣件060048，金属螺栓060049，垫片（填隙片）060063，金属栓060078，金属开尾销060082，钉子060085，角钉060086，平头钉060086，金属膨胀螺栓060087，金属钩（扣钉）060102，金属扣钉（钩）060102，金属螺丝060118，销（五金件）060141，有眼螺栓060143，吊环螺钉060143，攀登用鞋底钉060149，金属铆钉060217，金属塞060296，普通金属扣（五金器具）060298，金属螺母060364，五金器具*060227，小五金器具*060227<br />※键销C060025，车辆紧固用螺丝C060039<br />注：跨类似群保护商品：五金器具（0607，0608，0609）；小五金器具（0607，0608，0609）。<br />',NULL,'2017-05-08 23:06:44',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (56,6,'0608 ','家具及门窗的金属附件','建筑或家具用镍银附件060015，金属门闩060022，金属制窗锁060454，金属制窗挡060035，金属制门挡060036，金属铰链*060068，金属安全链060071，金属铰链连接器060073，吊窗滑轮060075，窗用小滑轮060075，窗扉栓060104，铜环060110，金属窗栓060125，窗用金属附件060130，关门器（非电动）060135，门弹簧（非电动）060135，床用金属脚轮060166，金属门环060180，家具用金属脚轮060187，金属衣服挂钩060202，金属门把手060216，金属门插销060220，金属挡块060238，扁插销060247，球形金属把手060301，非电动开门器060320，金属合页060327，滑动门用金属小滑轮060348，挂衣杆用金属钩060352，金属制固定式毛巾分配器060358，家具用金属附件060380，床用金属附件060393，门用金属附件060394，非电动开窗器060443，非电动关窗器060444，金属闩060167，五金器具*060227，小五金器具*060227，金属制浴缸扶手060451，金属制门用锁紧装置060455<br />※磁碰块C060026，家用金属滑轨C060040<br />注：1.金属门闩，金属闩与第十版及以前版本0603金属闩交叉检索；<br />2.金属门把手，球形金属把手与第九版及以前版本的0609金属把手包头，2103球形瓷把手，瓷制门把手交叉检索；<br />3.跨类似群保护商品：五金器具（0607，0608，0609）；小五金器具（0607，0608，0609）。<br />',NULL,'2017-05-08 23:06:44',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (57,6,'0609 ','日用五金器具','手杖用金属包头060064，门前刮鞋垫060113，金属门铃（非电动）060121，金属工具柄060171，手柄用金属包头060172，普通金属制钥匙圈060221，小五金器具*060227，五金器具*060227，铃*060241，金属包头060262，金属扫帚柄060281，金属刀柄060342，金属镰刀柄060378，瓶用金属螺旋盖060442<br />※金属钥匙链C060027，帐圈C060028<br />注：跨类似群保护商品：五金器具（0607，0608，0609）；小五金器具（0607，0608，0609）。<br />',NULL,'2017-05-08 23:06:44',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (58,6,'0610 ','非电子锁','挂锁060062，钥匙060083，金属锁（非电）060144，弹簧锁060153，锁簧060204，运载工具用金属锁060237，包用金属锁060379，汽车车轮锁060426<br />注：本类似群（除钥匙外）与0920电锁类似。<br />',NULL,'2017-05-08 23:06:44',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (59,6,'0611 ','保险箱柜，金属柜','金属现金盒060029，保险柜060034，现金保险箱060066，金属食品柜060392，金属藏肉柜060392<br />',NULL,'2017-05-08 23:06:44',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (60,6,'0612 ','金属器具，金属硬件（非机器零件）','机器传动带用金属扣060012，金属带式铰链060039，丁字砧060045，金属法兰盘060054，铁砧060097，金属制皮带张紧器060101，金属挂锅钩060103，铁构（金属器具）060105，搬运用金属货盘060175，运输用金属货盘060176，金属虎钳爪060191，弹簧（金属制品）060206，金属滑轮（非机器用）060207，金属线拉伸器（张力环）060230，铁砧（便携式）060248，张力环060249，钢滚珠060265，机器传动带用金属加固材料060277，金属制钳工台060283，铁带拉伸器（张力环）060284，装卸用金属货盘060325，屋顶石板片用金属钩060351，软管用非机械金属绕轴060357，软管用非机械金属卷轴060369，金属带拉伸器（张力环）060383，金属制岩钉060430，金属托盘*060440<br />注：钢滚珠与第九版及以前版本的0750滚珠，轴承滚珠交叉检索。<br />',NULL,'2017-05-08 23:06:44',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (61,6,'0613 ','金属容器','压缩气体或液态空气瓶（金属容器）060050，贮酸金属容器060065，锡罐060093，金属储藏盒060093，存储和运输用金属容器060094，冷铸模（铸造）060096，压缩气体和液态空气用金属容器060112，马口铁制包装物060119，金属信箱060120，金属制冰块模060150，金属筐060199，金属包装容器060231，（贮液或贮气用）金属容器060232，搅拌灰浆用金属槽060279，金属琵琶桶060287，金属桶箍060288，金属桶060289，普通金属盒060295，桶用金属塞060296，金属密封盖060297，金属瓶盖060299，金属瓶帽060299，瓶用金属密封盖060299，金属瓶塞060300，瓶用金属紧固塞060300，液态燃料用金属容器060338，金属浮动容器060340，金属大桶060354，金属铸模060384，金属桶架060391，容器用金属盖060395，金属箱060398，桶用金属活嘴060402，金属卸料斗（非机械）060418，金属工具箱（空）060424，金属工具盒（空）060423<br />※集装箱C060030，压缩气体钢瓶和液压气减压阀C060031，啤酒罐C060032<br />注：1.冷铸模（铸造）与0736铸模（机器部件），压铸模；0735冷冲模类似。<br />2.金属信箱与第九版及以前版本0603金属信箱交叉检索<br />3.本类似群商品与第十版及以前版本0609金属密封盖，金属瓶盖，金属瓶帽，瓶用金属密封盖，金属瓶塞，瓶用金属紧固塞交叉检索。<br />',NULL,'2017-05-08 23:06:44',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (62,6,'0614 ','金属标牌','运载工具用金属徽标060155，不发光金属门牌060196，不发光、非机械的金属信号板060200，不发光、非机械的金属路牌060228，不发光、非机械的金属标志060235，金属标志牌060370，金属纪念标牌060389，金属身份牌060399，金属车牌060400，普通金属制字母和数字（铅字除外）060419<br />',NULL,'2017-05-08 23:06:45',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (63,6,'0615 ','动物用金属制品','拴牲畜的链子060044，马掌钉060077，靴刺060122，动物挂铃060240，鸟食台（金属结构）060280，金属制兽笼060433，金属制固定式狗用垃圾袋分配器060452<br />',NULL,'2017-05-08 23:06:45',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (64,6,'0616 ','焊接用金属材料（不包括塑料焊丝）','银焊料060030，铜焊合金060053，金属焊丝060242，铜焊金属焊条060302，铜焊及焊接用金属棒060303，金属焊条060304，金焊料060417<br />※焊锡丝C060033<br />',NULL,'2017-05-08 23:06:45',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (65,6,'0617 ','锚，停船用金属浮动船坞，金属下锚桩','金属下锚柱060271，船只停泊用金属浮动船坞060272，锚*060273，金属系船浮标060412<br />注：锚与0734船用自动锚类似，与第九版及以前版本的0734航海自动小锚，1210船锚，小船用锚，锚链交叉检索。<br />',NULL,'2017-05-08 23:06:45',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (66,6,'0618 ','手铐，医院用的金属身份证明手镯','金属制身份鉴别手环060051，手铐060181<br />注：金属制身份鉴别手环与2010类似。<br />',NULL,'2017-05-08 23:06:45',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (67,6,'0619 ','（测气象或风力的）金属浆叶，金属风标','金属风向标060148，金属风力驱鸟器060432<br />',NULL,'2017-05-08 23:06:45',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (68,6,'0620 ','金属植物保护器','树木金属保护器060028<br />',NULL,'2017-05-08 23:06:45',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (69,6,'0621 ','捕野兽陷阱','捕野兽陷阱*060025<br />',NULL,'2017-05-08 23:06:45',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (70,6,'0622 ','普通金属艺术品，青铜（艺术品）','青铜制艺术品060056，普通金属塑像060244，普通金属艺术品060278，普通金属制半身塑像060307，普通金属小雕像060382，普通金属小塑像060382<br />',NULL,'2017-05-08 23:06:45',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (71,6,'0623 ','矿石，矿砂','铬矿石060081，铁矿石060134，方铅矿（矿石）060145，褐铁矿060163，金属矿石060183<br />',NULL,'2017-05-08 23:06:45',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (72,6,'0624 ','金属棺（埋葬用），金属棺材扣件，棺材用金属器材','墓碑用青铜制品060055，墓碑用青铜制纪念物060055，金属纪念碑060190，金属墓060254，金属墓穴060323，棺材用金属附件060324，墓穴用金属围栏060367，金属墓板060385，墓碑用金属制纪念物060386，金属墓碑标牌060387，金属墓碑柱060388<br />',NULL,'2017-05-08 23:06:45',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (73,7,'0701 ','农业用机械及部件（不包括小农具）','农业机械070008，农业起卸机070009，犁070028，打谷机070043，收割机械070051，割草机和收割机070051，捆干草装置070058，捆干草机070058，玉米脱粒机070089，谷物脱壳机070089，犁铧070100，中耕机070138，铲草皮犁070148，排水机070158，植物茎、柄、叶分离器（机器）070168，谷物脱粒机070169，摊晒机070186，割草机用刀070188，割草机070201，切草机070210，稻草切割机070210，耙土机070213，喷雾器（机器）070214，喷雾机（机器）070214，喷雾机070214，切草机刀片070223，收割机070268，收割捆扎机070269，收割脱粒机070270，耙机用耙070323，耙机070324，除草机070344，播种机（机器）070348，扬谷机070379，非手动的农业器具070388，机动中耕机070513<br />※插秧机C070001，植树机C070002，种子发芽器C070003，沼气出料机C070004，种子清洗设备C070005，砻谷机C070097，采茶机C070366<br />注：1.喷雾器（机器），喷雾机（机器），喷雾机与0803杀虫剂用喷雾器（手工具），杀虫剂用喷洒器类似，与第九版及以前版本0803杀虫喷雾器（手工具），杀虫剂喷雾器（手工具），杀虫用喷雾器交叉检索；<br />2.排水机与1108组农业用排灌机类似；<br />3.本类似群商品与第七版及以前版本0708采茶机，及第十版及以前版本0709砻谷机交叉检索。<br />',NULL,'2017-05-08 23:06:46',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (74,7,'0702 ','渔牧业用机械及器具','（一）水族池通气泵070005，收网机（捕鱼具）070478<br /><br />（二）粉碎机070153，轧饲料机070195，工业用切碎机（机器）070419，机械化牲畜喂食器070517<br />※饲料粉碎机C070006，青饲料切割机C070007，块根切碎机C070008，饲料蒸煮器（饲料加工机械部件）C070009<br /><br />（三）挤奶机070367，挤奶机用奶头杯070368，挤奶机用吸杯070368，孵卵器070442<br />※蜜蜂巢础机C070010，蛋鸡笼养设备C070011，摇蜜机C070012<br /><br />（四）动物剪毛机070431<br /><br />（五）※盐池压平机C070441，起盐机C070442<br />注：1.本类似群各部分之间商品不类似；<br />2.跨类似群保护商品：粉碎机（0702第（二）部分，0725，0733，0752）；工业用切碎机（机器）（0702第（二）部分，0709，0752）；<br />3.本类似群第（二）部分与第八版及以前版本的0753粉碎机，粉碎机（机器），工业用切碎机（机器）交叉检索。<br />',NULL,'2017-05-08 23:06:46',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (75,7,'0703 ','伐木、锯木、木材加工及火柴生产用机械及器具','锯台（机器部件）070035，木材加工机070055，凿榫机070071，刨花机070071，锯条（机器部件）070226，锯条夹（机器部件）070227，机锯（机器）070341<br />※铰盘机C070013，编筏机C070014，原木传送机C070015，制木屑的机器C070016，拼板机C070017，火柴生产工业用机器C070018<br />注：机锯（机器），锯条（机器零件）与0742链锯，带锯，圆锯片（机器零件），龙锯，截锯（机器零件），往复锯类似。<br />',NULL,'2017-05-08 23:06:46',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (76,7,'0704 ','造纸及加工纸制品工业用机械及器具','（一）砑光辊070240，造纸机070291，砑光机070292，造纸机（纸业机器）070293<br />※洗浆机C070019，卷浆机（造纸工业用）C070020，造纸用打浆机C070021，脱水机（造纸工业用）C070022，筛浆机C070023，轧光机C070024，卷筒机（造纸工业用）C070025，平网抄纸机C070026，纸板机C070027，圆筛（造纸机械部件）C070028，纸浆泵C070029，蒸煮锅（造纸机械部件）C070445<br /><br />（二）※卫生巾生产设备C070367，纸尿裤生产设备C070368<br />注：1.本类似群各部分之间商品不类似；<br />2.跨类似群保护商品：砑光辊（0704第（一）部分，0706，0712）；砑光机（0704第（一）部分，0706，0712）；轧光机（0704第（一）部分，0706）；<br />3.本类似群第（一）部分与第九版及以前版本的0712砑光机交叉检索。<br />',NULL,'2017-05-08 23:06:46',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (77,7,'0705 ','印刷工业用机械及器具','排字机（印刷）070076，字模盒（印刷用）070081，排字机（照相排版）070112，铸字机070120，印刷滚筒070140，印刷机上墨装置070175，压印机070180，在金属薄板上使用的印刷机器070216，印刷版070217，印刷机器070218，印刷机070219，印刷机用油墨辊070220，进纸机（印刷）070246，凸版印刷机070303，工业用书籍装订装置和机器070327，轮转印刷机070334，上光机070345，铅板印刷机070355，压纸格（印刷机部件）070377，凸版印刷机械070378，印刷用字模070436<br />※浇铅条机C070030，铅字刨床C070031，胶印机C070032，三色版机（印刷工业机械）C070033，自动配页机C070034，折页机C070035，整理机（印刷工业机械）C070036，打眼机C070037，铸铅板机C070038，出纸型机C070039，制版机C070040，晒版机C070041，打样机C070042，裁纸机C070043，烫金机C070044，划线机（印刷工业机械）C070045，涂刷机C070046，透明胶腊网线版C070047，印刷胶板C070048，印刷胶辊C070049，胶印锌版C070050，外文模板（印刷用）C070051，铜网（印刷用）C070052，照相制版用腐蚀机C070053，高速烂版机C070054，印刷用金属镍网C070369<br />注：印刷版与1618凸印版，胶版，电铸版类似，与第九版及以前版本1618印版，胶印板，电版交叉检索；<br />',NULL,'2017-05-08 23:06:46',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (78,7,'0706 ','纤维加工及纺织、针织工业用机械及部件','织布机卷线轴070054，织袜机070057，针布（梳棉机部件）070079，旋转式脱水机（非加热）070084，针织机滑动架070097，针织机滑板070097，制花边机070151，喷射器070170，纺织机070190，纺车070191，织布机传动齿轮070212，织机轴070224，砑光辊070240，织布机070259，精纺机070260，梭（机器部件）070280，砑光机070292，起绒毛机070325，织补机070329，梳棉机070364，织带机070372，编织机070374，纺织工业用机器070496<br />※轧光机C070024，轧花机C070057，清花机C070058，棉籽脱绒机C070059，棉花烘干机C070060，弹花机C070061，风力清籽机C070062，弹花齿条C070063，剥麻机C070064，揉搓机C070065，弹麻机C070066，野生纤维整经机C070067，羽绒加工设备C070068，缫丝机械C070069，绢纺机械C070070，纸质纱管（纺织机配件）C070071，人造丝机械C070074，维尼龙抽丝设备C070075，合成纤维设备C070076，制地毯机械C070077，地毯植绒机C070078，电动织毯机C070079，平毯机C070080<br />注：1.纺织工业用机器与0707商品类似；<br />2.旋转式脱水机（非加热）与第八版及以前版本的0704脱水机交叉检索；<br />3.跨类似群保护商品：旋转式脱水机（非加热）（0706，0724）；砑光辊（0704第（一）部分，0706，0712）；砑光机（0704第（一）部分，0706，0712）；轧光机（0704第（一）部分，0706）；<br />4.本类似群与第九版及以前版本的0712砑光机交叉检索。<br />',NULL,'2017-05-08 23:06:46',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (79,7,'0707 ','印染工业用机械','上浆机070013，染色机070362<br />※丝光机C070081，烧毛机C070082，平洗机C070083，蒸化机C070084，热风干燥拉幅机C070085，印染胶辊C070086，印花花筒雕刻设备C070087，印花机煮炼锅C070088<br />注：1.印花花筒雕刻设备与0712压花机类似；<br />2.本类似群商品与0706纺织工业用机器类似。<br />',NULL,'2017-05-08 23:06:46',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (80,7,'0708 ','制茶工业用机械','※制茶机械C070089，揉捻机（制茶工业用）C070090，萎凋机（制茶工业用）C070091，杀青机（制茶工业用）C070092，烘干机（制茶工业用）C070093，斜锅机（制茶工业用）C070094，解块机（制茶工业用）C070095，压茶砖机C070096<br />',NULL,'2017-05-08 23:06:46',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (81,7,'0709 ','食品业用机械及部件','搅动机070007，搅拌机070026，搅乳器070038，磨粉机（机器）070042，奶油机070046，瓶子冲洗机070065，乳脂分离器070083，离心碾磨机070087，绞肉机（机械）070211，碎肉机（机械）070211，制酪机070222，石磨070262，碾碎机070561，磨面机070266，混合机（机器）070267，切面包机070288，和面机070295，制意式面食机070296，制香肠机070346，制糖机070356，工业用切碎机（机器）070419，制食品用电动机械070423，削皮机070454，蔬菜轧碎机070455，篮式压榨机070533<br />※碾米机C070098，压面机C070100，切面机C070101，饼干印形机C070102，粉条机C070103，馒头机C070105，包饺子机C070106，榨油机C070107，甘蔗压榨机C070108，罐头工业用机器设备C070109，洗罐机C070110，豆芽机C070111，水果剥皮机C070112，胶体磨（食品工业用）C070113，食品包装机C070114，屠宰机C070116，食品工业用磨浆机C070370<br />注：1.食品包装机与0721包装机类似；<br />2.本类似群与第八版及以前版本的0753混合机（机器），搅拌机、搅拌机（机器），工业用切碎机（机器）交叉检索；<br />3.跨类似群保护商品：跨类似群保护商品：搅动机（0709，0723，0733）；搅拌机（0709，0723，0733）；混合机（机器）（0709，0723，0733）；工业用切碎机（机器）（0702第（二）部分，0709，0752，0753）；磨粉机（机器）（0709，0725）；瓶子冲冼机（0709；0710）。<br />',NULL,'2017-05-08 23:06:46',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (82,7,'0710 ','酿造、饮料工业用机械','抽啤酒用压力装置070012，饮料加气设备070056，瓶子冲洗机070065，酿造机器070066，酿葡萄酒用压榨机070102，汽水加气设备070163，制矿泉水机械070164，电动制饮料机070315<br />注：1.本类似群与第八版及以前版本的0709瓶子冲冼机交叉检索；<br />2.跨类似群保护商品：瓶子冲冼机（0709；0710）。<br />',NULL,'2017-05-08 23:06:46',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (83,7,'0711 ','烟草工业用机械','工业用卷烟机070103，烟草加工机070255<br />',NULL,'2017-05-08 23:06:46',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (84,7,'0712 ','皮革工业用机械','制革机070136，剥皮革机070157，去肉机（皮革工业用）070166，砑光辊070240，砑光机070292<br />※鞣制机（皮革工业用）C070118，磨革机C070119，喷光机（皮革工业用）C070120，压花机C070121，烫平机（皮革工业用）C070122，喷色机（皮革工业用）C070123，皮革喷浆机C070124，皮革修整机C070125<br />注：1.压花机与0707印花花筒雕刻设备类似；<br />2.跨类似群保护商品：砑光辊（0704第（一）部分，0706，0712）；砑光机（07040704第（一）部分，0706，0712）。<br />',NULL,'2017-05-08 23:06:46',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (85,7,'0713 ','缝纫、制鞋工业用机械','刺绣机绷圈070067，缝纫机踏板传动装置070111，缝合机070128，卷边机070283，熨衣机070328，鞋楦头（机器部件）070352，绕线轴（机器部件）070408，缝纫机070440，纺织品用便携式旋转蒸汽熨压机070480<br />※包缝机C070126，锁扣机C070127，撬边机C070128，鞋底压切机C070129，补鞋机C070130，裁布机C070131，下料机（缝纫机械）C070132，工业缝纫机台板C070133<br />',NULL,'2017-05-08 23:06:46',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (86,7,'0714 ','自行车工业用设备','自行车组装机械070512<br />※自行车工业用机器设备C070134，车链机C070135，车圈机C070136，滚挡泥板机C070137<br />',NULL,'2017-05-08 23:06:47',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (87,7,'0715 ','陶瓷、砖、瓦制造机械','陶匠用旋轮070420<br />※陶瓷工业用机器设备（包括建筑用陶瓷机械）C070138，制砖机C070371，制瓦机C070372<br />',NULL,'2017-05-08 23:06:47',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (88,7,'0716 ','雕刻机','雕刻机070207<br />※塑料套管印字切割机C070055，塑料导线印字机C070056，电线印号机C070295，电脑刻绘机C070373，电脑刻字机C070374，电脑割字机C070375，工业打标机C070440<br />注：本类似群商品与第十版及以前版本0705塑料套管印字切割机，塑料导线印字机，0742电线印号机交叉检索。<br />',NULL,'2017-05-08 23:06:47',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (89,7,'0717 ','制电池机械','※电池机械C070139，轧线机（电池制造机械）C070140，电池芯加工机C070141，上电池底机C070142，蓄电池工业专用机械C070143<br />',NULL,'2017-05-08 23:06:47',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (90,7,'0718 ','日用杂品加工机械','制绳机070119<br />※土特产杂品加工机械C070144，蚕种脱水机C070145，制筷机C070150，脱皮开壳两用机C070151，制笔机械C070152，制蜡烛机C070153<br />※织苇席机C070146，草垫机C070147，织草席机C070148，草帽机C070149<br />注：1.本类似群根据商品功能、用途确定类似商品；<br />2.本类似群第三自然段商品之间类似。<br />',NULL,'2017-05-08 23:06:47',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (91,7,'0719 ','制搪瓷机械','※制搪瓷机械C070154<br />',NULL,'2017-05-08 23:06:47',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (92,7,'0720 ','制灯泡机械','※制灯泡机械C070155<br />',NULL,'2017-05-08 23:06:47',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (93,7,'0721 ','包装机械（不包括成套设备专用包装机械）','胶带分配器（机器）070004，捆扎机070052，装瓶机070064，包装机070177，打包机070294，工业用封口机070347，装填机070353，瓶子盖塞机070410，瓶子压盖机070411，瓶子封口机070412，包装机（打包机）070499，塑料封口用电动装置（包装用）070541<br />注：1.包装机与0709食品包装机类似；<br />2.本类似群与第七版及以前版本的0743气动捆扎机交叉检索。<br />3.封塑料用电动装置（包装用）与第九版及以前版本0903封塑料用电动器械（包装用）交叉检索。<br />',NULL,'2017-05-08 23:06:47',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (94,7,'0722 ','民用煤加工机械','※蜂窝煤机C070158，煤球机C070159<br />',NULL,'2017-05-08 23:06:47',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (95,7,'0723 ','厨房家用器具（不包括烹调、电气加热设备及厨房手工具）','搅动机070007，搅拌机070026，离心碾磨机070087，洗碗机070231，厨房用电动轧碎机070256，混合机（机器）070267，家用非手动研磨机070277，电动开罐器070287，非手动胡椒研磨机070307，电搅拌器070403，非手动磨咖啡机070415，家用电动搅拌机070444，厨房用电动机器*070445，家用电动打蛋器070459，家用电动榨水果机070460，食品加工机（电动）070475，厨房用电动碾磨机070553<br />※家用切菜机C070160，家用切肉机C070161，家用豆浆机C070378<br />注：1.本类似群与第八版及以前版本的0753混合机（机器），搅拌机、搅拌机（机器），交叉检索；<br />2.本类似群与第八版及以前版本的0709离心碾磨机交叉检索；<br />3.跨类似群保护商品：搅动机（0709，0723，0733）；搅拌机（0709，0723，0733）；混合机（机器）（0709，0723，0733）；离心碾磨机（0709，0723，0725）。<br />',NULL,'2017-05-08 23:06:47',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (96,7,'0724 ','洗衣机','旋转式脱水机（非加热）070084，洗衣机070234，投币启动的洗衣机070236，洗衣用甩干机070239<br />※干洗机C070379<br />注：1.本类似群与1106电动干衣机类似，与第九版及以前版本的1106家用干衣机（电烘干）交叉检索；<br />2.本类似群与第八版及以前版本的0704脱水机交叉检索；<br />3.本类似群与第八版及以前版本的0706旋转式脱水机，干燥机（脱水式）交叉检索；<br />4.跨类似群保护商品：旋转式脱水机（非加热）（0706，0724）。<br />',NULL,'2017-05-08 23:06:47',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (97,7,'0725 ','制药工业用机械及部件','磨粉机（机器）070042，离心碾磨机070087，粉碎机0700153<br />※制药加工工业机器C070162，制丸机C070163，糖衣机C070164，压片机C070165，药物粉碎机C070166，制药剂专用离心机（不包括化工通用的离心机）C070167，制药剂专用板框压滤机（不包括化工通用的板框压滤机）C070168<br />注：1.本类似群与第八版及以前版本的0753粉碎机、粉碎机（机器）交叉检索；<br />2.本类似群与第八版及以前版本的0709磨粉机（机器），离心碾磨机交叉检索；<br />3.跨类似群保护商品：磨粉机（机器）（0709，0725）；离心碾磨机（0709，0723，0725）；粉碎机（0702第（二）部分；0725；0733；0752）<br />',NULL,'2017-05-08 23:06:47',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (98,7,'0726 ','橡胶、塑料工业机械','模压加工机器070206，过热机070357，硫化器070384，塑料加工机器070544<br />※切胶机C070169，碾胶机C070170，炼胶机C070171，洗胶机C070172，擦胶机C070173，粘胶机C070174，滤胶机C070175，轮胎成型机C070176<br />※塑料切粒机C070177，干塑模压瓦机C070178，注塑机C070179，电子冲塑机（塑料印刷表面处理）C070180，加工塑料用模具C070181，塑料绕丝机C070182，制塑料桶（罐）设备C070380；生产球拍线机械C070436<br />注：1.生产球拍线机械与第九版及以前版本的0753生产球拍线机械交叉检索；<br />2.第二自然段为橡胶工业用机器，第三自然段为塑料工业用机器。<br />',NULL,'2017-05-08 23:06:47',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (99,7,'0727 ','玻璃工业用机械','玻璃加工机070382<br />※玻璃工业用机器设备（包括日用玻璃机械）C070183，自动吹制机（玻璃加工机械）C070184，制瓶机C070185，脱管机（玻璃加工机械）C070186，卷管机（玻璃加工机械）C070187，管件磨口机（玻璃加工机械）C070188，磨光玻璃抛光机C070189，玻璃切割机C070190<br />',NULL,'2017-05-08 23:06:47',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (100,7,'0728 ','化肥设备','※化肥制造设备C070191，合成塔（化肥制造设备）C070192，冷凝塔C070193，铜洗塔C070194，碱洗塔C070195，氨分离塔C070196，滤油塔C070197，尿素合成塔C070198，水洗塔C070199<br />',NULL,'2017-05-08 23:06:48',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (101,7,'0729 ','其他化学工业用机械','化学工业用电动机械070490<br />※硫酸制造设备C070200，纯碱制造设备C070201，合成酒精设备C070202，电解水制氢氧设备C070203，制甘油酚类用机械设备C070204，焦化设备C070205<br />※制虫胶、骨胶用设备（槽搅合机）C070206，制清胶机C070207，碎骨机C070208，研胶机C070209<br />※林产化学设备C070210，松香制造设备C070211，木材干馏设备C070212，木材水解设备C070213<br />※油漆加工用机器C070214<br />※炸药及火工制品用机械设备C070215<br />※制牙膏设备C070216，化妆品生产设备C070217<br />',NULL,'2017-05-08 23:06:48',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (102,7,'0730 ','地质勘探、采矿、选矿用机械','冲洗机070063，炉渣筛（机器）070082，截煤机070094，采掘机070185，拖运设备（矿井用）070185，采矿钻机070264，矿砂处理机械070265，钻机070299，矿井作业机械070342<br />※地质勘探、采矿选矿用机器设备C070218，浮选机C070219，磁选机C070220，洗矿机C070221，采矿用电笛C070222，矿杂质沉淀机C070223，矿山杂物排除机C070224，矿井卷扬机C070225，矿井排水泵CCC070226，矿用声控自动喷雾装置（矿井降尘）C070227<br />',NULL,'2017-05-08 23:06:48',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (103,7,'0731 ','冶炼工业用设备','炼钢厂转炉070003，切断机（机器）070123，轧钢机滚筒070141，轧钢机070228，搅炼机070319，催化转化器070482<br />※铸铁机C070228，混铁炉C070229，盛钢水桶C070230，补炉机C070231，炼焦机C070232，铸造（锭）机C070235<br />',NULL,'2017-05-08 23:06:48',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (104,7,'0732 ','石油开采、精炼工业用设备','钻探装置（浮动或非浮动）070462，油精炼机器070498<br />※石油开采、石油精炼工业用机器设备C070236，石油化工设备C070237，石油钻机C070238，石油专用泥浆泵C070239，洗井机C070240，通井机C070241，石油专用抽油泵C070242<br />',NULL,'2017-05-08 23:06:48',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (105,7,'0733 ','建筑、铁道、土木工程用机械','搅动机070007，压路机070014，蒸汽压路机070014，搅拌机070026，粉刷机070030，打浆机070044，混凝土搅拌机（机器）070045，沥青制造机070050，推土机070069，机器铲070070，粉碎机070153，挖掘机070184，涂焦油机070202，撞锤（机器）070562，混合机（机器）070267，石材加工机070301，铺轨机070322，筑路机070340，铁路建筑机器070383，挖掘机（机器）070397，夯锤（机器）070404，开沟犁070458<br />※掘土机C070244，挖沟机C070245，松土机C070246，铲运机C070247，打桩机C070248，刮泥机C070249，多用养路机C070250，灌浆机C070251，钢筋拨机C070252，联合抹灰机C070253，起道机C070254，混凝土振动器C070255，石材切割机C070381，装载机C070382，水下清淤机C070383，钢筋切断机C070384，预应力锚具张拉设备C070385，夯实机C070386，铁路液压养路机具C070450，铲土机C070451，土方机械070417<br />注：1.预应力锚具张拉设备与0603预应力锚具类似；<br />2.本类似群与第七版及以前版本0730石材切割机，0734装载机交叉检索；<br />3.铁路液压养路机具与第十版及以前版本0604铁路液压养路机具交叉检索；<br />4.本类似群与第八版及以前版本的0753混合机（机器），搅拌机，粉碎机，粉碎机（机器）交叉检索；<br />5.跨类似群保护商品：搅动机（0709，0723，0733）；搅拌机（0709，0723，0733）；粉碎机（0702第（二）部分，0725，0733，0752）；混合机（机器）（0709，0723，0733）。<br />',NULL,'2017-05-08 23:06:48',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (106,7,'0734 ','起重运输机械','升降机（运送滑雪者上坡的装置除外）070023，电梯（升降机）070024，带式输送机070037，绞盘070072，船用自动锚070073，起重机070095，装卸斜面台070096，升降机传动带070127，搬运用气垫装置070129，齿条齿轮千斤顶070132，千斤顶（机器）070135，卸料斗（机械卸斗）070145，升降设备070172，自动扶梯070178，升降装置070237，装卸设备070245，悬臂起重机070251，卡车用千斤顶070271，货车用千斤顶070271，天车070313，运输机（机器）070371，卷扬机070373，起重机（提升装置）070453，自动人行道070518，电梯操作装置070540，升降机操作装置070540，气动传送装置070304，气动管道传送器070370，气动千斤顶070554<br />※起重葫芦C070256，起重电磁铁C070257，输送机C070387，提升机C070388，带升降设备的立体车库C070389<br />注：1.齿条齿轮千斤顶，千斤顶（机器），卡车用千斤顶，货车用千斤顶，气动千斤顶与0808手动千斤顶类似，与第九版及以前版本0808手操作千斤顶交叉检索；<br />2.船用自动锚与0617锚类似，与第九版及以前版本的1210船锚，小船用锚，锚链交叉检索；<br />3.电梯操作装置，升降机操作装置与第九版及以前版本0914升降机操作设备，升降机操作装置交叉检索。<br />4.本类似群与第十版及以前版本0749气动传送装置，气动管道传送器交叉检索。<br />',NULL,'2017-05-08 23:06:49',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (107,7,'0735 ','锻压设备','整修机（机械加工装置）070159，旋转锻造机070173，印模冲压机070181，锤（机器部件）070247，动力锤070248，气锤070249，杵锤070250，金属加工机械070258，穿孔机冲头070305，穿孔机070306，冲床（工业用机器）070316，整形机070326，电锤070489<br />※水压机C070258，液压机C070259，自动镦锻机C070260，冷冲模C070269<br />注：1.本类似群商品与0743手动液压机类似；<br />2.本类似群与第八版及以前版本的0742穿孔机冲头，穿孔机，冲床（工业用机器），金属加工机械，机械加工装置交叉检索；<br />3.印模冲压机，冷冲模与第九版及以前版本的0736印模冲压机，冷冲模交叉检索；<br />4.冷冲模与0613冷铸模（铸造）类似；<br />5.跨类似群保护商品：整修机（机械加工装置）（0735，0742第（一）部分）；金属加工机械（0735，0736；0742第（一）部分）；整形机（0735，0742第（一）部分）。<br />',NULL,'2017-05-08 23:06:49',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (108,7,'0736 ','铸造机械','铸造机械070196，金属加工机械070258，铸模（机器部件）070276，铸模机070278<br />※铸管机C070261，铸铁丸设备C070262，冷室压铸机C070263，热室压铸机C070264，铸球机C070265，铸片机C070266，碳化钨模子C070267，压铸模C070268，震动翻砂机C070270，全自动振动应力消除装置C070390，铸件设备C070391<br />注：1.铸模（机器部件），压铸模与0613冷铸模（铸造）类似；<br />2.本类似群与第八版及以前版本的0742金属加工机械交叉检索；<br />3.跨类似群保护商品：金属加工机械（0735；0736；0742）。<br />',NULL,'2017-05-08 23:06:49',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (109,7,'0737 ','蒸气动力设备','引擎锅炉用设备070101，机器锅炉用水垢收集器070110，蒸汽冷凝器（机器部件）070115，蒸汽机070242，引擎锅炉管道070416，蒸汽机锅炉070429，引擎锅炉给水装置070430，锅炉管道（机器部件）070471<br />※汽轮机C070271<br />注：蒸汽机锅炉与1107蒸汽锅炉（非机器部件）类似。<br />',NULL,'2017-05-08 23:06:49',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (110,7,'0738 ','内燃动力设备','汽化器供油装置070015，内燃机点火装置070016，柴油机热线火花塞070061，汽化器070078，内燃机火花塞070394，内燃机燃料转换装置070463<br />※内燃机（非陆地车辆用）C070273，柴油机（陆地车辆用的除外）C070274，煤气机C070275，汽油机（陆地车辆用的除外）C070276，火花节能器C070278，化油器C070280，汽车发动机火花塞C070392，汽车发动机点火线圈C070393<br />注：1.火花节能器与1107燃料节省器，节油器类似；<br />2.本类似群与第七版及以前版本1202汽车零部件，汽车配件，1203摩托车配件及其他现属于0738、0748的发动机零部件等商品交叉检索；<br />3.本类似群商品与0748第（二）部分商品类似；<br />4.本类似群与第七版及以前版本的0750汽化器，活塞（机器或发动机部件），活塞（机器或发动机零件），活塞环，马达引擎用消声器，发动机和引擎用排气装置交叉检索。<br />',NULL,'2017-05-08 23:06:49',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (111,7,'0739 ','风力、水力动力设备','水轮机070215，非陆地车辆用涡轮机070375，风力涡轮机070523<br />※风力动力设备C070281，风力发电设备C070283，水力动力设备C070284；水力发电设备C070437<br />',NULL,'2017-05-08 23:06:49',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (112,7,'0740 ','办公用制针钉机械','※回形针机C070285，制针机C070286，图钉机C070287，大头针制造机C070288<br />',NULL,'2017-05-08 23:06:49',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (113,7,'0741 ','制钮扣拉链机械','※制纽扣机C070289，拉链机C070290<br />',NULL,'2017-05-08 23:06:49',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (114,7,'0742 ','金属切削机床，切削工具和其他金属加工机械','（一）罩套（机器部件）070040，机械台架070041，攻丝机070062，外壳（机器部件）070075，防护装置（机器部件）070075，机罩（机器部件）070075，刀（机器部件）070080，铣床070090，吊架（机器部件）070092，车床070098，弯曲机070104，剪削刀（机器）070122，钻头（机器部件）070125，切割机070146，整修机（机械加工装置）070159，冲切攻丝机070167，螺母攻丝机070167，进料器（机器部件）070176，金属拉丝机070183，刀片（机器部件）070189，精加工机器070193，夹盘（机器部件）070194，填料箱（机器部件）070198，开槽机（机床）070208，磨刀机070225，机床070243，金属加工机械070258，磨床070263，刀具（机器部件）070285，机床用夹持装置070286，抛光机器和设备（电动的）070308，刨床070321，整形机070326，机器台070359，机器防护档板（机器部件）070360，机床防护板070360，磨利机070387，砂轮（机器部件）070389，磨刀轮（机器部件）070389，自动操作机（机械手）070421，机器人（机械）070422，钻头夹盘（机器部件）070428，刻度机070448，钻头（机器部件）070449，链锯070484，气动切削吹管070486，划玻璃刀（机器部件）070494<br />※制钢丝绳机C070296，织铜网机C070297，金属丝织机C070298，钻床C070299，汽门与汽门座研磨机C070300，滚齿机C070301，开齿机C070302，螺帽攻丝机C070303，螺栓套丝机C070304，镗床C070305，制钉机C070307<br />※车刀C070309，孔加工刀具C070310，铣刀C070311，螺纹加工刀具C070312，齿轮加工刀具C070313，拉削刀具C070314，带锯C070315，圆锯片（机器零件）C070316，龙锯C070317，截锯（机器零件）C070318，往复锯C070319，气铣C070394，刀座（机器部件）C070438<br /><br />（二）※制造电线、电缆用机械C070291，拉线机C070292，绕线机（加工电线、电缆用机械）C070293，装铠机C070294<br />注：1.本类似群各部分之间商品不类似；<br />2.链锯，带锯，圆锯片（机器零件），龙锯，截锯（机器零件），往复锯，与0703机锯（机器），锯条（机器零件）类似；<br />3.砂轮（机器部件）与0801各种砂轮类似；<br />4.本类似群第（一）部分与第八版及以前版本的0735整修机交叉检索；<br />5.跨类似群保护商品：整形机（0735，0742第（一）部分）；整修机（机械加工装置）（0735，0742第（一）部分）；金属加工机械（0735；0736；0742第（一）部分）。<br />',NULL,'2017-05-08 23:06:50',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (115,7,'0743 ','非手工操作的手工具','电动大剪刀070105，电动剪刀070106，电动刀070131，非手动的手持工具070284，电动手操作钻孔器070300，铆接机070332，挤压胶粘剂用压缩气枪070456，电动喷胶枪070476，枪（使用火药的工具）070477，电动拔钉器\r\n070558，滑雪板用电动磨边器070560<br />※手电钻（不包括电煤钻）C070320，电动螺丝刀C070321，电动扳手C07032，电砂轮机C070323，液压手工具C070324，手动液压机C070325，风动手工具C070326，除锈机（电动）C070327，气动打钉枪C070328，角向磨光机C070395<br />注：1.手动液压机与0735商品类似；<br />2.本类似群与第八版及以前版本的0701电动刀交叉检索；<br />3.本类似群与第七版及以前版本的0742角向磨光机交叉检索；<br />4.挤压胶粘剂用压缩气枪与第十版及以前版本的0749挤压胶粘剂用压缩气枪交叉检索。<br />',NULL,'2017-05-08 23:06:50',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (116,7,'0744 ','静电、电子工业用设备','※静电工业设备C070329，电子工业设备C070330，静电消除器C070331，印刷电路板处理机C070396<br />',NULL,'2017-05-08 23:06:50',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (117,7,'0745 ','光学工业用设备','※光学冷加工设备C070332，眼镜片加工设备C070333<br />',NULL,'2017-05-08 23:06:50',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (118,7,'0746 ','气体分离设备','※气体分离设备C070334，制氧、制氮设备C070335，稀有气体提取设备C070336，气体液化设备C070337，生产二氧化碳设备C070338<br />',NULL,'2017-05-08 23:06:50',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (119,7,'0747 ','喷漆机具','涂漆机070297，油漆喷枪070298，喷颜色用喷枪070514<br />※喷漆机C070339，喷漆枪C070340<br />',NULL,'2017-05-08 23:06:50',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (120,7,'0748 ','发电机、非陆地车辆用马达和引擎及其零部件','（一）交流发电机070018，发电机刷070033，自行车用发电机070047，炭刷（电）070093，电流发生器070124，发电机传动带070126，马达和引擎启动器070150，发电机070160，发电机组070171，点火式磁发电机070244，定子（机器部件）070354，紧急发电机070492，摩托车用脚踏启动器070516<br />※电刷（发电机部件）C070446<br /><br />（二）净化冷却空气用过滤器（引擎用）070010，飞机引擎070029，活塞环070032，引擎喷油嘴070077，接头（引擎部件）070118，密封接头（引擎部件）070118，引擎汽缸盖070137，机器汽缸070139，汽缸活塞070197，非陆地车辆用传动马达	070241，非陆地车辆用喷气发动机，070272马达和引擎用防污染装置，070273引擎活塞070274，活塞（机器或发动机部件）070302，马达和引擎用传动带070343，气垫船用引擎070380，马达和引擎用风扇070381，航空引擎070386，气动引擎070391，马达和引擎用节油器070400，船用引擎070401，船用马达070402，非陆地车辆用引擎	070433，非陆地车辆用马达070433，马达和引擎用风扇皮带070441，马达和引擎用汽缸070446，马达和引擎用排气装置070451，非陆地车辆用电动机070452，液压引擎和马达070461，马达和引擎冷却器，070464引擎用排气歧管070497，马达和引擎用消声器070519，非陆地车辆用发动机支架070557<br />※汽车发动机冷却用散热器C070397，汽车发动机冷却用水箱C070398，汽车发动机冷却用散热器水管C070399，汽车发动机冷却用散热器盖C070400，汽车发动机冷却用风扇C070401，汽车发动机冷却用风扇护风罩C070402，汽车发动机冷却用风扇离合器C070403，汽车发动机排气净化装置（催化反应器）C070404，汽车发动机废气再循环系统C070405，汽车发动机消声器C070406，汽车发动机消声器进排气管C070407，汽车发动机排气系共振器C070408，汽车发动机活塞C070409，发动机汽缸C070410，机油滤清器（引擎部件）C070412，空气滤清器（引擎部件）C070413，柴油滤清器（引擎部件）C070414，燃料滤清器（引擎部件）C070447<br />注：1.本类似群第各部分之间商品不类似；<br />2.本类似群第（二）部分商品与0738商品类似；<br />3.马达和引擎用节油器与1107燃料节省器，节油器类似；<br />4.本类似群第（二）部分商品与第七版及以前版本1202汽车零部件，汽车配件，1203摩托车配件及其他现属于0738、0748的发动机零部件等商品交叉检索；<br />5.本类似群第（二）部分商品与第七版及以前版本的0750汽化器，活塞（机器或发动机部件），活塞（机器或发动机零件），活塞环，马达引擎用消声器，发动机和引擎用排气装置交叉检索；<br />6.净化冷却空气用过滤器（引擎用），机油滤清器（引擎部件），空气滤清器（引擎部件），柴油滤清器（引擎部件），燃料滤清器（引擎部件）与0750过滤器（机器或引擎部件）类似。<br />',NULL,'2017-05-08 23:06:50',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (121,7,'0749 ','泵，阀，气体压缩机，风机，液压元件，气动元件','（一）离心机070086，离心机（机器）070086，离心泵070088，泵（机器、引擎或马达部件）070179，润滑油泵070205，泵膜片070257，泵（机器）070309，气泵（车库设备）070310，供暖装置用泵070311，真空泵（机器）070312，啤酒抽吸泵070390，空气压缩泵070393，加油站发油泵070542，自动调节燃料泵070543<br />※液压泵C070344，汽车油泵C070415，汽车水泵C070416，汽车发动机用机油泵C070417，汽车发动机用汽油泵C070418，抽气泵C070433，电脑计量加油机C070439<br /><br />（二）阀（机器部件）070019，瓣阀（机器部件）070108，压力阀（机器部件）070318，疏水器（阻气回水阀）070320，阀门（机器、引擎或马达部件）070333，机器、马达和引擎的液压控制器070472，机器、马达和引擎的气压控制器070473<br />※液压阀C070345，调压阀C070346，电磁阀C070430<br /><br />（三）空气冷凝器070006，空气凝结器070011，压缩机（机器）070113，涡轮压缩机070114，冷凝装置070116，压缩、排放和输送气体用鼓风机070199，压缩、抽吸和运送谷物用风扇070203，压缩、抽吸和运送谷物用鼓风机或风扇070203，压缩、抽吸和运送谷物用鼓风机070203，工业用抽吸机械070282，风箱（机器部件）070350，锻炉风箱070351，增压机070358，空气压缩机070392，抽气机070398，冰箱压缩机070437，鼓风机070534<br /><br />（四）※液压耦合器C070348，液压滤油器C070349，液压油缸（机器部件）C070448，气压缸（机器部件）C070449<br />注：1.本类似群各部分之间商品不类似；<br />2.本类似群第（一）部分的汽车油泵，汽车水泵，汽车发动机用机油泵，汽车发动机用汽油泵与第七版及以前版本1202的汽车零部件，汽车配件及其他属于本类似群的商品交叉检索；<br />3.本类似群第（一）部分与第九版及以前版本的0902自动调节燃料泵，加油站发油泵，加油站汽油泵，电脑计量加油机交叉检索；<br />4.本类似群第（二）部分商品与0602金属阀门（非机器零件），金属排水阱（阀），金属水管阀类似；<br />5.本类似群第（三）部分与第八版及以前版本0726增压机，0753冷凝装置交叉检索；<br />6.本类似群第（四）部分液压滤油器与0750过滤器（机器或引擎部件）类似；<br />7.本类似群第（一）部分自闭式加油枪与第十版及以前版本0753自闭式加油枪交叉检索。<br />',NULL,'2017-05-08 23:06:50',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (122,7,'0750 ','机器传动用联轴节，传动带及其他机器零部件','（一）联轴器（机器）070001，机器轴070020，曲轴070021，非陆地车辆用传动轴070022，润滑环（机器部件）070031，滚筒（机器部件）070039，机器、马达和引擎用连接杆070048，刷子（机器部件）070068，注油器（机器部件）070085，滑轮*070099，机器用凿子070107，滑轮（机器部件）070117，分离器070142，给水除气设备070147，去油脂装置（机器）070149，蒸汽或油分离器070152，减压器（机器部件）070154，机械线轴装置070155，水加热器（机器部件）070165，非陆地车辆用离合器070174，筛（机器或机器部件）070187，润滑油箱（机器部件）070204，机器导轨070209，曲柄（机器部件）070230，非陆地车辆动力装置070252，非陆地车辆用联动机件070253，调节器（机器部件）070254，机器、马达和引擎调速器070275，非陆地车辆用飞轮070279，轴颈箱（机器部件）070289，压力调节器（机器部件）070317，弹簧（机器部件）070330，机器齿轮装置070335，机器轮070336，机器飞轮070337，滑动台架（机器部件）070365，轴颈（机器部件）070366，机器联动装置070369，软管用机械绕轴070376，非陆地车辆用联轴节070385，缓冲活塞（机械部件）070395，减震器栓塞070395，减震器活塞（机器部件）070395，机器用耐摩擦垫070396，非运载工具用刹车垫070405，非运载工具用制动蹄070406，非运载工具用刹车扇形片070407，非陆地车辆用变速箱070409，电操作刷（机器部件）070413，过滤机滤筒070424，非陆地车辆传动驱动链070425，非陆地车辆用转矩变换器070426，非陆地车辆用传动链070427，机器、引擎或马达控制缆070434，机器、引擎或马达用机械控制装置070435，水分离器070439，非陆地车辆用齿轮传动装置070443，非陆地车辆用减速齿轮070447，热交换器（机器部件）070450，过滤器（机器或引擎部件）070457，机器、发动机和引擎用曲柄轴箱070474，万向节070479，升降机绞链（机器部件）070491，膨胀水箱（机器部件）070493，工业用振荡器（机器）070509，液压开门器070515，气动开门器070520，非运载工具用刹车片070524，电动关门器070538，电动开门器070539，电动开窗器070545，电动关窗器070546，液压开窗器070547，液压关窗器070548，气动开窗器070549，气动关窗器070550，液压关门器070551，气动关门器070552<br />※减震器（机器部件）C070352，牛油杯C070353，机器拉带C070354，汽车发动机飞轮C070419，汽车发动机曲轴C070420，汽车发动机凸轮轴C070421<br />※润滑设备C070356，机用皮件（包括皮辊、皮圈、皮垫、皮碗）C070357，机械密封件C070358<br /><br />（二）自动加油轴承070027，滚珠轴承070049，机器轴承托架070091，轴承（机器部件）070130，传动轴轴承070290，滚柱轴承070338，轴承滚珠环070339，机器用耐磨轴承070396<br />※轴瓦C070431，车辆轴承C070432<br /><br />（三）输送机传输带070036，机器传动带070074，滑轮胶带070314<br />※平行胶带（包括运输带，传送带，不包括陆地车辆引擎传动带）C070359，三角胶带C070360，风扇胶带（不包括陆地车辆引擎风扇传动带）C070361<br />注：1.本类似群各部分之间商品不类似；<br />2.车辆轴承与第八版及以前版本1202车辆轴承交叉检索；<br />3.汽车发动机飞轮，汽车发动机曲轴，汽车发动机凸轮轴与第七版及以前版本1202汽车零部件，汽车配件及其他属于本类似群的商品交叉检索；<br />4.过滤器（机器或引擎部件）与0748净化冷却空气用过滤器（引擎用），机油滤清器（引擎部件），空气滤清器（引擎部件），柴油滤清器（引擎部件），燃料滤清器（引擎部件），0749液压滤油器类似，与第十版及以前版本0748机油滤清器，空气滤清器，柴油滤清器交叉检索；<br />5.电动关门器，电动开门器与第九版及以前版本0748电操作刷交叉检索；<br />6.电操作刷（机器部件）与第十版及以前版本0748电操作刷交叉检索；<br />7.机器、引擎或马达用控制缆，机器、引擎或马达用机械控制装置与第十版及以前版本0748机器、引擎或马达用控制缆，机器、引擎或马达用机械控制装置，机器、引擎或马达用控制装置交叉检索。<br />',NULL,'2017-05-08 23:06:50',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (123,7,'0751 ','焊接机械','乙炔清洗装置070002，热喷枪（机器）070229，电焊机070349，气动焊接设备070503，气动焊接吹管070504，气动焊接烙铁070505，气动喷灯070522，焊接机用电极070525，电焊设备070526，电焊接设备070528，电焊烙铁070529，电弧焊接设备070530，电弧切割设备070531，喷焊灯070532<br />※热焊枪C070434，喷灯C070435<br />注：1.本类似群与第九版及以前版本的0917交叉检索；<br />2.本类似群与第九版及以前版本的1102喷焊灯，热焊枪，喷灯交叉检索。<br />',NULL,'2017-05-08 23:06:50',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (124,7,'0752 ','清洁、废物处理机械','自推进式扫路机070034，泥浆收集机070059，粉碎机070153，污物粉碎机070162，清洗设备070233，运载工具用清洗装置070235，电动清洁机械和设备070281，垃圾（废物）处理装置070414，垃圾处理机070414，废物处理装置070414，废物处理机070414，垃圾压实机070418，废料压实机070418，工业用切碎机（机器）070419，扫雪机070502<br />清洗地毯的机器和装置（电动）070481，中心真空吸尘装置070483，蒸汽清洁器械070485，清洁用吸尘装置070487，清洁用除尘装置070488，高压洗涤机070495，拼花地板电子打蜡机070500，真空吸尘器用喷洒香水和消毒液的附件070506，真空吸尘器管070507，真空吸尘器070508，电动打蜡机器和设备070510，真空吸尘器袋070521，吸尘器用刷070559<br />※（管道）疏通挖泥车C070362，电动下水管道疏通器C070363，废弃食物处理机C070422<br />注：1.真空吸尘器与第六版及以前版本0924吸尘器，真空吸尘器交叉检索；<br />2.真空吸尘器袋与第七版及以前版本1609真空吸尘器的替换纸袋交叉检索；<br />3.本类似群与第八版及以前版本的0753粉碎机，粉碎机（机器），工业用切碎机（机器）交叉检索；<br />4.跨类似群保护商品：粉碎机（0702第（二）部分，0725，0733，0752）；工业用切碎机（机器）（0702第（二）部分，0709，0752）。<br />',NULL,'2017-05-08 23:06:51',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (125,7,'0753 ','单一商品','（一）压滤机070109，筛选机070133，工业用拣选机070143，过滤机070192，滤筛机070556<br /><br />（二）电控拉窗帘装置070331<br />※电动卷门机C070424<br /><br />（三）滚筒（机器部件）070039，贴标签机（机器）070182，电动擦鞋机070501，球拍穿线机070511，自动售货机070537，3D打印机070555<br />※航空加油车接头C070423，贮液器（机器部件）C070426<br />注：1.本类似群各部之间商品不类似；<br />2.本类似群第（三）部分商品根据商品的功能、用途确定类似商品；<br />3.电动卷门机与第七版及以前版本的0750电动卷门机交叉检索；<br />4.贴标签机（机器）与第八版及以前版本的0709贴标机，0705贴标签机（机器）交叉检索；<br />5.自动售货机与第九版及以前版本的0902第（四）部分自动售货机交叉检索。<br />',NULL,'2017-05-08 23:06:51',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (126,7,'0754 ','电镀设备','电镀机070535，镀锌机070536<br />※真空喷镀机械C090110，电镀参数测试仪C090112<br />注：本类似群与0915商品类似。<br />',NULL,'2017-05-08 23:06:51',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (127,8,'0801 ','手动研磨器具','磨具（手工具）080002，磨刀石080003，磨剃刀的皮带080006，磨刀钢080037，磨刀石架080068，手工操作的手工具080072，磨剃刀皮带080082，磨刀器080091，磨利器具080092，磨刀器具080093，磨镰刀石080115，油石080115，砂轮（手工具）080201，磨刀轮（手工具）080201，金刚砂磨轮080226<br />注：1.本类似群各种砂轮与0742砂轮（机器部件）类似；<br />2.跨类似群保护商品：手工操作的手工具（0801，0802，0803，0804，0805，0806，0807，0808，0809，0810）。<br />',NULL,'2017-05-08 23:06:51',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (128,8,'0802 ','小农具（不包括农业、园艺用刀剪）','锤镐080036，鹤嘴镐080044，手工操作的手工具080072，耙（手工具）080109，铲（手工具）080110，长柄大镰刀080113，镰刀环080114，鹤嘴锄080142，镐（手工具）080171，长柄镰刀080183，除草叉（手工具）080184，锄头（手工具）080185，梳麻机（手工具）080187，钩刀080188，镰刀080189，农业器具（手动的）080200，农业用叉（手工具）080220，障碍沙坑用耙子080254<br />※犁（手工具）C080001<br />注：跨类似群保护商品：手工操作的手工具（0801，0802，0803，0804，0805，0806，0807，0808，0809，0810）。<br />',NULL,'2017-05-08 23:06:52',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (129,8,'0803 ','林业、园艺用手工具','手工操作的手工具080072，水果采摘用具（手工具）080079，泥铲（园艺用）080086，消灭植物寄生虫用手动装置080088，树木嫁接工具（手工具）080134，杀虫剂用喷雾器（手工具）080144，园艺工具（手动的）080145，杀虫剂用喷洒器080202<br />注：1.杀虫剂用喷雾器（手工具），杀虫剂用喷洒器与0701喷雾器（机器），喷雾机（机器），喷雾机类似；<br />2.跨类似群保护商品：手工操作的手工具（0801，0802，0803，0804，0805，0806，0807，0808，0809，0810）。<br />',NULL,'2017-05-08 23:06:52',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (130,8,'0804 ','畜牧业用手工具','动物剥皮用器具和工具080019，牲畜打记号用工具080031，手工操作的手工具080072<br />注：跨类似群保护商品：手工操作的手工具（0801，0802，0803，0804，0805，0806，0807，0808，0809，0810）。<br />',NULL,'2017-05-08 23:06:52',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (131,8,'0805 ','渔业用手工具','手工操作的手工具080072，鱼叉080140，剥牡蛎器080143，捕鱼鱼叉080170<br />注：跨类似群保护商品：手工操作的手工具（0801，0802，0803，0804，0805，0806，0807，0808，0809，0810）。<br />',NULL,'2017-05-08 23:06:52',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (132,8,'0806 ','理发工具，修指甲刀','剃须刀080026，烫发钳080058，手工操作的手工具080072，去死皮钳080101，拔毛发用镊子080102，成套修脚器具080106，剃刀盒080107，烫发用铁夹080121，卷发用手工具080126，刮胡刀片080148，剃须盒080166，指甲锉080168，电动或非电动刮胡刀080179，电动指甲锉080213，指甲抛光器具（电或非电）080214，个人用理发推子（电动和非电动）080219，指甲刀（电动或非电动的）080221，修指甲成套工具080231，穿耳孔器080241，电力和非电力脱毛器080242，电动修指甲成套工具080243，卷睫毛夹080252，文身器080256，指甲砂锉080267<br />注：1.卷发用手工具，烫发用铁夹，烫发钳与2602卷发器（非手工具），以及第九版及以前版本0924电热卷发器类似；<br />2.文身器与第八版及以前版本1001文身机，纹身机，纹身器材，纹眉机类似；<br />3.卷睫毛夹与第八版及以前版本2110卷睫毛工具类似；<br />4.跨类似群保护商品：手工操作的手工具（0801，0802，0803，0804，0805，0806，0807，0808，0809，0810）。<br />',NULL,'2017-05-08 23:06:52',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (133,8,'0807 ','非动力手工具（不包括刀、剪）','针锉080005，锥子080008，镗孔棒（手工具）080009，铰刀080010，铰刀座080011，螺丝攻曲柄的延伸管件080012，钻头（手工具部件）080016，丁字尺（手工具）080017，环形搓丝板080020，弓锯080021，手动拔钉器080023，手动的手钻080028，凿榫凿080029，凿孔斧080030，凿榫斧080030，拔钉器（手工具）080034，凿石锤080036，铆锤（手工具）080038，石锤080047，钢丝锯080048，套锤（手工具）080051，手锯架080054，锯（手工具）080055，丝锥扳手080063，扳手（手工具）080064，扳牙（手工具）080066，丝锥板牙（手工具）080066，板牙套丝器（手工具）080066，斧080069，刨080071，手工操作的手工具080072，拔钉钳080074，夯土锤（手工具）080083，铣刀（手工具）080085，木工用钻子080104，凿孔用钻头（手工具部件）080108，刨用刀片080119，钻子（手工具）080124，凿（手工具）080129，槽刨080135，小斧080137，横口斧（工具）080141，夹钳（木工或制桶工业用）080147，锯条（手工具部件）080151，撬杠080153，木槌（手工具）080155，锤（手工具）080156，大锤080157，砸石锤080158，凿子080159，撞杵080172，撞锤（手工具）080172，中心穿孔器（手工具）080175，刨刀080177，粗锉（手工具）080178，锯柄080186，利器（手工具）080192，螺丝攻（手工具）080193，钻（手工具）080194，螺丝刀080195，钻头（手工具）080197，胸压式手摇钻080199，钳子080206，小钳子080207，钳080207，夹钳080207，夯锤（手工具）080211，剪票器具080212，胡桃钳080215，钻柄（手工具）080218，剪切器（手动器具）080223，锉刀080227，穿孔钳（手工具）080228，打孔器（手工具）080229，切割工具（手工具）080230，切削工具（手工具）080237，台钳080244，（携带工具用）工具带080247，撬棍080250，辅锯箱（手工具）080253，金刚砂锉080257，剥线钳（手工具）080259，台虎钳（手工具）080261<br />※锛C080002，钎具C080003<br />注：1.胡桃钳与第八版及以前版本1402贵重金属轧胡桃钳类似；<br />2.跨类似群保护商品：手工操作的手工具（0801，0802，0803，0804，0805，0806，0807，0808，0809，0810）。<br />',NULL,'2017-05-08 23:06:52',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (134,8,'0808 ','非动力手工器具','缝针穿线器080004，手动千斤顶08002，勾缝铁器080045，冲钉器080050，漂洗工具（手工具）080052，穿孔工具（手工具）080062，棘轮（手工具）080065，穿孔器080067，手工操作的手工具080072，截管器（手工具）080075，捣碎工具（手工具）080084，杵（手工具）080084，扩管器（手工具）080090，除蓟器（手工具）080096，穿索针080103，压花机（手工具）080105，烙铁（非电手工具）080116，烫皱褶用熨斗080117，上光铁器080118，抛光铁器（抛光工具）080118，翻砂用铁器080120，制模用铁器080120，打印用烙铁080122，切箍器（手工具）080139，金属带拉伸器（手工具）080160，打辫机（手工具）080161，钱收集器080162，捣碎用研钵080163，数字穿孔机080167，枪状手工具080174，浇包（手工具）080176，针铳080180，火炉用具080181，铆钉枪（手工具）080182，倾注液体用器具（手工具）080191，截管器具080198，挖掘器（手工具）080204，熨斗080224，手动胶粘剂挤压枪080232，挖沟器（手工具）080234，绞肉机（手工具）080236，手动泵*080245，壁炉手拉风箱（手工具）080255，电线牵引器（手工具）080258，非电动压胶枪080262，金属线拉伸器（手工具）080263，手动气泵080265，滑雪板用手动磨边器080268<br />※手动压机C080004，手工打包机C080005，三爪拉轴承器C080006，针钩穿线器C080007，手动打气筒C080017<br />注：1.手动打气筒与1204的第（二）部分商品类似；<br />2.手动千斤顶与0734齿条齿轮千斤顶，千斤顶（机器），卡车用千斤顶，货车用千斤顶，气动千斤顶类似；<br />3.烫皱褶用熨斗，熨斗与1106织物蒸汽挂熨机以及第九版及以前版本0924电熨斗，蒸汽挂熨机类似；<br />4.跨类似群保护商品：手工操作的手工具（0801，0802，0803，0804，0805，0806，0807，0808，0809，0810）。<br />',NULL,'2017-05-08 23:06:52',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (135,8,'0809 ','专业用手工具','调色刀080013，抹刀（手工具）080014，镊子080042，雕刻工具（手工具）080043，制图用刮刀080049，楦（鞋匠手工具）080056，手工操作的手工具080072，泥刀080087，划玻璃刀（手工具部件）080089，雕刻针080131，涂底漆用铁器（手工具）080196，美工刀080264<br />※刻字笔C080008，钉碗钻C080009，元镜机C080010，雕刻钻C080011，制钟表工具C080012，三排冲墩C080013，开表器C080014，修理天平专用工具C080015，加工猪鬃用工具C080016<br />注：1.调色刀与第十版及以前版本0810调色刀交叉检索；<br />2.跨类似群保护商品：手工操作的手工具（0801，0802，0803，0804，0805，0806，0807，0808，0809，0810）。<br />',NULL,'2017-05-08 23:06:52',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (136,8,'0810 ','刀剪（不包括机械刀片，文具刀）','牲畜修剪刀080033，削蹄刀080039，剪刀*080040，折叠刀080046，猎刀080053，大剪刀080060，大剪刀刀片080061，手工操作的手工具080072，切菜刀080073，蔬菜切丝器080073，蔬菜切片器080073，切刀*080076，切肉刀080077，刮鳞刀080095，修枝剪080097，修枝用大剪刀080098，接芽刀080099，树枝修剪刀080100，切边大剪刀080112，刈草坪刀（手工器具）080127，兽医用刀080132，削皮刀080133，剁菜刀080136，斩骨刀080138，修枝刀080146，刀片（手工具）080149，大砍刀080154，灯芯剪（剪刀）080164，非电动开罐器080169，刀*080205，动物剪毛器（手工具）080222，刮削刀（手工具）080235，剔肉刀（手工具）080236，切碎刀（手工具）080236，奶酪切片机（非电）080248，切比萨饼用刀（非电）080249，鸡蛋切片器（非电）080251，陶瓷刀080266<br />    毛球修剪器C080018<br />    注：1.非电动开罐器与2101开塞钻（电或非电），开瓶器（电或非电）类似，与第十版及以前版本2101开瓶刀，开塞钻交叉检索；<br />2.兽医用刀与1001兽医用器械和工具类似；<br />3.跨类似群保护商品：手工操作的手工具（0801，0802，0803，0804，0805，0806，0807，0808，0809，0810）    4.毛球修剪器与第十版及以前版本0806已接受商品毛球修剪器交叉检索。<br />',NULL,'2017-05-08 23:06:52',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (137,8,'0811 ','除火器外的随身武器','指节铜套080015，除火器外的随身武器080022，（枪上的）刺刀080025，剑鞘080125，警棍080130，大头短棒080130，剑（武器）080150，剑080208，佩刀080209，匕首080246<br />注：本类似群商品与第十版及以前版本0808指节铜套，大头短棒，第九版及以前版本铜指节套，拳击环（指节铜套）交叉检索。<br />',NULL,'2017-05-08 23:06:52',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (138,8,'0812 ','餐具刀、叉、匙','餐具（刀、叉和匙）080059，餐叉080070，刀叉餐具*080078，匙*080080，长柄勺（手工具）080081，碎冰锥080128，方糖钳080173，银餐具（刀、叉、匙）080203，葡萄酒用长柄勺080260<br />注：本类似群商品与第八版及以前版本2101勺子（餐具），非贵重金属餐具类似。<br />',NULL,'2017-05-08 23:06:52',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (139,9,'0901 ','电子计算机及其外部设备','加法器090019，计算圆尺090101，计算尺090102，计算机器090103，数据处理设备090306，计算机存储装置090342，计算机090372，已录制的计算机程序（程序）090373，磁性身份识别卡090529，磁盘090533，软盘090534，计算机键盘090537，条形码读出器090581，CD盘（只读存储器）090588，已录制的计算机操作程序090589，计算机外围设备090590，计算机软件（已录制）090591，连接器（数据处理设备）090594，电子笔（视觉演示装置）090598，已编码的磁卡090599，计算机用接口090603，磁性数据介质090607，磁性编码器090608，计算机用磁带装置090609，微处理机090610，监视器（计算机硬件）090612，监视程序（计算机程序）090613，鼠标（计算机外围设备）090614，光学字符识别器090615，光学数据介质090616，光盘090617，与计算机连用的打印机*090618，中央处理器（CPU）090619，读出器（数据处理设备）090620，扫描仪（数据处理设备）090622，计算机用磁盘驱动器090634，电子字典090636，集成电路卡090640，智能卡（集成电路卡）090640，笔记本电脑090642，计算器090644，视频游戏卡090651，电子出版物（可下载）090657，计算机程序（可下载软件）090658，鼠标垫090662，与计算机配套使用的腕垫090664，计算机游戏软件090670，磁性编码身份鉴别手环090692，可下载的手机铃音090694，可下载的音乐文件090695，可下载的影像文件090696，USB闪存盘090700，便携式计算机090707，便携计算机专用包090709，便携计算机套090710，可下载的计算机应用软件090717，打印机和复印机用未填充的鼓粉盒090720，平板电脑090724，已编码钥匙卡090725，视频游戏机用内存卡090727，计算机硬件090732，商品电子标签090637，与计算机连用的操纵杆（视频游戏用除外）090747，智能眼镜（数据处理）090748，智能手表（数据处理）090749，计算机屏幕专用保护膜090751<br />※计算器袋（套）C090001，鼠标器套C090002，键盘罩C090003，软盘盒C090004，电话铃音（可下载）C090127，计算机用光盘驱动器C090136<br />注：1.光盘，CD盘（只读存储器），光学数据介质与0908CD盘（音像），光盘（音像）以及第九版及以前版本0908密纹盘（音像），密纹声像盘交叉检索；<br />2.电子出版物（可下载），可下载的手机铃音，可下载的音乐文件，可下载的影像文件与0908唱片，录音带，录像带，CD盘（音像），盒式录像带，光盘（音像）类似；<br />3.本类似群商品与第八版及以前版本0911光学字符读出器，光学字符阅读机，光学数据介质，光学数据媒介交叉检索；<br />4.视频游戏卡与第九版及以前版本0908电视游戏卡交叉检索；<br />5.计算圆尺、计算尺与第十版及以前版本0902计算尺交叉检索；<br />6.跨类似群保护商品：打印机和复印机用未填充的鼓粉盒（0901，0903）；    7.商品电子标签与第十版及以前版本0902商品电子标签交叉检索；8.计算机屏幕专用保护膜与第十版及以前版本1703已接受商品计算机屏幕保护膜交叉检索。<br />',NULL,'2017-05-08 23:06:53',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (140,9,'0902 ','记录、自动售货机和其他记数检测器','（一）计步器090137，计数器090138，数量显示器090301，停车记时器090383，时间记录装置090478，记时器（时间记录装置）090586，算盘090627，电子记事器090628，煮蛋计时器（沙漏）090683，沙漏090683<br />※电子计分器C090009<br /><br />（二）邮戳检查装置090149，邮戳检验器090149<br /><br />（三）钱点数和分拣机090053，假币检测器090173，验钞机090173，开发票机090252，收银机090525，自动取款机（ATM）090686<br />※支票记录机C090006，支票证明机C090007，验手纹机C090010<br /><br />（四）投币启动设备用机械装置090063，投币计数启动设备用机械装置090064，自动售票机090086<br /><br />（五）口述听写机090188，衣裙下摆贴边标示器090313，投票机090499，全息图090291<br />※摇奖机C090005<br />注：1.本类似群各部分之间商品不类似；<br />2.第（五）部分内的商品互相之间不判为类似商品；<br />3.煮蛋计时器（沙漏）、沙漏与第七版及以前版本2106计时沙漏交叉检索；    4.全息图与第十版及以前版本0909全息图交叉检索。<br />',NULL,'2017-05-08 23:06:53',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (141,9,'0903 ','其他办公用机械（不包括打字机、誉写机、油印机）','办公室用打卡机090097，晒蓝图设备090106，复印机（照相、静电、热）090154，电传真设备090394，电传打字机090464，绘图机090596，传真机090600，考勤钟（时间记录装置）090649，打印机和复印机用未填充的鼓粉盒090720<br />※考勤机C090011<br />注：1.电传真设备，传真机与0907电话机类似；<br />2.考勤钟（时间记录装置）与第十版及以前版本0902第（一）部分考勤钟（时间记录装置）交叉检索；<br />3.跨类似群保护商品：打印机和复印机用未填充的鼓粉盒（0901，0903）。<br />',NULL,'2017-05-08 23:06:53',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (142,9,'0904 ','衡器','秤090074，衡器090080，地秤090081，信件磅秤090325，衡量器具090388，砝码090403，天平（杆秤）090433，杆秤090433，精密天平090489<br />※自动计量器C090013<br />',NULL,'2017-05-08 23:06:53',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (143,9,'0905 ','量具','校准口径圈090040，测量用链090056，卡钳090066，游标卡尺090104，规尺（量具）090105，裁缝用尺090169，皮革厚度量具090171，圆规（测量仪器）090200，量具090201，尺（量器）090284，木工尺090343，刻度尺090349，测微规090379，千分尺090379，测量皮厚度的仪器090386，螺丝攻规090466，划线规（木工）090490，游标090494<br />※量规C090014，螺旋测微器C090016，千分表C090017，齿轮测量工具C090019，刀具测量工具C090020，分样筛C090021，标准筛C090022<br />注：规尺（量具），圆规（测量仪器），量具，尺（量器），刻度尺与1616商品类似。<br />',NULL,'2017-05-08 23:06:53',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (144,9,'0906 ','信号器具','防交通事故用穿戴式反射盘090003，闪光灯标（信号灯）090126，闪光信号灯090126，信号铃090127，机械式标志090234，信号灯090322，发光标志090329，霓虹灯广告牌090330，航行用信号装置090357，发光或机械信号板090380，夜明或机械信号标志090434，信号哨子090445，车辆故障警告三角牌090446，发光信号灯塔090513，发光或机械路牌090516，信号浮标090518，非爆炸性烟雾信号090524，浮标090583，电子公告牌090643，发光式电子指示器090679，交通信号灯（信号装置）090687，锥形交通路标090715，数字标牌090736<br />※霓虹灯C090024，灯箱C090025<br />',NULL,'2017-05-08 23:06:53',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (145,9,'0907 ','通讯导航设备','通话筒090017，天线090045，防无线电干扰设备（电子）090048，分线盒（电）090094，交换机090146，声纳装置090179，电话听筒090207，电子信号发射器090227，发射机（电信）090228，无线电设备090270，内部通讯装置090308，导航仪器090358，成套无线电话机090407，成套无线电报机090408，雷达设备090416，运载工具用无线电设备090417，电话机090423，遥控信号用电动装置090447，声波定位仪器090455，电报机（装置）090467，无线电天线杆090471，电话话筒090473，电传中断器090474，发射器（电信）090488，调制解调器090611，电话答录机090629，可视电话090653，运载工具用导航仪器（随载计算机）090659，无绳电话090661，无线电寻呼机090673，卫星导航仪器090674，步话机090677，电话用成套免提工具090688，信号转发器090693，全球定位系统（GPS）设备090701，手机带090703，智能手机090719，移动电话090734，手机090734，穿戴式行动追踪器090737，智能手机用套090740，智能手机用壳090741<br />※载波设备C090026，驱动斩波器C090027，光通讯设备C090028，寻呼机套C090029，电话机套C090030，程控电话交换设备C090031，半导体捕鱼器C090032，网络通讯设备C090125，手机屏幕专用保护膜C090138<br />注：1.电话机与0903电传真设备，传真机类似；<br />2.手机带与第九版及以前版本2601手机带交叉检索；<br />    3.手机屏幕专用保护膜与第十版及以前版本1703 已接受商品手机屏幕保护膜交叉检索。<br />',NULL,'2017-05-08 23:06:53',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (146,9,'0908 ','音像设备','声导管090015，唱片090016，自动电唱机（音乐）090062，投币启动的音乐装置（自动电唱机）090062，磁带消磁装置090076，录音机090077，磁带090078，扬声器音箱090087，唱机的拾音器支臂090095，录音载体090111，电子监控装置090151，振动膜（音响）090182，扬声器090190，电唱机090192，唱片清洁装置090230，录音带090231，音频视频接收器090289，电视机用投币启动机械装置090340，扩音器090341，麦克风090351，声音传送装置090450，录音装置090451，声音复制装置090452，唱机针090462，唱机用唱针090462，电视机090468，讲词提示器090472，电唱机速度调节器090486，录像带090495，电唱机磁针更换器090503，磁头清洗带090535，录像机090536，扬声器喇叭090575，CD盘（音像）090587，声耦合器090593，计算机用自动电唱机090604，摄像机090630，盒式磁带播放机090631，CD播放机090632，盒式录像带090650，便携式收录机090663，头戴式耳机090671，DVD播放机090685，便携式媒体播放器090702，数码相框09071133，电子图书阅读器090718，婴儿监控器090721，可视婴儿监控器090722<br />※电视摄像机C090033，自动广告机C090034，延时混响器C090035，耳塞机C090037，拾音器C090038，光盘（音像）C090039，半导体收音机C090124，学习机C090128，电子教学学习机C090129，带有图书的电子发声装置C090130<br />注：1.CD盘（音像），光盘（音像）与0901光盘，CD盘（只读存储器），光学数据介质以及第九版及以前版本0901密纹光盘（可读存储器），光学数据媒介交叉检索；<br />2.唱片，录音带，录像带，CD盘（音像），盒式录像带，光盘（音像）与0901电子出版物（可下载），可下载的手机铃音，可下载的音乐文件，可下载的影像文件类似；<br />3.学习机，电子教学学习机，带有图书的电子发声装置与1606带有电子发声装置的儿童图书类似。<br />',NULL,'2017-05-08 23:06:53',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (147,9,'0909 ','摄影、电影用具及仪器','放大设备（摄影）090021，近摄镜090088，幻灯片框090099，电影摄影机090107，暗室（摄影）090117，干燥架（摄影）090122，电影胶片剪辑设备090124，照相机快门线（摄影）090174，快门（照相）090181，幻灯片用定中心设备090183，照相机（摄影）090184，幻灯放映机090186，幻灯片放映设备090186，闪光灯泡（摄影）090206，投影银幕090209，摄影用屏090211，摄影用滤干器090212，摄影用沥水架090212，胶卷卷轴（照相）090233，实物幻灯机090235，特制摄影设备和器具箱090246，曝光表（照度计）090251，胶片切割装置090262，滤光镜（摄影）090264，照片晒印用干燥装置090282，照片晒印用上光装置090283，照相制版用屏090286，照相制版装置090290，暗架托板（摄影）090309，暗室灯（摄影）090318，幻灯090321，测速仪（照相）090345，冲洗盘（摄影）090390，照相器材架090391，照像取景器090392，放映设备090411，光圈（摄影）090562，摄影用紫外线滤光镜090574，照相机用三角架090577，安装聚光灯用电轨090635，闪光灯（摄影）090639，镜头遮光罩090723，自拍杆（手持单脚架）090742<br />※套片机C090040，教学投影灯C090041，摄影器具包C090042<br />',NULL,'2017-05-08 23:06:54',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (148,9,'0910 ','测量仪器仪表，实验室用器具，电测量仪器，科学仪器','测绘仪器090055，计量仪表090138，探测器090180，测量装置090202，计量仪器090242，测量器械和仪器090280，精密测量仪器090346，测量仪器090347<br /><br />（一）空气分析仪器090025，高度计090033，风速计090039，气象气球090075，气压表090079，酒精水平仪090096，航海罗盘090133，测距设备090187，距离记录仪090194，测距仪090195，水位仪090204，铅锤090257，铅垂线090258，气量计（计量仪器）090279，水准标尺（测量仪器）090281，测杆（勘测仪器）090281，湿度表090292，测角器090299，坡度指示器090299，倾角计090299，斜度指示器090299，测程仪（测量仪器）090326，测深绳090327，测量水平仪090333，水银水平仪090344，气象仪器090348，航海器械和仪器090356，水平仪（测水平线仪器）090362，水准仪090363，观测仪器090366，八分仪090367，波长计090369，平板仪（测量仪器）090399，测面仪090400，偏振计090404，六分仪090444，测深度装置和机器090453，测深锤090454，经纬仪090479，方位仪090512，定向罗盘090523，海水深度探测器090668，风向袋（用于标明风向）090678<br />※激光导向仪C090043，地震仪C090044，地质勘察分析仪器C090045，土壤取样仪C090046<br /><br />（二）运载工具轮胎低压自动指示器090069，运载工具用测速仪090152，运载工具用里程表090232，出租车计价器090300，运载工具用自动转向装置090396，运载工具用恒温器090481，运载工具用电压调节器090498<br />※内燃机仪表C090047<br /><br />（三）电池用测酸计090010，比重计090011，日光辐射计090018，酒精比重计090027，照准仪090028，照准仪090028，食物分析仪器090029，比较仪090067，探水棒090072，阀门压力指示栓090090，锅炉控制仪器090120，节拍器090139，密度计090175，平衡仪器090237，恒温器090238，测力计090239，材料检验仪器和机器090240，油量表090243，汽油压力计090243，非医用测试仪090249，气体检测仪090278，真空计090302，速度指示器090303，乳汁浓度计090316，乳汁比重计090317，压力计090336，臭氧发生器090378，酸性液体比重计090387，盐液比重计090389，测压仪器090409，压力显示器090410，高温计090415，分度仪（测量仪器）090419，非医用温度计090429，糖量计090435，亚硫酸盐测计090463，转速计090465，温度指示计090477，转数表090485，尿比重计090492，粘度计090496，光密度计090532，药剂分配器090565，剂量计090565，减压室090595，非医用诊断设备090633，计量勺090641，频闪观测器090714，非医用示温标签090716，加速计090729，联机手环（测量仪器）090739，热量计090743，流量计090744<br />※风压表C090048，水表C090049，油表C090050，煤气表C090051，风速表C090052<br /><br />（四）视听教学仪器090061，毛细管090109，织物密度分析镜090136，曲颈瓶090157，曲颈瓶座090158，坩锅（实验室用）090170，烤钵（实验室用）090170，实验室料盘090177，试管090236，发酵装置（实验室装置）090253，分度玻璃器皿090285，计量用玻璃器皿090285，实验室用特制家具090315，数学仪器090339，显微镜用薄片切片机090352，物理学设备和仪器090395，吸量管090398，教学仪器090440，球径计090458，实验室用蒸馏器090504，化学仪器和器具090549，细菌培养器090556，科学用蒸馏装置090564，实验室用炉090568，实验室用烘箱090568，实验室用层析设备090585，急救训练用人体模型（教学器具）090680，基因芯片（DNA芯片）090684，实验室用离心机090698，培养皿090712，皮托管090713<br />※理化试验和成分分析用仪器和量器C090054，滴定管C090055，酒精灯C090056<br /><br />（五）安培计090036，电流计090092，功率计090203，电损耗指示器090213，电测量仪器090214，高频仪器090267，频率计090268，感应器（电）090304，欧姆计090368，示波器090374，伏特计090500<br />※电度表C090057，试电笔C090058，成套电气校验装置C090059，电气测量用稳压器C090060<br /><br />（六）粒子加速器090002，电子回旋加速器090085，宇宙学仪器090161，回旋加速器090172，工业或军用金属探测器090178，非医用激光器090323，科学用探测器090436，科学卫星090437，科学装置用隔膜090439，运载工具驾驶和控制模拟器090448，撞击试验用假人090697<br />※核原子发电站控制系统C090061，原子射线仪器C090062，核子仪器C090063，导弹控制盒C090064<br />注：1.本类似群第一自然段商品与各部分商品均类似；<br />2.本类似群各部分之间商品不类似；<br />3.本类似群第（六）部分内的商品互相之间将根据商品的功能、用途确定类似商品；<br />4.铅锤与第十版及以前版本0905吊线坠交叉检索；<br />5.测角器与第十版及以前版本0905角度测量工具交叉检索。<br />',NULL,'2017-05-08 23:06:54',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (149,9,'0911 ','光学仪器','复径计（光学）090050，天体照相机镜头090059，显微镜载玻片盒090128，目镜090134，物镜（光学）090160，衍射设备（显微镜）090189，显微镜090193，折射计090250，检验用镜090307，光学灯090319，光学镜头090324，放大镜（光学）090328，配有目镜的仪器090332，光学品090335，潜望镜090337，光学仪器用螺旋千分尺090350，镜（光学）090354，三棱镜（光学）090365，光学器械和仪器090370，光学玻璃090371，天文学仪器及装置090384，光度计090393，折射望远镜090424，分光镜090426，摄谱仪090457，立体视镜090460，立体视器械090461，双筒望远镜090475，望远镜090476，火器用瞄准望远镜090509，聚光器090592，武器用瞄准望远镜090735<br />',NULL,'2017-05-08 23:06:54',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (150,9,'0912 ','光电传输材料','电缆包皮层090098，电缆090215，电线090255，磁线090256，电线识别线090293，电线识别包层090294，电报线090469，电源材料（电线、电缆）090553，绝缘铜线090558，电话线090572，电缆连接套筒090626，马达启动缆090647，同轴电缆090665，纤维光缆090666<br />注：纤维光缆与0913第（七）部分商品以及第九版及以前版本0907纤维光缆交叉检索。<br />',NULL,'2017-05-08 23:06:54',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (151,9,'0913 ','电器用晶体及碳素材料，电子、电气通用元件','（一）方铅晶体（检波器）090271，半导体090539，集成电路用晶片090584<br />※单晶硅C090065，硅外延片C090066，石英晶体C090067，多晶硅C090068，硒堆和硒片C090069，电阻材料C090070，碳素材料C090071，碳电极C090072，石墨电极C090073，碳精块C090074，石墨碳精块C090075，碳精片C090076，碳精粒C090077，碳精棒C090078，碳精粉C090079，碳管C090080，无源极板C090083，水银整流器阴极C090084，电子管阳极C090085，阳极糊C090086<br /><br />（二）印刷电路090125，集成电路090538，芯片（集成电路）090540，印刷电路板090699<br />※电子芯片C090131<br /><br />（三）电线圈090001，磁铁090023，电磁线圈090024，放大器090037，放大管090038，热离子管090060，电容器090140，电导体090141，限幅器（电）090165，熔丝090269，电阻器090427，变阻器090432，扼流线圈（阻抗）090441，真空电子管（无线电）090491，可变电感器090493，保险丝090505，合金线（保险丝）090505，电感线圈支架090514，非照明用放电管090559，晶体管（电子）090624，发光二极管（LED）090704，三极管090705<br />※发射管C090087，超高频管C090088，电子束管C090089，电位器C090090，示波管C090091，电子管C090092，半导体器件C090093，磁性材料和器件C090094，陶滤波器C090095，雾化片C090132<br /><br />（四）变压器（电）090049，配电箱（电）090054，接线柱（电）090089，集电器090129，闸盒（电）090131，电流换向器090132，电导线管090142，闭路器090143，电器联接器090144，接线盒（电）090145，电触点090148，电动调节装置090150，变压器090153，电开关090164，插头、插座和其它接触器（电连接）090166，整流器090167，电池开关（电）090168，减压器（电）090168，断路器090191，配电盘（电）090197，配电控制台（电）090198，导管（电）090216，控制板（电）090217，电线连接物090219，电器接插件090220，电耦合器090220，继电器（电的）090222，电枢（电）090305，逆变器（电）090310，自动定时开关090353，电线接线器（电）090442，调光器（电）090606，灯光调节器（电）090606，电源插座罩090667，照明设备用镇流器090672，螺线管阀（电磁开关）090675，电涌保护器090676，舞台灯光调节器090682，升压变压器090706，电源插头转换器090730<br />※互感器C090096，传感器C090097，消磁器C090098，调压器C090099，稳压电源C090100，启辉器C090102，低压电源C090103，高低压开关板C090104，起动器C090105，熔断器C090106，母线槽C090107，电热保护套C090126<br /><br />（五）荧光屏090208，视频显示屏090652<br /><br />（六）遥控装置*090470<br />※家用遥控器C090101<br /><br />（七）光导纤维（光学纤维）090571，光学纤维（光导纤维）090571<br />注：1.本类似群第（二）、（三）部分互为类似商品，第（三）、（四）部分互为类似商品，其他各部分之间商品不类似；<br />2.第（七）部分的商品与0912纤维光缆以及第九版及以前版本0907纤维光缆类似；<br />3.舞台灯光调节器与第七版及以前版本1101舞台灯光调节器交叉检索；<br />4.半导体与第八版及以前版本0908半导体交叉检索。<br />',NULL,'2017-05-08 23:06:54',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (152,9,'0914 ','电器成套设备及控制装置','（一）遥控铁路道岔用电动装置090022，远距离点火用电子点火装置090030，热调节装置090116，工业遥控操作用电气设备090130，整流用电力装置090163<br />※高压防爆配电装置C090108，电站自动化装置C090109<br /><br />（二）避雷针090381，避雷器090381<br />注：本类似群各部分之间商品不类似。<br />',NULL,'2017-05-08 23:06:54',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (153,9,'0915 ','电解装置','电解装置090226，非空气、非水处理用电离装置090311<br />※电解槽C090111<br />注：本类似群与0754商品类似。<br />',NULL,'2017-05-08 23:06:54',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (154,9,'0916 ','灭火器具','灭火器090041，灭火设备090750，火灾扑打器090082，消防水龙带喷嘴090296，消防车090297，消防泵090298，消防船090601，灭火用自动洒水装置090646，消防水龙带090708<br />注：消防水龙带与1704帆布水龙带以及与第九版及以前版本1704消防水龙带交叉检索。<br />',NULL,'2017-05-08 23:06:54',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (155,9,'0917 ','电弧切割、焊接设备及器具','<br />注：本类似群第十版时移入0751类似群。<br />',NULL,'2017-05-08 23:06:54',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (156,9,'0918 ','工业用X光机械设备','工业用放射设备090418，非医用X光产生装置和设备090420，非医用X光管090421，非医用X光装置090425，工业用放射屏幕090526<br />',NULL,'2017-05-08 23:06:54',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (157,9,'0919 ','安全救护器具','个人用防事故装置090004，防事故、防辐射、防火服装090005，防事故用石棉手套090034，防火石棉衣090035，防眩光眼镜090046，防眩遮光板090047，防眩罩090047，飞行员防护服090070，救生筏090073，安全头盔090112，非人工呼吸用呼吸器090113，非人工呼吸用呼吸面具090113，焊接用头盔090114，潜水服090162，太平梯090205，工人用防护面罩090210，火星防护罩090245，铁路交通用安全设备090254，防事故用网090259，救生网090260，安全网090260，救护用防水油布090261，呼吸面具过滤器090263，防事故用手套090274，潜水员手套090275，工业用防X光手套090276，防火服装090288，救生器械和设备090295，防护面罩*090338，潜水呼吸器090355，氧气转储装置090377，潜水用耳塞090401，牙齿保护器*090414，非医用X光防护装置090422，滤气呼吸器090430，除人工呼吸外的呼吸装置090431，救生圈090517，救生衣090546，救生带090547，防弹背心090582，潜水面罩090597，工人用护膝垫090605，非运载工具座椅、非体育设备用安全带090621，消防毯090638，防事故、防辐射、防火用鞋090645，体育用护目镜090654，潜水和游泳用鼻夹090655，体育用保护头盔090656，消防人员用石棉挡板090689，骑马用头盔090690，实验室用特制服装090691，防弹衣090728，自然灾害用救生舱090731，反光安全背心090745，体育用护齿090752，体育用护头090753<br />※耐酸手套C090113，耐酸衣、裙C090114，护目镜C090115，防水衣C090116，耐酸胶鞋C090117，防火靴（鞋）C090118<br />注：1.防水衣与2504防水服类似；<br />2.潜水用耳塞与第七版及以前版本1004耳塞交叉检索；<br />3.体育用护目镜，护目镜，防眩光眼镜与0921商品类似；<br />4.消防队员用石棉挡板与第八版及以前版本1705消防队员用石棉掩护物，消防人员用石棉挡板交叉检索；<br />5.救生圈，救生衣与2809翼型浮袋，游泳圈，游泳浮力背心类似，与第十版及以前版本2809洗澡或游泳用浮囊交叉检索；<br />6.太平梯与第九版及以前版本0916太平梯交叉检索。<br />',NULL,'2017-05-08 23:06:54',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (158,9,'0920 ','警报装置，电铃','汽笛报警器090013，声音警报器090014，报警器*090026，电警铃090071，铃（报警装置）090402，警笛090449，电子防盗装置090497，防盗报警器090511<br />火警报警器090068，电铃按钮090093，门窥视孔（广扩镜）090312，电锁090443，蜂鸣器090522，电门铃090566，烟雾探测器090623<br />注：1.本类似群第一自然段商品与1202车辆倒退警报器，车辆防盗设备，1211运载工具防盗报警器、运载工具防盗设备类似，与第九版及以前版本1202车辆防盗警铃交叉检索；<br />2.电锁与0610商品（除钥匙外）类似。<br />',NULL,'2017-05-08 23:06:55',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (159,9,'0921 ','眼镜及附件','夹鼻眼镜链090115，眼镜挂绳090156，夹鼻眼镜挂绳090156，矫正透镜（光学）090159，眼镜套090567，眼镜片090334，眼镜框090359，夹鼻眼镜架090359，眼镜090331，夹鼻眼镜090397，隐形眼镜090554，隐形眼镜盒090555，眼镜盒090567，太阳镜090648，3D眼镜090726<br />※擦眼镜布C090135<br />注：本类似群商品与0919体育用护目镜，护目镜，防眩光眼镜类似，与第九版及以前版本0919体育用风镜交叉检索。<br />',NULL,'2017-05-08 23:06:55',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (160,9,'0922 ','电池，充电器','运载工具用蓄电池090007，运载工具用电池090007，蓄电瓶090008，电瓶090008，蓄电池箱090009，电池箱090009，电池极板090012，点火用电池090031，阳极090043，阳极电池090044，高压电池090044，电池充电器090083，原电池090218，电池充电器090266，原电池组090272，电池铅板090287，电池090360，蓄电池090361，阴极反腐蚀装置090412，对阴极090507，光伏电池090531，阴极090543，太阳能电池090557，发电用太阳能电池板090733，电子香烟用充电器090738，移动电源（可充电电池）C090137<br />注：太阳能电池，发电用太阳能电池板与0603太阳能电池组成的金属屋顶板，1909太阳能电池组成的非金属屋顶板类似。<br />',NULL,'2017-05-08 23:06:55',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (161,9,'0923 ','电影片，已曝光材料','动画片090176，幻灯片（照相）090185，透明软片（照相）090185，曝光胶卷090515，已曝光的电影胶片090550，已曝光的X光胶片090573，非医用X光照片090625<br />注：本类似群商品与0107未曝光的感光胶片，未曝光的X光感光胶片，未曝光的感光电影胶片以及第九版及以前版本0107感光但未曝光的X光胶片，未曝光感光胶卷交叉检索。<br />',NULL,'2017-05-08 23:06:55',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (162,9,'0924 ','其他','（一）照蛋器090241，叫狗哨子090508，装饰磁铁090660，电栅栏090669，训练动物用电子项圈090746<br />※便携式遥控阻车器C090133<br /><br />（二）电热袜090121<br />※电暖衣服C090119，电马甲C090120，电手套C090121，电靴C090123<br />注：1.本类似群各部分之间商品不类似；<br />2.本类似群第（一）部分内的商品互相之间将根据商品的功能、用途确定类似商品。<br />',NULL,'2017-05-08 23:06:55',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (163,10,'1001 ','外科、医疗和兽医用仪器、器械、设备，不包括电子、核子、电疗、医疗用Ｘ光设备、器械及仪器','外科用剪100007，医用针100008，缝合针100009，热气医疗装置100011，医用热气颤振器100012，医用导管100015，护理器械100016，牲畜助产器100027，外科手术刀100029，外科用小手术刀100030，探条（外科用）100033，医用插管100042，冲洗体腔装置100044，阉割钳100049，外科仪器和器械100054，医生用器械箱100055，麻醉仪器100057，外科手术剪100058，压迫机（外科用）100060，医用滴管100061，割鸡眼刀100062，健美按摩设备100063，外科用刀100065，医用恒温箱100067，刮舌器100070，柳叶刀（外科用）100077，注射针管100080，医用引流管100081，医用探针100085，医用泵100086，验血仪器100087，医用滴瓶100089，医用钳100090，胃镜100093，血球计100095，皮下注射器100097，吸入器100099，医用注射针筒100100，泌尿科器械及器具100102，吹入器100103，医用灌肠器100104，医用灯100108，医用喷雾器100109，麻醉面罩100112，按摩器械100113，医疗器械和仪器100114，敷药用器具100115，医疗器械箱100116，外科医生用镜100118，助产器械100120，检眼计100122，检眼镜100123，兽医用喂丸器100127，血压计100129，医用石英灯100130，复苏器100135，人工呼吸器100138，人工呼吸设备100139，子宫注射器100142，阴道冲洗器100143，听诊器100144，耳聋治疗设备100147，手术台100150，套（管）针100151，尿道探针100153，尿道注射器100154，火罐100155，兽医用器械和工具100156，振动按摩器100158，医用气雾器100160，医用注射器100164，医用体育活动器械100176，早产婴儿保育箱100177，刷体腔用毛刷100178，医疗分析仪器100180，医用测试仪100180，医用蒸薰设备100182，肺活量计（医疗器械）100197，医用体温计100198，针灸针100199，医用诊断设备100201，心脏起搏器100203，医用电击去心脏纤颤器100211，透析器100212，医用导丝100213，医用牵引仪器100215，下体冲洗袋100218，显微皮肤磨削仪100220，医用身体康复仪100221，脉博计100222，医用支架100223，医用示温标签100225，治疗痤疮用装置100228，医用内窥镜摄像头100231，脑起搏器100235，植入型皮下给药装置100236，可生物降解的骨固定植入物100237，医用压舌板100238，吸鼻器100239<br />※止血缝合器械C100001，耳鼻喉科器械C100002，眼科器械C100003，杀菌消毒器械C100004，输精器C100005，输血器C100006<br />注：1.医疗器械和仪器与1002，1003商品类似；<br />2.医用熏蒸设备与1109非医用熏蒸设备，蒸脸器具（蒸汽浴）类似；<br />3.外科医生和医生用器械箱，医疗器械箱，外科医生和医生用箱与0501轻便药箱（已装药的），急救箱（备好药的）类似；<br />4.兽医用器械和工具与0810兽医用刀类似；<br />5.医用诊断设备与1003商品类似。<br />',NULL,'2017-05-08 23:06:56',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (164,10,'1002 ','牙科设备及器具','牙科医生用扶手椅100048，假牙100052，牙钻100072，牙科设备和仪器100073，假牙套100074，全口假牙100076，牙科用镜100078，医用或牙科用扶手椅100088，电动牙科设备100179，畸齿矫正仪器100214，牙科用牙齿保护器100240<br />注：本类似群商品与1001医疗器械和仪器类似。<br />',NULL,'2017-05-08 23:06:56',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (165,10,'1003 ','医疗用电子、核子、电疗和Ｘ光设备','医用镭管100017，医用电刺激带100023，医用X光装置100024，医用电热垫100050，电热敷布（外科）100059，医用放射屏幕100083，心电图描记器100084，电疗器械100091，医用紫外线灯100105，医用激光器100106，医用X光产生装置和设备100131，医用X光照片100132，医用放射设备100133，放射医疗设备100134，医用X光管100136，医用X光防护装置100137，医用电极100174，医用带（电）100175，医用紫外线过滤器100181，医用电热毯100191，理疗设备100196，电子针灸仪100202，急救用热敷布（袋）100209，医用断层扫描仪100227，心率监测设备100232<br />※医疗用超声器械C100007，诊断和治疗期同位素设备和器械C100008，医用紫外线杀菌灯C100011<br />注：1.医用电热垫，医用电毯与1111非医用电加热垫，非医用电热毯类似，与第九版及以前版本的非医用电热毯，非医用电加热垫（衬垫），电热毯交叉检索；<br />2.医用紫外线灯、医用紫外线杀菌灯与1101第（三）部分商品类似；<br />3.本类似群商品与1001医疗器械和仪器类似；<br />4.本类似群商品与1001医用诊断设备类似。<br />',NULL,'2017-05-08 23:06:56',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (166,10,'1004 ','医疗用辅助器具、设备和用品','分娩褥垫100004，助听器100005，喇叭状助听器100006，病床用吸水床单100013，失禁用垫100014，卧床病人用便盆100025，医用盆100026，医用靴100031，医用痰盂100034，带轮担架100036，救护车担架100037，疝气带100039，医用手套100043，医用带100045，外科用海绵100053，医用垫100064，吃药用勺100069，挖耳勺100071，医用指套100079，医用水袋100082，按摩用手套100092，医用冰袋100094，医用水床100096，腹部护垫100098，失眠用催眠枕头100101，卧床病人用尿壶100110，医用特制家具100119，脐疝带100121，听力保护器100124，床用摆动器100157，医用气枕100161，医用气垫100162，医用气褥垫100163，无菌罩布（外科用）100172，医用床100173，病人身上伤痛处防压垫（袋）100195，手术衣100200，升举病人用器具100204，医务人员用面罩100205，手术用消毒盖布100207，大便座椅100210，医疗垃圾专用容器100216，耳塞（听力保护装置）100224，除虱梳100229，压力衣100233，月经杯100241<br />※氧气袋C100009，口罩C100010<br />注：1.卧床病人用便盆，卧床病人用尿壶与2106便壶，痰盂类似；<br />2.医用痰盂与2106痰盂类似；<br />3.失禁用垫与0506失禁用尿布，失禁用吸收裤，婴儿尿裤，婴儿尿布类似，与第九版及以前版本的0506吸收式失禁用尿布裤，失禁吸收衬裤，1603纸或纤维素制婴儿尿布（一次性），纸制和纤维制婴儿尿布裤（一次性），纸制和纤维制婴儿尿布（一次性），纸或纤维素制婴儿尿布裤（一次性），纸制或纤维制婴儿尿布（一次性）类交叉检索；<br />4.医用床与2001医院用病床，按摩用床类似，与第九版及以前版本的医院用床交叉检索；<br />5.无菌罩布（外科用）与第九版及以前版本的0506外科手术用布（织物）交叉检索；<br />6.耳塞（听力保护装置）与第九版及以前版本的0919耳塞交叉检索。<br />',NULL,'2017-05-08 23:06:56',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (167,10,'1005 ','奶嘴，奶瓶','出牙咬环100018，奶瓶100028，吸奶器100107，婴儿用安抚奶嘴100145，奶瓶阀100169，奶瓶用奶嘴100170<br />',NULL,'2017-05-08 23:06:56',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (168,10,'1006 ','性用品','子宫帽100010，避孕套100128，非化学避孕用具100184，性爱娃娃100219，性玩具100234<br />注：性爱娃娃与第九版及以前版本的2006充气娃娃（非医用性助器）交叉检索。<br />',NULL,'2017-05-08 23:06:56',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (169,10,'1007 ','假肢，假发和假器官','人造颚100111，假肢100117，外科用人造皮肤100125，人造乳房100141，人造眼睛100159，植发用毛发100192，外科移植用假眼球100194，人造外科移植物100208<br />',NULL,'2017-05-08 23:06:56',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (170,10,'1008 ','矫形用品','腹带100001，下腹托带100002，紧身腹围100003，矫形用关节绷带100020，支撑绷带100020，石膏夹板（外科）100021，弹性绷带100022，矫形用物品100038，鞋用弓型支垫100040，拘束衣100041，孕妇托腹带100046，矫形带100047，矫形鞋100051，伤残人用拐杖头100126，平足支撑物100146，悬吊式绷带100148，外科用弹力袜100165，静脉曲张用长袜100166，伤残人用拐杖100168，矫形鞋底100171，医用紧身胸衣100183，矫形用膝绷带100193，矫形用石膏绷带100206，吊带（支撑绷带）100217，残障者用助行架100226，医用四脚拐杖100230<br />注：1.矫形用关节绷带，支撑绷带，弹性绷带，悬吊式绷带，矫形用膝绷带，矫形用石膏绷带（模压品），吊带（支撑绷带）与0506外科用肩绷带，卫生绷带，包扎绷带类似，与第八版及以前版本0506绷带交叉检索；<br />    2.孕妇托腹带与第十版及以前版本1004 孕妇托腹带交叉检索。”<br />',NULL,'2017-05-08 23:06:56',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (171,10,'1009 ','缝合用材料','羊肠线100035，线（外科用）100056，缝合材料100149<br />',NULL,'2017-05-08 23:06:56',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (172,11,'1101 ','照明用设备、器具（不包括汽灯、油灯）','（一）灯泡110021，电灯泡110022，弧光灯110023，电灯110024，灯110040，灯罩110042，白炽灯110043，袖珍手电筒110051，便携式探照灯110051，弧光灯碳棒110072，玻璃灯罩110091，照明用放电管110111，灯光漫射器110118，电灯灯头110122，照明器械及装置110130，枝形吊灯110133，顶灯110136，电灯丝110145，照明灯（曳光管）110148，球形灯罩110169，实验室灯110176，安全灯110182，灯光反射镜110183，灯笼110185，节日装饰彩色小灯110185，照明用发光管110189，照明用镁丝110190，矿灯110192，圣诞树用电灯110195，发光门牌110196，手电筒110202，探照灯110202，灯光遮罩110237，灯罩座110238，路灯110263，水族池照明灯110309，潜水灯110322，发光二极管（LED）照明器具110333<br />※舞台灯具C110001，照像用回光灯C110002，日光灯管C110003<br /><br />（二）空中运载工具用照明设备110007，运载工具用灯110027，汽车防眩光装置（灯配件）110030，汽车前灯110031，自行车车灯110045，运载工具转向信号装置用灯泡110071，摩托车车灯110110，运载工具前灯110200，运载工具用反光镜110212，运载工具用照明装置110229，运载工具用防眩光装置（灯配件）110249，汽车转向指示器用灯110255，汽车灯110256<br /><br />（三）空气净化用杀菌灯110166，非医用紫外线灯110180<br /><br />（四）烫发用灯110158<br />注：1.本类似群各部分之间商品不类似；<br />2.本类似群第（一）部分的灯，照明器械及装置与第（二）部分商品以及1103商品类似；<br />3.本类似群第（二）部分商品与第（一）部分的灯、照明器械及装置，1211运载工具转向信号装置、运载工具防眩光装置、运载工具遮光装置类似，与第九版及以前版本1202车辆转向信号灯，车辆转向信号装置、车辆防眩光装置、车辆遮光装置类似；<br />4.本类似群第（三）部分商品与1003医用紫外线灯，医用紫外线杀菌灯类似。<br />',NULL,'2017-05-08 23:06:57',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (173,11,'1102 ','喷焊灯','<br />注：本类似群第十版时喷焊灯、热焊枪、喷灯移入0751类似群，乙炔发生器移入1107类似群。<br />',NULL,'2017-05-08 23:06:57',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (174,11,'1103 ','汽灯，油灯','乙炔灯110005，照明用提灯110041，油灯灯头110044，煤油灯罩110092，煤气灯110163，油灯110179<br />注：本类似群商品与1101第（一）部分的灯，照明器械及装置类似。<br />',NULL,'2017-05-08 23:06:57',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (175,11,'1104 ','烹调及民用电气加热设备（不包括厨房用手工用具，食品加工机器）','（一）炉用金属框架110025，炉用构架110025，电平底高压锅110029，面包炉110053，烤肉铁叉转动器110056，烤肉铁叉110057，咖啡豆烘烤机110066，暖碟器110089，电炊具110107，烹调器110108，烹调用装置和设备110109，炉子110140，水果烘烤器110159，燃气炉110161，电炉110170，烤面包器110171，烤盘（烹饪设备）110172，烤架（烹饪设备）110172，烘烤器具110172，麦芽烘焙器110191，厨房炉灶（烘箱）110204，灶环110210，电热翻转烤肉器110220，烤炉110230，酒精炉110247，汽油炉110248，燃气炉托架110251，高压锅（电加压炊具）110254，电压力锅（高压锅）110254，奶瓶用电加热器110257，烘蛋奶饼的电铁模110258，电咖啡渗滤壶110261，电力煮咖啡机110262，便携式烤肉架110265，电油炸锅110266，电热水壶110303，电动制酸奶器110312，微波炉（厨房用具）110317，烤面包机110329，制面包机110332，加热展示柜110335，多功能锅110336，电蒸锅110337，制墨西哥薄饼用电饼铛110338<br />※电开水器C110056，烤饼炉C110006，沼气灶C110007，煤油炉C110008，电铁锅C110011，太阳灶C110054，电热水瓶C110055<br /><br />（二）野餐烧烤用火山岩石110326<br />注：1.本类似群各部分之间商品不类似；<br />2.太阳灶与1109太阳能集热器，太阳能收集器类似；<br />3.电热水壶，电热水瓶，电开水器与1110饮水机类似；<br />4.电热水瓶与2111暖水瓶类似；<br />5.电动制酸奶器与第九版及以前版本0709酸奶机交叉检索；<br />6.制面包机与第九版及以前版本0709面包机交叉检索。<br />',NULL,'2017-05-08 23:06:57',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (176,11,'1105 ','制冷、冷藏设备（不包括冷藏车）','冷藏柜110026，冰柜110106，饮料冷却装置110119，水冷却装置110125，冷冻设备和机器110155，冷藏室110156，步入式冷藏室110156，冷藏集装箱110157，制冰机和设备110167，冰盒110168，冷藏箱110168，牛奶冷却装置110177，液体冷却装置110188，冷却装置和机器110209，冷冻设备和装置110213，冷却设备和装置110214，烟草冷却装置110227，冰箱110274，冷藏展示柜110330<br />※制冰淇淋机C110012，冰箱自动化霜器C110013，冰箱除味器C110014，制冰棒机C110015，冰镇球C110016，玻璃钢冷却塔C110046<br />',NULL,'2017-05-08 23:06:58',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (177,11,'1106 ','干燥、通风、空调设备（包括冷暖房设备）','（一）通风罩110006，空气除臭装置110009，空气冷却装置110010，空调用过滤<br />器110011，空气再热器110012，空气干燥器110013，空气调节设备110014，空气过滤设备110015，风扇（空气调节）110065，运载工具用空调器110079，运载工具用供暖装置110081，烟筒用烟道110093，烟筒风箱110094，干燥器110097，空气调节装置110099，运载工具用除霜器110112，干燥设备110117，气体净化装置110138，饲料和草料干燥设备110141，草料干燥装置110141，空气或水处理用电离设备110174，空气净化装置和机器110207，干燥装置和设备110222，风扇（空调部件）110225，烤烟机110228，通风设备和装置（空气调节）110233，运载工具用通风装置（空气调节）110234，实验室用通风罩110244，空气消毒器110245，运载工具窗户除霜加热器110250，气体冷凝器（非机器部件）110294，厨房用抽油烟机110314，个人用电风扇110315，电动干衣机110316，食余残渣脱水装置110321，织物蒸汽挂烫机110331<br />※排气风扇C110017，玻璃钢铀流风机C110018，润湿空气装置C110019，煤气净化器C110047，汽车发动机预热器C110048<br /><br />（二）头发用吹风机110095<br />※电吹风C110020<br />注：1.本类似群各部分之间商品不类似；<br />2.电动干衣机与0724商品类似；<br />3.织物蒸汽挂熨机与0808烫皱褶用熨斗，熨斗类似，与第九版及以前版本0924电熨斗，蒸汽挂熨机交叉检索。<br />4.跨类似群保护商品：空气或水处理用电离设备（1106第（一）部分，1110第（一）部分）。<br />',NULL,'2017-05-08 23:06:58',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (178,11,'1107 ','加温、蒸汽设备（包括工业用炉、锅炉，不包括机车锅炉、锅驼机锅炉、蒸汽机锅炉）','（一）蓄热器110002，乙炔燃烧器110003，乙炔发生器110004，热风烘箱110008热气装置110016，熔炉冷却装置110032，熔炉冷却槽110032，锅炉（非机器部件）110047，窑110048，散热器盖110050，水加热器110052，实验室燃烧器110058，石油工业用火炬塔110059，燃烧器110060，杀菌燃烧器110061，洗衣房用煮衣锅110063，洗衣用铜锅110063，加热装置110067，回热器110069，耐火陶土制炉灶配件110070，熔炉进料装置110074，加热用锅炉110077，供暖装置用锅炉管道（管）110078，固体、液体、气体燃料加热器110080，电加热装置110082，加热元件110085，熨斗加热器110086，浸入式加热器110090，胶加热器110100，蒸馏塔110101，燃料节省器*110102，节油器*110102，蒸馏装置110120，热交换器（非机器部件）110129，蒸发器110142，轻便锻炉110149，非实验室用炉110150，非实验室用烘箱110150，炉用成型配件110151，炉条110152，火炉栅110152，壁炉110153，炉灰箱110154，涤气器（气体装置部件）110160，燃气锅炉110162，蒸汽锅炉（非机器部件）110165，焚化炉110173，水箱液面控制阀110194，氢氧燃烧器110197，油炉110199，加热板110201，蒸汽供暖装置用气阀110205，精炼蒸馏塔110208，水加热器（装置）110211，热汽流调节器110215，自来水或煤气设备和管道的调节附件110216，自来水或煤气设备和管道的保险附件110217，旋管（蒸馏、加热或冷却装置的部件）110224，炉膛灰渣自动输送装置110231，蒸汽发生设备110232，煤气管道的调节和安全附件110240，蒸汽储存器110242，蒸馏器*110246，供水设备110252，煤气设备的调节和安全附件110259，加热锅炉用管道110264，壁炉（家用）110267，热泵110268，太阳炉110270，暖气锅炉给水设备110273，窑具（支架）110279，工业用层析设备110292，加热用电热丝110293，水族池加热器110308，牙科用烘箱110311，恒温阀（供暖装置部件）110319，工业用微波炉110328<br />※锅炉报警器C110021，石墨坩埚C110022，回转窑C110058，焙烧炉C110059<br /><br />（二）※舞台烟雾机C110049，演出用肥皂泡和泡沫发生器C110050<br />注：1.本类似群各部分之间商品不类似；<br />2.蒸汽锅炉（非机器部件）与0737蒸汽机锅炉类似；<br />3.自来水或煤气设备和管道的调节附件，自来水或煤气设备和管道的保险附件与1108自来水设备的调节和安全附件类似；<br />4.窑具（支架）与第八版及以前版本1907陶瓷窑具交叉检索；<br />5.燃料节省器，节油器与0738火花节能器，0748引擎和马达用节油器类似，与第十版及以前版本0738节油器交叉检索；<br />6.舞台烟雾机与第七版及以前版本0718舞台烟雾机交叉检索；<br />7.乙炔发生器与第九版及以前版本1102乙炔发生器交叉检索；<br />8.太阳炉与1109太阳能集热器，太阳能收集器类似；<br />9.跨类似群保护商品：水箱液面控制阀（1107第（一）部分，1109）；<br />   10.回转窑，焙烧炉与第十版及以前版本0731 回转窑，焙烧炉交叉检索。<br />',NULL,'2017-05-08 23:06:58',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (179,11,'1108 ','水暖管件','（一）消防栓110049，龙头防溅喷嘴110055，水管龙头110068，管道旋塞（塞子）110068，管道龙头（栓）110068，供暖装置110073，水供暖装置110076，中央供暖装置用散热器110083，中央供暖散热器用增湿器110084，水分配设备110096，管道（卫生设备部件）110103，卫生设备用水管110103，引水管道设备110104，喷水器110126，压力水箱110127，散热器（供暖）110198，龙头*110218，自来水龙头垫圈110219，水管用混水龙头110239，自来水设备的调节和安全附件110241，进水装置110276，中央供暖装置用膨胀水箱110313<br />※水塔C110023，暖气片C110024，地漏C110025，水暖装置用管子汽门C110038，水暖装置用管子水门C110039，水暖装置用管子水嘴C110040，水暖装置用管子三通C110041，水暖装置用管子四通C110042，水暖装置用管子接头C110043，水暖装置用管子箍C110044，水暖装置用管子补心C110045<br /><br />（二）自动浇水装置110001，装饰喷泉110175，滴灌喷射器（灌溉设备配件）110323，农业用排灌机110327<br />注：1.本类似群各部分之间商品不类似；<br />2.本类似群第（一）部分商品与0602的商品类似；<br />3.自来水设备的调节和安全附件与1107自来水或煤气设备和管道的调节附件，自来水或煤气设备和管道的保险附件类似，与第十版及以前版本供水或供煤气的设备和管道的调节附件，供水或供煤气的设备和管道的保险附件交叉检索；<br />4.管道（卫生设备部件），卫生设备用水管，引水管道设备与1109浴室用管子装置类似；<br />5.农业用排灌机与0701排水机类似以及第七版及以前版本0701农业用排灌机交叉检索。<br />',NULL,'2017-05-08 23:06:58',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (180,11,'1109 ','卫生设备（不包括盥洗室用具）','蒸气浴装置110017，澡盆110033，坐浴浴盆110035，便携式蒸汽浴室110036，浴室装置110039，淋浴热水器110038，沐浴用设备110037，浴室用管子装置110039，（洗下身用的）坐浴盆110046，可移动盥洗室110064，冲水槽110075，抽水马桶110105，沐浴器110121，盥洗池（卫生设备部件）110186，盥洗盆（卫生设备部件）110186，水箱液面控制阀110194，卫生器械和设备110221，卫生间用干手器110223，抽水马桶110235，马桶座圈110236，太阳能集热器110269，晒皮肤器械（日光浴床）110271，冲水装置110272，水冲洗设备110272，非医用熏蒸设备110278，矿泉浴盆（容器）110291，桑拿浴设备110297，淋浴隔间110298，洗涤槽110299，蒸脸器具（蒸汽浴）110300，小便池（卫生设施）110301，喷射旋涡设备110320，清洁室（卫生装置）110325，水按摩洗浴设备110334<br />※太阳能热水器C110027，冷热湿巾机C110036，冷热柔巾机C110037，太阳能收集器C110051，浴霸C110053，洗涤用热水器（煤气或电加热）C110057<br />注：1.非医用熏蒸设备，蒸脸器具（蒸汽浴）与1001医用熏蒸设备类似；<br />2.太阳能集热器，太阳能收集器与1104太阳灶以及1107太阳炉类似；<br />3.太阳能热水器，淋浴热水器，蒸汽浴装置，淋浴器，沐浴用设备，桑拿浴设备，蒸脸器具（蒸汽浴），洗涤用热水器（煤气或电加热）与第十版及以前版本1104煤气热水器，电热水器，第九版及以前版本热水器交叉检索；<br />4.浴室用管子装置与1108管道（卫生设备部件），卫生设备用水管，引水管道设备类似，与第九版及以前版本1108排水管道设备交叉检索；<br />5.跨类似群保护商品：水箱液面控制阀（1107第（一）部分，1109）。<br />',NULL,'2017-05-08 23:06:58',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (181,11,'1110 ','消毒和净化设备','（一）卫生间用消毒剂分配器110114，消毒设备110115，海水淡化装置110116，水净化装置110123，水过滤器110124，水消毒器110128，污水净化设备110135，饮用水过滤器110147，空气或水处理用电离设备110174，巴氏灭菌器110178，水净化设备和机器110206，消毒器110226，水软化设备和装置110243，非个人用除臭装置110275，油净化器110277，水族池过滤设备110307，游泳池用氯化装置110318，书籍消毒装置110339<br />※矿泉壶C110028，磁水器C110029，污水处理设备C110030，消毒碗柜C110031，饮水机C110032，化粪池C110052<br /><br />（二）便携式一次性消毒小袋110324<br />注：1.本类似群各部分之间商品不类似；<br />2.饮水机与1104电热水壶，电热水瓶，电开水器类似，与第十版及以前版本1104电热壶交叉检索；<br />3.跨类似群保护商品：空气或水处理用电离设备（1106第（一）部分，1110第（一）部分）。<br />',NULL,'2017-05-08 23:06:59',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (182,11,'1111 ','小型取暖器','暖足器（电或非电的）110087，电暖脚套110088，电暖器110137，炉子（取暖器具）110143，便携式取暖器110280，非医用电加热垫110296，热水袋110302，暖床器110304，非医用电热毯110305，长柄暖床炉110306，电热地毯110310<br />※怀炉C110033，电热窗帘C110034<br />注：1.非医用电加热垫，非医用电热毯与1003医用电热垫，医用电毯类似；<br />2.炉子（取暖器具）与第九版及以前版本1104炉子（取暖器具）交叉检索。<br />',NULL,'2017-05-08 23:06:59',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (183,11,'1112 ','不属别类的打火器具','点煤气用摩擦点火器110018，气体引燃器110019，打火机*110020<br />',NULL,'2017-05-08 23:06:59',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (184,11,'1113 ','核能反应设备','核燃料和核减速剂处理装置110193，燃料和核慢化剂处理装置110193，聚合反应设备110203，原子堆110253，核反应堆110253<br />',NULL,'2017-05-08 23:06:59',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (185,12,'1201 ','火车及其零部件','火车车箱连接器120002，火车车轮轮缘120033，铁路车辆轮缘120033，铁路车辆转向架120047，缆索铁道车辆120071，铁路车辆120072，铁路车辆缓冲器120078，电动运载工具120110，冷藏货车（铁路车辆）120129，卧铺车厢120136，机车120138，车厢（铁路）120140，铁路餐车120172，陆、空、水或铁路用机动运载工具120193，厢式餐车120220，餐饮车（厢式）120220，火车头烟囱120229，遥控运载工具（非玩具）120257<br />※火车车轮C120009，火车车轮毂C120010<br />注：1.跨类似群保护商品：厢式餐车（1201，1202）；餐饮车（厢式）（1201，1202）；卧铺车厢（1201;1202）；电动运载工具（1201，1202，1204第（一）部分，1205，1210）；陆、空、水或铁路用机动运载器（1201，1202，1204第（一）部分，1209，1210）；遥控运载工具（非玩具）（1201，1202，1205，1209，1210）；<br />2.本类似群商品与1211商品类似。<br />',NULL,'2017-05-08 23:07:00',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (186,12,'1202 ','汽车、电车、摩托车及其零部件（不包括轮胎）','叉车120001，起重车120001，洒水车120016，公共汽车120018，大客车120019，卡车120022，弹药车（车辆）120052，有篷的车辆120056，拖车（车辆）120057，消防水管车120066，高尔夫球车（车辆）120068，拖拉机120075，运货车120076，电动运载工具120110，厢式汽车120125，冷藏车120128，运输用军车120144，摩托车120147，摩托车挎斗120176，跑车120178，翻斗车120183，有轨电车120187，陆、空、水或铁路用机动运载工具120193，小汽车120199，汽车120199，混凝土搅拌车120213，厢式餐车120220，餐饮车（厢式）120220，救护车120233，野营车120249，房车120249，雪地机动车120256，遥控运载工具（非玩具）120257，装甲车120271，陆地车辆用发动机支架120272<br />※油槽车C120001，蓄电池搬运车C120002<br />陆地车辆连接器120003，防滑链120014，车辆用拖车连接装置120017，汽车引擎盖120023，汽车链120024，汽车底盘120025，车辆倒退警报器120026，货车翻斗120042，车辆引擎罩120054，车篷120055，陆地车辆曲柄轴箱（非引擎用）120058，陆地车辆传动齿轮120103，陆地车辆用电动机120109，陆地车辆用离合器120111，车轴120119，车轴颈120120，毂罩120124，轮毂箍120127，陆地车辆引擎120130，陆地车辆马达120130，卧铺车厢120136，陆地车辆传动马达120139，汽车两侧脚踏板120141，陆地车辆联动机件120142，陆地车辆动力装置120143，陆地车辆用喷气发动机120145，陆地车辆用飞轮120148，汽车上的滑雪板架120161，车轮辐条紧杆120169，后视镜120173，摩托车挎斗120176，陆地车辆涡轮机120192，倾卸装置（卡车和货车的部件）120201，汽车车身120207，汽车保险杠120209，汽车减震器120210，陆地车辆变速箱120217，车身120222，陆地车辆用驱动链120225，陆地车辆用传动链120226，陆地车辆用扭矩变换器120227，陆地车辆减速齿轮120235，陆地车辆用连杆（非马达和引擎部件）120242，可升降后挡板（陆地车辆部件）120243，可升降尾板（陆地车辆部件）120243，电动后挡板（陆地车辆部件）120243，车用遮阳挡120245，陆地车辆传动轴120246，气囊（汽车安全装置）120247，汽车刹车片120263，备胎罩120264，汽车用点烟器120266，摩托车撑脚架120097，摩托车车座120175，无人驾驶汽车（自动驾驶汽车）120279，踏板摩托车120280，汽车用烟灰缸120282，摩托车链条120283，摩托车车架120284，摩托车车把120285，摩托车引擎120286，摩托车用驮篮120287<br />※汽车车轮C120011，汽车车轮毂C120012，高压阻尼线（车辆专用）C120013，摩托车车轮C120014，摩托车车轮毂C120015，车辆防盗设备C120020<br />注：1.本类似群商品与1211商品类似；<br />2.摩托车，踏板摩托车与1204 机动自行车，电动自行车，机动三轮车，电动三轮车，助力车，滑板车（车辆），电动代步车（行动迟缓人使用）类似，与第十版及以前版本1204 踏板车（机动车辆）交叉检索；<br />3.车辆倒退警报器，车辆防盗设备与0920第一自然段商品类似；<br />4.本类似群与第九版及以前版本的1203交叉检索；<br />5.跨类似群保护商品：厢式餐车（1201；1202）；餐饮车（厢式）（1201，1202）；卧铺车厢（1201;1202）；电动运载工具（1201，1202，1204第（一）部分，1205，1210）；陆、空、水或铁路用机动运载器（1201，1202，1204第（一）部分，1209，1210）；遥控运载工具（非玩具）（1201，1202，1205，1209，1210）；<br />    6.汽车用点烟器与第九版及以前版本0924汽车用雪茄烟点火器交叉检索；<br />    7.摩托车车座与第十版及以前版本1204 自行车、脚踏车或摩托车车座交叉检索。<br />',NULL,'2017-05-08 23:07:00',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (187,12,'1203 ','摩托车其零部件（不包括轮胎）','<br />注：本类似群第十版时移入1202类似群。<br />',NULL,'2017-05-08 23:07:00',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (188,12,'1204 ','自行车、三轮车及其零部件（不包括轮胎）','（一）自行车120044，自行车用方向指示器120045，自行车撑脚架120046，挡泥板120049，自行车链条120061，自行车车把120080，自行车传动齿轮120085，自行车车闸120086，自行车挡泥板120087，自行车轮圈120088，自行车曲柄120089，自行车马达120090，自行车车毂120091，自行车踏板120092，自行车辐条120094，自行车车轮120095，自行车车座120096，自行车用语音提醒装置120098，电动运载工具120110，自行车用护衣装置120122，送货用三轮脚踏车120162，三轮脚踏车120191，陆、空、水或铁路用机动运载工具120193，机动自行车120196，自行车车架120221，自行车或摩托车座套120232，自行车辆用驮篮120254，滑板车（车辆）1202584，自行车专用马鞍包120268,自行车车铃120269，自行车车筐120248，电动代步车（行动迟缓人使用）120281<br />※电动自行车C120016、机动三轮车C120017、电动三轮车C120018、助力车C120019<br /><br />（二）自行车打气筒120093，自行车轮胎用充气泵120093<br />注：1.本类似群各部分之间商品不类似；<br />2.本类似群第（一）部分商品与1211商品类似；<br />3.本类似群第（二）部分商品与0808手动打气筒类似；<br />4.机动自行车，电动自行车，机动三轮车，电动三轮车，助力车，滑板车（车辆），电动代步车（行动迟缓人使用）与1202 摩托车，踏板摩托车类似，与第九版及以前版本1203 摩托车交叉检索；<br />5.脚踏车马达与第八版及以前版本的0748自行车电机交叉检索；<br />6.跨类似群保护商品：电动运载工具（1201，1202，1204第（一）部分，1205，1210）；陆、空、水或铁路用机动运载器（1201，1202，1204第（一）部分，1209，1210）。<br />',NULL,'2017-05-08 23:07:00',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (189,12,'1205 ','缆车，架空运输设备','架空运输设备120004，缆绳运输车辆120051，浇铸用车120067，铁水包用车120067，电动运载工具120110，运送滑雪者上山的滑雪缆车120170，吊椅缆车120180，绳缆运输装置和设备120188，轨道缆车120189，缆车120190，高架缆车120190，遥控运载工具（非玩具）120257<br />注：1.本类似群商品与1211商品类似；<br />2.跨类似群保护商品：电动运载工具（1201，1202，1204第（一）部分，1205，1210）；遥控运载工具（非玩具）（1201，1202，1205，1209，1210）。<br />',NULL,'2017-05-08 23:07:00',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (190,12,'1206 ','轮椅，手推车，儿童推车','采矿用手推车车轮120043，运行李推车120050，窄底手推车120050，两轮手推车120050，轮椅120062，搬运手推车120065，手摇车120106，手推车*120106，婴儿车120163，婴儿车车罩120164，婴儿车车篷120165，独轮手推小车120218，推车（运载工具）用小脚轮120250，清洁用手推车120251，购物用手推车120255，倾卸式斗车120265，婴儿车专用蚊帐120277，平卧式婴儿车120289<br />※折叠行李车C120004<br />注：1.手推车与2001手推车（家具）类似，与第九版及以前版本的2001送茶手推车交叉检索；<br />2.婴儿车，折叠式婴儿车，轻便婴儿车与2001婴儿学步车类似；<br />3.本类似群商品与1211商品类似。<br />',NULL,'2017-05-08 23:07:00',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (191,12,'1207 ','畜力车辆','公共马车120152，雪橇（运载工具）120186，马车120219，反冲式雪橇120253<br />注：本类似群商品与1211商品类似。<br />',NULL,'2017-05-08 23:07:00',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (192,12,'1208 ','轮胎及轮胎修理工具','（一）充气轮胎的内胎120007，运载工具用轮胎120031，自行车车胎120084，充气外胎（轮胎）120114，轮胎防滑钉120155，翻新轮胎用胎面120156，充气轮胎120157，运载工具用实心轮胎120288，补内胎用粘胶补片120194，汽车轮胎120206，自行车内胎120214，自行车用无内胎轮胎120234<br />※飞机轮胎C120005<br /><br />（二）补内胎用全套工具120008<br />注：本类似群各部分之间商品不类似。<br />',NULL,'2017-05-08 23:07:00',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (193,12,'1209 ','空用运载工具（不包括飞机轮胎）','空中运载工具120005，热气球120006，水陆两用飞机120012，飞机120027，飞船120030，飞艇120030，降落伞120113，空间运载工具120117，水上飞机120134，水上滑行艇120135，航空器120184，陆、空、水或铁路用机动运载工具120193，航空装置、机器和设备120203，飞机的弹射座椅120223，遥控运载工具（非玩具）120257，军用无人机120273，民用无人机120275<br />※登机用引桥C120006<br />注：1.降落伞与2807滑翔伞类似；<br />2.跨类似群保护商品：陆、空、水或铁路用机动运载器（1201，1202，1204第（一）部分，1209，1210）；遥控运载工具（非玩具）（1201，1202，1205，1209，1210）；<br />3.本类似群商品与1211商品类似。<br />',NULL,'2017-05-08 23:07:01',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (194,12,'1210 ','水用运载工具','船120021，渡船120028，船体120035，船壳120035，船钩头篙120036，船舶操舵装置120037，船舶转向装置120037，船只分离装置120038，船舶下水台120039，船用螺旋桨120040，桨120041，船只吊杆120048，驳船120063，汽艇120064，舵120070，船舶烟囱120073，船的木龙骨120082，挖泥船120105，电动运载工具120110，船桅120118，双桨艇用桨120131，船尾橹120131，舷窗120133，水上运载工具120149，轮船120150，轮船用螺旋桨（推进器）120151，独木舟桨120153，趸船120159，螺旋桨120166，系索耳（航海）120179，桨架120182，陆、空、水或铁路用机动运载工具120193，游艇120202，气垫船120237，船舶护舷垫120252，遥控运载工具（非玩具）120257，船用桅杆120259，独木舟120274<br />※浮桥（橡胶制）C120008<br />注：1.跨类似群保护商品：电动运载工具（1201；1202；1204第（一）部分；1205；1210）；陆、空、水或铁路用机动运载器（1201，1202，1204第（一）部分，1209，1210）；遥控运载工具（非玩具）（1201，1202，1205，1209，1210）；<br />2.本类似群商品与1211商品类似。<br />',NULL,'2017-05-08 23:07:01',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (195,12,'1211 ','运载工具零部件','气泵（运载工具附件）120009，运载工具用悬置减震器120010，运载工具用减震弹簧120011，运载工具轮胎用防滑装置120013，运载工具座椅头靠120015，运载工具用行李架120029，运载工具轮胎气门嘴120032，运载工具用扭力杆120034，运载工具用轮子120053，运载工具座椅用安全带120059，运载工具用轮毂120060，运载工具底盘120069，运载工具用履带（滚动带）120074，运载工具用履带（拖拉机型）120074，运载工具缓冲器120077，运载工具用液压回路120079，运载工具用卧铺120081，儿童安全座（运载工具用）120112，运载工具轮平衡器120116，风挡刮水器120121，挡风玻璃刮水器120121，运载工具用行李网120123，运载工具用刹车120126，运载工具座椅套120132，挡风玻璃120154，风挡120154，运载工具用门120160，运载工具用轮辐120168，运载工具用悬挂弹簧120171，运载工具用轮圈120174，运载工具用座椅120177，运载工具底架120185，运载工具内装饰品120195，运载工具用窗户120198，运载工具防盗设备120200，运载工具防眩光装置*120204，运载工具遮光装置*120204，运载工具防盗报警器120211，运载工具用喇叭120212，运载工具用刹车垫120215，运载工具用制动蹄120216，运载工具用盖罩（成形）120224，运载工具转向信号装置120228，运载工具用方向盘120230，运载工具用刹车扇形片120236，运载工具用油箱盖120241，运载工具座椅用安全束带120244，运载工具方向盘罩120260，运载工具用扰流板120261，前灯刮水器120262，运载工具用刹车盘120267，运载工具用侧后视镜120276，运载工具用操纵杆120278<br />注：1.本类似群商品与1201，1202，1203，1204第（一）部分，1205，1206，1207，1209，1210商品类似；<br />2.运载工具防盗设备，运载工具防盗报警器与0920第一自然段商品类似；<br />3.运载工具防眩光装置，运载工具遮光装置，运载工具转向信号装置与1101第（二）部分商品类似。<br />',NULL,'2017-05-08 23:07:01',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (196,13,'1301 ','火器，军火及子弹','炮架130002，机动武器130007，催泪武器130008，火器130009，火器清洁刷130010，大炮130014，弹道导弹130015，弹道武器130015，装子弹带装置130016，弹壳130019，加农炮130020，枪管130021，步枪枪管130021，卡宾枪130022，步枪130022，子弹130023，装弹装置130024，子弹袋130025，猎枪、体育用火器130026，弹药130027，枪撞针130028，步枪撞针130028，角状火药容器130029，火器后膛130031，枪盒130033，步枪盒130033，信号火箭130035，枪（武器）130036，枪托130037，枪瞄准镜130038，枪和步枪用瞄准镜130038，步枪瞄准镜130038，步枪扳击保险130040，枪和步枪用扳击保险130040，打猎铅弹130041，火器弹药130042，火箭发射装置130043，机枪130046，追击炮（火器）130047，炮弹130048，手枪（武器）130049，导弹（武器）130052，左轮手枪130055，重武器炮耳130056，发射平台130057，除瞄准望远镜外的火器用瞄准器130058，汽枪（武器）130059，武器肩带130063，除瞄准望远镜外的武器用瞄准器130065，火箭（自动推进武器）130068，捕鲸炮（武器）130069，枪支用消声器130070，坦克车（武器）130071，弹药带130074，自动武器用弹药带130075，鱼雷130076，随身武器（火器）130077，手榴弹130078，信号枪130079<br />※炮衣C130001，防暴捕网器C130007，捕捉网发射器C130008<br />',NULL,'2017-05-08 23:07:01',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (197,13,'1302 ','爆炸物','乙酰硝化棉130001，爆炸弹药筒130003，硝酸铵炸药130005，雷管130006，起爆栓130018，火药棉130030，甘油炸药130032，炸药130034，地雷用炸药导火线130044，地雷（爆炸物）130045，火药130050，爆炸火药130051，自燃性引火物130053，炸药导火线130060，起爆药（导火线）130061，炸药用引爆信管130062，炸药点火拉绳130062，非玩具用火帽130066<br />※作炸药用木粉C130002，射钉弹C130003，发令纸C130004<br />',NULL,'2017-05-08 23:07:01',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (198,13,'1303 ','烟火，爆竹','焰火130013，信号烟火130017，烟火产品130054，爆炸性烟雾信号130064，鞭炮130072<br />※爆竹C130005，烟花C130006<br />',NULL,'2017-05-08 23:07:01',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (199,13,'1304 ','个人防护用喷雾','个人防护用喷雾130073<br />',NULL,'2017-05-08 23:07:01',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (200,14,'1401 ','贵重金属及其合金','贵重金属锭140003，铱140045，未加工或半加工贵重金属140055，未加工的金或金箔140063，锇140066，钯140067，铂（金属）140075，铑140083，钌140085，贵重金属合金140104，未加工、未打造的银140163<br />',NULL,'2017-05-08 23:07:02',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (201,14,'1402 ','贵重金属盒','贵重金属盒140113，首饰盒140166，首饰配件140169，首饰用礼品盒140173<br />注：首饰盒与第八版及以前版本2006非贵重金属首饰盒交叉检索。<br />',NULL,'2017-05-08 23:07:02',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (202,14,'1403 ','珠宝，首饰，宝石及贵重金属制纪念品','玛瑙140001，黄琥珀色宝石140004，人造琥珀制珍珠（压制的琥珀）140005，护身符（首饰）140006，细银丝（银线）140008，银线（首饰）140009，手镯（首饰）140015，小饰物（首饰）140018，胸针（首饰）140019，链（首饰）140024，项链（首饰）140031，领带夹140033，硬币140034，金刚石140035，贵重金属丝线（首饰）140040，象牙（首饰）140046，黑色大理石饰品140047，未加工或半加工墨玉140048，铜纪念币140049，珠宝首饰140050，盒式项链坠140051，奖章140052，橄榄石（宝石）140062，贵橄榄石140062,金线（首饰）140064，装饰品（首饰）140068，贵重金属饰针140069，珍珠（珠宝）140070，次宝石140073，宝石140074，尖晶石（宝石）140095，贵重金属塑像140096，人造珠宝140097，戒指（首饰）140107，贵重金属艺术品140109，帽饰品（贵重金属）140117，帽子装饰品（贵重金属）140117，耳环140118，鞋饰品（贵重金属）140119，衬衫袖口链扣140122，贵重金属半身雕像140123，贵重金属小雕像140146，贵重金属小塑像140146，别针（首饰）140150，领带别针140151，贵重金属徽章140152，钥匙圈（小饰物或短链饰物）140162，景泰蓝首饰140165，制首饰用珠子140167，首饰用扣钩140168，首饰包140170，钥匙链（小饰物或短链饰物）140162，制首饰用弧面宝石140171，贵重金属制钥匙圈140172<br />※金红石（宝石）C140001，人造金刚石C140002，翡翠C140003，激光宝石C140005<br />※玉雕艺术品C140004，银制工艺品C140006，玉雕首饰C140007，角、骨、牙、介首饰及艺术品C140008，磁疗首饰C140009，景泰蓝工艺品C140010<br />注：本类似群与第八版及以前版本1402仿金制品，镀金物品交叉检索。<br />',NULL,'2017-05-08 23:07:02',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (203,14,'1404 ','钟，表，计时器及其零部件','钟针140002，钟140011，摆（钟表制造）140013，发条匣（钟表制造）140014，手表140016，手表带140017，表带140017，钟表盘（钟表制造）140021，日晷140022，钟表发条装置140023，表链140025，计时器（手表）140027，精密计时器140028，瞬时计140029，计时仪器140030，电子钟表140032，原子钟140042，主时钟140043，钟外壳140044，表140057，表发条140058，表蒙140059，表玻璃140059，钟表机芯140060，闹钟140082，簧片（钟表制造）140106，表壳140144，表用礼品盒140145，秒表140164，表针140174<br />※语言报时钟C140011，电子万年台历C140012，表袋（套）C140013<br />',NULL,'2017-05-08 23:07:02',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (204,15,'1501 ','乐器','手风琴150001，簧（管）乐器150003，钢琴150008，小六角手风琴150011，手摇风琴150012，低音提琴（乐器）150013，口琴150014，大号（号）150016，钟琴（乐器）150017，响板150018，小铃帽（乐器）150019，齐特拉琴150022，单簧管150023，乐器150025，六角手风琴150026，低音提琴150027，弦乐器150029，号（乐器）150030，短号（乐器）150031，铙钹150032，笛150036，锣150037，单簧口琴（乐器）150038，吉它150039，簧风琴150040，竖琴150041，双簧管150043，电子乐器150044，七弦琴150046，曼陀林150049，风笛150051，三角铁（乐器）150055，奥卡利那笛150056，风琴150057，管风琴150058，鼓（乐器）150066，铃鼓150067，印度手鼓150068，定音鼓150069，长号150070，号角150071，喇叭150072，中提琴150074，小提琴150075，木琴150076，胡琴150081，竹笛150082，琵琶150083，笙150084，唢呐150085，手摇铃（乐器）150086，音乐合成器150087，萨克斯管150089，巴拉莱卡琴（弦乐器）150090，班卓琴150091<br />※电子琴C150001，弹拨乐器C150002，打击乐器C150003，筝C150005，箫C150009，木鱼C150011<br />',NULL,'2017-05-08 23:07:02',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (205,15,'1502 ','乐器辅助用品及配件','校音扳头150002，乐器琴弓150004，乐器琴弓螺帽150005，弦乐器用弓柄150006，弓用马毛（乐器用）150007，指挥棒150009，鼓槌150010，乐器用肠线150015，定音鼓架150020，乐器弦轴150021，乐器键盘150024，乐器弦150028，音叉150033，吹奏乐器的管口150034，乐器盒150035，竖琴弦150042，机械钢琴用音量调节器150045，拨弦片150048，小提琴腮托150050，音乐盒150052，活页乐谱翻页器150053，琴码150054，鼓面150059，鼓皮150059，乐器用踏板150060，钢琴键盘150061，钢琴弦150062，钢琴键150063，乐器风管150064，乐器用弱音器150065，乐器栓塞150073，乐器音键150077，乐谱纸卷（钢琴）150078，穿孔乐谱纸卷150079，乐谱架150080，乐器架150088<br />※校音器（定音器）C150012，笛膜C150013<br />',NULL,'2017-05-08 23:07:02',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (206,16,'1601 ','工业用纸','纸*160006，型纸160191，羊皮纸160210，纸带160244，木浆纸160279<br />※砂管纸C160001，塑料贴面底层纸C160002，纸粕辊纸（包括羊毛纸、石棉纸、棉料纸）C160003，印刷纸（包括胶版纸、新闻纸、书刊用纸、证券纸、凹版纸、凸版纸）C160004，精布轮纸C160005，膏药纸C160006，制版纸C160007，铜版纸C160008，钢纸原纸C160009，油毡原纸C160010，植绒纸C160011<br />注：纸与1602，1603，1604，1605，1609第一、二自然段类似。<br />',NULL,'2017-05-08 23:07:03',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (207,16,'1602 ','技术用纸（不包括绝缘纸）','描图纸160062，描图布160063，复写纸160066，记录机用纸160067，心电图纸160140，滤纸160156，过滤材料（纸）160157，蜡纸（文具）160161，发光纸160190，速印机用墨纸160199，录制计算机程序用纸带和卡片160231，无线电报纸160233，文件复制机用墨纸160241，复印纸（文具）160332，蜡纸160339，宣纸（用于中国绘画和书法）160347<br />※唱片芯纸C160012，扬声器纸C160013，石蜡纸C160014，黑照相卡纸C160015，蜡光纸C160016，胶卷感光防护纸C160017，不透光纸C160018，电传用纸C160019，红外线光谱分析纸C160020，地图纸C160021，海图纸C160022，镜头纸C160023，防腐纸C160024，制图纸C160025，裱纸C160026，有光纸C160027，绘画用纸C160028，打字蜡纸C160030，防锈纸C160031，传真纸C160114，热敏纸C160116<br />注：1.本类似群与1601纸类似；<br />2.复印纸（文具），电传用纸，传真纸，热敏纸与第十版及以前版本0107 传真纸，热\r\n敏纸交叉检索；<br />3.复印纸（文具），复写纸与1605纸张（文具），写字纸类似；<br />4.宣纸（用于中国绘画和书法）与绘画用纸，裱纸类似，与其他技术用纸不类似。<br />',NULL,'2017-05-08 23:07:03',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (208,16,'1603 ','生活用纸','啤酒杯垫160037，卫生纸160094，纸制餐桌用布160186，纸手帕160198，纸桌布160200，纸制花盆套160229，纸制杯盘垫160254，纸围涎160276，纸制杯垫160283，卸妆用薄纸160294，纸餐巾160295，纸制餐具垫160296，纸巾160306，纸制洗脸巾160307，抽屉用衬纸（有或没有香味）160344，纸蝴蝶结160351<br />※彩色皱纹纸C160032，木纹纸C160033，纸制抹布C160034<br />注：1.本类似群与1601纸类似；<br />2.卫生纸，纸手帕，卸妆用薄纸，纸餐巾，纸巾，纸制洗脸巾，纸制抹布与0506卫生棉条，卫生垫，卫生巾，浸药液的薄纸，消毒纸巾类似，与第九版及以前版本0506月经垫，浸药液的卫生纸交叉检索。<br />3.卫生纸，纸手帕，卸妆用薄纸，纸餐巾，纸巾，纸制洗脸巾与0306浸化妆水的薄纸类似，与第九版及以前版本0306浸化妆品的卫生纸，浸化妆品的薄纸交叉检索；<br />4.啤酒杯垫，纸制杯盘垫，纸制杯垫与2101纸盘，家用纸托盘类似。<br />',NULL,'2017-05-08 23:07:03',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (209,16,'1604 ','纸板','纸或纸板制广告牌160008，卡纸板*160075，缝纫用型板160212，纸或纸板制告示牌160305，纸或纸板制标志牌160327<br />※白纸板C160035，箱纸板C160036，牛皮纸板C160037，提花纸板C160038，过滤纸板C160039，滤芯纸板C160040，防水纸板C160041，雷达纸板C160042，瓦楞原纸（纸板）C160043，盲人书籍纸C160044<br />注：本类似群与1601纸类似。<br />',NULL,'2017-05-08 23:07:03',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (210,16,'1605 ','办公、日用纸制品','（一）影集160013，剪贴集160013，票160038，绘画便笺簿160041，便笺本160042,小册子160046，绣花图案（纸样）160047，书写本160058，描图图样160061，笔记本160068，卡片*160070，图表160070，索引卡片（文具）160072，纸张（文具）160074，提花机穿孔卡160077，目录册160080，索引卡标签条160081，函件格160101，印刷图表160121，图表160126，信封（文具）160127，纹章牌（纸封签）160137，分类帐本160153，索引卡片160154，表格（印制好的）160158，复制图160167，明信片160174，印刷品160175，手册160180，写字纸160182，小册子（手册）160189，复写本（文具）160192，封条160206，蓝图160223，平面图160223，书签160249，贺卡160250，日历（年历）160269，日历160270，通知卡片（文具）160284，旗（纸制）160286，临摹用字帖160303，非纺织品标签160308，音乐贺卡160336，非游戏用集换式卡片160354，传单160360，贴纸（文具）160328，优惠券（印刷品）160369<br />※不干胶纸C160097，稿纸C160045，口取纸C160046，名片C160048，请贴C160049，证书C160050，练习本C160051<br /><br />（二）雪茄烟用套环160016，硬纸管160078，纸制小雕像160155<br />※纸制声管C160047<br />注：1.本类似群各部分之间商品不类似，但皮制行李标签与非纺织品标签类似；<br />2.本类似群除皮制行李标签外，其他商品与1601纸类似；<br />3.本类似群第（一）部分与1611家具除外的办公必需品，文具，学校用品（文具），1614书写材料类似；<br />4.日历，日历（年历）与1606印刷出版物类似；<br />5.纸张（文具），写字纸与1602复印纸（文具），复写纸类似；<br />6.印刷品与1606，1607第一、二自然段类似；<br />    7.不干胶纸与第十版及以前版本1615 不干胶纸交叉检索。<br />',NULL,'2017-05-08 23:07:03',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (211,16,'1606 ','印刷出版物','（一）海报160007，地图册160034，歌曲集160082，书籍160095，地图160164，印刷时刻表160172，印刷出版物160179，说明书160232，连环漫画书160331<br />※带有电子发声装置的儿童图书C160011<br /><br />（二）报纸160032，期刊160033，杂志（期刊）160243，新闻刊物160337<br />注：1.本类似群第（二）部分商品与第（一）部分印刷出版物类似，与其他商品不类似；<br />2.本类似群与1605印刷品类似；<br />3.印刷出版物与1605日历，日历（年历），1607第一、二自然段类似；与第九版及以前版本撕页日历交叉检索；<br />4.带有电子发声装置的儿童图书与0908学习机，电子教学学习机，带有图书的电子发声装置类似。<br />',NULL,'2017-05-08 23:07:03',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (212,16,'1607 ','照片，图片，图画','图画160014，水彩画160020，雕刻印刷品160028，平版印刷工艺品160029，镶框或未镶框的绘画160030，彩色石印画片160090，印花用图画160119，蚀刻（版画）160129，书画刻印作品160168，石印品160187，石印油画160204，肖像160228<br />※年画C160053，宣传画C160054，油画C160055，剪纸C160056<br />邮票160260<br />照片（印制的）160147，镶嵌照片用装置160219，照相架160220，照像板160221<br />※照相角C160057<br />注：本类似群第一、二自然段与1605印刷品，1606印刷出版物类似。<br />',NULL,'2017-05-08 23:07:03',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (213,16,'1608 ','纸牌，扑克牌','<br />注：本类似群第八版时移入2803类似群。<br />',NULL,'2017-05-08 23:07:03',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (214,16,'1609 ','纸及不属别类的塑料包装物品','锡纸160025，纸板制帽盒160076，锥形纸袋160102，纸制奶油容器160115，包装纸160130，模绘板盒160214，包装用纸袋或塑料袋（信封、小袋）160246，纸板盒或纸盒160280，纸板或纸制瓶封套160282，包装用再生纤维素纸160288，纸制或塑料制垃圾袋160292，瓶用纸板或纸制包装物160304，包装用粘胶纤维纸160310，微波烹饪袋160323，咖啡过滤纸160324，淀粉制包装材料160338，纸制或塑料制食品包装用吸收纸160355，纸制或塑料制食品包装用湿度调节纸160356，纸或纸板制（填充或衬垫用）包装材料160365，纸或纸板制填充材料160366<br />※仿羊皮纸（防油纸）C160059，糖果包装纸C160060，牛皮纸C160061，水泥袋C160062，纸箱C160063<br />包装用塑料膜160218，包装用塑料气泡膜160285，垫货盘用可伸展塑料膜160325<br />※保鲜膜C160064<br />注：本类似群第一、二自然段与1601纸类似。<br />',NULL,'2017-05-08 23:07:03',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (215,16,'1610 ','办公装订、切削用具','订书钉160010，手压订书机（办公用品）160012，削铅笔机（电或非电）160017，办公室用封口机160056，办公室用打孔器160093，打孔器（办公用品）160141,办公室用信封封口机160146，书籍装订用织物160150，装订带（装订书用）160205，书籍装订材料160236，书籍装订细绳160239，装订线160239，办公用碎纸机160287，切纸机（办公用品）160291，切纸刀（办公用品）160291，裁纸刀（办公用品）160291，削铅笔器（电或非电）160293，书籍装订装置和机器（办公设备）160330，办公室用文件层压机160346，书籍装订用封皮160237，书籍装订用布160238<br />※订书机C160065，订书针C160066，卷笔刀C160067，铅笔刀C160068，办公用打孔、切纸两用机C160070，开信封机C160071，起钉器（办公用品）C160111<br />注：本类似群与1611家具除外的办公必需品，文具，学校用品（文具）类似。<br />',NULL,'2017-05-08 23:07:03',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (216,16,'1611 ','办公文具（不包括笔，墨，印，胶水）','办公用夹160010，书挡160018，文件夹（文具）160022，书写用石板160023，活页夹160035,固定书写工具用腕带160045，图钉160048，润湿器（办公用品）160049，封蜡160055，分钱、数钱用托盘160059，护指套（办公用品）160064，文件夹160085，公文套160085，文件夹（办公用品）160092，印记清除器160364，涂改液（办公用品）160103，修改墨（日光胶版术）160104，封面（文具）160108，文件套（文具）160108，纸夹子160116，擦涂用品160135，擦涂挡板160138，橡皮擦160139，钢笔擦净器160148，家具除外的办公必需品160159，办公室用刮子（擦除器）160169，胶面增湿器（办公用品）160173，压纸器160183，夹纸曲别针160202，文具160209，夹子（文具）160224，学校用品（文具）160248，办公桌用书写垫160255，透明软片（文具）160262，办公用橡皮筋160275，木浆板（文具）160278，笔架160281，文具柜（办公用品）160289，文具盒（文具）160300，文具盒（全套）160302，支票簿夹160333，护照夹160340，书写板用涂擦器160348，带夹纸装置的书写板160349，非电的地图指示器160350，夹钱用夹子160353，修正带（办公用品）160357，文件托架（文具）160361,书夹160362<br />※转盘笔挂C160072，大头针（文具）C160073，回形针C160074，学生读书矫正仪C160076，护视力阅览架C160077，木制参观卡片C160078<br />注：1.家具除外的办公必需品，文具，学校用品（文具）与1605第（一）部分，1610，1612，1613，1614，1615，1616商品类似，家具除外的办公必需品也与1618商品类似；<br />2.文件夹，文件夹（文具），文件夹（办公用品）与第八版及以前版本1802文件夹（皮革制）交叉检索；<br />3.支票簿夹，护照夹与1802支票夹（皮革制），护照夹（皮革制）类似；<br />4.夹钱用夹子与第八版及以前版本0611普通金属制钱夹类似；<br />5.文具盒（文具），文具盒（全套）与第九版及以前版本1614笔盒交叉检索；<br />6.封面（文具）与第十版及以前版本1609书籍封皮交叉检索。<br />',NULL,'2017-05-08 23:07:04',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (217,16,'1612 ','墨，砚','吸墨用具160051，墨汁160089，墨水*160142，墨水池160144，墨水台160301，块墨160334，砚台160335<br />※墨锭C160079<br />注：1.本类似群与1614书写材料类似；<br />2.本类似群与1611家具除外的办公必需品，文具，学校用品（文具）类似。<br />',NULL,'2017-05-08 23:07:04',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (218,16,'1613 ','印章，印油','地址印章160004，印章（印）160052，封口印章160053，印台（油墨印台）160054，封印（印章）160149，手印器具160176，编号机160203，印台160247，图章（印）盒160259，印章架160261，图章（印）托架160258<br />※印油（打印油）C160081，朱印油C160082，印台水C160083，印泥C160084，号码机C160085<br />注：本类似群与1611家具除外的办公必需品，文具，学校用品（文具）类似。<br />',NULL,'2017-05-08 23:07:04',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (219,16,'1614 ','笔','钢笔160002，笔夹160011，铅笔160031，画家用刷（画笔）160050，铅笔芯160105，铅笔套160113，自动铅笔160114，笔尖160131，钢笔盒160133，金制笔尖160134，书写材料160136，炭笔160160，绘画笔160185，自来水笔160225，钢笔（办公用品）160242，圆珠笔滚珠160253，画笔160273，笔杆160299，毛笔160342，书写工具160343，记号笔（文具）160359<br />※活动铅笔C160086，蜡笔C160087，蘸水钢笔C160088，圆珠笔油墨C160089，排笔（文具）C160090，曲线笔C160091，笔套C160092，笔杆C160093，油画棒C160094，素描木炭条C160095，白板笔C160096<br />注：1.本类似群与1611家具除外的办公必需品，文具，学校用品（文具）类似；<br />2.书写材料与1605第（一）部分、1612商品类似；<br />3.排笔（文具）与2107排笔刷类似。<br />',NULL,'2017-05-08 23:07:04',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (220,16,'1615 ','办公或家庭用胶带或粘合剂','胶带分配器（办公用品）160003，文具用胶带160036，文具用密封化合物160057，文具或家用谷朊胶160264，文具或家用粘合剂（胶水）160265，文具或家用胶条160266，文具或家用胶带160267，办公或家用淀粉浆糊（胶粘剂）160271，文具及家用自粘胶带160274，文具或家用胶160290，文具或家用浆糊160290，文具用或家用树胶（粘合剂）160311，文具胶布160312，文具或家用鱼胶160313<br />注：本类似群与 1611 家具除外的办公必需品，文具，学校用品（文具）类似，与第十版 及以前版本 1611 粘贴物（文具）交叉检索。<br />',NULL,'2017-05-08 23:07:04',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (221,16,'1616 ','办公室用绘图仪器，绘画仪器','直角尺160069，绘图用圆规160096，曲线板160107，绘画仪器160125，画图用描图针160184，比例绘图仪（绘图器械）160208，制图尺160234，绘图用直角尺160297，绘图用丁字尺160298<br />※比例尺C160098<br />注：1.本类似群与1611家具除外的办公必需品，文具，学校用品（文具）类似；<br />2.本类似群与0905规尺（量具），圆规（测量仪器），量具，尺（量器），刻度尺类似。<br />',NULL,'2017-05-08 23:07:04',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (222,16,'1617 ','绘画用具（不包括绘图仪器，笔）','画家用靠手架160019，画家用画架160087，绘木纹用梳具160122，绘画板160123，绘画材料160124，绘画支架160151，艺术家用水彩颜料碟160166，画家用调色板160207，房屋油漆用辊子160215，油画布160216，颜料盒（学校用品）160217，画蔓叶花饰器具160263，蚀刻针160309，颜料盘160358<br />※画箱C160099，绘画膜C160100<br />',NULL,'2017-05-08 23:07:04',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (223,16,'1618 ','打字机、誊写机、油印机及其附件（包括印刷铅字、印版）','姓名地址印写机160005，办公用邮资盖印机160009，办公用邮资计费器160009，速印机160128，电动或非电动打字机160132，色带160143，便携式印刷成套工具（办公用品）160178，油印器械及机器160230，打字机键160257，电脑打印机用色带160326，非电的信用卡盖印机160345<br />钢字160001，印模（雕板）160015，凸印版160040，色带卷轴160043，印刷铅字160065，排字架（印刷）160084，数字（打字用铅字）160088，铅字（打字）160097，铅字（数字和字母）160097，排字盘160098，版印刷用白垩160110，打字机辊160118，活字盘架（印刷用）160162，电铸版160163，雕刻板160170，胶版160171，非纺织品制印刷机垫160177，石印石160188，镂花模板160226，蜡纸模板160227，铅字排版嵌条160235，打字机带160245，姓名地址印写机用印板160268<br />※胶滚卡盘C160101，家用油墨辊C160112<br />注：1.本类似群与1611家具除外的办公必需品类似；<br />2.凸印版，胶版，电铸版与0705印刷版类似；<br />3.办公用邮资盖印机，办公用邮资计费器与第九版及以前版本0902邮件打戳器交叉检索。<br />',NULL,'2017-05-08 23:07:04',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (224,16,'1619 ','教学用具（不包括教学实验用仪器）','（一）石笔160024，算术表160027，计算表160027，显微镜用生物样本（教学材料）160039，教学材料（仪器除外）160071，教学用组织剖面图160106，粉笔160109，粉笔盒160112，地球仪160165，做标记用粉笔160193，黑板160201，彩色粉笔（蜡笔）160211，喷雾粉笔 160368<br />※黑板擦C160104，教学用模型标本C160105，数学教具C160106，磁性写字板C160107，教学挂图C160108，电动吸尘擦C160109，教学教鞭C160110<br /><br />（二）裁缝用粉块160111，裁缝用划线块160251<br />注：本类似群各部分之间商品不类似，但第（二）部分商品与第（一）部分粉笔，做标记用粉笔，彩色粉笔（蜡笔）类似，与第八版及以前版本印记用粉笔交叉检索。<br />',NULL,'2017-05-08 23:07:04',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (225,16,'1620 ','室内模型物（不包括教学用模型标本）','建筑模型160021，模型用黏土160026，非牙科用模型蜡160091，制模型用塑料160195，模型材料160196，模型用湿粘土160197，雕塑黏土用模具（艺术家用原材料）160352，模型用聚合物制黏土160363<br />注：模型用聚合物制黏土与第十版及以前版本2802橡皮泥交叉检索。<br />',NULL,'2017-05-08 23:07:04',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (226,16,'1621 ','单一商品','念珠160083<br />',NULL,'2017-05-08 23:07:05',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (227,17,'1701 ','不属别类的橡胶，古塔胶，树胶','巴拉塔树胶170010，生橡胶或半成品橡胶170017，未加工或半加工树胶170117，合成橡胶170020，古塔胶170050，乳胶（天然胶）170064，液态橡胶170113，橡胶水170114<br />※再生胶C170001，固体古马隆C170002<br />注：1.液态橡胶，橡胶水与0115商品类似；<br />2.跨类似群保护商品：生橡胶或半成品橡胶（1701，1703第（一）部分）。<br />',NULL,'2017-05-08 23:07:06',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (228,17,'1702 ','非金属密封减震制品','橡皮圈170004，密封环170009，防水圈170009，瓶用橡胶密封物170012，挡风条170013，挡风雨条170013，挡风雨条材料170015，橡皮塞子170018，橡胶制瓣阀170019，橡胶制减震缓冲器170021，管道垫圈170030，管道接头垫圈170030，离合器垫170039，填缝材料170040，补漏用化学合成物170042，垫片（密封垫）170043，填充垫圈170043，密封物170043，部分加工的刹车衬垫材料170048，封泥170066，非金属制管套筒170067，非金属制管套170067，保护机器部件用橡胶套170068，接头用密封物170069，橡胶或硬纤维垫圈170076，非文具用、非医用、非家用胶带170085，压缩空气管道用非金属附件170086，管道用非金属加固材料170089，非文具、非医用、非家用自粘胶带170092，橡皮挡块170093，密封管道用胶带 170118，橡胶制门挡 170119，橡胶制窗挡 170120<br />※高压锅圈C170004，胶衬C170005，胶套C170006，胶壳C170007，石棉油盘根C170008<br />注：补漏用化学合成物与0115商品类似。<br />',NULL,'2017-05-08 23:07:06',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (229,17,'1703 ','橡胶，树脂，纤维制品','（一）半加工醋酸纤维素170001，丙烯酸树脂（半成品）170002，生橡胶或半成品橡胶170017，橡胶绳170031，硬橡胶170036，非纺织用弹性线170038，非纺织用弹性纱170038，硫化纤维170046，塑料焊丝170047，焊接用塑料线170047，非包装用再生纤维素箔170053，非包装用再生纤维素片170053，人造树脂（半成品）170075，合成树脂（半成品）170075，橡胶或硫化纤维制阀170082，非包装用粘胶纤维纸170083，非纺织用橡胶线170095，非纺织用碳纤维170096，半加工塑料物质170097，硬橡胶铸模170100，非纺织用塑料纤维170102，非纺织用塑料线170105，过滤材料（未加工泡沫或塑料膜）170106，翻新轮胎用橡胶材料170109，插花用泡沫支撑物（半成品）170112<br />※半成品海绵C170014，有机玻璃C170015<br /><br />（二）汽缸接头170033，管道用非金属接头170073<br />※塑料管C170009，塑料板C170024，塑料杆C170025，塑料条C170026<br /><br />（三）非包装用塑料膜170072，农业用塑料膜170111，窗户用防强光薄膜（染色膜）170115<br />※农用地膜C170013，电控透光塑料薄膜C170016<br /><br />（四）※橡胶榔头C170010，贮气囊C170011，渔业用浮球C170012<br />注：1.本类似群各部分之间商品不类似，第（四）部分各商品之间互不类似；<br />2.跨类似群保护商标：生橡胶或半成品橡胶（1701，1703第（一）部分）；<br />3.塑料管，管道用非金属接头与1704，非金属软管浇水软管，纺织材料制软管，运载工具散热器用连接软管；与1909第（一）部分第一、二自然段类似，与第九版及以前版本本来1704车辆取暖器软管，车辆水箱用连接软管交叉检索；<br />4.塑料管，塑料板，塑料杆，塑料条与1909建筑用塑料管，建筑用塑料板，建筑用塑料杆，建筑用塑料条类似。<br />',NULL,'2017-05-08 23:07:06',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (230,17,'1704 ','软管','浇水软管170006，非金属软管170022，纺织材料制软管170025，帆布水龙带170065，运载工具散热器用连接软管170074<br />注：1.浇水软管，非金属软管，纺织材料制软管，运载工具散热器用连接软管与1703塑料管，管道用非金属接头，1909第（一）部分第一、二自然段类似；<br />2.帆布水龙带与0916消防水龙带类似。<br />',NULL,'2017-05-08 23:07:06',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (231,17,'1705 ','保温、隔热、隔音材料','（一）石棉防火幕170003，石棉石板170005，保温用非导热材料170016，防热辐射合成物170024，锅炉隔热材料170026，石棉板170035，石棉毡170044，建筑防潮材料170058，石棉纸170071，石棉遮盖物170078，石棉织物170079，石棉布170080，石棉包装材料170081，石棉厚纸板170087，石棉纤维170088，石棉170091<br />隔音材料170008，隔音用树皮板170037<br />※石棉绳、线、带C170017，石棉粉C170018，玻璃纤维保温板和管C170019，防水隔热粉C170020<br /><br />（二）防污染的浮动障碍物170108<br />注：1.本类似群各部分之间商品不类似；<br />2.防水隔热粉与0205防水粉（涂料）类似；<br />3.石棉包装材料与第八版及以前版本1707石棉包装材料交叉检索。<br />',NULL,'2017-05-08 23:07:06',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (232,17,'1706 ','绝缘用材料及其制品','绝缘材料170023，电容器纸170029，电介质（绝缘体）170034，绝缘毡170045，绝缘手套170049，变压器用绝缘油170051，绝缘油170052，绝缘纸170055，绝缘织物170056，绝缘清漆170057，绝缘用金属箔170059，绝缘漆170060，矿渣棉（绝缘体）170061，矿棉（绝缘体）170062，绝缘用玻璃棉170063，未加工或部分加工云母170070，铁路轨道绝缘物170084，电缆绝缘体170094，电网用绝缘体170098，绝缘体170099，绝缘用玻璃纤维170103，绝缘用玻璃纤维织物170104，绝缘胶布170107，绝缘胶带170107，绝缘灰浆170110，绝缘耐火材料170116<br />※绝缘电瓷C170021，绝缘涂料C170022<br />注：绝缘耐火材料与1907商品类似。<br />',NULL,'2017-05-08 23:07:06',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (233,17,'1707 ','包装、填充用材料（包括橡胶、塑料制品）','防水包装物170011，橡胶或塑料制填充材料170014，橡胶或塑料填料170014，包装用棉绒（堵缝）170032，膨胀接合填料170041，包装用橡胶袋（信封、小袋）170077，橡胶或塑料制（填充或衬垫用）包装材料170101<br />',NULL,'2017-05-08 23:07:06',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (234,17,'1708 ','单一商品','※封拉线（卷烟）C170023<br />',NULL,'2017-05-08 23:07:06',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (235,18,'1801 ','皮革和人造皮革，裘皮','动物皮180002，金箔加工用肠膜180008，皮板180022，鞣制过的皮180032，背皮（兽皮的一部分）180038，半加工或未加工皮革180039，仿皮革180042，家畜皮180088，非清洁用麂皮180094<br />生毛皮180002，小山羊皮180027，软毛皮（仿皮制品）180063，裘皮180067，毛皮180067<br />注：本类似群商品与第九版及以前版本1803商品交叉检索。<br />',NULL,'2017-05-08 23:07:06',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (236,18,'1802 ','不属别类的皮革、人造皮革制品，箱子及旅行袋，日用革制品','（一）（女式）钱包180010，乐谱盒180013，猎物袋（打猎用具）180019，书包180020，卡片盒（皮夹子）180021，皮制帽盒180023，旅行箱180029，抱婴儿用吊袋180044，工具袋（空的）180047，弹簧用皮套180052，背包180058，手提包骨架180065，钱包（钱夹）180069，带轮购物袋180070，购物袋180071，公文箱180073，爬山用手提袋180074，野营手提袋180075，海滨浴场用手提袋180076，手提包180077，旅行包180078，包装用皮袋（信封、小袋）180079，包装用皮革封套180079，包装用皮袋180079，公文包180083，旅行用具（皮件）180084，手提旅行包（箱）180085，手提箱提手180086，皮革或皮革板制盒180089，链式网眼钱包180090，皮革或皮革板制箱180091，行李箱180092，非专用化妆包180093，硫化纤维盒180098，帆布背包180100，旅行用衣袋180111，钥匙包180113，购物网袋180114，手提箱180115，运动包*180118，抱婴儿用吊带180122，婴儿背袋180123，包*180124，信用卡包180125，名片夹180126，护脊书包 180127，行李标签 180128<br />※人造革箱C180001，帆布箱C180002，支票夹（皮革制）C180008，护照夹（皮革制）C180009<br /><br />（二）家具用皮装饰180041，家具用皮缘饰180041，皮制家具罩180116<br />※皮褥子C180003，皮床单C180004，皮凉席C180005<br /><br />（三）士兵装备用系带180012，皮制系带180031，冰鞋系带180035，捆扎用皮带180036，皮制带子180036，皮线180040，皮绳180040，皮制下颏带180062，皮活门180087，皮肩带180096<br />注：1.本类似群各部分之间商品不类似；<br />2.本类似群第一部分商品与第八版及以前版本1402贵重金属钱包，贵重金属链式网眼钱包交叉检索；<br />3.支票夹（皮革制），护照夹（皮革制）与1611支票簿夹，护照夹类似，与第十版及以前版本1611支票夹，第九版及以前版本支票本（支票簿）夹交叉检索；<br />4.皮制家具罩与2407家具罩（宽大的），家具遮盖物，塑料家具罩，纺织品制家具罩类似；<br />5.皮褥子，皮床单、皮凉席与2406类似；<br />6.行李标签与第十版及以前版本 1605 皮制行李标签交叉检索；<br />7.名片夹与第十版及以前版本1611已接受商品名片夹等类似商品交叉检索。<br />',NULL,'2017-05-08 23:07:06',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (237,18,'1803 ','裘皮','<br />注：本类似群第十版时移入1801类似群。<br />',NULL,'2017-05-08 23:07:06',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (238,18,'1804 ','雨伞及其部件','伞环180003，雨伞或阳伞的伞骨180007，伞杆180014，雨伞或阳伞骨架180018，伞180043，伞套180051，女用阳伞180066，伞柄180068<br />',NULL,'2017-05-08 23:07:07',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (239,18,'1805 ','手杖','铁头登山杖180001，登山杖180001，手杖180015，带凳手杖180016，手杖柄180060<br />',NULL,'2017-05-08 23:07:07',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (240,18,'1806 ','动物用具','鞍架180004，牵引动物用皮索180005，系狗皮带180005，马鞍扣栓180006，小勒缰180011，动物嚼子（马具）180017，马轭180025，马毯180026，动物用口套180028，动物项圈*180030，马具用带180033，马缰绳180033，皮带（鞍具）180034，马镫橡皮件180045，马镫皮带180046，鞭子180049，秣囊（草料袋）180050，马用护膝180053，动物外套180054，宠物服装180054，动物用挽具180055，眼罩（马具）180056，挽绳（马具）180057，笼头180059，马笼头180059，九尾鞭180061，缰绳180072，皮肚带180080，马鞍180081，鞍具180082，马鞍套180097，辔头（马具）180112，马鞍用垫180117，马镫180119，马具配件180120，马掌180121，鞍褥 180129<br />注：本类似群商品与第八版及以前版本0615金属马镫，金属马掌，1402贵重金属马具配件，1708非金属马掌交叉检索。<br />',NULL,'2017-05-08 23:07:07',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (241,18,'1807 ','肠衣','制香肠用肠衣180009<br />',NULL,'2017-05-08 23:07:07',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (242,19,'1901 ','半成品木材','木衬条190015，屋顶板190021，半成品木材190026，木材190027，建筑用木材190027，胶合板190028，成品木材190029，制家用器具用木材190030，已切锯木材190031，铺地木材190032，贴面板190033，镶饰表面的薄板190033，胶合木板190034，木板条190035，拼花地板条190106，建筑用压缩软木190111，狭木板190125，制桶用木板190125，可塑木料190127，制模用木材190127，建筑用厚木板190149，铁路用非金属枕木190176，小块木料（木工用）190185，木屑板190186，建筑用木浆板190201，木地板条190248<br />※纤维板C190001，树脂复合板C190002，镁铝曲板C190003，木地板C190035<br />注：地板条，拼花地板条，木地板与1909拼花地板，非金属地板类似。<br />',NULL,'2017-05-08 23:07:07',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (243,19,'1902 ','土，沙，石，石料，灰泥，炉渣等建筑用料','板岩粉190008，细沙190010，制陶器用粘土190011，火磨石（砂岩）190012，混凝土190023，制砖用土190039，石灰石190043，陶土（原材料）190047，筑路或铺路材料190051，石灰190052，建筑灰浆190053，砂浆190053，片岩190059，未加工的白垩190072，石英190073，石料190094，黏土*190096，砂砾190099，建筑用砂石190100，炉碴（建筑材料）190104，铺路用道渣190105，碎石190116，建筑用橄榄石190132，建筑石料190141，矿碴石190143，石灰华190145，石制品190146，砂（铸造砂除外）190166，硅石（石英）190168，赤土190172，非金属铺路块料190200，含钙泥灰土190211，水族池砾石190233，水族池用沙190234，块石190237，斑岩（石头）190244，水晶石190253<br />石板190006，屋顶石板片190007，花岗石190098，大理石190120，人造石190142<br />※膨胀珍珠岩C190004，建筑用石粉C190005<br />注：石板，屋顶石板片，花岗石，大理石，人造石与1906商品类似。<br />',NULL,'2017-05-08 23:07:08',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (244,19,'1903 ','石膏','雪花石膏190003，熟石膏*190054，石膏190102<br />※石膏板C190006<br />',NULL,'2017-05-08 23:07:08',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (245,19,'1904 ','水泥','石棉水泥190004，水泥*190036，熔炉用水泥190092，高炉用水泥190093，镁氧水泥190118<br />',NULL,'2017-05-08 23:07:08',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (246,19,'1905 ','水泥预制构件','混凝土建筑构件190024，水泥板190057，水泥柱190058，混凝土用非金属模板190198<br />※水泥管C190007，水泥电杆C190008，水泥架C190009，石棉水泥板C190010<br />注：水泥电杆与1909电线用非金属杆，非金属电线杆类似。<br />',NULL,'2017-05-08 23:07:08',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (247,19,'1906 ','建筑砖瓦','砖190038，建筑用嵌砖190126，非金属屋瓦190151，建筑用非金属砖瓦190213，非金属地板砖190214，非金属砖地板190249，非金属波形瓦190250，非金属墙砖190251<br />※石棉水泥瓦C190011，玻璃马赛克C190012，水磨石C190013，瓷砖C190014<br />注：本类似群与1902石板，屋顶石板片，花岗石，大理石，人造石类似。<br />',NULL,'2017-05-08 23:07:08',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (248,19,'1907 ','非金属耐火材料及制品','石棉灰泥190005，耐火粘土190048，熟耐火粘土190048，防火水泥涂层190056，非金属耐火建筑材料190242<br />※耐火砂C190015，耐火纤维C190016，硅酸铝耐火纤维C190017，耐火砖、瓦C190018，陶瓷纤维棉、毡C190019，矽砂C190020，矽砂火泥C190021，黏土火泥C190022，镁泥C190023，炉用耐火材料（电炉瓷盘）C190024<br />注：本类似群与1706绝缘耐火材料类似。<br />',NULL,'2017-05-08 23:07:08',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (249,19,'1908 ','柏油，沥青及制品','柏油190013，铺路沥青190014，沥青190017，建筑用焦油条190018，建筑用沥青制成物190025，沥青（人造沥青）190037，建筑用沥青纸190046，屋顶用沥青涂层190082，建筑用毡190090，煤焦油沥青190097，路面敷料190161，沥青（焦油沥青）190171<br />※油膏C190026，防水卷材C190027<br />',NULL,'2017-05-08 23:07:08',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (250,19,'1909 ','非金属建筑材料及构件（不包括水泥预制构件）','（一）非金属雨水管190075，非金属水管190076，非金属分岔管190080，建筑用非金属硬管190178，非金属排水管190220，非金属压力水管190232，通风和空调设备用非金属管190235<br />※建筑用塑料管C190033，铝塑复合管C190042<br />屋脊190009，非金属栏杆190016，非金属折门190022，非金属檐槽190044，建筑用卡纸板190045，建筑用纸板190045，壁炉台190049，建筑用非金属框架190050，非金属烟囱190055，非金属隔板190060，建筑用纸190062，非金属檐口190064，非金属檐板嵌条190065，非金属制屋顶防雨板190066，非金属角铁190067，非金属窗190068，非金属门*190069，非金属检修孔盖190070，非金属制屋顶覆盖物190071，非金属楼梯踏板190074，非金属、非塑料制水管阀190077，非金属脚手架190078，电线用非金属杆190079，非金属梁190083，非金属支架190086，建筑用玻璃板（窗）190095，砂石管道190101，非金属固定百叶窗190103，非金属和非纺织品制室外遮帘190107，非金属板条190109，拼花地板190112，非金属楼梯基（楼梯部件）190113，非金属楣190114，门廊（非金属结构）190123，建筑用非金属嵌条190128，建筑用非金属制墙包层190130，建筑用非金属盖板190131，非金属百叶窗190133，非金属围栏190134，非金属栅栏190135，非金属桩190136，非金属板柱190136，建筑用非金属制墙衬料190138，（鸟的）栖木190140，非金属地板190147，非金属天花板190148，建筑用非金属包层190258，建筑用非金属衬板190150，非金属大门190153，非金属门板190154，非金属电线杆190155，非金属搁栅190157，预制非金属台190158，非金属槛190162，建筑用芦饰190163，非金属屋顶190173，非金属格架190177，非金属竖绞链窗190179，彩绘玻璃窗190182，非金属护壁板190189，建筑用非金属加固材料190191，非金属建筑材料190197，非金属柱190206，非金属窗框190208，非金属门框190209，非金属门框架190209，温室用非金属架190210，非金属园艺格架190210，非金属烟囱罩190212，非金属烟囱管帽190216，非金属烟筒接长部件190217，非金属烟囱柱190218，非金属铺地平板190219，非金属或非塑料排水阱（阀）190221，非金属楼梯190222，建筑用非金属嵌板190223，凝结的甘蔗渣（建筑材料）190231，土工布190236，乙烯基壁板190238，非金属防昆虫纱窗190239，太阳能电池组成的非金属屋顶板190240，非金属垫路板190241，非金属制街道排水沟190245，非金属旋转栅门190246，建筑用非金属平板190252，非金属装甲门190254，建筑用非金属柱 190256，建筑用非金属托架 190257<br />※岩棉制品（建筑用）C190028，玻璃钢制门、窗C190030，玻璃钢制天花板C190031，玻璃钢建筑构件C190032，塑钢门窗C190038，建筑用塑料板C190039，建筑用塑料杆C190040，建筑用塑料条C190041，塑料地板C190043，橡胶地板C190044<br /><br />（二）非金属铸模190091，发光铺路块料190115<br />注：1.本类似群各部分之间商品不类似；<br />2.建筑用塑料管，建筑用塑料板，建筑用塑料杆，建筑用塑料条与1703塑料管，塑料板，塑料杆，塑料条类似；<br />3.拼花地板，非金属地板与1901地板条，拼花地板条，木地板类似；<br />4.非金属地板，塑料地板，橡胶地板与第九版及以前版本2703塑料或橡胶地板块，塑料或橡胶地板革，塑料或橡胶地板砖类似；<br />5.电线用非金属杆，非金属电线杆与1905水泥电杆类似；<br />6.铝塑复合管与第八版及以前版本0603铝塑复合管（以铝为主），1703铝塑复合管交叉检索；<br />7.塑钢门窗与0603金属门，金属固定百叶窗，室外金属百叶窗，金属百叶窗，金属大门，金属竖绞链窗等金属制门、窗类似；<br />8.第（一）部分第一、二自然段与1703塑料管，管道用非金属接头，1704浇水软管，非金属软管，纺织材料制软管，运载工具散热器用连接软管类似，与第九版及以前版本1704车辆取暖器软管车辆水箱用连接软管交叉检索；<br />9.非金属垫路板与第八版及以前版本2003非金属狭道板交叉检索；<br />10.非金属旋转栅门与第九版及以前版本0914自动旋转栅门交叉检索；<br />11.太阳能电池组成的非金属屋顶板与0922太阳能电池，发电用太阳能电池板类似。<br />',NULL,'2017-05-08 23:07:08',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (251,19,'1910 ','非金属建筑物','非金属广告栏190001，棚屋190019，集市棚屋190020，非金属电话间190041，非金属电话亭190041，水下建筑工程用沉箱190042，非金属建筑物190061，非金属猪圈190084，非金属牲畜棚190085，非金属火箭发射台190108，可移动的非金属建筑物190119，合成材料制成的路标板和路标条190122，非金属桅杆190124，不发光、非机械的非金属信号板190137，溜冰场（非金属结构）190139，非金属跳水板190152，非金属鸡房190156，（贮液或贮气用）砖石容器190160，不发光、非机械的非金属路牌190164，不发光、非机械的非金属标志190165，可移动的非金属温室190167，非金属筒仓190169，凉亭（非金属结构）190175，鸟舍（非金属结构）190184，非金属下锚柱190187，船只停泊用非金属浮动船坞190188，水族池（建筑物）190190，鸟食台（非金属结构）190194，不发光非金属信号台190195，游泳池（非金属结构）190196，非金属制自行车停放装置190199，非金属简易小浴室190203，喷漆用非金属间190205，公路防撞用非金属护栏190227，砖石信箱190228，非金属预制房（成套组件）190243<br />',NULL,'2017-05-08 23:07:08',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (252,19,'1911 ','建筑用玻璃及玻璃材料','磨沙玻璃190002，建筑玻璃190063，路标用玻璃颗粒190121，建筑用隔热玻璃190180，窗玻璃（运载工具窗玻璃除外）190181，建筑用窗玻璃190183，安全玻璃190192，建筑用彩饰玻璃 190255<br />※镀膜玻璃C190034<br />注：本类似群与 2113 非建筑用彩饰玻璃，乳白玻璃，半透明玻璃，运载工具用窗玻璃（半 成品），不碎玻璃，钢化玻璃类似，与第十版及以前版本 2113 彩饰玻璃，乳色玻璃，第九版及 以前版本 2113 车窗玻璃（半成品）交叉检索。<br />',NULL,'2017-05-08 23:07:08',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (253,19,'1912 ','建筑用涂层','涂层（建筑材料）190129<br />注：本类似群与0205商品类似。<br />',NULL,'2017-05-08 23:07:08',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (254,19,'1913 ','建筑用粘合料','制煤砖用粘合料190040，制砖用粘合料190040，修路用粘合材料190110<br />',NULL,'2017-05-08 23:07:08',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (255,19,'1914 ','非金属雕塑品','石、混凝土或大理石像190170，石头、混凝土或大理石艺术品190193，石头、混凝土或大理石半身雕塑像190202，石、混凝土或大理石小塑像190224，石头、混凝土或大理石小雕像190224<br />',NULL,'2017-05-08 23:07:08',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (256,19,'1915 ','棺椁墓碑','墓穴用非金属围栏190081，非金属墓板190088，非金属纪念标牌190089，非金属纪念碑190117，墓碑190144，墓石190144，非金属墓190174，非金属墓穴190215，非金属墓（纪念物）190225，非金属墓碑柱190226，非金属墓碑标牌190247<br />',NULL,'2017-05-08 23:07:08',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (257,20,'2001 ','家具','碗柜200014，药柜200015，长凳（家具）200020，婴儿玩耍用携带式围栏200022，婴儿床200023，婴儿摇床200023，摇篮200023，图书馆书架200024，床架（木制）200026，瓶架200031，餐具柜200034，书桌200036，办公家具200037，服装架200038，家具200041，索引卡片柜（家具）200043，文件柜200044，椅子（座椅）200050，座位200050，安乐椅200051，头靠（家具）200052，帽架200053，陈列架200057，衣架200059，文件柜用搁板200062，扶手椅200063，有抽屉的橱200066，柜台（台子）200067，桌子*200070，床垫*200079，有小脚轮的茶具台200082，制图桌200083，长沙发200085，细木工家具200088，学校用家具200094，打字机架200095，打字台200095，床*200102，搁物架（家具）200108，花架（家具）200115，花盆台座200116，枪架200118，非金属盛肉柜200122，砧板（桌子）200126，衣服罩（衣柜）200129，金属家具200132，报纸陈列架200134，杂志架200135，盥洗台（家具）200137，医院用病床200138，讲稿小搁台200141，衣帽架200144，立式书桌200152，伞搁架200164，屏风（家具）200165，搁架（家具）200172，写字台200180，金属座椅200182，沙发200183，长靠椅200184，床架200185，金属桌200188，梳妆台200189，贮存架200191，带锁小柜200192，折叠式躺椅200194，支架（家具）200196，餐具架200198，陈列柜（家具）200200，计算机架200212，送餐车（家具）200222，，按摩用床200229，非医用水压床200230，非医用水床200230，搁脚凳200235，凳子200235，理发座椅200241，衣服罩（储藏用）200252，手推车（家具）200254，婴儿用高椅200257，婴儿学步车200258，装有脚轮的计算机架200266，阅书架（家具）200270，毛巾架（家具）200276，壁挂式婴儿尿布更换台200278，自立式隔板（家具）200284，充气家具200288，首饰展示架200292，搁板置物架 200303<br />※绘图桌C200001，美容柜（家具）C200002，电视机架C200003，音响支架（家具）C200004，茶几C200006，琴凳C200007，摇椅C200036<br />注：1.手推车（家具）与1206手推车类似；<br />2.医院用病床，按摩用床与1004医用床类似；<br />3.陈列架与第九版及以前版本0611金属陈列架交叉检索；<br />4.婴儿学步车与1206婴儿车，折叠式婴儿车，轻便婴儿车类似；<br />5.婴儿玩耍用携带式围栏与第八版及以前版本2003婴儿玩耍用携带式围栏交叉检索；<br />6.本类似群商品与2012木制家具隔板，桌面，家具门类似。<br />',NULL,'2017-05-08 23:07:09',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (258,20,'2002 ','非金属容器及附件','滗析葡萄酒用木桶200017，鱼篮200021，装卸用非金属货盘200054，液态燃料用非金属容器200065，存储和运输用非金属容器200068，非金属浮动容器200069，非金属托盘*200072，非金属大桶200081，塑料包装容器200100，非金属桶200119，板条箱200128，带盖的篮200143，运输用非金属货盘200145，搬运用非金属货盘200146，面包师用面包篮200163，非金属、非砖石蓄水池200174，非金属、非砖石容器（贮液或贮气用）200174，搅拌灰浆用非金属槽200206，非金属箱200207，非金属琵琶桶200210，木制或塑料制箱200228，装瓶用木箱200238，非金属筐200243，非金属、非砖石制信箱200244，玩具箱200256<br />软木瓶塞200029，软木塞200030，桶用非金属活嘴200042，木桶板200087，容器用非金属盖200112，非金属桶架200120，非金属桶箍200211，桶用非金属塞200213，非金属密封盖200214，非金属塞200214，非金属瓶盖200219，非金属瓶塞200220，瓶用非玻璃、非金属、非橡胶塞子200220，瓶用非金属螺旋盖200285，非金属工具盒（空）200301，非金属工具箱（空）200302<br />※塑料周转箱C200009，玻璃钢容器C200010<br />注：1.本类似群根据原料、用途与2101商品判断类似；<br />2.带盖的篮，非金属筐与2005竹篮类似；<br />3.面包师用面包筐与2101面包篮（家用），面包箱类似；<br />4.非金属桶，非金属大桶与2106水桶，提桶类似。<br />',NULL,'2017-05-08 23:07:09',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (259,20,'2003 ','不属别类的工业、建筑配件','缆绳和管道用非金属夹200016，纱线、丝线、绳子用绕线木轴200025，刷子托座200033，壁炉隔屏（家具）200046，铁路货车用非金属载量规杆200055，非金属刀柄200075，木或塑料梯200092，乘客登乘用可移动非金属梯200093，洗涤槽用可拆卸的垫200099，洗涤槽用可拆卸的垫或罩200099，软管用非机械、非金属绕轴200103，软管用非机械、非金属卷轴200104，楼梯地毯固定杆200105，工作台200106，非金属镰刀柄200111，旗杆200127，非金属工具柄200142，非金属台阶（梯子）200147，非金属帐篷桩200168，非金属阀（非机器部件）200186，挂钥匙用钥匙板200197，非金属扫帚柄200208，非金属钳工台200209，塑料排水阱（阀）200231，塑料水管阀200236，非金属系船浮标200251，锯木架200263，锯台（家具）200287，非金属梯凳200289，非金属制钥匙圈200294<br />※非金属球阀C200011，塑料线卡C200012，电缆、电线塑料槽C200013，软梯C200041<br />注：软梯与第十版及以前版本2807软梯交叉检索。<br />',NULL,'2017-05-08 23:07:09',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (260,20,'2004 ','镜子、画框及部件','镀银玻璃（镜子）200013，相框边条200190，画框边条200190，镜子（玻璃镜）200193，画框200225，画框托架200226，画框挂杆200226，镜砖200261，手持镜子（化妆镜）200274<br />',NULL,'2017-05-08 23:07:09',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (261,20,'2005 ','不属别类的竹、藤、棕、草制品','竹子200019，绣花绷子200032，个人用扇（非电动）200110，藤200133，草编织物（草席除外）200160，稻草编辫状物200161，稻草制镶边200162，芦苇（编织用料）200178，柳条制品200199，竹帘200255，扁担200265<br />※竹编制品（不包括帽、席、垫）C200014，藤编制品（不包括鞋、帽、席、垫）C200015，棕编制品（包括棕箱，不包括席、垫）C200016，草编制品（不包括鞋、帽、席、垫）C200017，柳条提篮编织物C200018，竹工艺品C200019，竹木工艺品C200020，竹篮C200021，草（编织原料）C200042，草工艺品C200043<br />注：1.竹木工艺品与2006软木工艺品类似；<br />2.竹篮与2002非金属筐，带盖的篮类似；<br />3.草工艺品与2006麦秆工艺品类似。<br />',NULL,'2017-05-08 23:07:09',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (262,20,'2006 ','未加工或半加工的骨、角、牙、介及不属别类的工艺品','黄琥珀200005，动物标本200006，动物爪200010，未加工的或半加工鲸须200018，动物角200035，仿制玳瑁壳200045，牡鹿角200049，裁缝用人体模型200064，人体模型200064，珊瑚200071，未加工或半加工动物角200074，象牙棕榈200076，玳瑁壳200089，牡蛎壳200090，海泡石200098，未加工或半加工象牙200131，风铃状装饰品200151，珍珠母（未加工或半加工的）200153，鸟类标本200156，装饰珠帘200167，动物蹄200179，木、蜡、石膏或塑料像200187，人造琥珀条200203，人造琥珀板200204，木、蜡、石膏或塑料艺术品200205，木、蜡、石膏或塑料制半身雕像200223，贝壳200233，木、蜡、石膏或塑料小雕像200239，风铃（装饰）200268<br />※未加工或半加工角、牙、介制品C200022，漆器工艺品C200023，羽兽毛工艺品C200024，软木工艺品C200025，麦杆工艺品C200026，树皮画C200028，泥塑工艺品C200029，玻璃钢工艺品C200030，树脂工艺品C200031，树脂小雕像C200037，具有造型的手提电话（装饰）C200038<br />注：1.软木工艺品与2005竹木工艺品类似；<br />2.麦秆工艺品与2005草工艺品类似。<br />',NULL,'2017-05-08 23:07:09',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (263,20,'2007 ','非金属牌照','展示板200002，树或植物的支桩200091，木制或塑料制招牌200096，非金属车牌200130，非金属身份牌200154，不发光非金属门牌200155，木头或塑料标志牌200253，可充气广告物200259，塑料钥匙卡（未编码、非磁性）200260<br />',NULL,'2017-05-08 23:07:09',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (264,20,'2008 ','食品用塑料装饰品','食品用塑料装饰品200003<br />',NULL,'2017-05-08 23:07:09',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (265,20,'2009 ','禽、畜等动物用制品','蜂箱200001，家养宠物用床200007，家养宠物栖息箱200008，家养宠物窝200009，蜂箱用巢础200039，蜂房用木格子200040，狗窝200058，巢箱200109，饲料架200117，蜂房200150，猫用磨爪杆200264，宠物靠垫200271，非金属制固定式狗用垃圾袋分配器 200295<br />注：本类似群与2114第（一）部分商品类似。<br />',NULL,'2017-05-08 23:07:09',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (266,20,'2010 ','医院用非金属制身份鉴别手环','非金属制身份鉴别手环200221<br />注：本类似群与0618商品（除手铐外）类似。<br />',NULL,'2017-05-08 23:07:09',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (267,20,'2011 ','非金属棺材及附件','棺材200047，棺材用非金属附件200048，骨灰盒200267<br />※纸板棺材C200032<br />',NULL,'2017-05-08 23:07:09',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (268,20,'2012 ','非金属家具附件','装饰用木条200027，非金属挂衣钩200080，挂衣杆用非金属钩200080，非金属制固定式毛巾分配器200084，家具用非金属附件200113，床用非金属附件200124，床用非金属脚轮200139，木制家具隔板200148，家具用非金属脚轮200149，非金属的衣服挂钩200166，桌面200169，家具门200170，家具的塑料缘饰200173，球形非金属把手200277，非金属制浴缸扶手200290<br />注：1.木制家具隔板，桌面，家具门与2001商品类似。<br />2.球形非金属把手与2014非金属门把手，门的非金属附件类似，与第九版2103球形瓷把手交叉检索，与第八版及以前版本2103瓷制门把手交叉检索。<br /><br />',NULL,'2017-05-08 23:07:10',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (269,20,'2013 ','垫，枕','垫褥（亚麻制品除外）200077，软垫200078，枕头200157，非医用气枕200158，草垫200159，垫枕200195，非医用气垫200201，非医用气褥垫200202，野营睡袋200234，婴儿游戏围栏用垫200275，婴儿更换尿布用垫200279，野营用睡垫200293<br />※羽绒枕头C200033，玉枕C200034，磁疗枕C200035<br />注：1.枕头，羽绒枕头与2406床单和枕套，枕套，装饰用枕套类似；<br />2.软垫与第十版及以前版本 1802 皮垫，第八版及以前版本 2407 坐垫（非纸制），纺织品垫交叉检索；<br />3.野营睡袋与第十版及以前版本2406睡袋（被子替代物）交叉检索；<br />4.婴儿更换尿布用垫与2406婴儿更换尿布用布单类似。<br />',NULL,'2017-05-08 23:07:10',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (270,20,'2014 ','非金属紧固件及门窗附件','窗帘环200011，非金属合页200056，非金属螺母200097，非纺织品制窗帘圈200101，窗帘滚轴200121，窗用非金属附件200123，门的非金属附件200125，室内百叶帘200136，非金属闩200140，窗帘轨200171，窗帘杆200175，窗帘钩200176，窗帘扣200177，运载工具用非金属锁200181，非金属螺丝200215，非金属铆钉200216，非金属钉200217，非金属销钉200217，非金属销栓200217，非金属螺栓200218，缆绳用非金属接线螺钉200224，非金属膨胀螺栓200232，非金属锁（非电）200240，非金属杆200242，窗帘用塑料滑轮200262，木编织百叶窗帘（家具）200269，室内百叶窗帘（家具）200272，非金属门把手200273，非金属门插销200280，纸制百叶窗帘200281，室内纺织品制百叶窗帘200282，非金属门铃（非电动）200283，非金属门环200286，紧固管道用非金属环200291，非金属、非橡胶制门挡 200296，非金属、非橡胶制窗挡 200297，非金属制窗锁 200298，非金属窗栓 200299，非金属制门用锁紧装置 200300<br />注：非金属门把手，门的非金属附件与2012球形非金属把手类似，与第九版2103球形瓷把手交叉检索，与第八版及以前版本2103瓷制门把手交叉检索。<br />',NULL,'2017-05-08 23:07:10',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (271,21,'2101 ','厨房炊事用具及容器（包括不属别类的餐具）','盆（容器）210025，黄油碟210030，黄油碟罩210031，盆（碗）210039，碗210039，瓶210045，调味瓶210057，水果杯210089，调味品套瓶210122，午餐盒210140，罐210153，蔬菜盘210154，家用器皿210159，面包屑盘210160，蛋杯210165，纸盘210173，家用纸托盘210180，胡椒瓶210185，家用或厨房用容器210199，色拉碗210203，盐瓶210204，成套杯、碗、碟210207，碟210208，汤碗210214，糖碗210218，杯210220，缸*210226，餐具（刀、叉、匙除外）210227，盘210235，糖果盒210244，奶酪盘罩210265，家用托盘210267，碟罩210269，水壶210271，水瓶210271，厨房容器210272，长颈瓶*210289，油和醋用调味套瓶210292，纸或塑料杯210318，饭盒210325，一次性盘子210333<br />※日用搪瓷塑料器皿（包括盆、碗、盘、壶、杯）C210015，磁疗杯C210016<br />面包篮（家用）210017，成套的烹饪锅210026，开塞钻（电或非电）210043，开瓶器（电或非电）210048，烹饪用金属扦210049，菜单卡片夹210064，炖锅210065，大锅210070，模子（厨房器具）210079，鸡尾酒调酒器210082，胶锅210084，家用过滤器210088，桌用刀托210090，壶盖塞210091，锅盖210092，家用非电动搅拌机210096，烹饪锅210101，勺形铲（餐具）210102，烹调用模210103，煮牛奶防溢片210107，厨房用切菜板210108，漏斗210121，家用非电动打蛋器210134，煎锅210136，家用非电动榨水果器210138，蛋糕模子210142，烤盘（烹饪用具）210145，烤架（烹饪用具）210145，烤架支架210146，涂油匙（厨房用具）210156，厨房用非电动碾磨器210158，家用手动研磨机210162，切面包板210169，装备齐全的野餐篮（包括盘、碟）210170，过滤器210174，擀面杖（家用）210175，馅饼用铲210177，手动胡椒研磨器210184，厨房用擦菜板210197，餐巾环210200，餐巾架210210，分隔层饰盘210219，非电高压锅（加压炊具）210236，非电力压力锅（高压锅）210236，非电动搅拌器210238，奶瓶用非电加热器210239，非电烧水壶210246，非纸制、非纺织品制杯垫210258，非电力油炸锅210260，家用篮210266，矮脚金属架（餐具）210270，厨房用具210273，非电气炊具210274，烘蛋奶饼的非电铁模210309，面包箱210310，筷子210311，鸡尾酒搅拌棒210314，糕点裱花用袋（裱花袋）210315，饼干模具210316，饼干筒210317，非电加热的火锅210322，餐桌用旋转盘210324，搅拌匙（厨房用具）210326，面条机（手动）210327，切糕点器210328，刮板（厨房用具）210330，蒜压榨器（厨房用具）210332，烘焙垫210346，接油盘210350，非电蒸锅210353，厨房用非电动轧碎机210355，隔热垫210356，涂油管210359，非电墨西哥薄饼压饼器（厨房器具）210363<br />※铁锅C210001，铁壶C210002，炒勺C210003，铁桶C210004，蒸屉C210005，笼屉C210006，笊篱C210007，铁镬C210009，箩斗C210010，纱罩C210011，箩底C210012，煤气火锅C210013，铁丝筛子C210014，冰棍棒C210017，冰淇淋夹勺C210018<br />注：1.纸盘，家用纸托盘与1603啤酒杯垫，纸制杯盘垫，纸制杯垫类似；与第九版及以前版本纸垫1603纸垫、桌上纸杯垫交叉检索；<br />2.瓶与2102，2106，2111各种瓶类似；<br />3.本类似群根据功能、用途与2002商品类似，与第八版及以前版本1402商品交叉检索；<br />4.开塞钻（电或非电），开瓶器（电或非电）与0810非电动开罐器类似，与第九版及以前版本0810非电动开罐头器交叉检索；<br />5.面包篮（家用），面包箱与2002面包师用面包篮类似；与第九版及以前版本2002面包筐交叉检索；<br />6.盆（容器），铁桶与2106水桶，提桶类似；<br />7.本类似群第一、二自然段与2102玻璃碗，玻璃杯（容器），彩色玻璃器皿，日用玻璃器皿（包括杯、盘、壶、缸），2103及2105商品类似，与第八版及以前版本2106非贵重金属罐，非贵重金属水瓶，非贵重金属瓶交叉检索。<br />',NULL,'2017-05-08 23:07:10',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (272,21,'2102 ','不属别类的玻璃器皿','玻璃烧瓶（容器）210009，小玻璃瓶（容器）210009，玻璃瓶（容器）210022，广口玻璃瓶210033，玻璃盖210042，玻璃塞210042，玻璃碗210044，玻璃杯（容器）210085，彩色玻璃器皿210230，玻璃盒210243，陶瓷或玻璃标志牌210279<br />※玻璃烧瓶（容器）210009，小玻璃瓶（容器）210009，玻璃瓶（容器）210022，广口玻璃瓶210033，玻璃盖210042，玻璃塞210042，玻璃碗210044，玻璃杯（容器）210085，彩色玻璃器皿210230，玻璃盒210243，陶瓷或玻璃标志牌210279<br />注：1.玻璃碗，玻璃杯（容器），彩色玻璃器皿，日用玻璃器皿（包括杯、盘、壶、缸）与2101第一、二自然段，2103及2105商品类似；<br />2.本类似群各种瓶与2101瓶类似。<br />',NULL,'2017-05-08 23:07:10',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (273,21,'2103 ','瓷器，陶器（茶具，酒具除外）','酸坛210040，细颈坛210040，家庭用陶瓷制品210068，瓦器210129，锡釉陶器210157，陶制平底锅210181，瓷器210189，陶器210193<br />※日用瓷器（包括盆、碗、盘、壶、餐具、缸、坛、罐）C210024，日用陶器（包括盆、碗、盘、缸、坛、罐、砂锅、壶、炻器餐具）C210025，陶瓷支撑球C210026，耐酸耐碱陶瓷器C210027，仿瓷器C210028，仿陶器C210029<br />注：本类似群与2101第一、二自然段，2102玻璃碗，玻璃杯（容器），彩色玻璃器皿，日用玻璃器皿（包括杯、盘、壶、缸）及2105商品类似。<br />',NULL,'2017-05-08 23:07:10',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (274,21,'2104 ','玻璃、瓷、陶的工艺品','瓷器装饰品210078，瓷、陶瓷、陶土或玻璃塑像210217，瓷、陶瓷、陶土或玻璃艺术品210234，瓷、陶瓷、陶土或玻璃半身雕像210252，瓷、陶瓷、陶土或玻璃小雕像210285<br />※唐三彩C210030，水晶工艺品C210054，水晶画 C210058 <br />    注：水晶画与第十版及以前版本 2006 水晶画交叉检索。<br /><br />',NULL,'2017-05-08 23:07:10',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (275,21,'2105 ','茶具、酒具、咖啡具及饮水用具','啤酒杯210032，饮用器皿210034，茶叶罐210038，酒具（托盘）210058，细颈圆酒瓶210063，角形饮水器210086，苏打水用虹吸瓶210118，运动用饮水瓶210144，酒具210155，吸液管（品酒用具）210178，品酒用具（虹吸管）210178，茶具（餐具）210209，茶托210212，茶壶210222，有柄大杯210232，滤茶球210248，茶叶浸泡器210248，手动磨咖啡器210254，咖啡具（餐具）210255，非电咖啡过滤器210256，非电咖啡渗滤壶210257，非电咖啡壶210287，滤茶器210288，单柄大酒杯210291，饮水玻璃杯210319，饮用吸管210342，扁酒壶210348<br />注：1.本类似群与2101第一、二自然段，2102玻璃碗，玻璃杯（容器），彩色玻璃器皿，日用玻璃器皿（包括杯、盘、壶、缸），2103商品交叉检索；<br />2.本类似群根据功能、用途与第八版及以前版本1402商品交叉检索；<br />3.饮用吸管与第九版及以前版本2008饮用麦杆吸管、饮用麦管交叉检索；<br />4.运动用饮水瓶与第十版及以前版本2106旅行饮水瓶，葫芦瓶交叉检索。<br />',NULL,'2017-05-08 23:07:10',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (276,21,'2106 ','家庭日用及卫生器具','（一）搓衣板210006，浇水软管用喷嘴210012，洒水设备210013，洒水器210015，喷壶210016，水桶210023，提桶210023，喷管210027，纸巾盒210036，肥皂盒210037，脱靴器210041，家用细筛210061，煤渣用筛（家用器皿）210067，熨衣板套（成形的）210093，领带压平器210094，筛（家用器具）210097，洗涤桶210106，熨斗架210112，卫生纸分配器210116，肥皂分配器210117，鞋楦（撑具）210120，洗衣用晾衣架210126，纺织品制桶210127，花和植物用固定物（插花用具）210132，花盆210133，家用除烟器210139，手套撑具210141，压裤器210171，熨衣板210179，喷水壶喷头210183，喷壶莲蓬头210183，花瓶210190，肥皂碟210191，肥皂架210191，便壶210192，垃圾箱210194，垃圾桶210194，浇花和植物用洒水器210206，浇花和植物用喷水器210206，鞋拔210213，衣服撑架210221，钮扣钩210223，存钱罐210224，盥洗室器具210225，非医用喷雾器210233，烛环210242，蜡烛架（烛台）210245，烛台210245，非纸制花盆套210253，个人用除臭装置210277，熄烛器210295，婴儿浴盆（便携式）210301，衣夹210313，清理堵塞排水管用手压皮碗210329，毛巾架和毛巾挂环210334，卫生纸架210335，拖把绞干器210339，废纸篓210340，窗台花箱210341，靴楦（撑具）210347，蜡烛罐210352，拖把脱水桶 210362<br />※痰盂C210031<br /><br />（二）薰香炉210056<br />※祭祀容器C210055，香炉C210057<br />注：1.本类似群各部分间不类似；<br />2.便壶，痰盂与1004卧床病人用便盆，卧床病人用尿壶类似，与第九版及以前版本1004病床上用便盆，尿壶（容器）交叉检索；<br />3.痰盂与1004医用痰盂类似；<br />4.水桶，提桶与2101盆（容器），铁桶，2002非金属桶，非金属大桶类似；<br />5.烛环，蜡烛架（烛台），烛台，熄烛器与第八版及以前版本1402贵重金属蜡烛架（烛台），贵重金属烛台，贵重金属熄烛器，贵重金属烛环交叉检索；<br />6.花瓶与第八版及以前版本1402贵重金属花瓶交叉检索；<br />7.本类似群各种瓶与2101瓶类似；<br />8.香炉、祭祀容器与第八版及以前版本2106非金贵重金属祭祀用容器，1402贵重金属制祭祀容器交叉检索；<br />9.花瓶、花盆、窗台花箱与2114第（二）部分商品类似。<br />',NULL,'2017-05-08 23:07:10',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (277,21,'2107 ','梳子，刷子，制刷材料（不包括牙刷）','（一）梳*210076，大齿发梳210110，梳子盒210128，电梳210176<br />※篦子C210033<br /><br />（二）刷子*210014，马梳210028，指甲刷210050，马桶刷210051，玻璃灯罩刷210052，刷制品210053，鞋刷210071，马刷210073，动物用梳210075，擦洗刷210137，长柄柏油刷210147，电刷（机器部件除外）210251，擦罐和容器用刷210278，洗餐具刷210304，涂油刷210358，滑雪板打蜡刷 210364<br />※排笔刷C210034<br /><br />（三）制刷用兽毛210010，制刷原料210054，制刷用毛210055，猪鬃210188<br />注：1.本类似群各部分之间商品不类似；<br />2.排笔刷与1614排笔（文具）类似。<br />',NULL,'2017-05-08 23:07:10',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (278,21,'2108 ','刷牙用具','牙刷210250，牙及牙床清洁用吸水器210262，电动牙刷210276<br />※牙刷盒C210056<br />',NULL,'2017-05-08 23:07:11',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (279,21,'2109 ','牙签','牙签210105，牙签盒210275，牙线210320<br />注：牙签盒与第八版及以前版本1402贵重金属牙签盒交叉检索。<br />',NULL,'2017-05-08 23:07:11',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (280,21,'2110 ','化妆用具','化妆用具210087，梳妆盒210115，专用化妆包210115，梳妆海绵210123，粉扑210148，随身携带的粉饼盒210195，眉刷210215，喷香水器210228，香水喷瓶210228，修面刷210240，修面刷架210241，擦皮肤用摩擦海绵210331，卸妆器具210344，化妆用刮板210349，化妆用海绵210354，化妆刷 210361<br />※颊刷C210036，眼影刷C210037，睫毛刷C210038<br />注：1.本类似群与0306化妆用棉签，化妆棉，唇膏盒类似，与第十版及以前版本0306棉签（梳妆用品），第九版及以前版本0306成套化妆用具交叉检索；<br />2.擦皮肤用摩擦海绵与2112沐浴海绵类似；<br />3.随身携带的粉饼盒与第八版及以前版本1402贵重金属制随身携带的粉饼盒交叉检索；<br />4.卸妆器具与第九版及以前版本0924卸妆用电力器具交叉检索。<br />',NULL,'2017-05-08 23:07:11',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (281,21,'2111 ','隔热用具','食物保温容器210007，饮料隔热容器210035，隔热瓶210046，保温瓶210046，冷藏瓶210047，隔热容器210062，冰块模210099，冷却容器（冰桶）210196，冰桶210196，制冰和冷饮的金属容器210211，非电便携式冷藏盒210261，保温袋210323，茶壶保暖套210343<br />※暖水瓶C210039，暖水瓶壳C210040，非电热壶C210053<br />注：1.本类似群各种瓶与2101瓶类似；<br />2.茶壶保暖套与第九版及以前版本2610茶壶保暖套交叉检索；<br />3.暖水瓶与1104电热水瓶类似。<br />',NULL,'2017-05-08 23:07:11',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (282,21,'2112 ','家用擦洗用具','清洁用钢丝绒210005，地毯拍打器（手工具）210008，扫帚210020，扫地毯器210021，金属制擦锅器210066，清洁用布210077，非电动打蜡设备210080，抛光用皮革210100，手动清洁器具210104，非电掸灰设备210111，海绵夹持器210124，家具掸210125，拖把210135，清洁用废羊毛210163，清洁用垫210168，擦洗垫210168，家用抛光设备和机器（非电动的）210186，抛光材料（使发光用）（制剂、纸、石料除外）210187，厨房用擦垫210259，清洁用麂皮210263，擦鞋用非电动打蜡机210264，清洁用废棉纱210268，家用海绵210280，羽毛掸210281，抹布210282，家务手套210290，抛光用手套210294，洗地板布210303，清洁用纤维束210312，园艺手套210321，烤箱用手套210357，厨房用隔热手套210357，烧烤用手套210357，洗车用手套210360<br />※擦鞋器C210041，清扫器C210042，钢丝轮C210043，门窗玻璃清洁器C210044，玻璃防雾布C210045，沐浴海绵C210047<br />注：1.家务手套，抛光用手套，园艺手套，洗车用手套与第十版及以前版本2408商品交叉检索；<br />2.沐浴海绵与2110擦皮肤用摩擦海绵类似。<br />',NULL,'2017-05-08 23:07:11',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (283,21,'2113 ','未加工或半加工玻璃（不包括建筑用玻璃）','水晶（玻璃制品）210098，装饰用玻璃粉210114，非建筑用彩饰玻璃210119，玻璃板（原材料）210143，未加工或半加工玻璃（建筑玻璃除外）210149，非绝缘用玻璃棉210152，非建筑用玻璃镶嵌物210161，乳白玻璃210166，半透明玻璃210167，合成灵敏导电玻璃210229，运载工具用窗玻璃（半成品）210231，非纺织用矽玻璃纤维210283，非绝缘、非纺织用玻璃纤维210284，非纺织用玻璃纤维线210286，非建筑用石英玻璃（半成品）210308<br />※不碎玻璃C210048，钢化玻璃C210049，半制品玻璃管C210051<br />注：彩饰玻璃，乳白玻璃，半透明玻璃，运载工具用窗玻璃（半成品），不碎玻璃，钢化玻璃与1911 商品类似。<br />',NULL,'2017-05-08 23:07:11',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (284,21,'2114 ','不属别类的动植物器具','（一）饮水槽210001，喂料槽210002，家禽环210011，鸟环210018，鸟食台*210019，鸟笼210059，动物饲料槽210074，人造留窝鸡蛋210164，家养宠物用笼子210302，宠物排泄用盒（盘）210306<br /><br />（二）室内植物培养箱210305，室内水族池210336，水缸（室内水族池）210336，水族池罩210337，室内生态培养箱210338<br />注：1.本类似群各部分之间商品不类似；<br />2.本类似群第（一）部分与2009商品类似；<br />3.本类似群第（二）部分与 2106 花瓶，花盆，窗台花箱类似，与第九版及以前版本2106 室内养殖池（种植物用），室内培养池（种植物用），第八版及以前版本 1620 室内观赏植 物园（仿自然动物和植物园），室内观赏植物（人工动物或植物园），室内水族池，水族池罩交 叉检索。<br />',NULL,'2017-05-08 23:07:11',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (285,21,'2115 ','家用灭虫、灭鼠用具','蝇拍210069，捕虫器210150，捕鼠机210198，捕鼠器210216，诱杀昆虫用电力装置210345，捕蝇器210351<br />※除蚊器C210052<br />注：诱杀昆虫用电力装置与第九版及以前版本0924诱杀昆虫用电力装置交叉检索。<br />',NULL,'2017-05-08 23:07:11',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (286,22,'2201 ','缆，绳，线，带','绑藤本植物的带子220003，麻带220015，非金属绳索220020，绳索*220021，鞭绳220022，绳梯220023，包装带220032，细绳220035，纸绳220038，捆扎纱220042，软百叶窗用梯形带220045，蜡绳220055，包装或捆扎用非金属带220078，捆扎用非金属线220079，装卸用非金属吊带220081，装卸用非金属带220082，装卸用非金属吊索220083，非金属缆220084，农业用非金属捆扎线220086，拉窗绳220088，挂图片用绳220089，包装绳220091，汽车拖缆220103，非金属捆扎物220112<br />※丝绳C220001，绽子绳C220002，塑料打包带C220003，塑料线（包扎用）C220004<br />',NULL,'2017-05-08 23:07:12',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (287,22,'2202 ','网，遮篷，帐篷，防水帆布，帆','（一）伪装网220009，渔网220011，网线220039，捕动物陷网220048，网织物220049，网*220094，洗针织品用袋220106，捕鱼用围网220108，鱼类养殖用网箱220109<br /><br />（二）运载工具非专用盖罩220075，伪装罩220085<br /><br />（三）帆220059，风帆滑雪运动用帆220105<br /><br />（四）风障布220001，防水帆布220002，船帆用帆布220110<br />※苫布C220006，涂胶布C220007，漆布C220008，阻燃布C220009，涂塑布C220010<br /><br />（五）吊床220043，纺织品遮篷220058，帐篷220071，合成材料制遮篷220102，纺织品室外遮帘220111<br />※蒙古包C220005<br />注：1.本类似群各部分之间商品不类似，但第（一）部分伪装网与第（二）部分伪装罩类似；<br />2.洗针织品用袋与第七版及以前版本2112洗衣袋交叉检索。<br />',NULL,'2017-05-08 23:07:12',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (288,22,'2203 ','袋子，装卸、包装用物品','（一）运输和贮存散装物用口袋（麻袋）220068，包装用纺织品袋（信封、小袋）220069，包装用纺织品袋（包）220069，邮袋220104<br />※尼龙编织袋（仿麻袋）C220011，面袋C220012，编织袋C220013，集装袋C220014<br /><br />（二）草制瓶封套220080，瓶用草制包装物220080，草制瓶用包装物220080<br /><br />（三）裹尸袋220107<br />注：本类似群各部分之间商品不类似。<br />',NULL,'2017-05-08 23:07:12',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (289,22,'2204 ','衬垫，填充料，密封物品（不包括橡胶、塑料制品）','刨花220004，锯末220006，棉屑（填塞物）220007，羽绒220028，鸭绒毛220029，非橡胶、<br />非塑料、非纸或纸板制填充材料220030，非橡胶、非塑料、非纸或纸板制（填充或衬垫用）包装材料220031，装潢填充用羊毛220033，船用纤维密封圈220036，填充用草220044，被褥用羽毛220057，过滤用软填料220060，衬垫和填充室内装饰品的填料220061，装潢填充用稻草220062，装潢填充用羽毛220064，茅草220070，填充用海藻220074，衬垫和填充用废棉絮220090<br />',NULL,'2017-05-08 23:07:12',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (290,22,'2205 ','纤维原料','木丝220005，生丝220008，纤维纺织原料220010，驼毛220012，大麻220013，短麻屑220014，绢丝（废生丝）220016，废丝220016，椰子纤维220018，茧220019，未加工棉花220025，棉纤维束220026，马毛220027，纺织用矽玻璃纤维220037，丝棉220040，羊毛絮220041，黄麻220046，木棉220047，未加工或加工过的羊毛220050，机梳羊毛220051，精梳羊毛220052，韧皮（植）220054，生亚麻（亚麻纤维）220056，兽毛220065，苎麻纤维220066，酒椰叶纤维220067，羊毛220072，剪下的羊毛220073，纺织纤维220076，剑麻220077，纺织用碳纤维220087，纺织品用塑料纤维（纤维）220092，纺织用玻璃纤维220093，棉籽绒220101<br />',NULL,'2017-05-08 23:07:12',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (291,23,'2301 ','纺织用纱、丝','纱*230001，棉线和棉纱230002，绣花用线和纱230003，毛线和粗纺毛纱230004，麻线和纱230005，椰纤维线和纱230006，丝线和纱230007，精纺棉230008，缝纫线和纱230009，细线和细纱230010，黄麻线和纱230011，精纺羊毛230012，亚麻线和纱230013，人造线和纱230014，纺织线和纱230015，绢丝230016，纺织用弹性线和纱230019<br />※落丝C230001，棕丝C230002，弹力丝（纺织用）C230003，聚乙烯单丝（纺织用）C230004，长丝C230005，厂丝C230006，人造丝C230007<br />注：跨类似群保护商品：棉线棉纱（2301，2302），绣花用线和纱（2301，2302），麻线和纱（2301，2302），椰纤维线和纱（2301，2302），丝线和纱（2301，2302），缝纫线和纱（2301，2302），细线和细纱（2301，2302），黄麻线和纱（2301，2302），亚麻线和纱（2301，2302），人造线和纱（2301，2302），纺织线和纱（2301，2302），纺织用弹性线和纱（2301，2302），毛线和粗纺毛纱（2301，2303）。<br />',NULL,'2017-05-08 23:07:12',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (292,23,'2302 ','线','线*230001，棉线和棉纱230002，绣花用线和纱230003，麻线和纱230005，椰纤维线和纱230006，丝线和纱230007，缝纫线和纱230009，细线和细纱230010，黄麻线和纱230011，亚麻线和纱230013，人造线和纱230014，纺织线和纱230015，纺织用玻璃纤维线230017，纺织用橡皮线230018，纺织用弹性线和纱230019，纺织用塑料线230020，刺绣用金属线230032<br />※宝塔线C230008，蜡线C230009，尼龙线C230010<br />注：1.棉线棉纱（2301，2302），绣花用线和纱（2301，2302），麻线和纱（2301，2302），椰纤维线和纱（2301，2302），丝线和纱（2301，2302），缝纫线和纱（2301，2302），细线和细纱（2301，2302），黄麻线和纱（2301，2302），亚麻线和纱（2301，2302），人造线和纱（2301，2302），纺织线和纱（2301，2302），纺织用弹性线和纱（2301，2302）；<br />2.刺绣用金属线与第九版及以前版本2601绣花用金属线，刺绣用金属线交叉检索。<br />',NULL,'2017-05-08 23:07:13',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (293,23,'2303 ','毛线','毛线和粗纺毛纱230004，毛线230012，绳绒线230031<br />※绒线C230011，人造毛线C230012，膨体线C230013，开司米C230014<br />注：绒线C230011，人造毛线C230012，膨体线C230013，开司米C230014<br />',NULL,'2017-05-08 23:07:13',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (294,24,'2401 ','纺织品，布料','仿兽皮的织物240003，装饰织品240004，台球布240007，织物*240008，筛布240009，硬（麻）布240010，锦缎240011，纺织织物240012，布*240013，挂毯和刺绣用粗帆布240015，大麻织物240017，麻布240018，片状纺织品帽衬240019，鞋的衬里织物240020，鞋用织物240021，啥味呢（布料）240023，丝绒240026，棉织品240028，坚质条纹棉布（亚麻布）240031，绉布（织物）240035，重绉纹织物240036，缎子240037，内衣用织物240038，衬料（纺织品）240039，旗布240043，纺织的弹性布料240046，绣花图案布240049，刺绣用描绘布240049，法兰绒（织物）240050，起绒粗呢（布）240052，干酪布240053，凸纹条格细平布240054，粗斜纹布240054，纱布（布）240056，马毛与绒布混织物（粗麻布）240058，印花丝织品240060，印花棉布240061，平针织物240062，黄麻织品240063，毛料布240064，毛织品240064，亚麻布240067，菱形花纹亚麻布240069，家用亚麻布240071，斜纹厚绒布240077，苎麻织品240083，人造丝织品240084，丝绸（布料）240088，薄纱240089，茅草纤维织物240090，塔夫绸（布）240091，编织织物240092，轻薄织物（布料）240094，白布240095，绳绒线织物240111，纺织纤维织物240116<br />※牛津布C240001，帆布C240002，毛巾布C240003，蚊帐织布C240004，衬布C240005，纱绢C240006，单丝筛绢C240007，夏布罗纹C240008，麻皮布C240009，蓖麻绢纺C240010，麻绒C240011，静电植绒布C240012，呢绒C240013<br />',NULL,'2017-05-08 23:07:13',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (295,24,'2402 ','特殊用织物','热敷胶粘纤维布240001，航空气球用不透气织物240002，布棚240016，玻璃布240048，非文具用胶布240057，塑料材料（织物代用品）240081，无纺布240098，布制标签240102，纺织用玻璃纤维织物240104，纺织品制过滤材料240105<br />※金属棉（太空棉）C240014，过滤布C240015，帘子布C240016，聚丙烯编织布C240017，滤气呢C240018，树脂布C240020<br />',NULL,'2017-05-08 23:07:13',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (296,24,'2403 ','纺织品壁挂','纺织品制墙上挂毯240103，纺织品制壁挂240103<br />※丝织、交织图画C240021，织锦人像C240022，丝绒绢画C240023，剪绢画C240024，手绣、机绣图画C240025，丝织美术品C240026<br />注：1.纺织品制墙上挂毯，纺织品制壁挂与2701商品类似；<br />2.纺织品制墙上挂毯，纺织品制壁挂与2704非纺织品制墙上挂毯，非纺织品制壁挂类似，与第十版及以前版本非纺织品制壁毯，第九版及以前版本非纺织品壁挂，非纺织品制墙帷，非纺织品挂毯（墙上挂帘帷）交叉检索。<br />',NULL,'2017-05-08 23:07:13',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (297,24,'2404 ','毡及毡制品','毡*240027，纺织品制印刷机垫240106<br />※造纸毛毯（毛巾）C240027<br />',NULL,'2017-05-08 23:07:13',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (298,24,'2405 ','毛巾，浴巾，手帕','浴室亚麻布（服装除外）240005，卫生绒布240051，搓澡巾240055，纺织品毛巾240072，纺织品餐巾240076，纺织品手帕240078，纺织品洗脸巾240087，卸妆用布240101<br />※浴巾C240029，地巾C240031<br />',NULL,'2017-05-08 23:07:13',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (299,24,'2406 ','床上用品','床罩240029，被子240029，床垫遮盖物240030，纸制床罩240032，旅行用毯（膝盖保暖用）240034，床单（纺织品）240040，鸭绒被240045，床单和枕套240068，褥垫套240074，蚊帐240079，枕套240080，床上用覆盖物240099，睡袋衬里240100，装饰用枕套240112，床上用毯240114，婴儿更换尿布用布单240120，家养宠物用毯 240121<br />※毛巾被C240028，枕巾C240030，被絮C240032，被面C240033，褥子C240034，棉毯C240036，毛毯C240037，丝毯C240038，帐沿C240039，床沿C240040，帐帘C240041，床帏C240042，塑料床单C240043，被罩C240049，床单C240050<br />注：1.床单和枕套，枕套，装饰用枕套与2013枕头，羽绒枕头类似；<br />2.本类似群与1802皮褥子，皮床单，皮凉席类似；<br />3.婴儿更换尿布用布单与2013婴儿更换尿布用垫类似；<br />4.本类似群商品与第九版及以前版本2405毛巾被交叉检索；<br />5.枕巾与第九版及以前版本2405枕巾交叉检索。<br />',NULL,'2017-05-08 23:07:13',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (300,24,'2407 ','室内遮盖物','（一）狭长桌布240022，油布（作桌布用）240025，桌布（非纸制）240033，粗毛台毯240044，家具罩（宽大的）240059，家具遮盖物240059，餐桌用布（非纸制）240070，家用塑料遮盖物240075，塑料家具罩240075，杯垫（餐桌用布）240096，杯盘垫（非纸制）240097，餐具垫（非纸制）240113，垫子用罩240115，纺织品制家具罩240117<br />※家电遮盖物C240044，缝纫机罩C240045，台毯C240046<br /><br />（二）纺织品制窗帘圈240047，门帘240082，纺织品或塑料帘240085，网状窗帘240093，纺织品或塑料浴帘240119<br />※浴罩C240047<br /><br />（三）纺织品制马桶盖罩240118<br />注：1.本类似群各部分之间商品不类似；<br />2.家具罩（宽大的），家具遮盖物，塑料家具罩，纺织品制家具罩与1802皮制家具罩类似，与第十版及以前版本1802皮制家具套交叉检索。<br />',NULL,'2017-05-08 23:07:13',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (301,24,'2409 ','特殊用布','（一）伊斯兰教隐士用龛（布）240073<br /><br />（二）※哈达C240048<br />注：本类似群各部分之间商品不类似。<br />',NULL,'2017-05-08 23:07:13',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (302,24,'2410 ','旗','旗帜240006，旗（非纸制）240042<br />',NULL,'2017-05-08 23:07:13',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (303,24,'2411 ','寿衣','寿衣240041<br />',NULL,'2017-05-08 23:07:13',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (304,25,'2501 ','衣物','工装裤250010，工作服250010，毛衣250034，套头衫250034，衬衫250042，短袖衬衫250044，服装*250045，裘皮服装250049，套服250056，成品衣250057，马裤（穿着）250063，裤子250064，外套250066，针织服装250071，华达呢（服装）250077，马甲250082，上衣250086，防水服 250087，裙子250090，仆侍人员、行会会员等穿的制服250093，运动衫250094，围裙（衣服）250096，皮制长外衣250103，连衣裙250109，大衣250115，轻便大衣250115，宽外袍250117，制服250119，呢绒夹克（服装）250120，夹克（服装）250121，纸衣服250122，带兜帽的风雪大衣250143，仿皮服装250150，皮衣250151，莎丽服250154，Ｔ恤衫250155，钓鱼背心250159，裙裤250164，斗篷250165，纱笼250166，紧腿裤（裤子）250168，无袖罩裙250169，背心式紧身运动衣250172<br />女用背心250022，平脚短裤250023，紧身围腰（女内衣）250025，内衣250026，睡袍250033，紧身衣裤250051，连裤内衣250053，吸汗内衣250054，胸衣250055，紧身胸衣（内衣）250078，背心250082，紧身内衣（服装）250089，海滨浴场用衣250104，睡衣裤250108，睡衣250108，内裤250112，乳罩250114，浴衣250127，衬裙250144，带肩带的女式长内衣（内衣）250146，妇女连衫衬裤（内衣）250147，女式内裤250171<br />护衣汗垫250017，衣领（衣服）250020，衬衫前胸250043，可拆的衣领250050，成品衬里（服装的一部分）250068，衬衫抵肩250072，袖口250095，袖口（衣服）250095，服装口袋250106<br />※风衣C250001，羽绒服装C250002，旗袍C250003，妇女腹带C250004，童装C250005，磁疗衣C250006，胸罩衬垫（胸衬、胸垫）C250007，红外线衣C250030，药物用衣C250031，摄影背心C250032<br />注：1.内裤，女士内裤与0506月经内裤，卫生内裤类似，与第九版及以前版本0506卫生衬裤，卫生紧身内裤，卫生短内裤，卫生女裤，月经短内裤交叉检索；<br />2.童装与2502商品类似；<br />3.莎丽服与第九版及以前版本2505莎丽服交叉检索；<br />4.跨类似群保护商品：服装（2501，2502，2503，2504，2505），防水服（2501，2504）。。<br />',NULL,'2017-05-08 23:07:14',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (305,25,'2502 ','婴儿纺织用品','服装*250045，婴儿裤（服装）250058，婴儿全套衣250092，非纸制围涎250128<br />※婴儿睡袋C250008<br />注：1.本类似群商品与2501童装类似；<br />2.跨类似群保护商品：服装*（2501，2502，2503，2504，2505）。<br />',NULL,'2017-05-08 23:07:14',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (306,25,'2503 ','特种运动服装','驾驶员服装250002，服装*250045，滑水防潮服250052，骑自行车服装250065，游泳帽250124，游泳裤250125，男用游泳裤250125，游泳衣250126，体操服250149<br />※柔道服C250009，摔跤服C250010<br />注：跨类似群保护商品：服装*（2501，2502，2503，2504，2505）。<br />',NULL,'2017-05-08 23:07:14',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (307,25,'2504 ','不透水服装','服装*250045，防水服250087<br />※雨衣C250011，雨披C250033<br />注：1.防水服与0919防水衣类似；<br />2.跨类似群保护商品：服装（2501，2502，2503，2504，2505），防水服（2501，2504）。<br />',NULL,'2017-05-08 23:07:14',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (308,25,'2505 ','戏装','服装*250045，化装舞会用服装250153<br />※戏装C250012，秧歌服C250013，舞衣C250014<br />注：跨类似群保护商品：服装*（2501，2502，2503，2504，2505）。<br />',NULL,'2017-05-08 23:07:14',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (309,25,'2506 ','特殊用鞋','<br />注：本类似群第十版时移入2507类似群。<br />',NULL,'2017-05-08 23:07:14',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (310,25,'2507 ','鞋','足球靴250075，足球鞋250075，体操鞋250085，足球鞋钉250134，滑雪靴250145<br />鞋（脚上的穿着物）*250003，浴室凉鞋250004，浴室拖鞋250005，靴*250014，半统靴250015，系带靴子250019，草鞋250073，套鞋250080，高统橡胶套鞋250080，拖鞋250101，海滨浴场用鞋250105，木鞋250110，凉鞋250111，鞋*250130，运动鞋*250132，运动靴*250141，毡靴250173<br />鞋用防滑配件250001，鞋尖250016，靴帮250040，鞋内底250041，鞋用金属配件250048，鞋面250061，护腿鞋罩250062，护踝鞋罩250062，护腿鞋罩用系带250083，裤脚系带250083，鞋后跟250116，鞋用滚边250118，鞋底250129，鞋跟250131，短靴 250175<br />※跳鞋C250015，跑鞋（带金属钉）C250016，爬山鞋C250017，雨鞋C250018，鞋垫C250019，爬山鞋（带金属钉）C250029<br />注：本类似群商品与第九版及以前版本2506商品交叉检索。<br />',NULL,'2017-05-08 23:07:14',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (311,25,'2508 ','帽','贝雷帽250009，帽子（头戴）250012，无沿便帽250024，风帽（服装）250027，帽衬架（支撑架）250028，帽檐250030，帽250046，帽子250047，耳套（服装）250059，大礼帽250076，僧帽（帽子）250100，头带（服装）250142，纸帽子（服装）250162，空顶帽250170<br />※斗笠C250020，儿童头盔C250021<br />',NULL,'2017-05-08 23:07:14',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (312,25,'2509 ','袜','长袜250006，吸汗长袜250007，长袜后跟250008，袜250013，短袜250036，吊袜带250037，袜带250038，吊袜带（长袜用）250039，紧腿裤（暖腿套）250088，暖腿套250088，非电暖脚套250133，吸汗袜 250176<br />※袜裤C250022，袜套C250023<br />',NULL,'2017-05-08 23:07:14',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (313,25,'2510 ','手套（不包括特种手套）','手套（服装）250067，手笼（服装）250097，连指手套250099，滑雪手套250167<br />',NULL,'2017-05-08 23:07:14',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (314,25,'2511 ','领带，围巾，披巾，面纱','长皮毛围巾（披肩）250011，披肩250032，领带250060，围巾250069，裘皮披肩250074，女式披肩250102，面纱（服装）250123，班丹纳方绸（围脖儿）250148，披巾250152，爱斯特式领带250157，西服袋巾250161，围脖250021，短围巾250021<br />※领花C250024，领结C250025，领巾C250026，头巾C250035，包头巾 250156<br />',NULL,'2017-05-08 23:07:14',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (315,25,'2512 ','腰带，服装带','衣服吊带250018，背带250018，服装带（衣服）250031，腰带250079，钱带（服装）250160<br />※皮带（服饰用）C250027<br />注：腰带，皮带（服饰用）与2603皮带扣类似。<br />',NULL,'2017-05-08 23:07:15',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (316,25,'2513 ','单一商品','（一）十字褡250035，修女头巾250084，神父左臂上佩戴的饰带250098，（牧师、神父穿的）白麻布长袍250174，宗教服装C250028<br /><br />（二）浴帽250158<br />睡眠用眼罩250163<br />※婚纱C250028<br />注：1.本类似群各部分之间商品不类似；<br />2.本类似群第（二）部分为单一商品，各自然段间互不类似。<br />',NULL,'2017-05-08 23:07:15',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (317,26,'2601 ','花边，饰品及编带','发带260013，衣服饰边260018，花边260019，箍袖带260023，儿童牵引带260025，鞋带260034，衣边带260047，假褶边260056，流苏花边260060，编带260062，流苏（缝纫用品）260063，褶边（花边）260066，毛线花边260067，花边饰品260068，衣服的金银饰带260068，饰带（缝纫品）260076，饰边小环（花边）260080，裙子荷叶边260084，服装褶边260086，松紧带260095，服装镶边带260096，窗帘边幅带260120<br />绣花饰品260028，花哨的小商品（绣制品）260028，花彩装饰（绣制品）260057，银线制绣品260093，绣金制品260094<br />※丝边C260001，帽边C260002，背包带C260003，帽带C260004，拉链带C260005，线带C260006，飘带C260007，花线扎带C260008，线轮带C260009，汗带C260010，荷包袋C260011，绳编工艺品C260023<br />注：本类似群与2602中第一自然段商品类似。<br />',NULL,'2017-05-08 23:07:15',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (318,26,'2602 ','不属别类的服饰品，饰针','鸵鸟羽毛（服装附属品）260011，帽饰品（非贵重金属）260016，鞋饰品（非贵重金属）260035，绳绒线织物（花边）260037，衣服装饰品260064，云母亮片（服饰用）260071，鸟羽毛（服装配件）260074，金属箔（服装饰品）260075，衣服装饰用亮片260077，羽毛（服装饰件）260082，头饰（小绒球）260083，玫瑰花饰（缝纫用品）260085，非制首饰用珠子260123，补花（缝纫用品）260128<br />发卡260015，臂章260024，臂带（服装配件）260024，胸针（服装配件）260027，头发装饰品260038，卷发夹260039，发夹260040，发针260041，发网260042，长别针260090，别针（非首饰）260100，非贵重金属制佩戴徽章260101，装饰徽章（扣）260113，发用蝴蝶结260114，染发用帽260115，绶带260117，卷发纸260121，卷发器（非手工具）260127<br />注：1.第一自然段商品与2601商品类似。<br />2.卷发器（非手工具）与0806烫发钳，烫发用铁夹，卷发用手工具类似，与第九版及以前版本0806卷发用手工具（非电），0924电热卷发器交叉检索。<br />',NULL,'2017-05-08 23:07:15',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (319,26,'2603 ','钮扣，领钩扣，拉链','鞋扣（鞋链）260001，服装扣260010，钮扣*260021，揿扣260022，背带钩扣260026，吊带钩扣260026，皮带扣260031，鞋钩260033，鞋眼260036，胸衣扣260048，女衫纽扣260048，挂钩（服饰用品）260052，拉链260053，服装扣眼260073，手提袋拉链260087，包用拉链260087，鞋扣260088，扣子（服装配件）260097，紧身胸衣钩260098，搭扣带260116，骑自行车者用的裤夹260119，地毯钩260122<br />※尼龙搭扣C260012<br />注：1.皮带扣与2512腰带、皮带（服饰用）类似；<br />2.本类似群商品与第八版及以前版本1403贵重金属扣交叉检索。<br />',NULL,'2017-05-08 23:07:15',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (320,26,'2604 ','假发，假胡须','假胡子260014，假发260043，发辫260044，发束260044，假髭260072，假发套260079，男子假发260089，接发片260125，人类的头发260126<br />',NULL,'2017-05-08 23:07:15',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (321,26,'2605 ','缝纫用具（线除外）','针*260002，鞋匠用针260003，缝纫针260004，梳羊毛机用针260005，装订针260006，织补针260007，马具用针260008，编织针260009，针线盒260049，缝纫用顶针260050，钩针260051，针插260055，织鱼网的梭260058，除线以外的缝纫用品*260070，针插260078，针盒260091，针匣260092，绣花丝线或绒线用绕轴（非机器部件）260124，针线套装 260130，昆虫针 260131，绣花 针 260132<br />※针织机针C260013，纺织钢针C260014，罗纹针C260015，双头针C260016，经编机针C260017，横机针C260018，棉毛针C260019，毛衣针C260020<br />注：  1.本类似群商品与第八版及以前版本1402贵重金属针，贵重金属针盒交叉检索；<br />2.昆虫针与第十版及以前版本 1611 昆虫针交叉检索。<br />',NULL,'2017-05-08 23:07:15',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (322,26,'2606 ','假花','人造花260059，人造水果260061，人造花环260065，人造花制花环260099，人造植物260129<br />※人造盆景C260021，纸拉花C260022<br />',NULL,'2017-05-08 23:07:15',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (323,26,'2607 ','硬托衬骨','妇女紧身衣上衬骨260012，胸罩衬骨260012，织补架260020，衣领托260046，服装垫肩260118<br />',NULL,'2017-05-08 23:07:15',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (324,26,'2608 ','修补纺织品用热粘胶片','修补纺织品用热粘和补片260081，纺织品装饰用热粘合补片（缝纫用品）260111<br />',NULL,'2017-05-08 23:07:15',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (325,26,'2609 ','亚麻布标记用品','亚麻织品标记用数字或字母260032，亚麻织品标记用交织字母饰片260032，亚麻织品标记用数字260045，亚麻织品标记用字母260069，竞赛者用号码260112<br />',NULL,'2017-05-08 23:07:15',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (326,26,'2610 ','茶壶保暖套','<br />注：本类似群商品移入2111类似群。<br />',NULL,'2017-05-08 23:07:16',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (327,27,'2701 ','地毯','地毯270011，小地毯270011<br />注：本类似群商品与2403纺织品制墙上挂毯，纺织品制壁挂类似，与第九版及以前版本2403纺织品挂毯（墙上挂帘帷），纺织品壁挂交叉检索。<br />',NULL,'2017-05-08 23:07:16',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (328,27,'2702 ','席类','垫席*270006，苇席270009<br />※席C270001，枕席C270002<br />',NULL,'2017-05-08 23:07:16',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (329,27,'2703 ','垫及其他可移动铺地板用品','浴室防滑垫270001，地板覆盖物270002，人工草皮270003，体育馆用垫270004，体操垫270004，门前擦鞋垫270008，汽车用垫毯270010，防滑垫270012，亚麻油地毡270014，地毯底衬270015，乙烯地板覆盖物270016，滑雪斜坡用编织绳垫270017<br />※地垫C270003，橡胶地垫C270004<br />',NULL,'2017-05-08 23:07:16',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (330,27,'2704 ','非纺织墙帷，墙纸及非纺织挂毯','墙纸270007，非纺织品制壁挂270013，纺织品制墙纸270018<br />注：非纺织品制墙上挂毯，非纺织品制壁挂与2403纺织品制墙上挂毯，纺织品制壁挂类似，与第九版及以前版本2403纺织品挂毯（墙上挂帘帷），纺织品壁挂交叉检索。<br />',NULL,'2017-05-08 23:07:16',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (331,28,'2801 ','娱乐器械，娱乐物品','游戏器具*280079<br /><br />（一）桌式足球桌280070，游戏机280128，自动和投币启动的游戏机280189，视频游戏机280214，带有液晶显示屏的便携式游戏机280215，娱乐场用视频游戏机280216，游戏机控制器280217<br /><br />（二）游戏套环280005，秋千280010，摇摆木马280014，九柱戏木柱280022，游戏用弹子280023，风筝280036，风筝线轴280037，游戏用筹码280040，木偶280087，牵线木偶280087，掷环游戏用铁圈280097，魔术器械280105，九柱戏器具280106，滑梯（玩具）280149，游乐场骑乘玩具280157，弹球机280199，视频游戏操纵杆 280228，便携式游戏机屏幕专用保护膜 280229<br />※电动游艺车C280001，转椅C280003，荡椅C280006，云梯C280008，浪船C280010，摇船C280011，滚环C280012，大积木C280013，转马C280014<br />注：1.本类似群第一自然段商品与各部分商品均类似；<br />2.本类似群各部分之间商品不类似；<br />3.游戏机，自动和投币启动的游戏机，视频游戏机，带有液晶显示屏的便携式游戏机，娱乐场用视频游戏机与第九版及以前版本0908与外接显示屏或监视器连用的娱乐器具，与外接显示屏或监视器连用的游戏机，及第八版及以前版本0908与电视机连用的娱乐器具，与电视连用的游戏机交叉检索；<br />4.自动和投币启动的游戏机与第七版及以前版本0908自动和投币启动的游戏机交叉检索；<br />5.大积木与2802积木（玩具）类似；<br />    6.便携式游戏机屏幕专用保护膜与第十版及以前版本 1703 已接受商品便携式游戏机屏 幕保护膜交叉检索。<br />',NULL,'2017-05-08 23:07:16',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (332,28,'2802 ','玩具','手枪火帽（玩具）280003，家养宠物玩具280004，玩具气球280012，玩具娃娃进食瓶280016，玩具*280024，积木（玩具）280025，盖房玩具280041，晚会、舞会道具280045，多米诺骨牌280054，玩具手枪280058，恶作剧玩具280062，拨浪鼓（玩具）280077，室内游戏玩具280078，玩具娃娃床280085，玩具小房子280086，玩具娃娃280088，演戏面具280089，狂欢节面具280090，成比例的模型车280091，玩具娃娃衣280103，玩具小屋280104，陀螺（玩具）280112，滑板车（玩具）280115，玩具气枪280117，起爆帽（玩具）280118，火帽（玩具）280118，活动玩具（床铃）280145，玩具熊280151，飞盘（玩具）280158，玩具用马蹄铁280159，长毛绒玩具280161，肥皂泡（玩具）280162，玩具车280163，捕蝴蝶用网280165，拼图玩具280168，雪景球280175，节日悬挂、由儿童击破以获得其中玩具和糖果的彩饰陶罐280183，由无线电控制的玩具车280185，万花筒280190，五彩纸屑280192，比例模型套件（玩具）280198，纸制晚会帽280204，填充玩具280208，玩具模型280218，玩具小塑像280219，面具（玩具）280222，俄罗斯套娃280223，玩具用控制器280224，玩具风车C280009，航模用陀螺仪和飞行稳定器 280227，玩具无人机 280230<br />※玩具汽车C280015，智能玩具C280016，模型飞机材料C280017，玩具手表C280018，玩具照相机C280019，玩具望远镜C290020，电子永动器（永磁摆动玩具）C280022，礼花玩具（非燃放型礼花）C280023，激光启动的玩具C280097<br />注：1.积木（玩具）与2801大积木类似；<br />2.万花筒与第七版及以前版本0911万花筒交叉检索；<br />3.五彩纸屑与第七版及以前版本1603五彩纸屑交叉检索；<br />4.玩具风车与第十版及以前版本2801风车交叉检索。<br />',NULL,'2017-05-08 23:07:16',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (333,28,'2803 ','棋，牌及辅助器材','国际跳棋280049，骰子280050，国际象棋280055，国际象棋棋盘280056，跳棋棋盘280057，骰子杯280074，十五子棋280114，棋盘游戏器具280156，麻将牌280160，宾果游戏牌280178，纸牌280191，扑克牌280191<br />※棋C280024，象棋C280025，跳棋C280027，围棋C280028，足球棋C280029，动物棋C280030，克朗棋C280031，全自动麻将桌（机）C280033<br />注：纸牌，扑克牌与第七版及以前版本1608纸牌，扑克牌交叉检索。<br />',NULL,'2017-05-08 23:07:16',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (334,28,'2804 ','球类及器材','运动球类球胆280001，体育活动用球280011，台球桌垫280013，台球280019，台球球杆用白垩280020，台球记分器280021，运动用球280030，保龄球设备和器械280031，球拍用肠线280033，高尔夫球杆280034，球拍线280042，板球包280047，曲棍球棒280048，带轮或不带轮的高尔夫球袋280061，运动用网280064，网球场地用网280065，球棒280081，球拍280081，乒乓球台280111，羽毛球280116，台球杆280121，台球球杆头280122，台球桌280123，投币启动式台球桌280124，网球抛球仪器280173，修理草皮工具（高尔夫球运动用）280179，高尔夫果岭叉280179，投球机280220，高尔夫球袋车280225<br />※网球拍C280034，羽毛球拍C280035，乒乓球拍C280036，板羽球拍C280037，球网C280038，门球器材C280039，球拍胶粒C280040，球及球拍专用袋C280041，高尔夫球的清洁机（高尔夫球运动用或高尔夫球场用）C280098，高尔夫球的挑选机（高尔夫球运动用或高尔夫球场用）C280099，高尔夫球的运送机（高尔夫球运动用或高尔夫球场用）C280100，高尔夫球的分配机（高尔夫球运动用或高尔夫球场用）C280101<br />',NULL,'2017-05-08 23:07:16',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (335,28,'2805 ','健身器材','锻炼用固定自行车280017，锻炼身体肌肉器械280044，锻炼身体器械280044，使身体复原的器械280044，扩胸器（锻炼肌肉用）280051，锻炼用扩胸器280051，锻炼用固定自行车滚轴280059，悬挂式滑行器280127，哑铃280221<br />※握力器C280042，压力器C280043，拉力器C280044，练身手榴弹C280045，健身球C280046，健胸器C280047，健美器C280048，健身床C280049，健身摇摆机（器）或运动摇摆机（器）C280050<br />注：本类似群商品与2807杠铃，举重器具类似。<br />',NULL,'2017-05-08 23:07:16',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (336,28,'2806 ','射箭运动器材','箭弓280007，射箭用器具280008，靶280038，泥鸽投射器280080，泥鸽（靶子）280101，电子靶280193<br />',NULL,'2017-05-08 23:07:16',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (337,28,'2807 ','体操、举重、田径、冰雪及属于本类的其他运动器材','（一）滑雪板边刃280009，有舵雪车280026，体育活动器械280043，运动铁饼280052，滑雪板用蜡280063，滑雪板捆绑带280066，飞镖280067，鱼叉枪（体育用品）280071，杠铃280075，海豹皮（盖滑雪板用）280100，冲浪板280102，滑雪板用刮板280108，滑雪板底部覆盖物280109，滑雪板280110，雪橇（体育用品）280113，冲浪皮划艇280125，帆板280126，体操器械280129，击剑用武器280130，登山套具280142，滑翔伞280146，滑板280148，跳板（运动器材）280150，滑水橇280152，滑雪板和冲浪板专用袋280166，风帆滑水板用挽具280167，风帆滑水板用桅杆280169，彩弹枪（体育器具）280170，彩弹（彩弹枪用弹药）（体育器具）280171，冲浪板用带280172，起跑器（体育运动用）280174，趴板（冲浪用）280177，拳击用吊袋280184，弹弓（体育用具）280188，滑雪单板280197，上升器（登山设备）280201，游泳用打水板280205，蹦床280209，撑杆跳高用撑杆280210，桨式冲浪板 280226<br />※单杠C280051，双杠C280052，高低杠C280053，平衡木C280054，双环C280055，鞍马C280056，跳箱C280057，跳跃器C280058，吊绳C280059，铅球C280060，举重器具C280061，爬杆C280062，吊环滑车C280064，跳板C280065，藤圈C280066，体操凳C280067，助跑器C280068，倒立台C280070，体操台C280071，跳高架C280072，撑高跳竿C280073，运动绳（跳绳、拔河绳）C280074，运动棒C280075，发令枪C280077，民族体育运动器具（刀、剑）C280078，飞盘C280080，沙箱C280081，跳台C280082，沙袋C280083，毽子C280102<br /><br />（二）狩猎用哨子280180<br />※口哨C280076<br />注：1.本类似群各部分之间商品不类似；<br />2.滑翔伞与1209降落伞类似；<br />3.杠铃，举重器具与2805商品类似；<br />4.滑板与第八版及以前版本2802滑板（玩具）交叉检索；<br />5.毽子与第九版及以前版本2801毽子交叉检索。<br />',NULL,'2017-05-08 23:07:16',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (338,28,'2808 ','游泳池及跑道','（一）游泳池（娱乐用品）280095<br /><br />（二）※塑胶跑道C280084<br />注：本类似群各部分之间商品不类似。<br />',NULL,'2017-05-08 23:07:16',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (339,28,'2809 ','运动防护器具及冰鞋','（一）击球手用手套（运动器件）280015，拳击手套280032，护胫（体育用品）280046，竞技手套280072，游泳用鸭脚蹼280093，游泳脚蹼280093，击剑用面罩280131，击剑用防护手套280132，击剑手套280132，棒球手套280141，护肘（体育用品）280143，护膝（体育用品）280144，保护垫（运动服部件）280147，高尔夫球手套280153，举重用皮带（体育用品）280176，运动员用松香280186，男性下体弹力护身（体育用品）280196，翼型浮袋280211，游泳浮带 280212，游泳浮力背心280213<br />※护腰C280085，护掌C280086，护腿C280087，护臂C280088，护肚C280089，运动腰带C280090，护面C280091，护胸C280092，护身C280093，护腕C280094，游泳圈C280103<br /><br />（二）连冰刀的溜冰鞋280028，旱冰鞋280098，（冰刀）冰鞋280099，轮滑鞋280182，雪鞋280187<br />注：1.本类似群各部分之间商品不类似；<br />2.翼型浮袋，游泳圈，游泳浮力背心与0919救生圈，救生衣类似，与第九版及以前版本0919洗澡或游泳用浮囊，游泳圈，游泳救生圈，游泳救生衣交叉检索。<br />',NULL,'2017-05-08 23:07:17',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (340,28,'2810 ','圣诞树用的装饰品','合成材料制圣诞树280006，爆炸式棒棒糖（圣诞节拉炮）280027，爆炸式棒棒糖（玩具爆竹）280027，圣诞树用烛台280029，圣诞树用小铃280039，圣诞树用人造雪280096，圣诞树用装饰品（照明用物品和糖果除外）280119，圣诞树架280120<br />',NULL,'2017-05-08 23:07:17',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (341,28,'2811 ','钓具','人造钓鱼饵280002，钓鱼杆280035，钓鱼用抄网280060，钓鱼用浮子280069，钓鱼钩280076，打猎或钓鱼用诱饵280082，狩猎或钓鱼用诱饵280082，钓鱼用具280083，钓鱼线280084，钓鱼用绕线轮280092，渔篓（捕鱼陷阱）280094，钓鱼用肠线280107，咬钩指示器（钓具）280154，咬钩传感器（钓具）280155，狩猎或钓鱼用香味诱饵280194<br />',NULL,'2017-05-08 23:07:17',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (342,28,'2812 ','单一商品','拉拉队用指挥棒280164<br />伪装掩蔽物（运动用品）280195<br />抽奖用刮刮卡280207<br />※球拍用吸汗带C280096<br />注：1.本类似群为单一商品，各自然段间互不类似；<br />2.抽奖用刮刮卡与第九版及以前版本16类1605已接受商品彩票，刮刮卡等类似商品交叉检索。<br />',NULL,'2017-05-08 23:07:17',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (343,29,'2901 ','肉，非活的家禽，野味，肉汁','血肠290013，牛肉清汤290014，肉汤290014，牛肉清汤汤料290015，猪肉食品290018，牛肉清汤浓缩汁290023，肉汤浓缩汁290023，油炸丸子290036，肉290046，肉冻290049，猎物（非活）290050，火腿290063，浓肉汁290068，熏肉290076，食用动物骨髓290081，肝酱290088，香肠290097，盐腌肉290098，牛肚290112，家禽（非活的）290114，肝290124，腌制肉290137，猪肉290142，捣碎的香肠290153<br />人食用蚕蛹290151<br />食用燕窝290143，日式烤鸡肉串 290193，韩式烤牛肉 290194<br />※风肠C290002，板鸭C290003，肉片C290004，肉干C290005，肉脯C290006，冻田鸡腿C290007，肉松C290008，肉糜C290009，蜂蛹C290010<br />注：浓肉汁，牛肉清汤，牛肉清汤汤料，肉汤，肉汤浓缩汁，牛肉清汤浓缩汁与2905汤及3016调味肉汁类似。<br />',NULL,'2017-05-08 23:07:19',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (344,29,'2902 ','非活水产品','（一）食用海藻提取物290002<br /><br />（二）鱼290006，鱼子酱290016，甲壳动物（非活）290037，小龙虾（非活）290040，鱼片290041，鱼（非活的）290047，鲱鱼（非活）290055，龙虾（非活）290057，牡蛎（非活）290061，食用鱼胶290062，多刺龙虾（非活的）290075，贝壳类动物（非活）290082，贻贝（非活）290083，沙丁鱼（非活）290106，鲑鱼（非活）290107，金枪鱼（非活）290109，鱼制食品290125，蛤（非活）290132，明虾（非活）290135，腌制鱼290136，虾（非活）290138，人食用鱼粉290145，盐腌鱼290149，海参（非活）290150，鱼慕斯290167，加工过的鱼籽290170<br />※鱼翅C290011，鱼肚C290012，鱼肉干C290013，鱼松C290014，鱿鱼C290015，海米C290016，虾松C290017，海蜇皮C290018，海胆黄C290019，干贝C290020，蛤蜊干C290021，蚬子干C290022，海螺干C290023，蛏干C290024，虾酱C290025<br />注：1.本类似群各部分之间商品不类似；<br />2.第（一）部分商品与第九版及以前版本3005螺旋藻（非医用营养品）类似。<br />',NULL,'2017-05-08 23:07:19',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (345,29,'2903 ','罐头食品（软包装食品不包括在内，随原料制成品归组）','鱼罐头290144，水果罐头290146，肉罐头290147，蔬菜罐头290152<br />※水产罐头C290026，鹌鹑蛋罐头C290027<br />',NULL,'2017-05-08 23:07:19',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (346,29,'2904 ','腌渍、干制水果及制品','（一）腌制水果290017，脱水椰子290021，冷冻水果290025，葡萄干290027，水果蜜饯290035，糖渍水果290035，椰枣290038，炖熟的水果290043，果肉290045，腌橄榄290090，果皮290115，碎杏仁290117，水果片290131，浸酒的水果290133，食用花粉290134，以水果为主的零食小吃290160，糖煮水果290179<br />油炸土豆片290019，土豆煎饼290148，土豆片290154，低脂土豆片290176<br />花生酱290007，果酱290024，柑桔酱290079，苹果泥290155，蔓越莓果酱（蜜饯）290156，芝麻酱290157，糊状山梨豆（鹰嘴豆酱）290158，水果色拉 290104，加工过的水果制成的拼盘 290191， 腌制浆果 290198<br />※桂花C290028，青丝C290029，红丝C290030，糖玫瑰C290031，柿饼C290032，百合干C290033，柑饼C290034，干桂圆C290035，陈皮梅C290036，话梅C290037，干荔枝C290038，山楂片C290039，桂花姜C290040，莲子C290041，干枣C290042，以果蔬为主的零食小吃C290093，椰茸 C290099，莲茸 C290100，芝麻茸 C290101<br /><br />（二）※加工过的槟榔C290094<br />注：1.本类似群各部分之间商品不类似；<br />2.食用花粉与3103花粉（原材料）类似；<br />3.土豆片，油炸土豆片，低脂土豆片，以果蔬为主的零食小吃与第八版及以前版本3010膨化土豆片交叉检索；<br />4.水果片，以水果为主的零食小吃，以果蔬为主的零食小吃与第八版及以前版本3010膨化水果片、蔬菜片交叉检索；<br />5.跨类似群保护商品：以果蔬为主的零食小吃（2904第（一）部分，2911）；    6.水果色拉与第十版及以前版本 2909 交叉检索；    7.椰茸，莲茸，芝麻茸与第十版及以 前版本 3007 椰茸，莲茸，芝麻茸交叉检索。<br />',NULL,'2017-05-08 23:07:19',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (347,29,'2905 ','腌制、干制蔬菜','德式泡菜290020，汤290026，腌小黄瓜290028，腌制蔬菜290029，熟蔬菜290030，干蔬菜290031，姜酱290051，食用腌黄豆290052，蔬菜汤料290066，烹饪用蔬菜汁290067，腌扁豆290077，腌制的洋葱290089，酸辣泡菜290094，泡菜290095，腌制豌豆290096，制汤剂290099，番茄泥290101，蔬菜色拉 290102，烹调用番茄汁290110，腌制块菌290113，腌制蘑菇290120，腌豆290123，烤紫菜290159，朝鲜泡菜290162，阿吉瓦（腌辣椒）290165，蔬菜慕斯290169，食用预制芦荟290172，腌制蒜290173，番茄酱290184，西葫芦泥290185，茄子泥290186，烹饪用花生乳290187，烹饪用杏仁乳290188，腌<br />制洋蓟290190<br />※酸姜C290043，咸菜C290044，五味姜C290045，榨菜C290046，五香萝卜C290047，脱水菜C290048，速冻方便菜肴C290049，冬菜C290050，萝卜干C290051，白菜干C290052，干菜笋C290053，大头菜C290054，黑菜C290055，百合菜C290056，酱菜C290057，腐乳C290058，速冻菜C290059，紫菜C290060，海菜C290061，海带C290062，海带粉C290063，笋干C290064，黄花菜C290065，食用干花C290092<br />注：1.酱菜与3016酱菜（调味品）类似；<br />2.番茄泥，烹调用番茄汁，番茄酱与3016番茄酱（调味品），番茄调味酱类似，与第十版及以前版本番茄酱交叉检索；<br />3.汤与2901浓肉汁，牛肉清汤，牛肉清汤汤料，肉汤，肉汤浓缩汁，牛肉清汤浓缩汁及3016调味肉汁类似；    4.蔬菜色拉与第十版及以前版本 2909 交叉检索。<br />',NULL,'2017-05-08 23:07:19',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (348,29,'2906 ','蛋品','蛋清290012，蛋黄290064，蛋*290086，蛋粉290087，食用蜗牛蛋290139<br />※咸蛋C290066，皮蛋（松花蛋）C290067，鹌鹑蛋C290068<br />',NULL,'2017-05-08 23:07:19',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (349,29,'2907 ','奶及乳制品','黄油290008，黄油乳脂290011，奶油（奶制品）290033，奶酪290034，牛奶290039，小牛皱胃中的凝乳（制干酪用）290042，酸奶290065，克非尔奶酒（奶饮料）290070，马奶酒（奶饮料）290071，乳酒（奶饮料）290071，牛奶饮料（以牛奶为主的）290072，乳清290073，牛奶制品290074，人造黄油290078，搅打过的奶油290141，凝乳290161，豆奶（牛奶替代品）290163，奶昔290164，无酒精蛋奶酒290168，白朊牛奶290174，蛋白质牛奶290174，烹饪用牛奶发酵剂290178，炼乳290180，斯美塔那酸奶油290181，俄式熟酸乳290182，俄式酸牛奶290183，米浆（牛奶替代品）290189，奶粉*290192<br />※奶茶（以奶为主）C290069，可可牛奶（以奶为主）C290070，牛奶酱C290097，豆奶粉C290098<br />注：1.乳清与3202乳清饮料类似；<br />2.酸奶与3013冻酸奶（冰冻甜点）类似；<br />3.牛奶，牛奶饮料（以牛奶为主），牛奶制品，白朊牛奶，蛋白质牛奶，奶粉与 0502 婴儿用含乳面粉，婴儿食品，婴儿配方奶粉，婴儿奶粉类似，与第九版及以前版本 0502 蛋白 牛奶，白朊牛奶交叉检索；<br />4.克非尔奶酒（奶饮料），马奶酒（奶饮料），乳酒（奶饮料），牛奶饮料（以牛奶为主），豆奶（牛奶替代品），奶昔，奶茶（以奶为主），可可牛奶（以奶为主）与3202商品类似；与3001加奶可可饮料，加奶咖啡饮料，含牛奶的巧克力饮料，咖啡饮料，可可饮料，巧克力饮料类似；与3002第（二）部分类似；<br />5.豆奶（牛奶替代品）与第十版及以前版本3011豆浆，豆汁交叉检索；<br />6.豆奶粉与第十版及以前版本3011豆奶粉交叉检索。<br />',NULL,'2017-05-08 23:07:19',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (350,29,'2908 ','食用油脂','食用油脂290005，食用可可脂290009，椰子油脂290010，食用菜子油290022，食用菜油290022，食用油290032，制食用脂肪用脂肪物290053，涂面包片用脂肪混合物290054，玉米油290058，食用棕榈果仁油290059，芝麻油290060，食用棕榈油290084，食用橄榄油290091，食用骨油290092，猪油290103，食用板油290108，食用葵花籽油290111，椰子脂290121，椰子油290122，烹饪用亚麻籽油290175，烹饪用卵磷脂290177<br />※类可可脂C290072<br />',NULL,'2017-05-08 23:07:19',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (351,29,'2909 ','色拉','<br />',NULL,'2017-05-08 23:07:19',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (352,29,'2910 ','食用果胶','明胶*290003，果冻290044，食用果冻290048，烹饪用果胶290093，烹饪用藻酸盐290116<br />※水晶冻C290073，琼脂（食用）C290074，口香糖胶基C290075<br />注：果冻，食用果冻与3004果冻（糖果）类似。<br />',NULL,'2017-05-08 23:07:19',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (353,29,'2911 ','加工过的坚果','加工过的坚果290085，加工过的花生290118，加工过的葵花籽290166，加工过的种子290171，加工过的榛子290197，糖渍坚果 290195，已调味的坚果 290196，加工过的榛子 290197<br />※加工过的瓜子C290076，加工过的松子C290077，加工过的香榧C290078，加工过的开心果C290080，糖炒栗子C290081，开花豆C290082，五香豆C290083，熟制豆C290084，熟芝麻C290085，以果蔬为主的零食小吃C290093，糖松子 C290102， 糖核桃 C290103，鱼皮花生 C290104，琥珀花生 C290105，怪味豆 C290106<br />注：跨类似群保护商品：1.以果蔬为主的零食小吃（2904第（一）部分，2911）；<br />    2.糖松子，糖核桃，鱼皮花生，琥珀花生，怪味豆与第十版及以前版本 3004 糖松子， 糖核桃，鱼皮花生，琥珀花生，怪味豆交叉检索。<br />',NULL,'2017-05-08 23:07:19',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (354,29,'2912 ','菌类干制品','※冬菇C290086，木耳C290087，发菜C290088，干食用菌C290089<br />',NULL,'2017-05-08 23:07:19',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (355,29,'2913 ','食物蛋白，豆腐制品','烹饪用蛋白290001，豆腐290140<br />※豆腐制品C290090，腐竹C290091<br />注：豆腐制品与3011食用面筋类似。<br />',NULL,'2017-05-08 23:07:20',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (356,30,'3001 ','咖啡，咖啡代用品，可可','咖啡用调味品300010，可可300024，咖啡300026，未烘过的咖啡300027，作咖啡代用品的植物制剂300028，菊苣（咖啡代用品）300036，加奶可可饮料300083，加奶咖啡饮料300084，含牛奶的巧克力饮料300085，咖啡饮料300149，可可饮料300150，巧克力饮料300151，人造咖啡300152，巧克力慕斯酱300204<br />※麦乳精C300001，乐口福C300002，巧克力酱C300137<br />注：1.加奶可可饮料，加奶咖啡饮料，含牛奶的巧克力饮料，咖啡饮料，可可饮料，巧克力饮料与2907克非尔奶酒（奶饮料），马奶酒（奶饮料），乳酒（奶饮料），牛奶饮料（以牛奶为主），豆奶（牛奶替代品），奶昔，奶茶（以奶为主），可可牛奶（以奶为主）类似，与第十版及以前版本马或骆驼乳酒（奶饮料），乳酒（牛奶饮料）交叉检索；<br />2.巧克力酱、巧克力慕斯酱与第八版及以前版本2904果仁巧克力酱交叉检索。<br />3.加奶可可饮料，加奶咖啡饮料，含牛奶的巧克力饮料，咖啡饮料，可可饮料，巧克力饮料与3002第（二）部分，3202商品类似。<br />',NULL,'2017-05-08 23:07:21',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (357,30,'3002 ','茶、茶饮料','（一）茶*300037，用作茶叶代用品的花或叶300221<br /><br />（二）冰茶300186，茶饮料300187<br />注：1.本类似群各部分之间商品不类似；<br />2.第（二）部分与3202类似；<br />3.第（二）部分与3001加奶可可饮料，加奶咖啡饮料，含牛奶的巧克力饮料，咖啡饮料，可可饮料，巧克力饮料类似。<br />4.第（二）部分与2907克菲尔奶酒（奶饮料），马奶洒（奶饮料），乳酒（奶饮料），牛奶饮料（以牛奶为主），豆奶（牛奶替代品），奶昔，奶茶（以奶为主），可可牛奶（以奶为主）类似，与第十版及以前版本马或骆驼乳酒（奶饮料），乳酒（牛奶饮料）交叉检索。<br />',NULL,'2017-05-08 23:07:21',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (358,30,'3003 ','糖','天然增甜剂300053，糖*300069，烹饪用葡萄糖300077，棕榈糖300219<br />※白糖C300004，红糖C300005，冰糖C300006，方糖C300007<br />注：1.天然增甜剂与0113人造增甜剂（化学制剂）类似；<br />2.跨类似群保护商品：糖（3003，3004）。<br />',NULL,'2017-05-08 23:07:21',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (359,30,'3004 ','糖果，南糖，糖','圣诞树装饰用糖果300008，薄荷糖300019，甜食（糖果）300020，牛奶硬块糖（糖果）300032，口香糖*300035，巧克力300038，蛋白杏仁糖果300039，甜食300042，软糖（糖果）300067，糖*300069，麦芽糖300094，糖果锭剂300107，果仁糖300116，甘草糖300118，杏仁糖300138，花生糖300139，甘草茎糖（糖果）300147，糖果*300153，果冻（糖果）300176，蛋糕用巧克力装饰物300225，蛋糕用糖果装饰物300226，裹巧克力的坚果300227<br />※南糖C300008，米花糖C300009，黑麻片C300010，糖粘C300011，酥糖C300012，皮糖C300015，人参糖C300016，羊羹C300017，麦丽素C300019，奶片（糖果）C300021<br />注：1.果冻（糖果）与2910果冻，食用果冻类似；<br />2.跨类似群保护商品：甜食（3004，3006）；糖（3003，3004）。<br />',NULL,'2017-05-08 23:07:21',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (360,30,'3005 ','蜂蜜，蜂王浆等营养食品','食品用糖蜜300095，黄色糖浆300096，蜂蜜300098，蜂胶*300166，蜂王浆*300168<br />※花粉健身膏C300023，龟苓膏C300024，乳鸽精C300025，冰糖燕窝C300026，虫草鸡精C300027，秋梨膏C300028，苓贝梨膏C300029，燕窝梨膏C300030，桂圆膏C300031，荔枝膏C300032，枇杷膏C300033<br />注：1.本类似群与0501第（一）部分的第一、二自然段商品（人用药除外）和0502第二自然段商品类似；<br />2.黄色糖浆与3203制饮料用糖浆，杏仁糖浆，制柠檬汁用糖浆类似。<br />',NULL,'2017-05-08 23:07:21',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (361,30,'3006 ','面包，糕点','杏仁糊300004，未发酵面包300013，面包干300015，饼干300016，麦芽饼干300017，华夫饼干300022，小圆面包300023，蛋糕300029，甜食300042，即食玉米片300043，薄烤饼300047，姜饼300055，小蛋糕（糕点）300068，蛋白杏仁饼（糕点）300089，面包300093，馅饼（点心）300104，三明治300106，糕点300108，小黄油饼干300109，面包卷300110，布丁300115，果馅饼300129，燕麦食品300144，燕麦片300145，燕麦粥300146，薄脆饼干300174，蛋奶冻300175，木斯里麦片（由生燕麦、干果和坚果制的早餐食品）300177，米糕300178，面包屑300189，塔博勒色拉（一种由碾碎的干小麦、韭菜、西红柿、薄荷和欧芹制成的黎巴嫩色拉）300190，哈发糕300191，乳蛋饼300192，以谷物为主的零食小吃300195，以米为主的零食小吃300196，糕点用糖霜（糖衣）300203，甜点慕斯（甜食）300205，奶酪汉堡包（三明治）300208，人食用小麦胚芽300213，高蛋白谷物条300214，谷物棒300218，米布丁300228<br />※汉堡包C300039，麻花C300040，油茶粉C300041，茶汤面C300042，芝麻糊C300043，碗豆黄C300044，蜂糕C300045，热狗C300046，月饼C300132，米粉糊C300133<br />注：1.燕麦食品，燕麦片，燕麦粥与3008人食用的去壳谷物，麦片，薄片（谷类产品）类似与第八版及以前版本3008麦片交叉检索；<br />2.跨类似群保护商品：甜食（3004，3006）；以谷物为主的零食小吃（3006，3010）；以米为主的零食小吃（3006，3010）；人食用小麦胚芽（3006，3008）。<br />',NULL,'2017-05-08 23:07:21',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (362,30,'3007 ','方便食品','谷粉制食品300064，比萨饼300112，（意大利式）方形饺300117，肉馅饼300133，法式肉派300134，粗麦蒸糕300163，寿司300170，春卷300183，（墨西哥）炸玉米卷300184，乌克兰饺子300223，俄式肉饺300224<br />※炒饭C300048，粥C300049，年糕C300050，粽子C300051，元宵C300052，煎饼C300053，八宝饭C300054，豆沙C300055，醪糟C300056，火烧C300057，大饼C300058，馒头C300059，花卷C300060，豆包C300061，盒饭C300062，方便米饭C300063，肉泡馍C300064，泡粑C300065，叶儿粑C300066，椰茸C300067，莲茸C300068，芝麻茸C300069，饺子C300070，包子C300071，速冻玉米C300138<br />注：1.方便米饭与3009方便面类似；<br />2.跨类似群保护商品：谷粉制食品（3006，3007，3009，3012）。<br />',NULL,'2017-05-08 23:07:21',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (363,30,'3008 ','米，面粉（包括五谷杂粮）','谷类制品300034，谷粉*300057，豆类粗粉300058，玉米粉300059，玉米面300059，大麦粗粉300061，面粉300063，蛋糕粉300071，人食用的去壳谷物300080，玉米（磨过的）300091，玉米（烘过的）300092，去壳大麦300100，碾碎的大麦300105，米300119，西米300121，粗面粉300124，粗燕麦粉300142，去壳燕麦300143，薄片（谷类产品）300161，玉米片（碾碎的玉米粒）300197，玉米粗粉300198，人食用亚麻籽300212，人食用小麦胚芽300213，坚果粉300229<br />※汤圆粉C300072，生糯粉C300073，米粉（粉状）C300134<br />注：1.人食用的去壳谷物，薄片（谷类产品）与3006燕麦食品，燕麦片，燕麦粥类似；<br />2.跨类似群保护商品：人食用小麦胚芽（3006，3008）。<br />',NULL,'2017-05-08 23:07:22',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (364,30,'3009 ','面条及米面制品','（意式）面食300003，做蛋糕用面团300072，通心粉300090，面条300103，意式宽面条300103，意大利面条300126，意式细面条300132，食用麦芽膏300164，人食用麦芽300165，面条为主的预制食物300202，生面团300220，油酥面团300222，烹饪用米浆 300232，日式拉面 300234，日式煎菜饼（御好烧）用面糊 300236，可食用纸 300239，可食用米纸 300240<br />※挂面C300074，方便面C300075，方便粉丝C300075，玉米浆C300076，春卷皮C300077，米粉C300078<br />注：1.方便面与3007方便米饭类似；    2.可食用纸，可食用米纸与第十版及以前版本 1609 已接受商品包装用糯米纸交叉检索。<br />',NULL,'2017-05-08 23:07:22',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (365,30,'3010 ','谷物膨化食品','玉米花300044，以谷物为主的零食小吃300195，以米为主的零食小吃300196<br />※大米花C300079，虾味条C300080，锅巴C300081，米果C300082<br />注：跨类似群保护商品：以谷物为主的零食小吃（3006，3010）；以米为主的零食小吃（3006，3010）。<br />',NULL,'2017-05-08 23:07:22',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (366,30,'3011 ','豆粉，食用预制面筋','豆粉300062<br />※食用面筋C300139<br />注：食用面筋与2913豆腐制品类似。<br />',NULL,'2017-05-08 23:07:22',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (367,30,'3012 ','食用淀粉及其制品','烹饪食品用增稠剂300050，食用淀粉300065，香肠粘合料300088，土豆粉*300114，木薯淀粉300127，木薯粉300128<br />※百合粉C300088，魔芋粉C300089，栗粉C300090，菱角粉C300091，蕨粉C300093，粉丝（条）C300094，藕粉C300095，地瓜粉C300096，马铃薯粉C300097，龙虾片C300098，南瓜粉C300099<br />',NULL,'2017-05-08 23:07:22',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (368,30,'3013 ','食用冰，冰制品','冰淇淋300046，冰淇淋（可食用冰）凝结剂300074，冰淇淋凝结剂300074，食用冰凝结剂300074，天然或人造冰300075，小吃用冰300076，果汁刨冰300125，食用冰300136，冰淇淋粉300137，冻酸奶（冰冻甜点）300181<br />※冰棍C300100，冰糕C300101，冰砖C300102<br />注：1.冻酸奶（冰冻甜点）与2907酸奶类似；<br />2.果汁刨冰与3202无酒精果汁，无酒精果汁饮料，果汁，葡萄汁，柠檬水，未发酵的葡萄汁，果汁冰水（饮料），无酒精饮料，无酒精鸡尾酒，无酒精果茶，酸梅汤，植物饮料，乌梅浓汁（不含酒精）等含果汁的饮料类似。<br />',NULL,'2017-05-08 23:07:22',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (369,30,'3014 ','食盐','食物防腐盐300014，食盐300049，芹菜盐300123<br />注：本类似群商品与3015，3016商品类似。<br />',NULL,'2017-05-08 23:07:22',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (370,30,'3015 ','酱油，醋','醋300081，啤酒醋300148，酱油300179<br />※酱油防腐粉C300103，醋精C300104<br />注：本类似群商品与3014，3016商品类似。<br />',NULL,'2017-05-08 23:07:22',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (371,30,'3016 ','芥末，味精，沙司，酱等调味品','海藻（调味品）300002，茴香子300006，八角大茴香300007，非医用浸液300009，调味料300012，肉桂（调味品）300030，腌制刺山柑花蕾（调味品）300031，咖喱粉（调味品）300033，丁香（调味品）300040，调味品300041，姜黄*300051，香辛料300054，多香果（香料）300056，芥末粉300060，除香精油外的蛋糕用调味品300070，姜（调味品）300073，番茄酱（调味品）300082，芥末300101，肉豆蔻300102，胡椒（调味品）300111，胡椒300113，藏红花（佐料）300120，调味酱汁300122，除香精油外的食物用调味品300140，除香精油外的饮料用调味品300141，酱菜（调味品）300162，佐料（调味品）300167，海水（烹饪用）300169，番茄调味酱300171，蛋黄酱300172，（印度式）酸辣酱（调味品）300182，色拉用调味品300188，调味肉汁300193，豆酱（调味品）300194，腌制香草（调料）300201，水果酱汁（调味料）300206，腌泡汁300207，香蒜酱（调味料）300209，火腿糖汁300210，意式面食调味酱300217，蒜末（调味品）300230，烹饪用香草调味品 300130，味噌（调味品）300194<br />※涮羊肉调料C300105，豆豉C300106，香糟C300107，虾油C300108，糟油C300109，蚝油C300110，鱼露C300111，鲜虾露C300112，鸡精（调味品）C300113，鱼沙司C300114，虾味汁C300115，桂皮C300116，果子油C300117，辣椒油C300118，花椒粉C300119，鱼味粉C300120，五香粉C300121，海味粉C300122，食用烟熏多味料C300123，蒜汁C300124，味精C300125，调味酱C300126，豉油C300127，料酒C300141<br />注：1.酱菜（调味品）与2905酱菜类似；<br />2.番茄酱（调味品），番茄调味酱与2905番茄泥，烹调用番茄汁，番茄酱类似；<br />3.本类似群商品与3014，3015商品类似；<br />4.调味肉汁与2901浓肉汁，牛肉清汤，牛肉清汤汤料，肉汤，肉汤浓缩汁，牛肉清汤浓缩汁，2905汤类似；<br />5.除香精油外的饮料用调味品与3203饮料香精类似；<br />6.料酒与第十版及以前版本3301料酒交叉检索；<br />7.跨类似群保护商品：除香精油外的蛋糕用调味品（3016，3018）；除香精油外的食物用调味品（3016，3018）；除香精油外的饮料用调味品（3016，3018）。<br />',NULL,'2017-05-08 23:07:22',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (372,30,'3017 ','酵母','发面团用酵素300066，发酵剂300086，酵母*300087，泡打粉300199，苏打粉（烹饪用小苏打）300200，烹饪用酒石酸氢钾（塔塔粉）300215<br />※曲种C300128，酱油曲种C300129，烹饪用小苏打C300130，烹饪用碱C300131，烹饪用酶C300135<br />',NULL,'2017-05-08 23:07:22',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (373,30,'3018 ','食用香精，香料','食用芳香剂300011，食品用香料（含醚香料和香精油除外）300048，除香精油外的蛋糕用调味品300070，制糖果用薄300097，香兰素（香草代用品）300131，除香精油外的调味品300140，除香精油外的饮料用调味品300141<br />※葡萄酒提味用烤制的天然碎木片C300136<br />注：1.除香精油外的饮料用调味品与3203饮料香精类似；<br />2.跨类似群保护商品：除香精油外的调味品（3016，3018）；除香精油外的蛋糕用调味品（3016，3018）；除香精油外的饮料用调味品（3016，3018）。<br />',NULL,'2017-05-08 23:07:22',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (374,30,'3019 ','单一商品','搅稠奶油制剂300045<br />家用嫩肉剂300135<br />食用预制谷蛋白300078，烹饪用谷蛋白添加剂300216<br />注：本类似群为单一商品，各自然段间互不类似。<br />',NULL,'2017-05-08 23:07:22',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (375,31,'3101 ','未加工的林业产品','树木310008，圣诞树*310009，树干310010，灌木310011，未切锯木材310017，制木浆的木片310018，未加工木材310019，未加工软木310078，棕榈叶（棕榈树叶）310100，棕榈树310101，未加工树皮310139<br />',NULL,'2017-05-08 23:07:22',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (376,31,'3102 ','未加工的谷物及农产品（不包括蔬菜，种子）','燕麦310012，未加工可可豆310020，小麦310061，谷（谷类）310066，玉米310082，大麦*310095，黑麦310118，未加工的食用芝麻310120，未加工的稻310144，未加工的食用亚麻籽 310160<br />※豆（未加工的）C310001<br />',NULL,'2017-05-08 23:07:22',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (377,31,'3103 ','花卉，园艺产品，草木','啤酒花果穗310038，蛇麻球果310038，自然花制花环310044，草制覆盖物310046，自然花310055，装饰用干花310056，花粉（原材料）310057，干草310058，自然草皮310063，新鲜的园艺草木植物310070，植物310071，籽苗310072，啤酒花（蛇麻子）310073，球茎310091，花卉球茎310091，荨麻310096，藤本植物310104，辣椒（植物）310106，装饰用干植物310107，玫瑰树310117，芦荟（植物）310148<br />注：花粉（原材料）与2904食用花粉类似。<br />',NULL,'2017-05-08 23:07:22',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (378,31,'3104 ','活动物','供展览用动物310005，活动物310006，贝壳类动物（活的）310041，孵化蛋（已受精）310045，鱼卵310089，蚕种310090，活鱼310103，蚕310119，活家禽310123，小龙虾（活的）310133，甲壳动物310134，龙虾（活的）310135，贻贝（活）310136，牡蛎（活的）310137，多刺龙虾（活的）310140，海参（活的）310145，鲱鱼（活的）310154，鲑鱼（活的）310155，沙丁鱼（活的）310156，金枪鱼（活的）310157<br />※蚕蛹（活的）C310002，虾（活的）C310023<br />',NULL,'2017-05-08 23:07:23',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (379,31,'3105 ','未加工的水果及干果','（一）新鲜柑橘310002，坚果（水果）310004，新鲜浆果310013，甘蔗310021，新鲜栗子310027，新鲜柠檬310032，椰子壳310033，椰子310034，干椰肉310040，新鲜水果310062，桧树果310064，可乐果310074，新鲜榛子310087，新鲜橄榄310093，新鲜桔310094，松树球果310105，新鲜葡萄310115，扁桃（水果）310125，新鲜花生310126，新鲜水果制果篮 310161<br />※鲜枣C310003，西瓜C310004，甜瓜C310005，香蕉C310006，苹果C310007，石榴C310008，枇杷C310009，芒果C310010，樱桃C310011，荔枝C310012，菠萝C310013，柚子C310014，杨梅C310015，猕猴桃C310016，桃C310017，梨C310018，杏C310019<br /><br />（二）※新鲜槟榔C310024<br />注：本类似群各部分之间商品不类似。<br />',NULL,'2017-05-08 23:07:23',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (380,31,'3106 ','新鲜蔬菜','新鲜甜菜310015，新鲜角豆310022，新鲜蘑菇310024，菊苣根310029，新鲜菊苣310030，新鲜黄瓜310037，新鲜蔬菜310042，新鲜南瓜310043，鲜豆310054，新鲜莴苣310075，新鲜扁豆310076，新鲜洋葱310092，新鲜韭葱310108，新鲜豌豆310109，新鲜土豆310110，食用植物根310114，大黄（新鲜蔬菜）310116，新鲜块菌310121，新鲜菠菜310149，新鲜洋蓟310153，新鲜蒜310158，新鲜西葫芦 310159，人或动物食用海藻 310003<br />※鲜食用菌C310020，食用鲜花C310021，青蒜C310025，食用芦荟C310026，食用仙人掌C310027<br />注：1.大黄（新鲜蔬菜）与第十版及以前版本3103大黄交叉检索；<br />    2.人或动物食用海藻与第十版及以前版本 3108 人或动物食用海藻交叉检索。<br />',NULL,'2017-05-08 23:07:23',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (381,31,'3107 ','种子','未加工谷种310023，蘑菇繁殖菌310025，培育植物用胚芽（种子）310065，植物种子310068<br />※菌种C310022<br />',NULL,'2017-05-08 23:07:23',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (382,31,'3108 ','动物饲料','动物食品310007，牲畜用盐310014，糠310016，油渣饼310026，豆饼（饲料）310026，动物饲料用氧化钙310028，狗食用饼干310031，鸟食310035，牲畜用菜籽饼310036，动物食用糠料310039，动物食用酿酒废料310048，渣滓（饲料）310049，饲养备料310050，动物催肥剂310052，家畜催肥剂310052，米粉饲料310053，牲畜强壮饲料310059，牲畜饲料310060，饲料310060，动物食用谷类310067，家禽食用去壳谷物310069，动物用酵母310077，亚麻粉（饲料）310079，牲畜食用玉米饼310083，果渣310086，水果渣310086，动物食用谷粉310088，鸟用乌贼骨310097，稻草（饲料）310099，家畜催肥熟饲料310102，下蛋家禽用备料310111，动物饲料310112，蒸馏器蒸馏后余渣310122，动物食用豆科类种子和豆荚310124，动物食用花生粗粉310127，动物食用花生饼310128，动物用谷类加工的副产品310129，动物食用谷类残余产品310129，甘蔗渣（原料）310131，鱼饵（活）310132，宠物食品310138，动物可食用咀嚼物310141，宠物饮料310142，动物食用鱼粉310143，动物食用亚麻籽310150，动物食用亚麻籽粉310151，动物食用小麦胚芽310152<br />',NULL,'2017-05-08 23:07:23',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (383,31,'3109 ','麦芽','酿酒麦芽310084<br />',NULL,'2017-05-08 23:07:23',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (384,31,'3110 ','动物栖息用干草等制品','动物栖息用干草310080，动物栖息用泥炭310081，动物垫窝用干稻草310098，宠物用沙纸（垫窝用）310146，宠物用香沙310147<br />',NULL,'2017-05-08 23:07:23',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (385,32,'3201 ','啤酒','啤酒320002，姜汁啤酒320003，麦芽啤酒320004，制啤酒用麦芽汁320005，以啤酒为主的鸡尾酒320052<br />制啤酒用蛇麻子汁320021，麦芽汁（发酵后成啤酒）320025<br />',NULL,'2017-05-08 23:07:23',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (386,32,'3202 ','不含酒精饮料','无酒精果汁320001，姜汁汽水320003，无酒精果汁饮料320006，乳清饮料320007，果汁320010，水（饮料）320012，锂盐矿水320014，矿泉水（饮料）320015，起泡水320017，餐用矿泉水320018，葡萄汁320019，柠檬水320020，蔬菜汁（饮料）320022，，未发酵的葡萄汁320026，苏打水320028，果汁冰水（饮料）320029，番茄汁（饮料）320030，无酒精饮料320031，杏仁乳（饮料）320032，汽水320035，菝葜（无酒精饮料）320041，无酒精的开胃酒320042，无酒精鸡尾酒320043，无酒精果茶320044，等渗饮料320045，花生乳（无酒精饮料）320046，无酒精苹果酒320047，格瓦斯（无酒精饮料）320048，以蜂蜜为主的无酒精饮料320049，果昔320050，无酒精芦荟饮料320051，大豆为主的饮料（非牛奶替代品）320053，富含蛋白质的运动饮料 320054，米制饮料（非牛奶替代品）320055，咖啡味非酒精饮料 320056，茶味非酒精饮料 320057<br />※豆浆C320020，豆浆精C320021，豆汁C320022，可乐C320002，酸梅汤C320003，绿豆饮料C320004，乳酸饮料（果制品，非奶）C320007，奶茶（非奶为主）C320008，果子粉C320009，果子晶C320010，蒸馏水（饮料）C320011，饮用蒸馏水C320012，纯净水（饮料）C320013，耐酸饮料C320014，植物饮料C320015，豆类饮料C320016，姜汁饮料C320017，乌梅浓汁（不含酒精）C320018，米制饮料C320019<br />注：1.乳清饮料与2907乳清类似；<br />2.本类似群与2907克非尔奶酒（奶饮料），马奶酒（奶饮料），乳酒（奶饮料），牛奶饮料（以牛奶为主），豆奶（牛奶替代品），奶昔，奶茶（以奶为主），可可牛奶（以奶为主）类似，与第十版及以前版本马或骆驼乳酒（奶饮料），乳酒（牛奶饮料）交叉检索；<br />3.无酒精果汁，无酒精果汁饮料，果汁，葡萄汁，柠檬水，未发酵的葡萄汁，果汁冰水（饮料），无酒精饮料，无酒精鸡尾酒，无酒精果茶，酸梅汤，植物饮料，乌梅浓汁（不含酒精）等含果汁的饮料与3013果汁刨冰类似，与第九版及以前版本刨冰（冰），加果汁的碎冰（冰块）交叉检索；<br />4.格瓦斯（无酒精饮料）与九版以前3201克瓦斯淡啤酒（无酒精饮料）类似；<br />5.本类似群与3001加奶可可饮料，加奶咖啡饮料，含牛奶的巧克力饮料，咖啡饮料，可可饮料，巧克力饮料，3002第（二）部分类似；<br />6.豆浆，豆浆精，豆汁与第十版及以前版本3011豆浆，豆浆精，豆汁交叉检索。<br />',NULL,'2017-05-08 23:07:23',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (387,32,'3203 ','糖浆及其他供饮料用的制剂','饮料制作配料320008，饮料香精320009，制饮料用糖浆320011，汽水制作用配料320013，矿泉水配料320016，制柠檬水用糖浆320023，烈性酒配料320024，杏仁糖浆320027，起泡饮料用锭剂320033，起泡饮料用粉320034<br />注：1.制饮料用糖浆，杏仁糖浆，制柠檬汁用糖浆与3005黄色糖浆类似；<br />2.饮料香精与3016，3018除香精油外的饮料用调味品类似。<br />',NULL,'2017-05-08 23:07:23',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (388,33,'3301 ','含酒精的饮料（啤酒除外）','薄荷酒330001，果酒（含酒精）330002，苦味酒330003，茴芹酒（利口酒）330004，茴香酒（利口酒）330005，开胃酒*330006，亚力酒330007，蒸馏饮料330008，苹果酒330009，鸡尾酒*330010，柑香酒330011，蒸煮提取物（利口酒和烈酒）330012，葡萄酒330013，杜松子酒330014，利口酒330015，蜂蜜酒330016，樱桃酒330017，烈酒（饮料）330018，白兰地330019，酸酒（低等葡萄酒）330020，梨酒330021，清酒（日本米酒）330022，威士忌330023，酒精饮料原汁330024，酒精饮料浓缩汁330025，酒精饮料（啤酒除外）330026，含水果酒精饮料330031，米酒330032，朗姆酒330033，伏特加酒330034，预先混合的酒精饮料（以啤酒为主的除外）330035，尼瓦（以甘蔗为主的酒精饮料）330036，白酒330037<br />※汽酒C330001，清酒C330002，青稞酒C330003，黄酒C330004，食用酒精C330006，烧酒C330007<br />',NULL,'2017-05-08 23:07:24',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (389,34,'3401 ','烟草及其制品','烟草340003，嚼烟340012，雪茄烟340013，非医用含烟草代用品的香烟340019，香烟340020，小雪茄烟340025，烟用药草*340028，鼻烟340033，电子香烟340039，电子香烟用尼古丁替代液340040<br />※烟丝C340001，烟末C340002<br />',NULL,'2017-05-08 23:07:24',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (390,34,'3402 ','烟具','雪茄及香烟烟嘴上黄琥珀烟嘴头340002，烟袋340004，香烟嘴340005，烟斗340009，雪茄烟切刀340014，雪茄烟盒340015，香烟盒340016，雪茄烟烟嘴340017，袖珍卷烟器340021，香烟烟嘴340022，香烟烟嘴头340023，烟斗通条340026，烟斗搁架340030，烟罐340032，鼻烟壶340034，烟灰缸340036，吸烟者用痰盂340037，（防止烟草变干的）保润盒340038，吸烟者用口腔雾化器340041<br />注：本类似群与第八版及以前版本1402贵重金属雪茄烟盒，贵重金属香烟盒，贵重金属雪茄烟盒（匣），贵重金属制雪茄烟盒，贵重金属制香烟盒，贵重金属制雪茄烟烟嘴，贵重金属制香烟嘴，贵重金属烟灰缸交叉检索。<br />',NULL,'2017-05-08 23:07:24',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (391,34,'3403 ','火柴','火柴340001，火柴架340031，火柴盒340035<br />注：火柴架，火柴盒与第八版及以前版本1402贵重金属火柴盒架，贵重金属火柴盒交叉检索。<br />',NULL,'2017-05-08 23:07:24',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (392,34,'3404 ','吸烟用打火机','吸烟用打火机340007，点烟器用气罐340008，打火石340027<br />※打火机用丁烷储气筒C340004，丁烷气（吸烟用）C340005<br />',NULL,'2017-05-08 23:07:24',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (393,34,'3405 ','烟纸，过滤嘴','香烟过滤嘴340006，小本卷烟纸340010，烟斗吸水纸340011，卷烟纸340024<br />※烟用过滤丝束C340006<br />',NULL,'2017-05-08 23:07:24',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (394,35,'3501 ','广告','张贴广告350003，户外广告350003，广告材料分发350008，货物展出350023，直接邮件广告350024，广告材料更新350027，样品散发350028，广告材料出租350035，广告宣传本的出版350038，广告350039，广告宣传350039，无线电广告350040，电视广告350044，商业橱窗布置350046，广告代理350047，为广告或推销提供模特服务350049，广告空间出租350070，通过邮购定单进行的广告宣传350077，计算机网络上的在线广告350084，在通讯媒体上出租广告时间350087，为零售目的在通讯媒体上展示商品350092，广告稿的撰写350099，广告版面设计350101，广告片制作350104，点击付费广告350113，广告材料设计350121，广告牌出租350125，广告脚本编写 350132<br />※广告设计C350001，广告策划C350002，广告材料起草C350007<br />',NULL,'2017-05-08 23:07:24',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (395,35,'3502 ','工商管理辅助业','商业管理辅助350001，商业询价350002，商业信息代理350006，成本价格分析350007，商业管理和组织咨询350018，商业管理咨询350020，工商管理辅助350025，经营效率专家服务350029，市场分析350031，商业评估350032，商业调查350033，商业组织咨询350036，商业研究350041，公共关系350042，商业管理顾问350048，市场营销研究350051，商业专业咨询350062，经济预测350063，组织商业或广告展览350064，商业信息350065，民意测验350066，饭店商业管理350078，组织商业或广告交易会350082，价格比较服务350091，为消费者提供商业信息和建议（消费者建议机构）350093，特许经营的商业管理350096，外购服务（商业辅助）350097，统计资料汇编350100，为广告宣传目的组织时装表演350103，提供商业和商务联系信息350110，商业中介服务350114，为第三方进行商业贸易的谈判和缔约350116，为建筑项目进行商业项目管理服务350118，通过网站提供商业信息350119，为公司提供外包行政管理350122，补偿项目的商业管理（替他人）350124，飞行常客计划管理 350128，消费者忠诚度计划管理 350131<br />※投标报价C350003，组织技术展览C350004，为广告或销售组织时装展览C350008<br />',NULL,'2017-05-08 23:07:24',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (396,35,'3503 ','替他人推销','进出口代理350005，拍卖350030，替他人推销350071，替他人采购（替其他企业购买商品或服务）350085，市场营销350106，电话市场营销350107，为商品和服务的买卖双方提供在线市场350120<br />',NULL,'2017-05-08 23:07:24',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (397,35,'3504 ','人事管理辅助业','职业介绍350012，人事管理咨询350019，人员招收350068，演员的商业管理350079，为挑选人才而进行的心理测试350090，运动员的商业管理350105，自由职业者的商业管理350115<br />※表演艺术家经纪C350005<br />注：1.为挑选人才而进行的心理测试与第七版及以前版本4203心理测试服务交叉检索；<br />2.表演艺术家经纪与3605经纪类似。<br />',NULL,'2017-05-08 23:07:24',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (398,35,'3505 ','商业企业迁移','商业企业迁移350069<br />注：本类似群服务项目与3901搬迁类似。<br />',NULL,'2017-05-08 23:07:24',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (399,35,'3506 ','办公事务','复印服务350009，办公机器和设备出租*350013，打字350022，文件复制350026，速记350043，谈话记录（办公事务）350045，计算机文档管理350061，文秘350072，为外出客户应接电话350074，文字处理350075，替他人订阅报纸350076，将信息编入计算机数据库350080，计算机数据库信息系统化350081，复印机出租350083，在计算机档案中进行数据检索（替他人）350086，报刊剪贴350088，替他人预定电讯服务350094，对购买定单进行行政处理350095，开发票350098，为推销优化搜索引擎350111，网站流量优化350112，在计算机数据库中更新和维护数据350117，替他人写简历350126，为商业或广告目的编制网页索引 350127，预约安排服务（办公事务）350129，预约提 醒服务（办公事务）350130<br />※计算机录入服务C350006<br />',NULL,'2017-05-08 23:07:25',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (400,35,'3507 ','财会','会计350015，簿记350015，绘制帐单、帐目报表350016，商业审计350017，拟备工资单350067，税款准备350073，税务申报服务350123<br />注：商业审计，税款准备，税务申报服务与3602税审服务类似。<br />',NULL,'2017-05-08 23:07:25',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (401,35,'3508 ','单一服务','自动售货机出租350089<br />寻找赞助350102<br />销售展示架出租350109<br />注：1.本类似群为单一服务，各自然段间互不类似；<br />2.自动售货机出租与第七版及以前版本4227自动售货机出租，自动售货机租赁交叉检索。<br />',NULL,'2017-05-08 23:07:25',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (402,35,'3509 ','零售或批发服务','药用、兽医用、卫生用制剂和医疗用品的零售或批发服务350108<br /><br />（一）※药品零售或批发服务C350009,药用制剂零售或批发服务C350010，卫生制剂零售或批发服务C350011，医疗用品零售或批发服务C3500012<br /><br />（二）※兽药零售或者批发服务C3500013，兽医用制剂零售或者批发服务C3500014<br />注：1.本类似群第一自然段服务于各部分服务均类似；<br />2.本类似群各部分之间服务不类似。<br />',NULL,'2017-05-08 23:07:25',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (403,36,'3601 ','保险','事故保险承保360001，保险精算360003，保险经纪360010，保险承保360012，火灾保险承保360034，健康保险承保360038，海上保险承保360039，人寿保险承保360044，保险咨询360055，保险信息360060<br />注：保险经纪与3605经纪类似。<br />',NULL,'2017-05-08 23:07:25',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (404,36,'3602 ','金融事务','分期付款的贷款360002，信用社360006，债务托收代理360009，银行360013，共有基金360016，资本投资360017，基金投资360115，兑换货币360019，发行旅行支票360020，金融票据交换360021，金融票据交换所360021，保险库（保险箱寄存）360022，组织收款360023，金融贷款360024，财政估算360025，金融评估（保险、银行、不动产）360026，金融服务360029，金融管理360030，抵押贷款360040，银行储蓄服务360041，融资租赁360042，有价证券经纪360043，股票和债券经纪360116，金融分析360046，支票核查360053，金融咨询360054，信用卡支付处理360056，借记卡支付处理360057，电子转帐360058，金融信息360059，租金托收360063，发行有价证券360065，贵重物品存放360066，证券交易行情360067，发行信用卡360068，支付退休金360070，金融赞助360071，网上银行360072，贸易清算（金融）360073，修理费评估（金融评估）360103，碳信用证经纪360104，建筑木材的金融评估360105，羊毛的金融评估360107，公积金服务360109，股票经纪服务360110，债务咨询服务360111，为建筑项目安排资金360112，通过网站提供金融信息360113，补偿支付的金融管理（替他人）360114，通过使用会员卡为他人在参与机构提供折扣 360117<br />※期货经纪C360001，陆地车辆赊售（融资租赁）C360003，通讯设备赊售（融资租赁）C360004，税审服务C360005，与信用卡有关的调查C360006<br />注：1.期货经纪，证券和公债经纪，有价证券经纪，碳信用证经纪与3605经纪类似；<br />2.金融评估（保险、银行、不动产）与3604不动产估价类似；<br />3.税审服务与3507商业审计，税款准备，税务申报服务类似，与第十版及以前版本3507审计交叉检索；<br />4.建筑木材的金融评估与第九版及以前版本3502建筑木材评估交叉检索；<br />5.羊毛的金融评估与第九版及以前版本3502羊毛评估交叉检索。<br />',NULL,'2017-05-08 23:07:25',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (405,36,'3603 ','珍品估价','古玩估价360051，艺术品估价360052，珠宝估价360061，首饰估价360061，钱币估价360062，邮票估价360064<br />',NULL,'2017-05-08 23:07:25',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (406,36,'3604 ','不动产事务','不动产出租360004，不动产代理360007，不动产经纪360008，不动产估价360014，不动产管理360032，公寓管理360033，公寓出租360035，农场出租360036，住所代理（公寓）360045，办公室（不动产）出租360069<br />※商品房销售C360007<br />注：1.不动产估价与3602金融评估（保险、银行、不动产）类似；<br />2.不动产经纪与3605经纪类似。<br />',NULL,'2017-05-08 23:07:25',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (407,36,'3605 ','经纪','经纪360005，海关金融经纪服务360011<br />注：经纪与所有类中各种经纪类似。<br />',NULL,'2017-05-08 23:07:25',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (408,36,'3606 ','担保','保释担保360118，担保360018<br />',NULL,'2017-05-08 23:07:25',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (409,36,'3607 ','慈善募捐','募集慈善基金360015<br />',NULL,'2017-05-08 23:07:25',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (410,36,'3608 ','受托管理','代管产业360027，信托360028，受托管理360028<br />',NULL,'2017-05-08 23:07:25',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (411,36,'3609 ','典当','典当经纪360031，典当360108<br />注：典当经纪与3605经纪类似。<br />',NULL,'2017-05-08 23:07:25',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (412,37,'3701 ','建设、维修信息服务','建筑施工监督370031，建筑信息370104，维修信息370105，建筑咨询370131<br />※工程进度查核C370001<br />注：建筑咨询与第九版及以前版本4217建筑咨询交叉检索；<br />',NULL,'2017-05-08 23:07:26',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (413,37,'3702 ','建筑工程服务','铺沥青370005，推土机出租370013，建筑设备出租370020，建筑*370029，水下建筑370030，拆除建筑物370036，仓库建筑和修理370041，建筑物防水370042，挖掘机出租370044，熔炉的安装与修理370047，工厂建造370052，建筑物隔热隔音370054，砖石建筑370059，码头防浪堤建筑370061，管道铺设和维护370063，用浮石磨光370069，敷石膏、涂灰泥370070，安装维修水管370071，港口建设370074，铆接370081，清洗机出租370090，搭脚手架370093，砌砖370101，铺路370109，用砂纸打磨370110，水下修理370111，商业摊位及商店的建筑370115，建筑用起重机出租370120，扫路机出租370121，盖屋顶370122，安装门窗370128，电缆铺设 370140<br />※商品房建造C370015<br />注：盖房顶与第八版及以前版本3704屋顶修复交叉检索。<br />',NULL,'2017-05-08 23:07:26',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (414,37,'3703 ','开采服务','采矿370107，采石服务370108，钻井370114，深层油井或气井的钻探370133<br />',NULL,'2017-05-08 23:07:26',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (415,37,'3704 ','建筑物装饰修理服务','清洁建筑物（内部）370009，室内装潢修理370017，清扫烟囱370026，招牌的油漆和修理370040，清洁窗户370045，贴墙纸370064，室内装潢370067，室内外油漆370068，涂清漆服务370086，清洁建筑物（外表面）370112，清扫街道370124<br />',NULL,'2017-05-08 23:07:26',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (416,37,'3705 ','供暖设备的安装与修理','锅炉清洁和修理370011，燃烧器保养与修理370012，加热设备安装和修理370024<br />',NULL,'2017-05-08 23:07:26',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (417,37,'3706 ','机械、电器设备的安装与修理','（一）电器设备的安装与修理370003，办公机器和设备的安装、保养和维修370014，空调设备的安装与修理370028，厨房设备安装370035，灌溉设备的安装和修理370053，机械安装、保养和修理370058，冷冻设备的安装与修理370078，计算机硬件安装、维护和修理370116，修复磨损或部分损坏的发动机370118，修复磨损或部分损坏的机器370119，调色墨盒的再填充370130<br />※卫生设备的安装和修理C370003，浴室设备的安装和修理C370004，照明设备的安装和修理C370005<br /><br />（二）清除电子设备的干扰370117<br /><br />（三）※医疗器械的安装和修理C370002<br />注：本类似群各部分之间服务不类似。<br />',NULL,'2017-05-08 23:07:26',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (418,37,'3707 ','陆地机械车辆维修','汽车保养和修理370006，运载工具加润滑油服务370049，运载工具清洗服务370055，运载工具上光服务370072，运载工具防锈处理服务370082，车辆服务站（加油和保养）370083，运载工具保养服务370085，运载工具清洁服务370087，运载工具故障修理服务370089，运载工具电池更换服务370137<br />※车辆加油站C370006 <br />注：跨类似群保护服务：运载工具加润滑油服务（3707，3708，3709），运载工具清洗 服务（3707，3708，3709），运载工具上光服务（3707，3708，3709），运载工具防锈处理服 务（3707，3708，3709），运载工具保养服务（3707，3708，3709），运载工具清洁服务（3707，3708，3709），运载工具故障修理服务（3707，3708，3709），运载工具电池更换服务（3707，3708，3709）。<br />',NULL,'2017-05-08 23:07:26',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (419,37,'3708 ','飞机维修','飞机保养与修理370008，运载工具加润滑油服务 370049，运载工具清洗服务 370055，运载工具上光服务 370072，运载工具防锈处理服务 370082，运载工具保养服务 370085，运载工具清洁服务 370087，运载工具故障修理服务 370089，运载工具电池更换服务 370137 <br />注：跨类似群保护服务：运载工具加润滑油服务（3707，3708，3709），运载工具清洗 服务（3707，3708，3709），运载工具上光服务（3707，3708，3709），运载工具防锈处理服 务（3707，3708，3709），运载工具保养服务（3707，3708，3709），运载工具清洁服务（3707，3708，3709），运载工具故障修理服务（3707，3708，3709），运载工具电池更换服务（3707，3708，3709）。<br />',NULL,'2017-05-08 23:07:26',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (420,37,'3709 ','造船服务','造船370021，运载工具加润滑油服务 370049，运载工具清洗服务 370055，运载工具上光服务 370072，运载工具防锈处理服务 370082，运载工具保养服务 370085，运载工具清洁服务 370087，运 载工具故障修理服务 370089，运载工具电池更换服务 370137 <br />注：跨类似群保护服务：运载工具加润滑油服务（3707，3708，3709），运载工具清洗 服务（3707，3708，3709），运载工具上光服务（3707，3708，3709），运载工具防锈处理服 务（3707，3708，3709），运载工具保养服务（3707，3708，3709），运载工具清洁服务（3707，3708，3709），运载工具故障修理服务（3707，3708，3709），运载工具电池更换服务（3707，3708，3709）。<br />',NULL,'2017-05-08 23:07:26',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (421,37,'3710 ','影视器材维修','照相器材修理370002，电影放映机的修理和维护370046<br />',NULL,'2017-05-08 23:07:27',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (422,37,'3711 ','钟表修理','钟表修理370051<br />',NULL,'2017-05-08 23:07:27',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (423,37,'3712 ','保险装置的维修','保险库的保养和修理370018，保险柜的保养和修理370027，修保险锁370125<br />',NULL,'2017-05-08 23:07:27',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (424,37,'3713 ','特殊处理服务','防锈370037，重新镀锡370080<br />※喷涂服务C370007<br />注：重新镀锡与4002镀锡类似。<br />',NULL,'2017-05-08 23:07:27',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (425,37,'3714 ','轮胎维修服务','轮胎翻新370077，轮胎硫化处理（修理）370113，轮胎动平衡服务370138<br />※橡胶轮胎修补370113<br />',NULL,'2017-05-08 23:07:27',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (426,37,'3715 ','家具的修复、保养','家具保养370001，家具修复370060，木工服务370132<br />',NULL,'2017-05-08 23:07:27',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (427,37,'3716 ','衣服、皮革的修补、保护、洗涤服务','洗烫衣服370010，服装翻新370022，修补衣服370032，皮革保养、清洁和修补370034，皮毛保养、清洁和修补370048，清洗衣服370050，清洗亚麻制品370056，清洗370057，熨衣服370062，亚麻制品熨烫370079，清洗尿布370102，干洗370103，洗衣机出租370135<br />注：皮革保养、清洁和修补，皮毛保养、清洁和修补与4010皮革修整，鞣革，皮革染色，裘皮染色，裘皮上光，皮毛防蛀处理，使裘皮具有缎子光泽类似。<br />',NULL,'2017-05-08 23:07:27',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (428,37,'3717 ','灭虫，消毒服务','消毒370038，灭鼠370076，灭害虫（非农业目的）370091<br />※外科设备消毒C370014<br />',NULL,'2017-05-08 23:07:27',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (429,37,'3718 ','单一服务','电梯安装和修理370004<br />火警器的安装与修理370015，防盗报警系统的安装与维修370016<br />修鞋370025<br />电话安装和修理370084<br />磨刀370106<br />气筒或泵的修理370073<br />雨伞修理370065，阳伞修理370066<br />人工造雪370123<br />艺术品修复370126<br />乐器修复370127<br />游泳池维护370129<br />排水泵出租370134<br />维修电力线路370136<br />    乐器调音 370139<br />※手工具修理C370008<br />※珠宝首饰修理C370009<br />※娱乐体育设备的安装和修理C370011<br /><br />注：本类似群为单一服务，各自然段间互不类似。<br />',NULL,'2017-05-08 23:07:27',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (430,38,'3801 ','进行播放无线电或电视节目的服务','无线电广播380003，电视播放380005，新闻社服务380012，有线电视播放380021，无线广播380048<br />注：本类似群服务项目与3802卫星传送类似。<br />',NULL,'2017-05-08 23:07:28',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (431,38,'3802 ','通讯服务','信息传送380004，电报传送380006，电报业务380007，电报通讯380008，电话业务380009，电话通讯380010，电传业务380011，移动电话通讯380022，计算机终端通讯380023，计算机辅助信息和图像传送380024，电子邮件传输380025，传真发送380026，电信信息380027，寻呼（无线电、电话或其他通讯工具）380028，信息传输设备出租380029，光纤通讯380030，传真设备出租380031，调制解调器出租380032，电讯设备出租380033，电话机出租380034，卫星传送380035，电子公告牌服务（通讯服务）380036，提供与全球计算机网络的电讯联接服务380037，电讯路由节点服务380038，电话会议服务380039，提供全球计算机网络用户接入服务380040，全球计算机网络访问时间出租380041，为电话购物提供电讯渠道380042，提供互联网聊天室380043，提供数据库接入服务380044，语音邮件服务380045，在线贺卡传送380046，数字文件传送380047，视频会议服务380049，提供在线论坛380050，数据流传输380051，无线电通信380052，视频点播传输 380053<br />※由电脑进行的电话号码簿查询C380001<br />注：1.卫星传送与3801服务类似；<br />2.提供全球计算机网络用户接入服务，提供数据库接入服务与第八版及以前版本4220为计算机用户间交换数据提供即时连接服务交叉检索。<br />',NULL,'2017-05-08 23:07:28',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (432,39,'3901 ','运输及运输前的包装服务','（一）救护车运输390006，搬运390021，卸货390026，货物递送390027，货运390039，运送家具390047，运输390048，运送乘客390051，货物发运390060，运送旅客390063，废物的运输和贮藏390064，搬迁390065，货运经纪390072，运输经纪390073，运输信息390077，救护运输390082，运输预订390083，交通信息390098，物流运输390101，观光旅游运输服务 390025，收集可回收物品（运输）390111<br /><br />（二）商品包装390022，商品打包390086<br />※礼品包装390109<br />（三）导航 390052，导航系统出租 390107 <br />注：1.本类似群各部分之间服务不类似；<br />2.卸货与3902码头装卸类似；<br />3.搬迁与3505服务项目类似；<br />4.货运经纪，运输经纪与3605经纪类似；<br />5.运输，货运与3902第（二）部分，3903，3904空中运输，3905马车运输，3912管道运输类似；<br />6.废物的运输和贮藏与3906服务项目类似；<br />    7.导航，导航系统出租与第十版及以前版本 3904 导航，导航系统出租交叉检索。<br />',NULL,'2017-05-08 23:07:29',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (433,39,'3902 ','水上运输及相关服务','（一）船只出租390012，破冰390013，拖运390014，船只营救390015，驳船服务390016，船舶经纪390023，拖曳390054，船只打捞390055，海上救助390057，船只存放390071，水下营救390085，码头装卸390093，运载工具故障牵引服务 390007<br /><br />（二）游艇运输390011，渡船运输390036，河运390037，船运货物390038，船只运输390049，海上运输390061，驳船运输390103<br />注：1.本类似群各部分之间服务不类似；<br />2.船舶经纪与3605经纪类似；<br />3.码头装卸与3901卸货类似；<br />4.本类似群第（二）部分与3901运输，货运类似；<br />    5.跨类似群保护服务：运载工具故障牵引服务（3902 第（一）部分，3903，3904）。<br />',NULL,'2017-05-08 23:07:29',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (434,39,'3903 ','陆地运输','运载工具故障牵引服务390007，汽车运输390009，公共汽车运输390010，铁路运输390018，出租车运输390058，有轨电车运输390059，装甲车运输390062，贵重物品的保护运输390106<br />注：1.本类似群服务项目与3901运输，货运类似；<br />2.贵重物品的保护运输与与第九版及以前版本3901贵重物品的保护运输交叉检索；<br />    3.跨类似群保护服务：运载工具故障牵引服务（3902 第（一）部分，3903，3904）。<br />',NULL,'2017-05-08 23:07:30',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (435,39,'3904 ','空中运输','空中运输390004，航空器出租390102，航空发动机出租390105，运载工具故障牵引服务 390007<br />注：空中运输与3901运输，货运类似；<br />    2.跨类似群保护服务：运载工具故障牵引服务（3902 第（一）部分，3903，3904）。<br />',NULL,'2017-05-08 23:07:30',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (436,39,'3905 ','其他运输及相关服务','（一）汽车出租390008，停车场服务390033，车库出租390040，停车位出租390042，运载工具（车辆）出租390044，铁路客车车厢出租390045，铁路货车车厢出租390046，司机服务390074，车辆行李架出租390081，赛车出租390091，客车出租390104，拖拉机出租 390110<br /><br />（二）马车运输390017，马匹出租390019<br />注：1.本类似群各部分之间服务不类似；<br />2.马车运输与3901运输，货运类似。<br />',NULL,'2017-05-08 23:07:30',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (437,39,'3906 ','货物的贮藏','货物贮存390028，贮藏390034，仓库贮存390034，仓库出租390035，冰箱出租390043，冷冻食品柜出租390043，贮藏信息390076，集装箱出租390080，电子数据或文件载体的物理储藏390094，冰柜出租390099<br />注：本类似群与3901废物的运输和贮藏类似。<br />',NULL,'2017-05-08 23:07:30',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (438,39,'3907 ','潜水工具出租','潜水钟出租390078，潜水服出租390079<br />注：本类似群与4105浮潜设备出租类似，与第八版及以前版本4105潜水贴身设备租赁，潜水设备出租交叉检索。<br />',NULL,'2017-05-08 23:07:30',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (439,39,'3908 ','供水电气服务','给水390003，配水390030，配电390031，能源分配390090<br />※煤气站C390002，液化气站C390003<br />',NULL,'2017-05-08 23:07:30',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (440,39,'3909 ','水闸管理服务','操作运河水闸390032<br />',NULL,'2017-05-08 23:07:30',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (441,39,'3910 ','投递服务','包裹投递390020，快递服务（信件或商品）390075，信件投递390087，投递报纸390088，邮购货物的递送390089，鲜花递送390096，邮件的邮资盖印服务390097<br />',NULL,'2017-05-08 23:07:30',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (442,39,'3911 ','旅行安排','旅行陪伴390002，安排游艇旅行390024，安排游览390050，旅行座位预订390056，旅行预订390084，为旅行提供行车路线指引390108，导游服务 410206<br /><br />',NULL,'2017-05-08 23:07:30',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (443,39,'3912 ','单一服务','管道运输390041<br />轮椅出租390092<br />替他人发射卫星390095<br />灌装服务390100<br />注：1.本类似群为单一服务，各自然段间互不类似；<br />2.管道运输与3901运输，货运类似。<br />',NULL,'2017-05-08 23:07:30',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (444,40,'4001 ','综合加工及提供信息服务','打磨400001，层压400040，研磨400041，研磨抛光400048，定做材料装配（替他人）400083，材料处理信息400084，材料硫化处理400101，喷砂处理服务400122<br />碾磨加工C400006<br />注：1.打磨与4002，4004，4006，4007服务项目类似；<br />2.碾磨加工与4002，4008，及4015药材加工服务项目类似；<br />3.层压与4002，4004服务项目类似；<br />4.研磨，研磨抛光，喷砂处理服务与4002，4006，4007服务项目类似。<br />',NULL,'2017-05-08 23:07:31',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (445,40,'4002 ','金属材料处理或加工服务','磁化400004，镀银400007，锡焊400011，镀镉400013，镀铬400017，金属电镀400018，涂金400024，电镀400026，镀锡400027，铁器加工400029，铣削加工 400031，镀锌400034，金属处理400042，金属回火400043，镀镍400045，镀金400085，激光划线400086，精炼400093，锅炉制造400099，金属铸造400100，配钥匙400108，焊接服务400125<br />注：1.镀锡与3713重新镀锡类似；<br />2.本类似群与4001打磨，碾磨加工，层压，研磨，研磨抛光，喷砂处理服务类似。<br />',NULL,'2017-05-08 23:07:31',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (446,40,'4003 ','纺织品化学处理或加工服务','纺织品精加工400005，织物漂白400008，布料边饰处理400010，织物定型处理400014，布料防水处理400036，织物防水处理400036，布料耐火处理400037，纺织品耐火处理400037，织物耐火处理400037，服装防皱处理400038，羊毛加工400039，织布机整经400046，染色400056，纺织品染色400057，布料化学处理400058，纺织品化学处理400058，纺织品防蛀处理400059，布料染色400060，布料预缩处理400069，布匹漂洗400120<br />注：布匹漂洗与第八版及以前版本的3716布匹漂洗交叉检索。<br />',NULL,'2017-05-08 23:07:31',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (447,40,'4004 ','木材加工服务','木器制作400009，刨平（锯木厂）400050，锯木（锯木厂）400052，木材砍伐和加工400067<br />注：本类似群与4001打磨，层压类似。<br />',NULL,'2017-05-08 23:07:31',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (448,40,'4005 ','纸张加工服务','纸张加工400006，书籍装订400049，纸张处理400061<br />',NULL,'2017-05-08 23:07:31',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (449,40,'4006 ','玻璃加工服务','吹制玻璃器皿400062，玻璃窗着色处理（表面涂层）400065，光学玻璃研磨400088<br />注：本类似群与4001打磨，研磨，研磨抛光，喷砂处理服务类似，与第九版及以前版本的4002研磨加工，研磨抛光交叉检索。<br />',NULL,'2017-05-08 23:07:31',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (450,40,'4007 ','陶器加工服务','烧制陶器400015<br />注：本类似群与4001打磨，研磨，研磨抛光，喷砂处理服务类似，及第九版及以前版本的4002研磨加工，研磨抛光交叉检索。<br />',NULL,'2017-05-08 23:07:32',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (451,40,'4008 ','食物、饮料加工服务','榨水果400032，食物熏制400033，面粉加工400044，食物和饮料的防腐处理400066，油料加工400091，食物冷冻400117<br />※茶叶加工C400001，饲料加工C400002<br />注：本类似群与4001碾磨加工类似，与第九版及以前版本的4002碾磨加工交叉检索。<br />',NULL,'2017-05-08 23:07:32',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (452,40,'4009 ','剥制加工服务','动物标本剥制400055，动物屠宰400094，剥制加工400095<br />',NULL,'2017-05-08 23:07:32',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (453,40,'4010 ','皮革、服装加工服务','服装制作400012，染鞋400016，皮革染色400019，裘皮定形400020，布料剪裁400021，裘皮时装加工400028，皮毛防蛀处理400030，皮革修整400047，马具（鞍具）制作400051，服装定制400053，鞣革400054，刺绣400063，皮革加工400064，裘皮上光400070，使裘皮具有缎子光泽400071，裘皮染色400072，缝被子400092，服装修改400098，针织机出租400112<br />注：1.皮革修整，鞣革，皮革染色，裘皮染色，裘皮上光，皮毛防蛀处理，使裘皮具有缎子光泽与3716皮革保养、清洁和修补，皮毛保养、清洁和修补类似，与第十版及以前版本皮革保养、清洗和修补，皮毛保养、清洗和修补交叉检索；<br />2.针织机出租与第七版及以前版本4227针织机出租交叉检索。<br />',NULL,'2017-05-08 23:07:32',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (454,40,'4011 ','影像加工处理服务','电影胶片冲洗400002，图样印刷400022，照相底片冲洗400023，照片冲印400089，照相凹版印刷400090，分色400107，平版印刷400110，印刷400111，胶印400113，照相排版400114，丝网印刷400115<br />注：本类似群与第七版及以前版本4215交叉检索。<br />',NULL,'2017-05-08 23:07:32',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (455,40,'4012 ','污物处理服务','废物和垃圾的回收利用400068，废物处理（变形）400097，废物和垃圾的销毁400105，废物和垃圾的焚化400106，净化有害材料400109，废物和可回收材料的分类（变形）400116，废物再生400124<br />注：本类似群与第七版及以前版本4225交叉检索。<br />',NULL,'2017-05-08 23:07:32',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (456,40,'4013 ','空气调节服务','空气净化400003，空气除臭400081，空气清新400082，空调设备出租400118，空间供暖设备出租400119<br />注：1.空调设备出租与第八版及以前版本3706空调设备出租交叉检索；<br />2.空间供暖设备出租与第八版及以前版本3705取暖设施出租交叉检索。<br />',NULL,'2017-05-08 23:07:32',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (457,40,'4014 ','水净化服务','水处理400025<br />',NULL,'2017-05-08 23:07:32',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (458,40,'4015 ','单一服务','艺术品装框400084<br />雕刻400035<br />牙科技师服务400102<br />能源生产400103<br />发电机出租400104<br />超低温冷冻服务（生命科学）400121<br />锅炉出租400123<br />※药材加工C400003<br />※燃料加工C400004<br />※化学试剂加工和处理C400005<br />注：1.本类似群为单一服务，各自然段间互不类似；<br />2.药材加工与4001碾磨加工，及第九版及以前版本的4002碾磨加工交叉检索。<br />',NULL,'2017-05-08 23:07:33',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (459,41,'4101 ','教育','学校（教育）410002，函授课程410011，体育教育410012，教学410017，教育410017，培训410017，教育信息410048，教育考核410049，幼儿园410058，实际培训（示范）410061，寄宿学校教育服务410075，宗教教育410080，就业指导（教育或培训顾问）410102，辅导（培训）410189，职业再培训410195，学校教育服务410199，家教服务410202<br />注：1.幼儿园与4304日间托儿所（看孩子）类似，与第七版及以前版本4221日间托儿所（看孩子）交叉检索；<br />2.就业指导（教育或培训顾问）与第七版及以前版本4227职业指导交叉检索。<br />',NULL,'2017-05-08 23:07:33',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (460,41,'4102 ','组织和安排教育、文化、娱乐等活动','组织教育或娱乐竞赛410010，安排和组织学术讨论会410044，安排和组织会议410045，安排和组织大会410046，组织文化或教育展览410051，组织体育比赛410059，安排和组织专家讨论会410070，安排和组织专题研讨会410072，安排和组织培训班410076，安排选美竞赛410077，组织舞会410082，组织表演（演出）410083，安排和组织音乐会410185，为娱乐目的组织时装表演410188，安排和组织现场教育论坛 410203<br />※为娱乐组织时装展览C410003<br />',NULL,'2017-05-08 23:07:33',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (461,41,'4103 ','图书馆服务','出借书籍的图书馆410023，流动图书馆410041<br />',NULL,'2017-05-08 23:07:33',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (462,41,'4104 ','出版服务','（一）文字出版（广告宣传文本除外）410016，书籍出版410024，电子书籍和杂志的在线出版410091，电子桌面排版410092，提供在线电子出版物（非下载）410099，除广告以外的版面设计410187<br /><br />（二）※录像带发行C410001<br />注：1.本类似群各部分之间服务不类似；<br />2.录像带发行与4105电影胶片的分配（发行）类似。<br />',NULL,'2017-05-08 23:07:33',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (463,41,'4105 ','文娱、体育活动的服务','（一）电影摄影设备出租410006，电影摄影棚服务410008，演出用布景出租410013，无线电文娱节目410015，唱片出租410018，电影胶片出租410019，除广告片外的影片制作410020，收音机和电视机出租410025，广播和电视节目制作410026，戏剧制作410029，演出制作410030，电视文娱节目410031，舞台布景出租410032，电影放映410057，录音棚服务410063，录像机出租410068，录像带出租410069，配音410079，音响设备出租410085，剧院或电视演播室用灯光设备出租410086，摄影机出租410088，非广告剧本的编写410089，录像带剪辑410090，配字幕410093，作曲410097，摄影报道410100，摄影410101，新闻记者服务410103，翻译410104，手语翻译410105，录像带录制410106，微缩摄影410182，文稿撰写*410184，口译服务410192，音乐制作410196，提供在线音乐（非下载）410200，提供在线录像（非下载）410201，歌曲创作 410204，剧本编写 410205<br />※译制C410002，电影胶片的分配（发行）C410004，电影外语配音C410005，诙谐诗创作C410006<br /><br />（二）游乐园服务410003，娱乐服务410004，演出410007，马戏表演410009，提供娱乐设施410014，综艺表演410027，管弦乐团410028，俱乐部服务（娱乐或教育）410043，迪斯科舞厅410047，娱乐信息410050，假日野营娱乐服务410055，现场表演410056，筹划聚会（娱乐）410060，娱乐消遣信息410064，演出座位预订410078，游戏厅服务410084，在计算机网络上提供在线游戏410094，提供卡拉OK服务410095，夜总会娱乐服务410098，票务代理服务（娱乐）410183，书法服务410186，音乐主持服务410191，导游服务 410206<br /><br />（三）体操训练410021，提供体育设施410035，提供高尔夫球设施410053，健身俱乐部（健身和体能训练）410054，提供博物馆设施（表演、展览）410062，浮潜设备出租410065，体育设备出租（车辆除外）410066，体育场设施出租410067，体育野营服务410071，体育比赛计时410073，网球场出租410087，运动场出租410190，私人健身教练服务410193，健身指导课程410194<br /><br />（四）玩具出租410197<br /><br />（五）游戏器具出租410198<br />注：1.本类似群各部分之间服务不类似；<br />2.录像带制作，录像带录制与第七版及以前版本4222录像带录制交叉检索；<br />3.摄影报道，新闻记者服务与第七版及以前版本4223交叉检索；<br />4.摄影，微缩摄景与第七版及以前版本4222交叉检索；<br />5.手语翻译，翻译与第七版及以前版本4219交叉检索服务；<br />6.电影胶片的分配（发行）与4104录像带发行类似；<br />7.浮潜设备出租与3907类似，与第八版及以前版本4105第（三）部分潜水贴身设备租赁，潜水设备出租交叉检索；<br />8.剧院或电视演播室用灯光设备出租与4306照明设备出租类似；<br />    9.导游服务与第十版及以前版本 3911 导游交叉检索。<br />',NULL,'2017-05-08 23:07:33',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (464,41,'4106 ','驯兽','动物训练410005，动物园服务410033<br />',NULL,'2017-05-08 23:07:33',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (465,41,'4107 ','单一服务','为艺术家提供模特服务410036<br />组织彩票发行410081<br />注：1.本类似群为单一服务，各自然段间互不类似。<br />',NULL,'2017-05-08 23:07:33',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (466,42,'4209 ','提供研究和开发服务','（一）技术研究420040，技术项目研究420061，工程学420064，物理研究420096，机械研究420101，替他人研究和开发新产品420161，城市规划420192，节能领域的咨询420207，环境保护领域的研究420208，提供关于碳抵消的信息、建议和咨询420212，水质分析420216，科学实验室服务420217，能源审计420218，科学研究420222，技术咨询420231，电信技术咨询420233<br />※工程绘图C420015<br /><br />（二）质量控制420157，建筑木材质量评估420213，羊毛质量评估420214，撰写科技文稿 420236<br />※质量检测C420006，质量评估C420007，质量体系认证C420008<br />注：1.本类似群各部分之间服务不类似；<br />2.本类似群第（一）部分与第十版及以前版本4214物理研究，机械研究交叉检索；<br />3.工程绘图与4217建筑制图类似。<br />4.质量检测与4214材料测试类似。<br />',NULL,'2017-05-08 23:07:34',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (467,42,'4210 ','提供地质调查、研究、开发服务','油田开采分析420008，油井测试420042，地质勘测420062，油田勘测420063，土地测量420079，石油勘探420095，地质勘探420118，地质研究420119，校准（测量）420136，水下勘探420167，测量420193<br />',NULL,'2017-05-08 23:07:34',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (468,42,'4211 ','提供化学研究服务','化学分析420007，化学服务420030，化学研究420031，化妆品研究420045，临床试验420224<br />',NULL,'2017-05-08 23:07:34',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (469,42,'4212 ','提供生物学研究服务','细菌学研究420017，生物学研究420190，临床试验420224<br />',NULL,'2017-05-08 23:07:34',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (470,42,'4213 ','提供气象情报服务','气象预报420234，气象信息420076<br />',NULL,'2017-05-08 23:07:34',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (471,42,'4214 ','提供测试服务','材料测试420058，纺织品测试420109，车辆性能检测420195<br />注：材料测试与4209质量检测类似；<br />',NULL,'2017-05-08 23:07:35',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (472,42,'4216 ','外观设计服务','工业品外观设计420049，包装设计420050，造型（工业品外观设计）420165<br />',NULL,'2017-05-08 23:07:35',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (473,42,'4217 ','建筑物的设计、咨询服务','建筑学服务420011，建筑学咨询420036，建筑制图420038，室内装饰设计420048，室内设计 420237<br />※建设项目的开发C420013<br />注：建筑制图与4209工程绘图类似。<br />',NULL,'2017-05-08 23:07:35',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (474,42,'4218 ','服装设计服务','服装设计420142<br />注：本类似群与第七版及以前版本4218中的服装设计类似。<br />',NULL,'2017-05-08 23:07:35',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (475,42,'4220 ','计算机编程及相关服务','计算机出租420083，计算机编程420090，计算机软件设计420139，计算机软件更新420140，计算机硬件设计和开发咨询420141，计算机软件出租420159，恢复计算机数据420175，计算机软件维护420176，计算机系统分析420177，计算机系统设计420194，计算机程序复制420197，把有形的数据和文件转换成电子媒体420198，替他人创建和维护网站420199，托管计算机站（网站）420200，计算机软件的安装420201，计算机程序和数据的数据转换（非有形转换）420203，计算机软件咨询420204，网络服务器的出租420205，计算机病毒的防护服务420206，提供互联网搜索引擎420209，文档数字化（扫描）420210，计算机系统远程监控420215，网站设计咨询420219，软件运营服务[SaaS]420220，信息技术咨询服务420220，服务器托管420223，远程数据备份420225，电子数据存储420226，通过网站提供计算机技术和编程信息420227，云计算420229，外包商提供的信息技术服务420230，计算机技术咨询420232，计算机安全咨询 420235<br />',NULL,'2017-05-08 23:07:35',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (476,42,'4224 ','提供艺术品鉴定服务','艺术品鉴定420132<br />',NULL,'2017-05-08 23:07:35',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (477,42,'4227 ','单一服务','平面美术设计420144<br />（人工降雨时）云的催化420202<br />笔迹分析（笔迹学）420211<br />地图绘制服务420228<br />※无形资产评估C420011<br />※代替他人称量货物C420012<br />注：本类似群为单一服务，各自然段间互不类似。<br />',NULL,'2017-05-08 23:07:35',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (478,43,'4301 ','提供餐饮，住宿服务','住所代理（旅馆、供膳寄宿处）430004，备办宴席430010，咖啡馆430024，自助餐厅430025，餐厅430027，临时住宿处出租430028，寄宿处430066，饭店430073，餐馆430102，寄宿处预订430104，旅馆预订430105，自助餐馆430107，快餐馆430108，酒吧服务430138，假日野营住宿服务430145，预订临时住所430162，汽车旅馆430183，食物雕刻430193<br />※流动饮食供应C430002，茶馆C430003<br />注：本类似群与第七版及以前版本4201交叉检索。<br />',NULL,'2017-05-08 23:07:37',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (479,43,'4302 ','提供房屋设施的服务','提供野营场地设施430026，旅游房屋出租430071，活动房屋出租*430160，会议室出租430187，帐篷出租430189<br />注：本类似群与第七版及以前版本4202交叉检索。<br />',NULL,'2017-05-08 23:07:37',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (480,43,'4303 ','养老院','养老院430013<br />注：养老院与4401第（二）部分类似，与第七版及以前版本4203养老院，疗养院（非医疗），疗养院，休养所，疗养院（诊所或小型私人医院），济贫院交叉检索。<br />',NULL,'2017-05-08 23:07:37',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (481,43,'4304 ','托儿服务','日间托儿所（看孩子）430098<br />注：日间托儿所（看孩子）与4101幼儿园类似、与第七版及以前版本4221日间托儿所（看孩子）交叉检索。<br />',NULL,'2017-05-08 23:07:37',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (482,43,'4305 ','为动物提供食宿','动物寄养430134<br />注：本类似群与4403动物养殖，水产养殖服务类似，与第十版及以前版本4403动物饲养，宠物饲养，第七版及以前版本4205动物寄养，动物饲养，宠物饲养，动物喂养，为动物提供膳食，爱畜饲养交叉检索。<br />',NULL,'2017-05-08 23:07:37',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (483,43,'4306 ','单一服务','出租椅子、桌子、桌布和玻璃器皿430186<br />烹饪设备出租430190<br />饮水机出租430191<br />照明设备出租*430192<br />注：1.本类似群为单一服务，各自然段间互不类似；<br />2.出租椅子、桌子、桌布和玻璃器皿与第七版及以前版本4227群出租椅子、桌子、桌布和玻璃器皿交叉检索；<br />3.照明设备出租与4105剧院或电视演播室用灯光设备出租类似。<br />',NULL,'2017-05-08 23:07:37',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (484,44,'4401 ','医疗服务','（一）医疗诊所服务440021，医疗按摩440032，医院440059，保健440060，医疗辅助440087，理疗440097，牙科440113，血库440133，接生440152，医疗护理440153，医药咨询440154，整形外科440156，头发移植440180，心理专家服务440185，芳香疗法440193，人工授精440194，物质滥用病人的康复440195，试管受精440196，远程医学服务440198，药剂师配药服务440204，治疗服务440205，医疗设备出租440208，保健站440209，替代疗法440210，语言障碍治疗服务440211，健康咨询440212，牙齿正畸服务440214，为残障人士提供医疗咨询440215，姑息治疗 440218<br /><br />（二）疗养院440219，休养所440106，护理院440114，老年人护理中心440147，康复中心 440043<br /><br />（三）※饮食营养指导C440001<br />注：1.本类似群各部分之间服务不类似；<br />2.各部分与第七版及以前版本4203相对应的各自然段分别交叉检索；<br />3.医疗按摩与4402按摩类似；<br />4.第（二）部分与4303养老院类似。<br />',NULL,'2017-05-08 23:07:37',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (485,44,'4402 ','卫生、美容服务','公共卫生浴440018，蒸气浴440019，美容服务440020，理发440034，按摩440086，修指甲440151，文身440197，桑拿浴服务440200，日光浴服务440201，矿泉疗养440202，化妆师服务440203，打蜡脱毛440213，人体穿孔 440216<br />注：1.本类似群与第七版及以前版本4204交叉检索；<br />2.按摩与4401医疗按摩类似。<br />',NULL,'2017-05-08 23:07:37',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (486,44,'4403 ','为动物提供服务','动物养殖440009，兽医辅助440111，动物清洁440131，宠物清洁440173，水产养殖服务440207<br />※人工授精（替动物）C440002，试管受精（替动物）C440003<br />注：1.本类似群与第七版及以前版本4205交叉检索；<br />2.动物养殖，水产养殖服务与4305类似。<br />',NULL,'2017-05-08 23:07:37',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (487,44,'4404 ','农业、园艺服务','庭院风景布置440012，花环制作440037，园艺学440072，园艺440077，农场设备出租440084，植物养护440094，空中和地面化肥及其他农用化学品的喷洒440115，花卉摆放440143，草坪修整440148，树木修剪440166，灭害虫（为农业、园艺和林业目的）440168，除草440171，风景设计440199，为碳抵消目的植树440206，再造林服务 440217<br />注：1.本类似群与第七版及以前版本4206交叉检索；<br />2.花环制作与第七版及以前版本4226花圈制作交叉检索。<br />',NULL,'2017-05-08 23:07:37',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (488,44,'4405 ','单一服务','眼镜行440092<br />卫生设备出租440188<br />注：1.本类似群为单一服务，各自然段间互不类似；<br />2.眼镜行与第七版及以前版本4227眼镜行交叉检索；<br />3.卫生设备出租与第七版及以前版本4227卫生设备出租交叉检索。<br />',NULL,'2017-05-08 23:07:37',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (489,45,'4501 ','安全服务','私人保镖450001，侦探服务450003，夜间护卫服务450006，寻人调查450053，护卫队服务450099，安全保卫咨询450117，安全及防盗警报系统的监控450194，为安全目的进行的行李检查450196，个人背景调查450199，工厂安全检查450202，追踪被盗财产450222<br />注：本类似群与第七版及以前版本4208交叉检索。<br />',NULL,'2017-05-08 23:07:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (490,45,'4502 ','提供人员服务','社交陪伴450002，社交护送（陪伴）450002，临时照看婴孩450195，临时看管房子450197，临时照料宠物450198<br />※家务服务C450001<br />注：本类似群与第七版及以前版本4221中除日间托儿所（看孩子）外的其它服务交叉检索。<br />',NULL,'2017-05-08 23:07:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (491,45,'4503 ','提供服饰服务','晚礼服出租450046，服装出租450081，个人服装搭配咨询 450227<br />注：本类似群与第七版及以前版本4218夜礼服出租，衣服出租，制服出租，服装租赁交叉检索。<br />',NULL,'2017-05-08 23:07:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (492,45,'4504 ','殡仪服务','火葬450047，下葬服务450056，殡仪450057，尸体防腐服务450220，举行葬礼 450229<br />注：本类似群与第七版及以前版本4226交叉检索。<br />',NULL,'2017-05-08 23:07:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (493,45,'4505 ','单一服务','开保险锁450033<br />交友服务450005，婚姻介绍450112，在线社交网络服务450218<br />消防450179，火警报警器出租450203，灭火器出租450204<br />组织宗教集会450184<br />领养代理450193<br />失物招领450200<br />保险箱出租450215<br />宗谱研究450216<br />计划和安排婚礼服务450217<br />为特殊场合释放鸽子450219<br />注：1.本类似群为单一服务，各自然段间互不类似；<br />2.本类似群各自然段与第七版及以前版本4227各单一服务交叉检索；<br />3.计划和安排婚礼服务与第九版及以前版本4102组织安排婚庆活动、婚庆主持（司仪）交叉检索；<br />4.保险箱出租与第九版及以前版本3602保险箱出租交叉检索。<br />',NULL,'2017-05-08 23:07:39',NULL);
insert  into `dede_shangbiao_detail`(`id`,`indexId`,`code`,`name`,`detail`,`status`,`createTime`,`updateTime`) values (494,45,'4506 ','法律服务','调解450201，仲裁450205，知识产权咨询450206，版权管理450207，知识产权许可450208，为法律咨询目的监控知识产权450209，法律研究450210，诉讼服务450211，计算机软件许可（法律服务）450212，域名注册（法律服务）450213，替代性纠纷解决服务450214，法律文件准备服务450221，许可的法律管理450223，代写私人信件 450228<br />注：本类似群与第八版及以前版本4207交叉检索。<br />',NULL,'2017-05-08 23:07:39',NULL);

/*Table structure for table `dede_shangbiao_index` */

DROP TABLE IF EXISTS `dede_shangbiao_index`;

CREATE TABLE `dede_shangbiao_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indexId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` text COMMENT '注释',
  `targetUrl` varchar(100) DEFAULT NULL,
  `status` varchar(3) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

/*Data for the table `dede_shangbiao_index` */

insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (1,1,'用于工业、科学、摄影、农业、园艺和林业的化学品；未加工人造合成树脂；未加工塑料物质；肥料；灭火用合成物；淬火和焊接用制剂；保存食品用化学品；鞣料；工业用粘合剂。','第一类主要包括用于工业、科学和农业的化学制品，包括用于制造属于其他类别的产品的化学制品。<br />\r\n本类尤其包括：<br />\r\n——堆肥；<br />\r\n——非食品防腐盐；<br />\r\n——某些特定的食品工业用添加剂（查阅按字母顺序排列的商品分类表）。<br />\r\n本类尤其不包括：<br />\r\n——未加工的天然树脂（第二类）；<br />\r\n——医学科学用化学制品（第五类）；<br />\r\n——杀真菌剂、除莠剂和消灭有害动物制剂（第五类）；<br />\r\n——文具用或家用粘合剂（第十六类）；<br />\r\n——食品用防腐盐（第三十类）；<br />\r\n——褥草（腐殖土的覆盖物）（第三十一类）。','http://nice.whzjlh.cn/show.php?c=1','200','2017-05-08 22:54:33','2017-05-08 23:06:40');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (2,2,'颜料，清漆，漆；防锈剂和木材防腐剂；着色剂；媒染剂；未加工的天然树脂；绘画、装饰、印刷和艺术用金属 箔及金属粉。','第二类主要包括颜料、染料和防腐制品。<br />\r\n本类尤其包括：<br />\r\n——工业、手工业和艺术用颜料、清漆和漆；<br />\r\n——服装染料；<br />\r\n——食品和饮料用着色剂。<br />\r\n本类尤其不包括：<br />\r\n——未加工的人造树脂（第一类）；<br />\r\n——洗衣和漂白用上蓝剂（第三类）；<br />\r\n——美容用染料（第三类）；<br />\r\n——颜料盒（学校用文具）（第十六类）；<br />\r\n——绝缘颜料和绝缘漆（第十七类）。','http://nice.whzjlh.cn/show.php?c=2','200','2017-05-08 22:54:33','2017-05-08 23:06:40');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (3,3,'洗衣用漂白剂及其他物料；清洁、擦亮、去渍及研磨用制剂；肥皂；香料，香精油，化妆品，洗发水；牙膏。','第三类主要包括清洁制剂和化妆品。<br />\r\n本类尤其包括：<br />\r\n——人用或动物用除臭剂；<br />\r\n——室内芳香剂；<br />\r\n——化妆用卫生制剂。<br />\r\n本类尤其不包括：<br />\r\n——清洁烟囱用化学制品（第一类）；<br />\r\n——生产过程中用的去渍制剂（第一类）；<br />\r\n——非人用、非动物用除臭剂（第五类）；<br />\r\n——磨石和砂轮（手工具）（第八类）。','http://nice.whzjlh.cn/show.php?c=3','200','2017-05-08 22:54:33','2017-05-08 23:06:41');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (4,4,'工业用油和油脂；润滑剂；吸收、润湿和粘结灰尘用合成物；燃料（包括马达用燃料）和照明材料；照明用蜡烛和灯芯。','第四类主要包括工业用油和油脂，燃料和照明材料。<br />\r\n本类尤其不包括：<br />\r\n——某些特殊的工业用油和油脂（查阅按字母顺序排列的商品分类表）。','http://nice.whzjlh.cn/show.php?c=4','200','2017-05-08 22:54:33','2017-05-08 23:06:42');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (5,5,'药品，医用和兽医用制剂；医用卫生制剂；医用或兽医用营养食物和物质，婴儿食品；人用和动物用膳食补充剂；膏药，绷敷材料；填塞牙孔用料，牙科用蜡；消毒剂；消灭有害动物制剂；杀真菌剂，除莠剂。','第五类主要包括药品和其他医用或兽医用制剂。<br />\r\n本类尤其包括：<br />——婴儿和失禁者用尿布<br />\r\n——化妆品除外的个人保健用卫生制剂；<br />\r\n——非人用、非动物用除臭剂；<br />\r\n——膳食补充剂，为正常饮食提供补充或为健康目的；<br />\r\n——医用或兽医用代餐物、营养食物和饮料；<br />\r\n——不含烟草的医用卷烟。<br />\r\n本类尤其不包括：<br />\r\n——化妆用卫生制剂（第三类）；<br />\r\n——人用或动物用除臭剂（第三类）；<br />\r\n——矫形用绷带（第十类）；<br />\r\n——非医用、非兽医用的代餐物、营养食物和饮料（第二十九类、第三十类、第三十一类或第三十二类）。','http://nice.whzjlh.cn/show.php?c=5','200','2017-05-08 22:54:33','2017-05-08 23:06:43');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (6,6,'普通金属及其合金；金属建筑材料；可移动金属建筑物；铁轨用金属材料；普通金属制非电气用缆线；五金具，金属小五金具；金属管；保险箱；矿石。','第六类主要包括未加工的和半加工的普通金属，以及这些金属的简单制品。<br />\r\n本类尤其不包括：<br />\r\n——铝土（第一类）；<br />\r\n——汞，锑，碱金属和碱土金属（第一类）；<br />\r\n——绘画、装饰、印刷和艺术用金属箔及金属粉（第二类）；\r\n——某些按其功能或用途分类的普通金属制品（查阅按字母顺序排列的商品分类表）。','http://nice.whzjlh.cn/show.php?c=6','200','2017-05-08 22:54:33','2017-05-08 23:06:45');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (7,7,'机器和机床；马达和引擎（陆地车辆用的除外）；机器联结器和传动机件（陆地车辆用的除外）；非手动农业器具；孵化器；自动售货机。','第七类主要包括机器、机床、马达和引擎。<br />\r\n本类尤其包括：<br />\r\n——各类马达和引擎的部件；<br />\r\n——电动清洁机器和装置。<br />\r\n本类尤其不包括：<br />\r\n——某些特殊的机器和机床（查阅按字母顺序排列的商品分类表）；<br />\r\n——手动的手工具和器具（第八类）；<br />\r\n——陆地车辆用马达和引擎（第十二类）。','http://nice.whzjlh.cn/show.php?c=7','200','2017-05-08 22:54:33','2017-05-08 23:06:51');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (8,8,'手工具和器具（手动的）；刀、叉和勺餐具；随身武器；剃刀。','第八类主要包括各种行业的作为工具使用的手动器具。<br />\r\n本类尤其包括：<br />\r\n——贵重金属制刀、叉和勺餐具；<br />\r\n——电动剃刀和修剪刀（手工器具）\r\n本类尤其不包括：<br />\r\n——某些特殊器具（查阅按字母顺序排列的商品分类表）；<br />\r\n——马达带动的机床和器具（第七类）；<br />\r\n——外科手术刀（第十类）；<br />\r\n——作为火器的随身武器（第十三类）；<br />\r\n——切纸刀（第十六类）；<br />\r\n——击剑用兵器（第二十八类）。','http://nice.whzjlh.cn/show.php?c=8','200','2017-05-08 22:54:34','2017-05-08 23:06:53');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (9,9,'科学、航海、测量、摄影、电影、光学、衡具、量具、信号、检验（监督）、救护（营救）和教学用装置及仪器；处理、开关、转换、积累、 调节或控制电的装置和仪器；录制、传送、重放声音或影像的装置；磁性数据载体，录音盘；光盘，DVD盘和其他数字存储媒介；投币启动装置的机械结构；收银机，计算机器，数据处理装置，计算机；计算机软件；灭火设备。','尤其包括：<br />\r\n——实验室科研用仪器及器械；<br />\r\n——领航用电气仪器及器械，如测量和传令仪器及器械；<br />\r\n——量角器；<br />\r\n——穿孔卡式办公机械；<br />\r\n——不论录制媒体或传播途径的所有的计算机程序和软件，即包括录制在磁性媒体 \r\n上的软件或从远程计算机网络上下载的软件。<br />\r\n尤其不包括：<br />\r\n——下列电动仪器及器械：<br />\r\n   （1）炊事用电气用具（食品碾磨和搅拌器、榨果汁器、电动磨咖啡器等）和第 \r\n七类中使用电动机的其他设备及器具；<br />\r\n（2）抽取或分发燃料的器具（第七类）；<br />\r\n（3）电动剃刀和理发推子（手工具）（第八类）；<br />\r\n（4）电动牙刷和梳子（第二十一类）；<br />\r\n（5）房间加热或液体加热、烹调、通风等电器设备（第十一类）；<br />\r\n——钟表和其他计时器（第十四类）；<br />\r\n——时间控制钟（第十四类）；<br />\r\n——与外接显示屏或监视器连用的娱乐和游戏装置（第二十八类）。','http://nice.whzjlh.cn/show.php?c=9','200','2017-05-08 22:54:34','2017-05-08 23:06:55');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (10,10,'外科、医疗、牙科和兽医用仪器及器械；假肢，假眼和假牙；整形用品；缝合用材料。','第十类主要包括医疗仪器、器械及用品。<br />\r\n本类尤其包括：<br />\r\n——医用特种家具；<br />\r\n——橡胶卫生用品（查阅按字母顺序排列的商品分类表）；<br />\r\n——矫形用绷带。','http://nice.whzjlh.cn/show.php?c=10','200','2017-05-08 22:54:34','2017-05-08 23:06:56');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (11,11,'照明、加热、蒸汽发生、烹饪、冷藏、干燥、通风、供水以及卫生用装置。','本类尤其包括：<br />\r\n——空气调节装置；<br />\r\n——电或非电的暖床器，暖水袋，长柄暖床炉；<br />\r\n——非医用电热垫和电热毯：<br />\r\n——电水壶；<br />\r\n——电烹调用具。<br />\r\n本类尤其不包括：<br />\r\n——制造蒸汽的装置（机器部件）（第七类）；<br />\r\n——电暖衣服（第九类）。','http://nice.whzjlh.cn/show.php?c=11','200','2017-05-08 22:54:34','2017-05-08 23:06:59');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (12,12,'运载工具；陆、空、海用运载装置。','本类尤其包括：<br />\r\n——陆地车辆用马达和引擎；<br />\r\n——陆地车辆用联结器和传动机件；<br />\r\n——气垫船。<br />\r\n本类尤其不包括：<br />\r\n——某些非运输用途的特种车辆（查阅按字母顺序排列的商品分类表）；<br />\r\n——车辆的某些部件（查阅按字母顺序排列的商品分类表）；<br />\r\n——铁路用金属材料（第六类）；<br />\r\n——非陆地车辆用马达、引擎、联结器和传动机件（第七类）；<br />\r\n——所有马达和引擎的部件（第七类）。','http://nice.whzjlh.cn/show.php?c=12','200','2017-05-08 22:54:34','2017-05-08 23:07:01');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (13,13,'火器；军火及弹药；爆炸物；烟火。','第十三类主要包括火器和花炮产品。<br />\r\n本类尤其不包括：<br />\r\n——火柴（第三十四类）。','http://nice.whzjlh.cn/show.php?c=13','200','2017-05-08 22:54:34','2017-05-08 23:07:01');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (14,14,'贵重金属及其合金；珠宝首饰，宝石；钟表和计时仪器。','第十四类主要包括贵重金属，贵重金属制品或镀贵重金属制品，并通常包括珠宝首饰和钟表。<br />\r\n本类尤其包括：<br />\r\n——首饰（即仿真首饰、贵重金属制首饰和宝石）；<br />\r\n——衬衫袖口的链扣，领带饰针。<br />\r\n本类尤其不包括：<br />\r\n——某些按其功能或用途分类的贵重金属制品（查阅按字母顺序排列的商品分类表），如：绘画、装饰、印刷和艺术用金属箔及金属粉（第二类），牙科用金汞合金（第五类），刀、叉和勺餐具（第八类），电触点（第九类），金笔尖（第十六类），茶壶（第二十一类），金银线制刺绣品（第二十六类），雪茄烟盒（第三十四类）；<br />\r\n——非贵重金属制艺术品（按其原料分类）。','http://nice.whzjlh.cn/show.php?c=14','200','2017-05-08 22:54:34','2017-05-08 23:07:02');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (15,15,'乐器。','本类尤其包括：<br />\r\n——机械钢琴及其附件；<br />\r\n——八音盒；<br />\r\n——电动和电子乐器。<br />\r\n本类尤其不包括：<br />\r\n——录音、播音、扩音和放音装置（第九类）。','http://nice.whzjlh.cn/show.php?c=15','200','2017-05-08 22:54:34','2017-05-08 23:07:02');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (16,16,'纸和纸板；印刷品；装订用品；照片；文具；文具用或家庭用粘合剂；美术用品；画笔；打字机和办公用品（家具除外）；教育或教学用品（仪器除外）；包装用塑料物品；印刷铅字；印版。','第十六类主要包括纸和纸板及其制品和办公用品。<br />\r\n本类尤其包括：<br />\r\n——切纸刀；<br />\r\n——油印机；<br />\r\n——包装用塑料纸、塑料提兜和塑料袋。<br />\r\n——纸制桌布和餐巾。<br />\r\n本类尤其不包括：<br />\r\n——某些按其功能或用途分类的纸制品和纸板制品（查阅按字母顺序排列的商品分类表）；<br />\r\n——颜料（第二类）；<br />\r\n——艺术家用手工具（如修平刀、雕塑凿刀）（第八类）；<br />\r\n——纸制床单和枕套（第二十四类）。','http://nice.whzjlh.cn/show.php?c=16','200','2017-05-08 22:54:34','2017-05-08 23:07:05');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (17,17,'未加工和半加工的橡胶、古塔胶、树胶、石棉、云母及这些材料的代用品；生产用成型塑料制品；包装、填充和绝缘用材料；非金属软管。','第十七类主要包括电绝缘、隔热或隔音材料，以及生产用塑料片、板或杆，和属于本类的这些原材料的 制品。<br>\r\n本类尤其包括：<br>\r\n——修复轮胎用橡胶材料；<br>\r\n——橡胶或塑料制衬垫及填充料；<br>\r\n——抗污染的浮动屏障。<br>\r\n本类尤其不包括：<br>\r\n——某些按其功能或用途分类的本类原材料制品（查阅按字母顺序排 列的商品分类表）。','http://nice.whzjlh.cn/show.php?c=17','200','2017-05-08 22:54:34','2017-05-08 23:07:06');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (18,18,'皮革和人造皮革；毛皮；箱子和旅行袋；雨伞和阳伞；手杖；鞭和马具。','第十八类主要包括皮革、人造皮革及其制品，旅行用品和马具。<br />\r\n本类尤其包括：<br />\r\n——行李标签。<br />\r\n本类尤其不包括：<br />\r\n——服装、鞋、帽（查阅按字母顺序排列的商品分类表）。<br />\r\n——某些按其功能或用途分类的皮革、人造皮革、毛皮制品（查阅按 字母顺序排列的商品分类表）。','http://nice.whzjlh.cn/show.php?c=18','200','2017-05-08 22:54:34','2017-05-08 23:07:07');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (19,19,'非金属的建筑材料；建筑用非金属刚性管；柏油，沥青；可移动非金属建筑物；非金属碑。','第十九类主要包括非金属建筑材料。<br />\r\n本类尤其包括：<br />\r\n——半成品木材（如横梁、板、护板）；<br />\r\n——胶合板；<br />\r\n——建筑用玻璃（如平板、玻璃瓦片）；<br />\r\n——路标用玻璃颗粒；<br />\r\n——混凝土制信箱。<br />\r\n本类尤其不包括：<br />\r\n——水泥贮藏或防水用制剂（第一类）；<br />\r\n——防火制剂（第一类）。','http://nice.whzjlh.cn/show.php?c=19','200','2017-05-08 22:54:34','2017-05-08 23:07:08');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (20,20,'家具，镜子，相框；未加工或半加工的骨、角、象牙、鲸骨或珍珠母； 贝壳；海泡石；黄琥珀。','第二十类主要包括家具及其部件，由木、软木、苇、藤、柳条、角、骨、象牙、鲸骨、贝壳、琥珀、珍珠母、海泡石以及 这些材料的代用品或塑料制成的某些制品。<br />\r\n本类尤其包括：<br />\r\n——金属家具和野营用家具；<br />\r\n——床上用品（如床垫、弹簧垫、枕头）；<br />\r\n——镜子，家具用和梳妆用镜；<br />\r\n——非金属牌照；<br />\r\n——非金属、非混凝土制信箱。<br />\r\n本类尤其不包括：<br />\r\n——某些按其功能或用途分类的镜子（查阅按字母顺序排列的商品分类表）；<br />\r\n——实验室用特种家具（第九类）；<br />\r\n——医用特种家具（第十类）；<br />\r\n——床单和枕套（第二十四类）；<br />\r\n——鸭绒被（第二十四类）；<br />\r\n——某些按其功能或用途分类的由木、软木、苇、藤、柳条、角、骨、象牙、鲸骨、贝 壳、琥珀、珍珠母、海泡石以及这些材料的代用品或塑料制成的产品（查阅按字母顺序排列的 商品分类表）。','http://nice.whzjlh.cn/show.php?c=20','200','2017-05-08 22:54:34','2017-05-08 23:07:10');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (21,21,'家用或厨房用器具和容器；梳子和海绵；刷子（画笔除外）；制刷材料；清洁用具；钢丝绒；未加工或半加工玻璃（建筑用玻璃除外）；玻璃器皿、瓷器和陶器。','第二十一类主要包括家庭和厨房用小型手动器具以及盥洗室用具、玻璃器皿和瓷器。<br />\r\n本类尤其包括：<br />\r\n——家庭和厨房用器具及容器，如：厨房用具，桶，用铁、铝、塑料或其他材料制成的盆，以及小型手动的切碎机、研磨机、压榨机；<br />\r\n——电梳；<br />\r\n——电牙刷；<br />\r\n——碗碟架和饮料瓶架（餐具）。<br />\r\n本类尤其不包括：<br />\r\n——某些按其功能或用途分类的玻璃制品、瓷器和陶器（查阅按字母顺序排列的商品分类 表）；<br />\r\n——清洁制剂、肥皂等（第三类）；<br />\r\n——小型电动的切碎机、研磨机、压榨机（第七类）；<br />\r\n——剃刀及剃毛装置、修剪刀（手工器具）、修指甲和修脚的金属器具（第八类）；<br />\r\n——电烹饪器具（第十一类）；<br />\r\n——梳妆镜（第二十类）。','http://nice.whzjlh.cn/show.php?c=21','200','2017-05-08 22:54:34','2017-05-08 23:07:11');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (22,22,'缆和绳；网；帐篷，遮篷和防水遮布；帆；袋；衬垫和填充材料（纸或纸板、橡胶、塑料制除外）；纺织用纤维原料。','第二十二类主要包括帆布和制帆用其他材料，绳缆，衬垫和填充材料，纺织用纤维原料。<br />\r\n本类尤其包括：<br />\r\n——运输或贮存大批货物和原材料用袋和包（查阅按字母顺序排列的商 品分类表）；<br />\r\n——用天然或人工纺织纤维、纸或塑料制成的缆和绳。<br />\r\n本类尤其不包括：<br />\r\n——某些网、袋和包（查阅按字母顺序排列的商品分类表）；<br />\r\n——乐器弦（第十五类）；<br />\r\n——纸或纸板制衬垫及填充料（第十六类），橡胶或塑料制衬垫及填充料（第十七类）。','http://nice.whzjlh.cn/show.php?c=22','200','2017-05-08 22:54:34','2017-05-08 23:07:12');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (23,23,'纺织用纱和线。','','http://nice.whzjlh.cn/show.php?c=23','200','2017-05-08 22:54:34','2017-05-08 23:07:13');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (24,24,'织物及其替代品；床单；桌布。','第二十四类主要包括纺织品（布匹）和家用纺织品制罩布。<br />\r\n本类尤其包括：<br />\r\n——家用亚麻布；<br />\r\n——纸制床单和枕套。<br />\r\n本类尤其不包括：<br />\r\n——某些特殊织物（查阅按字母顺序排列的商品分类表）；<br />\r\n——医用电热毯（第十类）和非医用电热毯（第十一类）；<br />\r\n——纸制桌布和餐巾（第十六类）；<br />\r\n——马用罩布（第十八类）。','http://nice.whzjlh.cn/show.php?c=24','200','2017-05-08 22:54:34','2017-05-08 23:07:13');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (25,25,'服装，鞋，帽。','本类尤其不包括：<br />\r\n——某些特殊用途的服装和鞋（查阅按字母顺序排列的商品分类表）。','http://nice.whzjlh.cn/show.php?c=25','200','2017-05-08 22:54:34','2017-05-08 23:07:15');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (26,26,'花边和刺绣，饰带和编带；纽扣，领钩扣，饰针和缝针；假花。','第二十六类主要包括缝纫用品。<br />\r\n本类尤其包括：<br />\r\n——拉链。<br />\r\n本类尤其不包括：<br />\r\n——某些特种小钩（查阅按字母顺序排列的商品分类表）；<br />\r\n——某些特种针（查阅按字母顺序排列的商品分类表）；<br />\r\n——纺织用纱和线（第二十三类）。','http://nice.whzjlh.cn/show.php?c=26','200','2017-05-08 22:54:34','2017-05-08 23:07:16');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (27,27,'地毯，地席，席类，油毡及其他铺地板材料；非纺织品制墙帷。','第二十七类主要包括铺在已建成的地板和墙壁上的制品。<br />\r\n本类尤其不包括：<br />\r\n——木地板（第十九类）。','http://nice.whzjlh.cn/show.php?c=27','200','2017-05-08 22:54:34','2017-05-08 23:07:16');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (28,28,'游戏器具和玩具；体育和运动用品；圣诞树用装饰品。','本类尤其包括：<br />\r\n——与外接显示屏或监视器连用的娱乐和游戏装置；<br />\r\n——钓鱼用具；<br />\r\n——各种运动和游戏设备。<br />\r\n本类尤其不包括：<br />\r\n——圣诞树用的蜡烛（第四类）；<br />\r\n——潜水装备（第九类）；<br />\r\n——圣诞树用的电灯（花彩式的）（第十一类）；<br />\r\n——渔网（第二十二类）；<br />\r\n——体育和运动用服装（第二十五类）；<br />\r\n——某些体育和运动用品（查阅按字母顺序排列的商品分类表）；<br />\r\n——圣诞树装饰用糖果和巧克力（第三十类）。','http://nice.whzjlh.cn/show.php?c=28','200','2017-05-08 22:54:34','2017-05-08 23:07:17');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (29,29,'肉，鱼，家禽和野味；肉汁；腌渍、冷冻、干制及煮熟的水果和蔬菜；果冻，果酱，蜜饯；蛋；奶和奶制品；食用油和油脂。','第二十九类主要包括动物类食品，以及日用或贮藏用的蔬菜及其他可食用的园艺产品。<br />\r\n本类尤其包括：<br />\r\n——奶饮料（以奶为主）。<br />\r\n本类尤其不包括：<br />\r\n——某些植物类食品（查阅按字母顺序排列的商品分类表）；<br />\r\n——婴儿食品（第五类）；<br />\r\n——医用营养食物和物质（第五类）；<br />\r\n——膳食补充剂（第五类）；<br />\r\n——色拉调味品（第三十类）。<br />\r\n——待孵蛋（第三十一类）；<br />\r\n——动物饲料（第三十一类）；<br />\r\n——活的动物（第三十一类）。','http://nice.whzjlh.cn/show.php?c=29','200','2017-05-08 22:54:34','2017-05-08 23:07:20');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (30,30,'咖啡，茶，可可和咖啡代用品；米；食用淀粉和西米；面粉和谷类制品；面包、糕点和甜食；冰制食品；糖，蜂蜜，糖浆；鲜酵母，发酵粉；食盐；芥末；醋，沙司（调味品）；辛香料；饮用冰。','第三十类主要包括日用或贮藏用的植物类食品，以及调味佐料。<br />\r\n本类尤其包括：<br />\r\n——以咖啡，可可，巧克力或茶为主的饮料；<br />\r\n——人类食用谷物（如燕麦片或其他谷物）。<br />\r\n本类尤其不包括：<br />\r\n——某些植物类食品（查阅按字母顺序排列的商品分类表）；<br />\r\n——非食用防腐盐（第一类）；<br />\r\n——药茶和医用营养食物和物质（第五类）；<br />\r\n——婴儿食品（第五类）；<br />\r\n——膳食补充剂（第五类）；<br />\r\n——未加工的谷物（第三十一类）；<br />\r\n——动物饲料（第三十一类）。','http://nice.whzjlh.cn/show.php?c=30','200','2017-05-08 22:54:34','2017-05-08 23:07:22');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (31,31,'农业、园艺、林业产品；未加工的谷物和种子；新鲜水果和蔬菜；草木和花卉；活动物；动物饲料；麦芽。','第三十一类主要包括日用的未经制作的田地产物，活动物及植物，以及动物饲料。<br />\r\n本类尤其包括：<br />\r\n——未加工的木材；<br />\r\n——未加工的谷物；<br />\r\n——待孵蛋；<br />\r\n——软体动物和贝壳类动物（活的）。<br />\r\n本类尤其不包括：<br />\r\n——微生物培养物和医用水蛭（第五类）；<br />\r\n——动物用膳食补充剂（第五类）；<br />\r\n——半成品木材（第十九类）；<br />\r\n——人造鱼饵（第二十八类）；<br />\r\n——米（第三十类）；<br />\r\n——烟草（第三十四类）。','http://nice.whzjlh.cn/show.php?c=31','200','2017-05-08 22:54:35','2017-05-08 23:07:23');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (32,32,'啤酒；矿泉水和汽水以及其他不含酒精的饮料；水果饮料及果汁；糖浆及其他制饮料用的制剂。','第三十二类主要包括不含酒精的饮料及啤酒。<br />\r\n本类尤其包括：<br />\r\n——无酒精饮料。<br />\r\n本类尤其不包括：<br />\r\n——医用饮料（第五类）；<br />\r\n——奶饮料（以奶为主）（第二十九类）；<br />\r\n——以咖啡，可可、巧克力或茶为主的饮料（第三十类）。','http://nice.whzjlh.cn/show.php?c=32','200','2017-05-08 22:54:35','2017-05-08 23:07:23');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (33,33,'含酒精的饮料（啤酒除外）。','本类尤其不包括：<br />\r\n——医用饮料（第五类）；<br />\r\n——无酒精饮料（第三十二类）。','http://nice.whzjlh.cn/show.php?c=33','200','2017-05-08 22:54:35','2017-05-08 23:07:24');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (34,34,'烟草；烟具；火柴。','本类尤其包括：<br />\r\n——烟草代用品（非医用的）。<br />\r\n本类尤其不包括：<br />\r\n——不含烟草的医用卷烟（第五类）。','http://nice.whzjlh.cn/show.php?c=34','200','2017-05-08 22:54:35','2017-05-08 23:07:24');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (35,35,'广告；商业经营；商业管理；办公事务。','第三十五类主要包括由个人或组织提供的服务，其主要目的在于：<br />\r\n⑴对商业企业的经营或管理进行帮助；<br />\r\n⑵对工商企业的业务活动或者商业职能的管理进行帮助；<br />\r\n以及由广告部门为各种商品或服务提供的服务，旨在通过各种传播方式向公众进行广告宣传。<br />\r\n本类尤其包括：<br />\r\n——为他人将各种商品（运输除外）归类，以便顾客看到和购买；<br />这种服务可由零售、批发商店通过邮购目录或电子媒介提供，例如通过网站或电视购物节目；<br />\r\n——有关注册、抄录、写作、编篡、或者书面通讯及记录系统化，以及编篡数学或者统计资料的服务；<br />\r\n——广告单位的服务，以及直接或邮寄散发说明书或者样品的服务；<br />本类可涉及有关其他服务的广告，如银行借贷或无线电广告服务。<br />\r\n本类尤其不包括：<br />\r\n——与工商企业的经营或者管理无直接关系的估价和编写工程师报告的服务（查阅按字母顺序排列的服务分类表）。','http://nice.whzjlh.cn/show.php?c=35','200','2017-05-08 22:54:35','2017-05-08 23:07:25');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (36,36,'保险；金融事务；货币事务；不动产事务。','第三十六类主要包括金融业务和货币业务提供的服务以及与各种保险契约有关的服务。<br />\r\n本类尤其包括：<br />\r\n——与金融业务和货币业务有关的服务，即：<br />\r\n⑴银行及其有关的机构的服务，如外汇经纪人或清算机构；<br />\r\n⑵不属于银行的信贷部门的服务，如信贷合作社团、私人金融公司、放款人等的服务；<br />\r\n⑶控股公司的“投资信托”服务；<br />\r\n⑷股票及财产经纪人的服务；<br />\r\n⑸与承受信用代理人担保的货币业务有关的服务；<br />\r\n⑹与发行旅行支票和信用证有关的服务；<br />\r\n——融资租赁服务\r\n——不动产管理人对建筑物的服务，如租赁、估价或筹措资金的服务；<br />\r\n——与保险有关的服务，如保险代理人或经纪人提供的服务，为被保险人和承保人提供的服务。','http://nice.whzjlh.cn/show.php?c=36','200','2017-05-08 22:54:35','2017-05-08 23:07:25');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (37,37,'房屋建筑；修理；安装服务。','第三十七类主要包括建造永久性建筑的承包商或分包商所提供的服务，以及由个人或组织为修复建筑物或保持原样而不改变其物理或化学特征的服务。<br />\r\n本类尤其包括：<br />\r\n——建筑房屋、道路、桥梁、堤坝或通讯线路的服务，以及建筑行业其他专项服务，如油漆粉刷、管道铺设、安装暖气或盖屋顶；<br />\r\n——为建筑服务的辅助性服务，如建筑计划的检查；<br />\r\n——造船服务；<br />\r\n——租赁建筑工具或材料的服务；<br />\r\n——修理服务，即修复已磨损、损坏或部分破坏的任何东西（修复房屋或将其他残缺之物修复原样）；<br />\r\n——各种修理服务，如修理电器、家具、器械和工具等；<br />\r\n——维修服务，旨在使物品保持原样而不改变其任何属性（有关本类与第四十类的区别，请看第四十类的注释）。<br />\r\n本类尤其不包括：<br />\r\n——诸如服装或车辆之类商品的储存服务（第三十九类）；<br />\r\n——与布料或服装印染有关的服务（第四十类）。','http://nice.whzjlh.cn/show.php?c=37','200','2017-05-08 22:54:35','2017-05-08 23:07:27');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (38,38,'电信。','第三十八类主要包括至少能使二人之间通过感觉方式进行通讯的服务。<br />这类服务包括：<br />\r\n⑴能使一人与另一人进行交谈；<br />\r\n⑵将一人的消息传递给另一人；<br />\r\n⑶使一人与另一人进行口头或视觉的联系（无线电和电视）。<br />\r\n本类尤其包括：<br />\r\n——主要进行播放无线电或电视节目的服务。<br />\r\n本类尤其不包括：<br />\r\n——无线电广告服务（第三十五类）；<br />\r\n——电话市场营销服务（第三十五类）。','http://nice.whzjlh.cn/show.php?c=38','200','2017-05-08 22:54:35','2017-05-08 23:07:29');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (39,39,'运输；商品包装和贮藏；旅行安排。','第三十九类主要包括将人、动物或商品从一处运送到另一处（通过铁路、公路、水上、空中或管道）所提供的服务和与此有关的必要服务，以及货栈或者其他建筑物为便于看管、保存商品所提供贮藏的服务。<br />\r\n本类尤其包括：<br />\r\n——供运输者使用的由车站、桥梁、火车渡轮等公司提供的服务；<br />\r\n——租赁运输车辆的服务；<br />\r\n——与海上拖曳、卸货、港口和码头运转、营救遇险船只及其货物有关的服务；<br />\r\n——发货前的包装和打包业务的服务；<br />\r\n——经纪人及旅行社提供旅行或货运情况的服务以及提供价目、时刻或运送方式情况的服务；<br />\r\n——运输前检查车辆或货物的服务。<br />\r\n本类尤其不包括：<br />\r\n——与运输企业广告有关的服务，如散发广告传单或无线电广告（第三十五类）；<br />\r\n——由经纪人或旅行社提供的发行旅行支票或者信用证的服务（第三十六类）；<br />\r\n——人或货物在运输过程中的（商业、火灾或生命）保险服务（第三十六类）；<br />\r\n——维修车辆的服务，以及维修用于运输人或货物的运输工具的服务（第三十七类）；<br />\r\n——由旅行社或经纪人提供的预定旅馆房间的服务（第四十三类）。','http://nice.whzjlh.cn/show.php?c=39','200','2017-05-08 22:54:35','2017-05-08 23:07:30');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (40,40,'材料处理。','第四十类主要包括没有列入其他类别的，对有机物质、无机物质或物品进行机械或者化学处理或者加工的服务，包括定制生产服务。<br />\r\n按分类的要求，只有在为他人提供的情况下，商品的制造或生产才被视为服务。<br />\r\n如果制造或生产不是为履行满足客户的特殊需要、要求或规格的产品订单，则一般从属于制造商交易活动中的主要商业行为或是商品。<br />\r\n如果物质或物品被其处理、加工或制造方交易给第三方，则一般不视为服务。<br />\r\n本类尤其包括：<br />\r\n——对物品或物质进行加工的服务，包括改变其主要特性的处理服务（如染服装）；<br />\r\n按正常分类，维修服务应该列入第三十七类，但若是进行了这样的改变，即可列入第四十类（如汽车防冲击装置的镀铬处理）；<br />\r\n——根据他人的订单和规格要求定制生产产品（须明确的是：某些主管 局要求必须指明制造的产品），例如汽车定制生产；<br />\r\n——在物质生产或建筑物建造过程中的材料处理服务，如切割、加工成形，磨光或金属镀层方面的服务。<br />\r\n本类尤其不包括：<br />\r\n——某些定制服务，例如汽车定制喷漆（第三十七类）；<br />\r\n——修理服务（第三十七类）。','http://nice.whzjlh.cn/show.php?c=40','200','2017-05-08 22:54:35','2017-05-08 23:07:33');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (41,41,'教育；提供培训；娱乐；文体活动。','第四十一类主要包括由个人或团体提供的人或动物智力开发方面的服务，以及用于娱乐或消遣时的服务。<br />\r\n本类尤其包括：<br />\r\n——有关人员教育或动物训练的各种形式的服务；<br />\r\n——旨在人们娱乐、消遣或文娱活动的服务；<br />\r\n——为文化和教育目的向公众展示可视艺术作品或文学作品。','http://nice.whzjlh.cn/show.php?c=41','200','2017-05-08 22:54:35','2017-05-08 23:07:33');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (42,42,'科学技术服务和与之相关的研究与设计服务；工业分析与研究；计算机硬件与软件的设计与开发。','第四十二类主要包括由人，个人或集体，提供的涉及复杂领域活动的理论和实践服务；<br />这些服务由诸如化学家、物理学家、工程师、计算机程序员等专业人员提供。<br />\r\n本类尤其包括：<br />\r\n——由从事评估、估算以及从事科技领域研究与报告的工程师和科学家提供的服务（包括技术咨询）；<br />\r\n——为医务目的所做的科学研究服务。<br />\r\n本类尤其不包括：<br />\r\n——商业研究与开发（第三十五类）；<br />\r\n——文字处理和计算机档案管理（第三十五类）；<br />\r\n——金融与财政评估（第三十六类）；<br />\r\n——采矿和石油开采（第三十七类）；<br />\r\n——计算机（硬件）的安装与维修服务（第三十七类）；<br />\r\n——由专业人员诸如医生、兽医和精神分析医生所提供的服务（第四十四类）；<br />\r\n——医疗服务（第四十四类）；<br />\r\n——花园设计（第四十四类）；<br />\r\n——法律服务（第四十五类）。','http://nice.whzjlh.cn/show.php?c=42','200','2017-05-08 22:54:35','2017-05-08 23:07:35');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (43,43,'提供食物和饮料服务；临时住宿。','第四十三类主要包括由个人或机构为消费者提供食物和饮料的服务以及为使在宾馆、寄宿处或其他提供临时住宿的机构得到床位和寄宿所提供的服务。<br />\r\n本类尤其包括：<br />\r\n——为旅游者提供住宿预订服务，尤其是通过旅行社或经纪人提供的服务；<br />\r\n——为动物提供膳食。<br />\r\n本类尤其不包括：<br />\r\n——提供永久使用的不动产，例如住房、公寓等的租赁服务（第三十六类）；<br />\r\n——由旅行社提供的旅行服务（第三十九类）；<br />\r\n——食物和饮料的防腐处理服务（第四十类）；<br />\r\n——迪斯科舞厅服务（第四十一类）；<br />\r\n——寄宿学校（第四十一类）；<br />\r\n——疗养院（第四十四类）。','http://nice.whzjlh.cn/show.php?c=43','200','2017-05-08 22:54:35','2017-05-08 23:07:37');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (44,44,'医疗服务；兽医服务；人或动物的卫生和美容服务；农业、园艺和林业服务。','第四十四类主要包括由个人或机构向人或动物提供的医疗、卫生和美容服务；<br />它还包括与农业、园艺和林业领域相关的服务。<br />\r\n本类尤其包括：<br />\r\n——与治疗病人（例如Ｘ光检查和取血样）有关的医学分析；<br />\r\n——人工授精服务；<br />\r\n——医药咨询；<br />\r\n——动物饲养；<br />\r\n——与植物生长例如园艺有关的服务；<br />\r\n——与植物艺术例如园艺设计和花卉构图有关的服务。<br />\r\n本类尤其不包括：<br />\r\n——灭害虫（为农业、园艺和林业目的除外）（第三十七类）；<br />\r\n——灌溉系统的安装与维修服务（第三十七类）；<br />\r\n——救护运输（第三十九类）；<br />\r\n——动物屠宰及其标本制作（第四十类）；<br />\r\n——树木砍伐和加工（第四十类）；<br />\r\n——动物驯养（第四十一类）；<br />\r\n——为体育锻炼目的而设的健康俱乐部（第四十一类）；<br />\r\n——医学科学研究服务（第四十二类）；<br />\r\n——为动物提供膳食（第四十三类）；<br />\r\n——养老院（第四十三类）。','http://nice.whzjlh.cn/show.php?c=44','200','2017-05-08 22:54:35','2017-05-08 23:07:37');
insert  into `dede_shangbiao_index`(`id`,`indexId`,`name`,`note`,`targetUrl`,`status`,`createTime`,`updateTime`) values (45,45,'法律服务；由他人提供的为满足个人需要的私人和社会服务；为保护财产和人身安全的服务。','本类尤其包括：<br />\r\n——由律师、法律助理和私人律师为个人、组织、团体、企业提供的服务；<br />\r\n——与个人或团体的安全相关的调查和监视服务；<br />\r\n——为个人提供的与社会活动，例如社交护送服务、葬礼服务，婚姻介绍服务。<br />\r\n本类尤其不包括：<br />\r\n——为商业运作提供直接指导的专业服务（第三十五类）；<br />\r\n——为处理与保险有关的金融或货币事务和服务有关的服务（第三十六类）；<br />\r\n——护送旅客（第三十九类）；<br />\r\n——安全运输（第三十九类）；<br />\r\n——各种个人教育服务（第四十一类）；<br />\r\n——歌唱演员和舞蹈演员的表演（第四十一类）；<br />\r\n——为保护计算机软件所提供的计算机服务（第四十二类）；<br />\r\n——由他人为人类和动物提供的医疗、卫生或美容服务（第四十四类）；<br />\r\n——某些出租服务（查阅按字母顺序排列的服务分类表和一般性说明中有关服务分类的第2条）。','http://nice.whzjlh.cn/show.php?c=45','200','2017-05-08 22:54:35','2017-05-08 23:07:39');

/*Table structure for table `dede_shops_delivery` */

DROP TABLE IF EXISTS `dede_shops_delivery`;

CREATE TABLE `dede_shops_delivery` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dname` char(80) NOT NULL,
  `price` float(13,2) NOT NULL DEFAULT '0.00',
  `des` char(255) DEFAULT NULL,
  `orders` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `orders` (`orders`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `dede_shops_delivery` */

insert  into `dede_shops_delivery`(`pid`,`dname`,`price`,`des`,`orders`) values (1,'送货上门',10.21,'送货上门,领取商品时付费.',0);
insert  into `dede_shops_delivery`(`pid`,`dname`,`price`,`des`,`orders`) values (2,'特快专递（EMS）',25.00,'特快专递（EMS）,要另收手续费.',0);
insert  into `dede_shops_delivery`(`pid`,`dname`,`price`,`des`,`orders`) values (3,'普通邮递',5.00,'普通邮递',0);
insert  into `dede_shops_delivery`(`pid`,`dname`,`price`,`des`,`orders`) values (4,'邮局快邮',12.00,'邮局快邮',0);

/*Table structure for table `dede_shops_orders` */

DROP TABLE IF EXISTS `dede_shops_orders`;

CREATE TABLE `dede_shops_orders` (
  `oid` varchar(80) NOT NULL,
  `userid` int(10) NOT NULL,
  `pid` int(10) NOT NULL DEFAULT '0',
  `paytype` tinyint(2) NOT NULL DEFAULT '1',
  `cartcount` int(10) NOT NULL DEFAULT '0',
  `dprice` float(13,2) NOT NULL DEFAULT '0.00',
  `price` float(13,2) NOT NULL DEFAULT '0.00',
  `priceCount` float(13,2) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `stime` int(10) NOT NULL DEFAULT '0',
  KEY `stime` (`stime`),
  KEY `userid` (`userid`),
  KEY `oid` (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_shops_orders` */

/*Table structure for table `dede_shops_products` */

DROP TABLE IF EXISTS `dede_shops_products`;

CREATE TABLE `dede_shops_products` (
  `aid` mediumint(8) NOT NULL DEFAULT '0',
  `oid` varchar(80) NOT NULL DEFAULT '',
  `userid` int(10) NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `price` float(13,2) NOT NULL DEFAULT '0.00',
  `buynum` int(10) NOT NULL DEFAULT '9',
  KEY `oid` (`oid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_shops_products` */

/*Table structure for table `dede_shops_userinfo` */

DROP TABLE IF EXISTS `dede_shops_userinfo`;

CREATE TABLE `dede_shops_userinfo` (
  `userid` int(10) NOT NULL,
  `oid` varchar(80) NOT NULL DEFAULT '',
  `consignee` char(15) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` int(10) NOT NULL DEFAULT '0',
  `tel` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `des` varchar(255) NOT NULL DEFAULT '',
  KEY `oid` (`oid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_shops_userinfo` */

/*Table structure for table `dede_softconfig` */

DROP TABLE IF EXISTS `dede_softconfig`;

CREATE TABLE `dede_softconfig` (
  `downtype` smallint(6) NOT NULL DEFAULT '0',
  `ismoresite` smallint(6) NOT NULL DEFAULT '0',
  `gotojump` smallint(6) NOT NULL DEFAULT '0',
  `islocal` smallint(5) unsigned NOT NULL DEFAULT '1',
  `sites` text,
  `downmsg` text,
  `moresitedo` smallint(5) unsigned NOT NULL DEFAULT '1',
  `dfrank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `dfywboy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `argrange` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`downtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_softconfig` */

insert  into `dede_softconfig`(`downtype`,`ismoresite`,`gotojump`,`islocal`,`sites`,`downmsg`,`moresitedo`,`dfrank`,`dfywboy`,`argrange`) values (0,1,1,1,'http://www.aaa.com | 镜像地址一	\nhttp://www.bbb.com | 镜像地址二	\nhttp://www.ccc.com | 镜像地址三	\n','<p>?推荐使用第三方专业下载工具下载本站软件，使用 WinRAR v3.10 以上版本解压本站软件。<br />	\n?如果这个软件总是不能下载的请点击报告错误,谢谢合作!!<br />	\n?下载本站资源，如果服务器暂不能下载请过一段时间重试！<br />	\n?如果遇到什么问题，请到本站论坛去咨寻，我们将在那里提供更多 、更好的资源！<br />	\n?本站提供的一些商业软件是供学习研究之用，如用于商业用途，请购买正版。</p>',0,0,0,0);

/*Table structure for table `dede_sphinx` */

DROP TABLE IF EXISTS `dede_sphinx`;

CREATE TABLE `dede_sphinx` (
  `countid` int(11) unsigned NOT NULL,
  `maxaid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`countid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_sphinx` */

/*Table structure for table `dede_stepselect` */

DROP TABLE IF EXISTS `dede_stepselect`;

CREATE TABLE `dede_stepselect` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `itemname` char(30) DEFAULT NULL,
  `egroup` char(20) DEFAULT NULL,
  `issign` tinyint(1) unsigned DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `dede_stepselect` */

insert  into `dede_stepselect`(`id`,`itemname`,`egroup`,`issign`,`issystem`) values (1,'血型','blood',1,1);
insert  into `dede_stepselect`(`id`,`itemname`,`egroup`,`issign`,`issystem`) values (2,'体型','bodytype',1,1);
insert  into `dede_stepselect`(`id`,`itemname`,`egroup`,`issign`,`issystem`) values (3,'公司规模','cosize',1,1);
insert  into `dede_stepselect`(`id`,`itemname`,`egroup`,`issign`,`issystem`) values (4,'交友','datingtype',1,1);
insert  into `dede_stepselect`(`id`,`itemname`,`egroup`,`issign`,`issystem`) values (5,'是否饮酒','drink',1,1);
insert  into `dede_stepselect`(`id`,`itemname`,`egroup`,`issign`,`issystem`) values (6,'教育程度','education',1,1);
insert  into `dede_stepselect`(`id`,`itemname`,`egroup`,`issign`,`issystem`) values (7,'住房','house',1,1);
insert  into `dede_stepselect`(`id`,`itemname`,`egroup`,`issign`,`issystem`) values (8,'收入','income',1,1);
insert  into `dede_stepselect`(`id`,`itemname`,`egroup`,`issign`,`issystem`) values (9,'婚姻','marital',1,1);
insert  into `dede_stepselect`(`id`,`itemname`,`egroup`,`issign`,`issystem`) values (10,'是否抽烟','smoke',1,1);
insert  into `dede_stepselect`(`id`,`itemname`,`egroup`,`issign`,`issystem`) values (11,'星座','star',1,1);
insert  into `dede_stepselect`(`id`,`itemname`,`egroup`,`issign`,`issystem`) values (12,'系统缓存标识','system',1,1);
insert  into `dede_stepselect`(`id`,`itemname`,`egroup`,`issign`,`issystem`) values (13,'行业','vocation',0,0);
insert  into `dede_stepselect`(`id`,`itemname`,`egroup`,`issign`,`issystem`) values (14,'地区','nativeplace',0,0);
insert  into `dede_stepselect`(`id`,`itemname`,`egroup`,`issign`,`issystem`) values (15,'信息类型','infotype',0,0);

/*Table structure for table `dede_sys_enum` */

DROP TABLE IF EXISTS `dede_sys_enum`;

CREATE TABLE `dede_sys_enum` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ename` char(30) NOT NULL DEFAULT '',
  `evalue` char(20) NOT NULL DEFAULT '0',
  `egroup` char(20) NOT NULL DEFAULT '',
  `disorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issign` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20020 DEFAULT CHARSET=utf8;

/*Data for the table `dede_sys_enum` */

insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (139,'cms制作','503','vocation',503,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (39,'租房','1','house',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (40,'一房以上','2','house',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (41,'两房以上','3','house',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (42,'大户/别墅','4','house',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (43,'低于1000元','1','income',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (44,'1000元以上','2','income',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (45,'2000元以上','3','income',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (46,'4000元以上','4','income',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (47,'8000元以上','5','income',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (48,'15000以上','6','income',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (49,'初中以上','1','education',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (50,'高中/中专','2','education',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (51,'大学专科','3','education',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (52,'大学本科','4','education',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (53,'硕士','5','education',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (54,'博士以上','6','education',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (55,'仅用于判断缓存是否存在','0','system',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (56,'白羊座','1','star',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (57,'金牛座','2','star',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (58,'双子座','3','star',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (59,'巨蟹座','4','star',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (60,'狮子座','5','star',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (61,'处女座','6','star',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (62,'天枰座','7','star',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (63,'天蝎座','8','star',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (64,'射手座','9','star',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (65,'摩羯座','10','star',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (66,'水瓶座','11','star',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (67,'双鱼座','12','star',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (68,'不吸烟','1','smoke',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (69,'偶尔吸一点','2','smoke',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (70,'抽得很凶','3','smoke',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (71,'不喝酒','1','drink',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (72,'偶尔喝一点','2','drink',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (73,'喝得很凶','3','drink',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (74,'A','1','blood',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (75,'B','2','blood',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (76,'AB','3','blood',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (77,'O','4','blood',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (78,'未婚','1','marital',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (79,'已婚','2','marital',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (80,'离异','3','marital',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (81,'丧偶','4','marital',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (82,'匀称','1','bodytype',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (83,'苗条','2','bodytype',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (84,'健壮','3','bodytype',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (85,'略胖','4','bodytype',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (86,'丰满','5','bodytype',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (87,'瘦小','6','bodytype',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (88,'高瘦','7','bodytype',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (89,'网友','1','datingtype',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (90,'恋人','2','datingtype',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (91,'玩伴','3','datingtype',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (92,'共同兴趣','4','datingtype',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (93,'男性朋友','5','datingtype',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (94,'女性朋友','6','datingtype',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (95,'50人以下','1','cosize',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (96,'50-200人','2','cosize',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (97,'200-500人','3','cosize',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (98,'500-2000人','4','cosize',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (99,'2000-5000人','5','cosize',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (100,'5000人以上','6','cosize',0,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20019,'澳门特别行政区','17500','nativeplace',17500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20018,'香港特别行政区','17000','nativeplace',17000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20017,'台湾省','16500','nativeplace',16500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20016,'图木舒克市','16015.3','nativeplace',16015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20015,'阿拉尔市','16015.2','nativeplace',16015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20014,'石河子市','16015.1','nativeplace',16015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20013,'省直辖行政单位','16015','nativeplace',16015,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20012,'吉木乃县','16014.7','nativeplace',16015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20011,'青河县','16014.6','nativeplace',16015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (111,'商品','500','infotype',500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (112,'租房','1000','infotype',1000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (113,'交友','1500','infotype',1500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (114,'招聘','2000','infotype',2000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (115,'求职','2500','infotype',2500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (116,'票务','3000','infotype',3000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (117,'服务','3500','infotype',3500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (118,'培训','4000','infotype',4000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (119,'出售','501','infotype',501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (121,'求购','502','infotype',502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (122,'交换','503','infotype',503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (123,'合作','504','infotype',504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (124,'出租','1001','infotype',1001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (125,'求租','1002','infotype',1002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (126,'合租','1003','infotype',1003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (127,'找帅哥','1501','infotype',1501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (128,'找美女','1502','infotype',1502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (129,'纯友谊','1503','infotype',1503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (130,'玩伴','1504','infotype',1504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (131,'互联网','500','vocation',500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (132,'网站制作','501','vocation',501,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (133,'机械','1000','vocation',1000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (134,'农业机械','1001','vocation',1001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (135,'机床','1002','vocation',1002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (136,'纺织设备和器材','1003','vocation',1003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (137,'风机/排风设备','1004','vocation',1004,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (138,'虚心','502','vocation',502,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (140,'模板制作','503.001','vocation',503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (141,'模块开发','503.002','vocation',503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (142,'企业网站','501.001','vocation',501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (143,'门户开发','501.002','vocation',501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (144,'商业网站','501.003','vocation',501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (145,'个人博客','501.004','vocation',501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (166,'化工','1500','vocation',1500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (147,'松松散散','502.001','vocation',502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (148,'测试分类','502.002','vocation',502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (150,'塑料切割机','1002.001','vocation',1002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (151,'打磨机','1002.002','vocation',1002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (152,'水货机器','1002.003','vocation',1002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (153,'自动收割机','1001.001','vocation',1001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (154,'运输机','1001.002','vocation',1001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (159,'水货','2501','infotype',2501,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (160,'水111','2501.001','infotype',2501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (161,'水222','2501.002','infotype',2501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (162,'有才','2502','infotype',2502,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (163,'有才啊啊啊','2502.001','infotype',2502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (167,'塑料化工','1501','vocation',1501,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (168,'加工','1501.001','vocation',1501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (169,'生产','1501.002','vocation',1501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (170,'物流','1501.003','vocation',1501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (171,'挨踢工作者','2000','vocation',2000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (172,'程序员','2001','vocation',2001,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (173,'美工设计','2002','vocation',2002,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (174,'前端开发','2003','vocation',2003,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (175,'配色','2002.001','vocation',2002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (176,'美学设计','2002.002','vocation',2002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (178,'ddddd','502.003','vocation',502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (179,'学习下','502.004','vocation',502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20010,'哈巴河县','16014.5','nativeplace',16015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20009,'福海县','16014.4','nativeplace',16014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20008,'富蕴县','16014.3','nativeplace',16014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20007,'布尔津县','16014.2','nativeplace',16014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20006,'阿勒泰市','16014.1','nativeplace',16014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20005,'阿勒泰地区','16014','nativeplace',16014,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20004,'和布克赛尔蒙古自治县','16013.7','nativeplace',16014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20003,'裕民县','16013.6','nativeplace',16014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20002,'托里县','16013.5','nativeplace',16014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20001,'沙湾县','16013.4','nativeplace',16013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (20000,'额敏县','16013.3','nativeplace',16013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19999,'乌苏市','16013.2','nativeplace',16013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19998,'塔城市','16013.1','nativeplace',16013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19997,'塔城地区','16013','nativeplace',16013,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19996,'尼勒克县','16012.10','nativeplace',16012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19995,'特克斯县','16012.9','nativeplace',16013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19994,'昭苏县','16012.8','nativeplace',16013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19993,'新源县','16012.7','nativeplace',16013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19992,'巩留县','16012.6','nativeplace',16013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19991,'霍城县','16012.5','nativeplace',16013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19990,'察布查尔锡伯自治县','16012.4','nativeplace',16012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19989,'伊宁县','16012.3','nativeplace',16012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19988,'奎屯市','16012.2','nativeplace',16012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19987,'伊宁市','16012.1','nativeplace',16012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19986,'伊犁哈萨克自治州','16012','nativeplace',16012,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19985,'民丰县','16011.8','nativeplace',16012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19984,'于田县','16011.7','nativeplace',16012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19983,'策勒县','16011.6','nativeplace',16012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19982,'洛浦县','16011.5','nativeplace',16012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19981,'皮山县','16011.4','nativeplace',16011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19980,'墨玉县','16011.3','nativeplace',16011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19979,'和田县','16011.2','nativeplace',16011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19978,'和田市','16011.1','nativeplace',16011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19977,'和田地区','16011','nativeplace',16011,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19976,'塔什库尔干塔吉克自治县','16010.12','nativeplace',16010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19975,'巴楚县','16010.11','nativeplace',16010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19974,'伽师县','16010.10','nativeplace',16010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19973,'岳普湖县','16010.9','nativeplace',16011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19972,'麦盖提县','16010.8','nativeplace',16011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19971,'叶城县','16010.7','nativeplace',16011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19970,'莎车县','16010.6','nativeplace',16011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19969,'泽普县','16010.5','nativeplace',16011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19968,'英吉沙县','16010.4','nativeplace',16010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19967,'疏勒县','16010.3','nativeplace',16010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19966,'疏附县','16010.2','nativeplace',16010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19965,'喀什市','16010.1','nativeplace',16010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19964,'喀什地区','16010','nativeplace',16010,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19963,'乌恰县','16009.4','nativeplace',16009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19962,'阿合奇县','16009.3','nativeplace',16009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19961,'阿克陶县','16009.2','nativeplace',16009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19960,'阿图什市','16009.1','nativeplace',16009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19959,'克孜勒苏柯尔克孜自治州','16009','nativeplace',16009,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19958,'柯坪县','16008.9','nativeplace',16009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19957,'阿瓦提县','16008.8','nativeplace',16009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19956,'乌什县','16008.7','nativeplace',16009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19955,'拜城县','16008.6','nativeplace',16009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19954,'新和县','16008.5','nativeplace',16009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19953,'沙雅县','16008.4','nativeplace',16008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19952,'库车县','16008.3','nativeplace',16008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19951,'温宿县','16008.2','nativeplace',16008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19950,'阿克苏市','16008.1','nativeplace',16008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19949,'阿克苏地区','16008','nativeplace',16008,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19948,'博湖县','16007.9','nativeplace',16008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19947,'和硕县','16007.8','nativeplace',16008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19946,'和静县','16007.7','nativeplace',16008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19945,'焉耆回族自治县','16007.6','nativeplace',16008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19944,'且末县','16007.5','nativeplace',16008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19943,'若羌县','16007.4','nativeplace',16007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19942,'尉犁县','16007.3','nativeplace',16007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19941,'轮台县','16007.2','nativeplace',16007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19940,'库尔勒市','16007.1','nativeplace',16007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19939,'巴音郭楞蒙古自治州','16007','nativeplace',16007,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19938,'温泉县','16006.3','nativeplace',16006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19937,'精河县','16006.2','nativeplace',16006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19936,'博乐市','16006.1','nativeplace',16006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19935,'博尔塔拉蒙古自治州','16006','nativeplace',16006,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19934,'木垒哈萨克自治县','16005.8','nativeplace',16006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19933,'吉木萨尔县','16005.7','nativeplace',16006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19932,'奇台县','16005.6','nativeplace',16006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19931,'玛纳斯县','16005.5','nativeplace',16006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19930,'呼图壁县','16005.4','nativeplace',16005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19929,'米泉市','16005.3','nativeplace',16005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19928,'阜康市','16005.2','nativeplace',16005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19927,'昌吉市','16005.1','nativeplace',16005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19926,'昌吉回族自治州','16005','nativeplace',16005,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19925,'伊吾县','16004.3','nativeplace',16004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19924,'巴里坤哈萨克自治县','16004.2','nativeplace',16004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19923,'哈密市','16004.1','nativeplace',16004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19922,'哈密地区','16004','nativeplace',16004,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19921,'托克逊县','16003.3','nativeplace',16003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19920,'鄯善县','16003.2','nativeplace',16003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19919,'吐鲁番市','16003.1','nativeplace',16003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19918,'吐鲁番地区','16003','nativeplace',16003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19917,'乌尔禾区','16002.4','nativeplace',16002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19916,'白碱滩区','16002.3','nativeplace',16002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19915,'克拉玛依区','16002.2','nativeplace',16002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19914,'独山子区','16002.1','nativeplace',16002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19913,'克拉玛依市','16002','nativeplace',16002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19912,'乌鲁木齐县','16001.8','nativeplace',16002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19911,'东山区','16001.7','nativeplace',16002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19910,'达坂城区','16001.6','nativeplace',16002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19909,'头屯河区','16001.5','nativeplace',16002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19908,'水磨沟区','16001.4','nativeplace',16001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19907,'新市区','16001.3','nativeplace',16001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19906,'沙依巴克区','16001.2','nativeplace',16001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19905,'天山区','16001.1','nativeplace',16001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19904,'乌鲁木齐市','16001','nativeplace',16001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19903,'新疆维吾尔自治区','16000','nativeplace',16000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19902,'海原县','15505.3','nativeplace',15505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19901,'中宁县','15505.2','nativeplace',15505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19900,'沙坡头区','15505.1','nativeplace',15505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19899,'中卫市','15505','nativeplace',15505,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19898,'彭阳县','15504.5','nativeplace',15505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19897,'泾源县','15504.4','nativeplace',15504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19896,'隆德县','15504.3','nativeplace',15504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19895,'西吉县','15504.2','nativeplace',15504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19894,'原州区','15504.1','nativeplace',15504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19893,'固原市','15504','nativeplace',15504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19892,'青铜峡市','15503.4','nativeplace',15503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19891,'同心县','15503.3','nativeplace',15503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19890,'盐池县','15503.2','nativeplace',15503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19889,'利通区','15503.1','nativeplace',15503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19888,'吴忠市','15503','nativeplace',15503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19887,'平罗县','15502.3','nativeplace',15502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19886,'惠农区','15502.2','nativeplace',15502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19885,'大武口区','15502.1','nativeplace',15502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19884,'石嘴山市','15502','nativeplace',15502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19883,'灵武市','15501.6','nativeplace',15502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19882,'贺兰县','15501.5','nativeplace',15502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19881,'永宁县','15501.4','nativeplace',15501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19880,'金凤区','15501.3','nativeplace',15501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19879,'西夏区','15501.2','nativeplace',15501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19878,'兴庆区','15501.1','nativeplace',15501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19877,'银川市','15501','nativeplace',15501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19876,'宁夏回族自治区','15500','nativeplace',15500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19875,'天峻县','15008.5','nativeplace',15009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19874,'都兰县','15008.4','nativeplace',15008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19873,'乌兰县','15008.3','nativeplace',15008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19872,'德令哈市','15008.2','nativeplace',15008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19871,'格尔木市','15008.1','nativeplace',15008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19870,'海西蒙古族藏族自治州','15008','nativeplace',15008,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19869,'曲麻莱县','15007.6','nativeplace',15008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19868,'囊谦县','15007.5','nativeplace',15008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19867,'治多县','15007.4','nativeplace',15007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19866,'称多县','15007.3','nativeplace',15007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19865,'杂多县','15007.2','nativeplace',15007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19864,'玉树县','15007.1','nativeplace',15007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19863,'玉树藏族自治州','15007','nativeplace',15007,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19862,'玛多县','15006.6','nativeplace',15007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19861,'久治县','15006.5','nativeplace',15007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19860,'达日县','15006.4','nativeplace',15006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19859,'甘德县','15006.3','nativeplace',15006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19858,'班玛县','15006.2','nativeplace',15006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19857,'玛沁县','15006.1','nativeplace',15006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19856,'果洛藏族自治州','15006','nativeplace',15006,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19855,'贵南县','15005.5','nativeplace',15006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19854,'兴海县','15005.4','nativeplace',15005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19853,'贵德县','15005.3','nativeplace',15005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19852,'同德县','15005.2','nativeplace',15005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19851,'共和县','15005.1','nativeplace',15005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19850,'海南藏族自治州','15005','nativeplace',15005,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19849,'河南蒙古族自治县','15004.4','nativeplace',15004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19848,'泽库县','15004.3','nativeplace',15004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19847,'尖扎县','15004.2','nativeplace',15004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19846,'同仁县','15004.1','nativeplace',15004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19845,'黄南藏族自治州','15004','nativeplace',15004,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19844,'刚察县','15003.4','nativeplace',15003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19843,'海晏县','15003.3','nativeplace',15003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19842,'祁连县','15003.2','nativeplace',15003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19841,'门源回族自治县','15003.1','nativeplace',15003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19840,'海北藏族自治州','15003','nativeplace',15003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19839,'循化撒拉族自治县','15002.6','nativeplace',15003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19838,'化隆回族自治县','15002.5','nativeplace',15003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19837,'互助土族自治县','15002.4','nativeplace',15002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19836,'乐都县','15002.3','nativeplace',15002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19835,'民和回族土族自治县','15002.2','nativeplace',15002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19834,'平安县','15002.1','nativeplace',15002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19833,'海东地区','15002','nativeplace',15002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19832,'湟源县','15001.7','nativeplace',15002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19831,'湟中县','15001.6','nativeplace',15002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19830,'大通回族土族自治县','15001.5','nativeplace',15002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19829,'城北区','15001.4','nativeplace',15001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19828,'城西区','15001.3','nativeplace',15001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19827,'城中区','15001.2','nativeplace',15001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19826,'城东区','15001.1','nativeplace',15001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19825,'西宁市','15001','nativeplace',15001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19824,'青海省','15000','nativeplace',15000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19823,'夏河县','14514.8','nativeplace',14515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19822,'碌曲县','14514.7','nativeplace',14515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19821,'玛曲县','14514.6','nativeplace',14515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19820,'迭部县','14514.5','nativeplace',14515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19819,'舟曲县','14514.4','nativeplace',14514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19818,'卓尼县','14514.3','nativeplace',14514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19817,'临潭县','14514.2','nativeplace',14514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19816,'合作市','14514.1','nativeplace',14514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19815,'甘南藏族自治州','14514','nativeplace',14514,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19814,'积石山保安族东乡族撒拉族自治县','14513.8','nativeplace',14514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19813,'东乡族自治县','14513.7','nativeplace',14514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19812,'和政县','14513.6','nativeplace',14514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19811,'广河县','14513.5','nativeplace',14514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19810,'永靖县','14513.4','nativeplace',14513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19809,'康乐县','14513.3','nativeplace',14513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19808,'临夏县','14513.2','nativeplace',14513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19807,'临夏市','14513.1','nativeplace',14513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19806,'临夏回族自治州','14513','nativeplace',14513,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19805,'两当县','14512.9','nativeplace',14513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19804,'徽　县','14512.8','nativeplace',14513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19803,'礼　县','14512.7','nativeplace',14513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19802,'西和县','14512.6','nativeplace',14513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19801,'康　县','14512.5','nativeplace',14513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19800,'宕昌县','14512.4','nativeplace',14512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19799,'文　县','14512.3','nativeplace',14512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19798,'成　县','14512.2','nativeplace',14512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19797,'武都区','14512.1','nativeplace',14512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19796,'陇南市','14512','nativeplace',14512,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19795,'岷　县','14511.7','nativeplace',14512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19794,'漳　县','14511.6','nativeplace',14512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19793,'临洮县','14511.5','nativeplace',14512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19792,'渭源县','14511.4','nativeplace',14511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19791,'陇西县','14511.3','nativeplace',14511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19790,'通渭县','14511.2','nativeplace',14511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19789,'安定区','14511.1','nativeplace',14511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19788,'定西市','14511','nativeplace',14511,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19787,'镇原县','14510.8','nativeplace',14511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19786,'宁　县','14510.7','nativeplace',14511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19785,'正宁县','14510.6','nativeplace',14511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19784,'合水县','14510.5','nativeplace',14511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19783,'华池县','14510.4','nativeplace',14510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19782,'环　县','14510.3','nativeplace',14510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19781,'庆城县','14510.2','nativeplace',14510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19780,'西峰区','14510.1','nativeplace',14510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19779,'庆阳市','14510','nativeplace',14510,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19778,'敦煌市','14509.7','nativeplace',14510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19777,'玉门市','14509.6','nativeplace',14510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19776,'阿克塞哈萨克族自治县','14509.5','nativeplace',14510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19775,'肃北蒙古族自治县','14509.4','nativeplace',14509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19774,'安西县','14509.3','nativeplace',14509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19773,'金塔县','14509.2','nativeplace',14509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19772,'肃州区','14509.1','nativeplace',14509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19771,'酒泉市','14509','nativeplace',14509,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19770,'静宁县','14508.7','nativeplace',14509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19769,'庄浪县','14508.6','nativeplace',14509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19768,'华亭县','14508.5','nativeplace',14509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19767,'崇信县','14508.4','nativeplace',14508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19766,'灵台县','14508.3','nativeplace',14508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19765,'泾川县','14508.2','nativeplace',14508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19764,'崆峒区','14508.1','nativeplace',14508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19763,'平凉市','14508','nativeplace',14508,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19762,'山丹县','14507.6','nativeplace',14508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19761,'高台县','14507.5','nativeplace',14508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19760,'临泽县','14507.4','nativeplace',14507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19759,'民乐县','14507.3','nativeplace',14507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19758,'肃南裕固族自治县','14507.2','nativeplace',14507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19757,'甘州区','14507.1','nativeplace',14507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19756,'张掖市','14507','nativeplace',14507,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19755,'天祝藏族自治县','14506.4','nativeplace',14506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19754,'古浪县','14506.3','nativeplace',14506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19753,'民勤县','14506.2','nativeplace',14506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19752,'凉州区','14506.1','nativeplace',14506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19751,'武威市','14506','nativeplace',14506,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19750,'张家川回族自治县','14505.7','nativeplace',14506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19749,'武山县','14505.6','nativeplace',14506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19748,'甘谷县','14505.5','nativeplace',14506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19747,'秦安县','14505.4','nativeplace',14505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19746,'清水县','14505.3','nativeplace',14505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19745,'北道区','14505.2','nativeplace',14505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19744,'秦城区','14505.1','nativeplace',14505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19743,'天水市','14505','nativeplace',14505,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19742,'景泰县','14504.5','nativeplace',14505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19741,'会宁县','14504.4','nativeplace',14504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19740,'靖远县','14504.3','nativeplace',14504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19739,'平川区','14504.2','nativeplace',14504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19738,'白银区','14504.1','nativeplace',14504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19737,'白银市','14504','nativeplace',14504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19736,'永昌县','14503.2','nativeplace',14503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19735,'金川区','14503.1','nativeplace',14503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19734,'金昌市','14503','nativeplace',14503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19733,'嘉峪关市','14502','nativeplace',14502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19732,'榆中县','14501.8','nativeplace',14502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19731,'皋兰县','14501.7','nativeplace',14502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19730,'永登县','14501.6','nativeplace',14502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19729,'红古区','14501.5','nativeplace',14502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19728,'安宁区','14501.4','nativeplace',14501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19727,'西固区','14501.3','nativeplace',14501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19726,'七里河区','14501.2','nativeplace',14501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19725,'城关区','14501.1','nativeplace',14501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19724,'兰州市','14501','nativeplace',14501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19723,'甘肃省','14500','nativeplace',14500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19722,'柞水县','14010.7','nativeplace',14011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19721,'镇安县','14010.6','nativeplace',14011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19720,'山阳县','14010.5','nativeplace',14011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19719,'商南县','14010.4','nativeplace',14010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19718,'丹凤县','14010.3','nativeplace',14010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19717,'洛南县','14010.2','nativeplace',14010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19716,'商州区','14010.1','nativeplace',14010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19715,'商洛市','14010','nativeplace',14010,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19714,'白河县','14009.10','nativeplace',14009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19713,'旬阳县','14009.9','nativeplace',14010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19712,'镇坪县','14009.8','nativeplace',14010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19711,'平利县','14009.7','nativeplace',14010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19710,'岚皋县','14009.6','nativeplace',14010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19709,'紫阳县','14009.5','nativeplace',14010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19708,'宁陕县','14009.4','nativeplace',14009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19707,'石泉县','14009.3','nativeplace',14009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19706,'汉阴县','14009.2','nativeplace',14009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19705,'汉滨区','14009.1','nativeplace',14009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19704,'安康市','14009','nativeplace',14009,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19703,'子洲县','14008.12','nativeplace',14008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19702,'清涧县','14008.11','nativeplace',14008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19701,'吴堡县','14008.10','nativeplace',14008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19700,'佳　县','14008.9','nativeplace',14009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19699,'米脂县','14008.8','nativeplace',14009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19698,'绥德县','14008.7','nativeplace',14009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19697,'定边县','14008.6','nativeplace',14009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19696,'靖边县','14008.5','nativeplace',14009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19695,'横山县','14008.4','nativeplace',14008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19694,'府谷县','14008.3','nativeplace',14008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19693,'神木县','14008.2','nativeplace',14008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19692,'榆阳区','14008.1','nativeplace',14008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19691,'榆林市','14008','nativeplace',14008,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19690,'佛坪县','14007.11','nativeplace',14007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19689,'留坝县','14007.10','nativeplace',14007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19688,'镇巴县','14007.9','nativeplace',14008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19687,'略阳县','14007.8','nativeplace',14008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19686,'宁强县','14007.7','nativeplace',14008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19685,'勉　县','14007.6','nativeplace',14008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19684,'西乡县','14007.5','nativeplace',14008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19683,'洋　县','14007.4','nativeplace',14007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19682,'城固县','14007.3','nativeplace',14007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19681,'南郑县','14007.2','nativeplace',14007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19680,'汉台区','14007.1','nativeplace',14007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19679,'汉中市','14007','nativeplace',14007,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19678,'黄陵县','14006.13','nativeplace',14006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19677,'黄龙县','14006.12','nativeplace',14006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19676,'宜川县','14006.11','nativeplace',14006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19675,'洛川县','14006.10','nativeplace',14006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19674,'富　县','14006.9','nativeplace',14007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19673,'甘泉县','14006.8','nativeplace',14007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19672,'吴旗县','14006.7','nativeplace',14007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19671,'志丹县','14006.6','nativeplace',14007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19670,'安塞县','14006.5','nativeplace',14007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19669,'子长县','14006.4','nativeplace',14006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19668,'延川县','14006.3','nativeplace',14006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19667,'延长县','14006.2','nativeplace',14006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19666,'宝塔区','14006.1','nativeplace',14006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19665,'延安市','14006','nativeplace',14006,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19664,'华阴市','14005.11','nativeplace',14005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19663,'韩城市','14005.10','nativeplace',14005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19662,'富平县','14005.9','nativeplace',14006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19661,'白水县','14005.8','nativeplace',14006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19660,'蒲城县','14005.7','nativeplace',14006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19659,'澄城县','14005.6','nativeplace',14006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19658,'合阳县','14005.5','nativeplace',14006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19657,'大荔县','14005.4','nativeplace',14005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19656,'潼关县','14005.3','nativeplace',14005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19655,'华　县','14005.2','nativeplace',14005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19654,'临渭区','14005.1','nativeplace',14005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19653,'渭南市','14005','nativeplace',14005,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19652,'兴平市','14004.14','nativeplace',14004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19651,'武功县','14004.13','nativeplace',14004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19650,'淳化县','14004.12','nativeplace',14004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19649,'旬邑县','14004.11','nativeplace',14004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19648,'长武县','14004.10','nativeplace',14004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19647,'彬　县','14004.9','nativeplace',14005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19646,'永寿县','14004.8','nativeplace',14005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19645,'礼泉县','14004.7','nativeplace',14005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19644,'乾　县','14004.6','nativeplace',14005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19643,'泾阳县','14004.5','nativeplace',14005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19642,'三原县','14004.4','nativeplace',14004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19641,'渭城区','14004.3','nativeplace',14004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19640,'杨凌区','14004.2','nativeplace',14004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19639,'秦都区','14004.1','nativeplace',14004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19638,'咸阳市','14004','nativeplace',14004,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19637,'太白县','14003.12','nativeplace',14003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19636,'凤　县','14003.11','nativeplace',14003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19635,'麟游县','14003.10','nativeplace',14003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19634,'千阳县','14003.9','nativeplace',14004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19633,'陇　县','14003.8','nativeplace',14004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19632,'眉　县','14003.7','nativeplace',14004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19631,'扶风县','14003.6','nativeplace',14004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19630,'岐山县','14003.5','nativeplace',14004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19629,'凤翔县','14003.4','nativeplace',14003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19628,'陈仓区','14003.3','nativeplace',14003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19627,'金台区','14003.2','nativeplace',14003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19626,'滨区','14003.1','nativeplace',14003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19625,'宝鸡市','14003','nativeplace',14003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19624,'宜君县','14002.4','nativeplace',14002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19623,'耀州区','14002.3','nativeplace',14002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19622,'印台区','14002.2','nativeplace',14002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19621,'王益区','14002.1','nativeplace',14002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19620,'铜川市','14002','nativeplace',14002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19619,'高陵县','14001.13','nativeplace',14001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19618,'户　县','14001.12','nativeplace',14001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19617,'周至县','14001.11','nativeplace',14001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19616,'蓝田县','14001.10','nativeplace',14001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19615,'长安区','14001.9','nativeplace',14002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19614,'临潼区','14001.8','nativeplace',14002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19613,'阎良区','14001.7','nativeplace',14002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19612,'雁塔区','14001.6','nativeplace',14002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19611,'未央区','14001.5','nativeplace',14002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19610,'灞桥区','14001.4','nativeplace',14001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19609,'莲湖区','14001.3','nativeplace',14001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19608,'碑林区','14001.2','nativeplace',14001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19607,'新城区','14001.1','nativeplace',14001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19606,'西安市','14001','nativeplace',14001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19605,'陕西省','14000','nativeplace',14000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19604,'朗　县','13507.7','nativeplace',13508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19603,'察隅县','13507.6','nativeplace',13508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19602,'波密县','13507.5','nativeplace',13508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19601,'墨脱县','13507.4','nativeplace',13507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19600,'米林县','13507.3','nativeplace',13507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19599,'工布江达县','13507.2','nativeplace',13507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19598,'林芝县','13507.1','nativeplace',13507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19597,'林芝地区','13507','nativeplace',13507,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19596,'措勤县','13506.7','nativeplace',13507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19595,'改则县','13506.6','nativeplace',13507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19594,'革吉县','13506.5','nativeplace',13507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19593,'日土县','13506.4','nativeplace',13506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19592,'噶尔县','13506.3','nativeplace',13506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19591,'札达县','13506.2','nativeplace',13506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19590,'普兰县','13506.1','nativeplace',13506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19589,'阿里地区','13506','nativeplace',13506,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19588,'尼玛县','13505.10','nativeplace',13505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19587,'巴青县','13505.9','nativeplace',13506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19586,'班戈县','13505.8','nativeplace',13506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19585,'索　县','13505.7','nativeplace',13506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19584,'申扎县','13505.6','nativeplace',13506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19583,'安多县','13505.5','nativeplace',13506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19582,'聂荣县','13505.4','nativeplace',13505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19581,'比如县','13505.3','nativeplace',13505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19580,'嘉黎县','13505.2','nativeplace',13505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19579,'那曲县','13505.1','nativeplace',13505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19578,'那曲地区','13505','nativeplace',13505,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19577,'岗巴县','13504.18','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19576,'萨嘎县','13504.17','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19575,'聂拉木县','13504.16','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19574,'吉隆县','13504.15','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19573,'亚东县','13504.14','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19572,'仲巴县','13504.13','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19571,'定结县','13504.12','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19570,'康马县','13504.11','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19569,'仁布县','13504.10','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19568,'白朗县','13504.9','nativeplace',13505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19567,'谢通门县','13504.8','nativeplace',13505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19566,'昂仁县','13504.7','nativeplace',13505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19565,'拉孜县','13504.6','nativeplace',13505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19564,'萨迦县','13504.5','nativeplace',13505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19563,'定日县','13504.4','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19562,'江孜县','13504.3','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19561,'南木林县','13504.2','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19560,'日喀则市','13504.1','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19559,'日喀则地区','13504','nativeplace',13504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19558,'浪卡子县','13503.12','nativeplace',13503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19557,'错那县','13503.11','nativeplace',13503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19556,'隆子县','13503.10','nativeplace',13503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19555,'加查县','13503.9','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19554,'洛扎县','13503.8','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19553,'措美县','13503.7','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19552,'曲松县','13503.6','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19551,'琼结县','13503.5','nativeplace',13504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19550,'桑日县','13503.4','nativeplace',13503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19549,'贡嘎县','13503.3','nativeplace',13503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19548,'扎囊县','13503.2','nativeplace',13503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19547,'乃东县','13503.1','nativeplace',13503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19546,'山南地区','13503','nativeplace',13503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19545,'边坝县','13502.11','nativeplace',13502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19544,'洛隆县','13502.10','nativeplace',13502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19543,'芒康县','13502.9','nativeplace',13503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19542,'左贡县','13502.8','nativeplace',13503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19541,'八宿县','13502.7','nativeplace',13503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19540,'察雅县','13502.6','nativeplace',13503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19539,'丁青县','13502.5','nativeplace',13503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19538,'类乌齐县','13502.4','nativeplace',13502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19537,'贡觉县','13502.3','nativeplace',13502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19536,'江达县','13502.2','nativeplace',13502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19535,'昌都县','13502.1','nativeplace',13502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19534,'昌都地区','13502','nativeplace',13502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19533,'墨竹工卡县','13501.8','nativeplace',13502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19532,'达孜县','13501.7','nativeplace',13502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19531,'堆龙德庆县','13501.6','nativeplace',13502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19530,'曲水县','13501.5','nativeplace',13502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19529,'尼木县','13501.4','nativeplace',13501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19528,'当雄县','13501.3','nativeplace',13501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19527,'林周县','13501.2','nativeplace',13501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19526,'城关区','13501.1','nativeplace',13501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19525,'拉萨市','13501','nativeplace',13501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19524,'西藏自治区','13500','nativeplace',13500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19523,'维西傈僳族自治县','13016.3','nativeplace',13016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19522,'德钦县','13016.2','nativeplace',13016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19521,'香格里拉县','13016.1','nativeplace',13016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19520,'迪庆藏族自治州','13016','nativeplace',13016,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19519,'兰坪白族普米族自治县','13015.4','nativeplace',13015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19518,'贡山独龙族怒族自治县','13015.3','nativeplace',13015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19517,'福贡县','13015.2','nativeplace',13015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19516,'泸水县','13015.1','nativeplace',13015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19515,'怒江傈僳族自治州','13015','nativeplace',13015,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19514,'陇川县','13014.5','nativeplace',13015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19513,'盈江县','13014.4','nativeplace',13014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19512,'梁河县','13014.3','nativeplace',13014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19511,'潞西市','13014.2','nativeplace',13014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19510,'瑞丽市','13014.1','nativeplace',13014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19509,'德宏傣族景颇族自治州','13014','nativeplace',13014,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19508,'鹤庆县','13013.12','nativeplace',13013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19507,'剑川县','13013.11','nativeplace',13013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19506,'洱源县','13013.10','nativeplace',13013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19505,'云龙县','13013.9','nativeplace',13014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19504,'永平县','13013.8','nativeplace',13014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19503,'巍山彝族回族自治县','13013.7','nativeplace',13014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19502,'南涧彝族自治县','13013.6','nativeplace',13014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19501,'弥渡县','13013.5','nativeplace',13014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19500,'宾川县','13013.4','nativeplace',13013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19499,'祥云县','13013.3','nativeplace',13013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19498,'漾濞彝族自治县','13013.2','nativeplace',13013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19497,'大理市','13013.1','nativeplace',13013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19496,'大理白族自治州','13013','nativeplace',13013,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19495,'勐腊县','13012.3','nativeplace',13012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19494,'勐海县','13012.2','nativeplace',13012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19493,'景洪市','13012.1','nativeplace',13012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19492,'西双版纳傣族自治州','13012','nativeplace',13012,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19491,'富宁县','13011.8','nativeplace',13012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19490,'广南县','13011.7','nativeplace',13012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19489,'丘北县','13011.6','nativeplace',13012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19488,'马关县','13011.5','nativeplace',13012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19487,'麻栗坡县','13011.4','nativeplace',13011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19486,'西畴县','13011.3','nativeplace',13011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19485,'砚山县','13011.2','nativeplace',13011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19484,'文山县','13011.1','nativeplace',13011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19483,'文山壮族苗族自治州','13011','nativeplace',13011,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19482,'河口瑶族自治县','13010.12','nativeplace',13010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19481,'绿春县','13010.11','nativeplace',13010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19480,'金平苗族瑶族傣族自治县','13010.10','nativeplace',13010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19479,'元阳县','13010.9','nativeplace',13011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19478,'泸西县','13010.8','nativeplace',13011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19477,'弥勒县','13010.7','nativeplace',13011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19476,'石屏县','13010.6','nativeplace',13011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19475,'建水县','13010.5','nativeplace',13011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19474,'屏边苗族自治县','13010.4','nativeplace',13010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19473,'蒙自县','13010.3','nativeplace',13010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19472,'开远市','13010.2','nativeplace',13010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19471,'个旧市','13010.1','nativeplace',13010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19470,'红河哈尼族彝族自治州','13010','nativeplace',13010,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19469,'禄丰县','13009.10','nativeplace',13009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19468,'武定县','13009.9','nativeplace',13010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19467,'元谋县','13009.8','nativeplace',13010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19466,'永仁县','13009.7','nativeplace',13010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19465,'大姚县','13009.6','nativeplace',13010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19464,'姚安县','13009.5','nativeplace',13010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19463,'南华县','13009.4','nativeplace',13009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19462,'牟定县','13009.3','nativeplace',13009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19461,'双柏县','13009.2','nativeplace',13009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19460,'楚雄市','13009.1','nativeplace',13009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19459,'楚雄彝族自治州','13009','nativeplace',13009,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19458,'沧源佤族自治县','13008.8','nativeplace',13009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19457,'耿马傣族佤族自治县','13008.7','nativeplace',13009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19456,'双江拉祜族佤族布朗族傣族自治县','13008.6','nativeplace',13009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19455,'镇康县','13008.5','nativeplace',13009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19454,'永德县','13008.4','nativeplace',13008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19453,'云　县','13008.3','nativeplace',13008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19452,'凤庆县','13008.2','nativeplace',13008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19451,'临翔区','13008.1','nativeplace',13008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19450,'临沧市','13008','nativeplace',13008,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19449,'西盟佤族自治县','13007.10','nativeplace',13007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19448,'澜沧拉祜族自治县','13007.9','nativeplace',13008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19447,'孟连傣族拉祜族佤族自治县','13007.8','nativeplace',13008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19446,'江城哈尼族彝族自治县','13007.7','nativeplace',13008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19445,'镇沅彝族哈尼族拉祜族自治县','13007.6','nativeplace',13008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19444,'景谷傣族彝族自治县','13007.5','nativeplace',13008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19443,'景东彝族自治县','13007.4','nativeplace',13007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19442,'墨江哈尼族自治县','13007.3','nativeplace',13007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19441,'普洱哈尼族彝族自治县','13007.2','nativeplace',13007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19440,'翠云区','13007.1','nativeplace',13007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19439,'思茅市','13007','nativeplace',13007,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19438,'宁蒗彝族自治县','13006.5','nativeplace',13007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19437,'华坪县','13006.4','nativeplace',13006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19436,'永胜县','13006.3','nativeplace',13006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19435,'玉龙纳西族自治县','13006.2','nativeplace',13006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19434,'古城区','13006.1','nativeplace',13006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19433,'丽江市','13006','nativeplace',13006,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19432,'水富县','13005.11','nativeplace',13005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19431,'威信县','13005.10','nativeplace',13005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19430,'彝良县','13005.9','nativeplace',13006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19429,'镇雄县','13005.8','nativeplace',13006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19428,'绥江县','13005.7','nativeplace',13006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19427,'永善县','13005.6','nativeplace',13006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19426,'大关县','13005.5','nativeplace',13006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19425,'盐津县','13005.4','nativeplace',13005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19424,'巧家县','13005.3','nativeplace',13005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19423,'鲁甸县','13005.2','nativeplace',13005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19422,'昭阳区','13005.1','nativeplace',13005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19421,'昭通市','13005','nativeplace',13005,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19420,'昌宁县','13004.5','nativeplace',13005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19419,'龙陵县','13004.4','nativeplace',13004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19418,'腾冲县','13004.3','nativeplace',13004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19417,'施甸县','13004.2','nativeplace',13004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19416,'隆阳区','13004.1','nativeplace',13004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19415,'保山市','13004','nativeplace',13004,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19414,'元江哈尼族彝族傣族自治县','13003.9','nativeplace',13004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19413,'新平彝族傣族自治县','13003.8','nativeplace',13004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19412,'峨山彝族自治县','13003.7','nativeplace',13004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19411,'易门县','13003.6','nativeplace',13004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19410,'华宁县','13003.5','nativeplace',13004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19409,'通海县','13003.4','nativeplace',13003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19408,'澄江县','13003.3','nativeplace',13003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19407,'江川县','13003.2','nativeplace',13003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19406,'红塔区','13003.1','nativeplace',13003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19405,'玉溪市','13003','nativeplace',13003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19404,'宣威市','13002.9','nativeplace',13003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19403,'沾益县','13002.8','nativeplace',13003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19402,'会泽县','13002.7','nativeplace',13003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19401,'富源县','13002.6','nativeplace',13003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19400,'罗平县','13002.5','nativeplace',13003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19399,'师宗县','13002.4','nativeplace',13002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19398,'陆良县','13002.3','nativeplace',13002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19397,'马龙县','13002.2','nativeplace',13002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19396,'麒麟区','13002.1','nativeplace',13002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19395,'曲靖市','13002','nativeplace',13002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19394,'安宁市','13001.14','nativeplace',13001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19393,'寻甸回族彝族自治县','13001.13','nativeplace',13001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19392,'禄劝彝族苗族自治县','13001.12','nativeplace',13001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19391,'嵩明县','13001.11','nativeplace',13001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19390,'石林彝族自治县','13001.10','nativeplace',13001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19389,'宜良县','13001.9','nativeplace',13002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19388,'富民县','13001.8','nativeplace',13002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19387,'晋宁县','13001.7','nativeplace',13002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19386,'呈贡县','13001.6','nativeplace',13002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19385,'东川区','13001.5','nativeplace',13002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19384,'西山区','13001.4','nativeplace',13001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19383,'官渡区','13001.3','nativeplace',13001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19382,'盘龙区','13001.2','nativeplace',13001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19381,'五华区','13001.1','nativeplace',13001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19380,'昆明市','13001','nativeplace',13001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19379,'云南省','13000','nativeplace',13000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19378,'三都水族自治县','12509.12','nativeplace',12509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19377,'惠水县','12509.11','nativeplace',12509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19376,'龙里县','12509.10','nativeplace',12509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19375,'长顺县','12509.9','nativeplace',12510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19374,'罗甸县','12509.8','nativeplace',12510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19373,'平塘县','12509.7','nativeplace',12510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19372,'独山县','12509.6','nativeplace',12510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19371,'瓮安县','12509.5','nativeplace',12510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19370,'贵定县','12509.4','nativeplace',12509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19369,'荔波县','12509.3','nativeplace',12509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19368,'福泉市','12509.2','nativeplace',12509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19367,'都匀市','12509.1','nativeplace',12509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19366,'黔南布依族苗族自治州','12509','nativeplace',12509,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19365,'麻江县','12508.15','nativeplace',12508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19364,'雷山县','12508.14','nativeplace',12508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19363,'从江县','12508.13','nativeplace',12508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19362,'榕江县','12508.12','nativeplace',12508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19361,'黎平县','12508.11','nativeplace',12508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19360,'台江县','12508.10','nativeplace',12508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19359,'剑河县','12508.9','nativeplace',12509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19358,'锦屏县','12508.8','nativeplace',12509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19357,'天柱县','12508.7','nativeplace',12509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19356,'岑巩县','12508.6','nativeplace',12509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19355,'镇远县','12508.5','nativeplace',12509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19354,'三穗县','12508.4','nativeplace',12508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19353,'施秉县','12508.3','nativeplace',12508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19352,'黄平县','12508.2','nativeplace',12508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19351,'凯里市','12508.1','nativeplace',12508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19350,'黔东南苗族侗族自治州','12508','nativeplace',12508,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19349,'赫章县','12507.8','nativeplace',12508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19348,'威宁彝族回族苗族自治县','12507.7','nativeplace',12508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19347,'纳雍县','12507.6','nativeplace',12508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19346,'织金县','12507.5','nativeplace',12508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19345,'金沙县','12507.4','nativeplace',12507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19344,'黔西县','12507.3','nativeplace',12507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19343,'大方县','12507.2','nativeplace',12507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19342,'毕节市','12507.1','nativeplace',12507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19341,'毕节地区','12507','nativeplace',12507,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19340,'安龙县','12506.8','nativeplace',12507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19339,'册亨县','12506.7','nativeplace',12507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19338,'望谟县','12506.6','nativeplace',12507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19337,'贞丰县','12506.5','nativeplace',12507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19336,'晴隆县','12506.4','nativeplace',12506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19335,'普安县','12506.3','nativeplace',12506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19334,'兴仁县','12506.2','nativeplace',12506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19333,'兴义市','12506.1','nativeplace',12506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19332,'黔西南布依族苗族自治州','12506','nativeplace',12506,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19331,'万山特区','12505.10','nativeplace',12505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19330,'松桃苗族自治县','12505.9','nativeplace',12506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19329,'沿河土家族自治县','12505.8','nativeplace',12506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19328,'德江县','12505.7','nativeplace',12506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19327,'印江土家族苗族自治县','12505.6','nativeplace',12506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19326,'思南县','12505.5','nativeplace',12506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19325,'石阡县','12505.4','nativeplace',12505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19324,'玉屏侗族自治县','12505.3','nativeplace',12505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19323,'江口县','12505.2','nativeplace',12505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19322,'铜仁市','12505.1','nativeplace',12505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19321,'铜仁地区','12505','nativeplace',12505,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19320,'紫云苗族布依族自治县','12504.6','nativeplace',12505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19319,'关岭布依族苗族自治县','12504.5','nativeplace',12505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19318,'镇宁布依族苗族自治县','12504.4','nativeplace',12504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19317,'普定县','12504.3','nativeplace',12504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19316,'平坝县','12504.2','nativeplace',12504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19315,'西秀区','12504.1','nativeplace',12504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19314,'安顺市','12504','nativeplace',12504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19313,'仁怀市','12503.14','nativeplace',12503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19312,'赤水市','12503.13','nativeplace',12503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19311,'习水县','12503.12','nativeplace',12503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19310,'余庆县','12503.11','nativeplace',12503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19309,'湄潭县','12503.10','nativeplace',12503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19308,'凤冈县','12503.9','nativeplace',12504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19307,'务川仡佬族苗族自治县','12503.8','nativeplace',12504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19306,'道真仡佬族苗族自治县','12503.7','nativeplace',12504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19305,'正安县','12503.6','nativeplace',12504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19304,'绥阳县','12503.5','nativeplace',12504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19303,'桐梓县','12503.4','nativeplace',12503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19302,'遵义县','12503.3','nativeplace',12503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19301,'汇川区','12503.2','nativeplace',12503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19300,'红花岗区','12503.1','nativeplace',12503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19299,'遵义市','12503','nativeplace',12503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19298,'盘　县','12502.4','nativeplace',12502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19297,'水城县','12502.3','nativeplace',12502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19296,'六枝特区','12502.2','nativeplace',12502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19295,'钟山区','12502.1','nativeplace',12502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19294,'六盘水市','12502','nativeplace',12502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19293,'清镇市','12501.10','nativeplace',12501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19292,'修文县','12501.9','nativeplace',12502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19291,'息烽县','12501.8','nativeplace',12502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19290,'开阳县','12501.7','nativeplace',12502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19289,'小河区','12501.6','nativeplace',12502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19288,'白云区','12501.5','nativeplace',12502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19287,'乌当区','12501.4','nativeplace',12501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19286,'花溪区','12501.3','nativeplace',12501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19285,'云岩区','12501.2','nativeplace',12501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19284,'南明区','12501.1','nativeplace',12501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19283,'贵阳市','12501','nativeplace',12501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19282,'贵州省','12500','nativeplace',12500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19281,'雷波县','12021.17','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19280,'美姑县','12021.16','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19279,'甘洛县','12021.15','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19278,'越西县','12021.14','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19277,'冕宁县','12021.13','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19276,'喜德县','12021.12','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19275,'昭觉县','12021.11','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19274,'金阳县','12021.10','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19273,'布拖县','12021.9','nativeplace',12022,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19272,'普格县','12021.8','nativeplace',12022,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19271,'宁南县','12021.7','nativeplace',12022,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19270,'会东县','12021.6','nativeplace',12022,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19269,'会理县','12021.5','nativeplace',12022,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19268,'德昌县','12021.4','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19267,'盐源县','12021.3','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19266,'木里藏族自治县','12021.2','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19265,'西昌市','12021.1','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19264,'凉山彝族自治州','12021','nativeplace',12021,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19263,'得荣县','12020.18','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19262,'稻城县','12020.17','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19261,'乡城县','12020.16','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19260,'巴塘县','12020.15','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19259,'理塘县','12020.14','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19258,'色达县','12020.13','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19257,'石渠县','12020.12','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19256,'白玉县','12020.11','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19255,'德格县','12020.10','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19254,'新龙县','12020.9','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19253,'甘孜县','12020.8','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19252,'炉霍县','12020.7','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19251,'道孚县','12020.6','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19250,'雅江县','12020.5','nativeplace',12021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19249,'九龙县','12020.4','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19248,'丹巴县','12020.3','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19247,'泸定县','12020.2','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19246,'康定县','12020.1','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19245,'甘孜藏族自治州','12020','nativeplace',12020,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19244,'红原县','12019.13','nativeplace',12019,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19243,'若尔盖县','12019.12','nativeplace',12019,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19242,'阿坝县','12019.11','nativeplace',12019,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19241,'壤塘县','12019.10','nativeplace',12019,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19240,'马尔康县','12019.9','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19239,'黑水县','12019.8','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19238,'小金县','12019.7','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19237,'金川县','12019.6','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19236,'九寨沟县','12019.5','nativeplace',12020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19235,'松潘县','12019.4','nativeplace',12019,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19234,'茂　县','12019.3','nativeplace',12019,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19233,'理　县','12019.2','nativeplace',12019,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19232,'汶川县','12019.1','nativeplace',12019,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19231,'阿坝藏族羌族自治州','12019','nativeplace',12019,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19230,'简阳市','12018.4','nativeplace',12018,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19229,'乐至县','12018.3','nativeplace',12018,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19228,'安岳县','12018.2','nativeplace',12018,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19227,'雁江区','12018.1','nativeplace',12018,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19226,'资阳市','12018','nativeplace',12018,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19225,'平昌县','12017.4','nativeplace',12017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19224,'南江县','12017.3','nativeplace',12017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19223,'通江县','12017.2','nativeplace',12017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19222,'巴州区','12017.1','nativeplace',12017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19221,'巴中市','12017','nativeplace',12017,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19220,'宝兴县','12016.8','nativeplace',12017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19219,'芦山县','12016.7','nativeplace',12017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19218,'天全县','12016.6','nativeplace',12017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19217,'石棉县','12016.5','nativeplace',12017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19216,'汉源县','12016.4','nativeplace',12016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19215,'荥经县','12016.3','nativeplace',12016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19214,'名山县','12016.2','nativeplace',12016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19213,'雨城区','12016.1','nativeplace',12016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19212,'雅安市','12016','nativeplace',12016,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19211,'万源市','12015.7','nativeplace',12016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19210,'渠　县','12015.6','nativeplace',12016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19209,'大竹县','12015.5','nativeplace',12016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19208,'开江县','12015.4','nativeplace',12015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19207,'宣汉县','12015.3','nativeplace',12015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19206,'达　县','12015.2','nativeplace',12015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19205,'通川区','12015.1','nativeplace',12015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19204,'达州市','12015','nativeplace',12015,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19203,'华莹市','12014.5','nativeplace',12015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19202,'邻水县','12014.4','nativeplace',12014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19201,'武胜县','12014.3','nativeplace',12014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19200,'岳池县','12014.2','nativeplace',12014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19199,'广安区','12014.1','nativeplace',12014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19198,'广安市','12014','nativeplace',12014,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19197,'屏山县','12013.10','nativeplace',12013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19196,'兴文县','12013.9','nativeplace',12014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19195,'筠连县','12013.8','nativeplace',12014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19194,'珙　县','12013.7','nativeplace',12014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19193,'高　县','12013.6','nativeplace',12014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19192,'长宁县','12013.5','nativeplace',12014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19191,'江安县','12013.4','nativeplace',12013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19190,'南溪县','12013.3','nativeplace',12013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19189,'宜宾县','12013.2','nativeplace',12013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19188,'翠屏区','12013.1','nativeplace',12013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19187,'宜宾市','12013','nativeplace',12013,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19186,'青神县','12012.6','nativeplace',12013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19185,'丹棱县','12012.5','nativeplace',12013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19184,'洪雅县','12012.4','nativeplace',12012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19183,'彭山县','12012.3','nativeplace',12012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19182,'仁寿县','12012.2','nativeplace',12012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19181,'东坡区','12012.1','nativeplace',12012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19180,'眉山市','12012','nativeplace',12012,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19179,'阆中市','12011.9','nativeplace',12012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19178,'西充县','12011.8','nativeplace',12012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19177,'仪陇县','12011.7','nativeplace',12012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19176,'蓬安县','12011.6','nativeplace',12012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19175,'营山县','12011.5','nativeplace',12012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19174,'南部县','12011.4','nativeplace',12011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19173,'嘉陵区','12011.3','nativeplace',12011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19172,'高坪区','12011.2','nativeplace',12011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19171,'顺庆区','12011.1','nativeplace',12011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19170,'南充市','12011','nativeplace',12011,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19169,'峨眉山市','12010.11','nativeplace',12010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19168,'马边彝族自治县','12010.10','nativeplace',12010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19167,'峨边彝族自治县','12010.9','nativeplace',12011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19166,'沐川县','12010.8','nativeplace',12011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19165,'夹江县','12010.7','nativeplace',12011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19164,'井研县','12010.6','nativeplace',12011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19163,'犍为县','12010.5','nativeplace',12011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19162,'金口河区','12010.4','nativeplace',12010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19161,'五通桥区','12010.3','nativeplace',12010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19160,'沙湾区','12010.2','nativeplace',12010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19159,'市中区','12010.1','nativeplace',12010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19158,'乐山市','12010','nativeplace',12010,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19157,'隆昌县','12009.5','nativeplace',12010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19156,'资中县','12009.4','nativeplace',12009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19155,'威远县','12009.3','nativeplace',12009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19154,'东兴区','12009.2','nativeplace',12009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19153,'市中区','12009.1','nativeplace',12009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19152,'内江市','12009','nativeplace',12009,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19151,'大英县','12008.5','nativeplace',12009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19150,'射洪县','12008.4','nativeplace',12008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19149,'蓬溪县','12008.3','nativeplace',12008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19148,'安居区','12008.2','nativeplace',12008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19147,'船山区','12008.1','nativeplace',12008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19146,'遂宁市','12008','nativeplace',12008,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19145,'苍溪县','12007.7','nativeplace',12008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19144,'剑阁县','12007.6','nativeplace',12008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19143,'青川县','12007.5','nativeplace',12008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19142,'旺苍县','12007.4','nativeplace',12007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19141,'朝天区','12007.3','nativeplace',12007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19140,'元坝区','12007.2','nativeplace',12007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19139,'市中区','12007.1','nativeplace',12007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19138,'广元市','12007','nativeplace',12007,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19137,'江油市','12006.9','nativeplace',12007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19136,'平武县','12006.8','nativeplace',12007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19135,'北川羌族自治县','12006.7','nativeplace',12007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19134,'梓潼县','12006.6','nativeplace',12007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19133,'安　县','12006.5','nativeplace',12007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19132,'盐亭县','12006.4','nativeplace',12006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19131,'三台县','12006.3','nativeplace',12006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19130,'游仙区','12006.2','nativeplace',12006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19129,'涪城区','12006.1','nativeplace',12006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19128,'绵阳市','12006','nativeplace',12006,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19127,'绵竹市','12005.6','nativeplace',12006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19126,'什邡市','12005.5','nativeplace',12006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19125,'广汉市','12005.4','nativeplace',12005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19124,'罗江县','12005.3','nativeplace',12005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19123,'中江县','12005.2','nativeplace',12005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19122,'旌阳区','12005.1','nativeplace',12005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19121,'德阳市','12005','nativeplace',12005,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19120,'古蔺县','12004.7','nativeplace',12005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19119,'叙永县','12004.6','nativeplace',12005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19118,'合江县','12004.5','nativeplace',12005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19117,'泸　县','12004.4','nativeplace',12004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19116,'龙马潭区','12004.3','nativeplace',12004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19115,'纳溪区','12004.2','nativeplace',12004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19114,'江阳区','12004.1','nativeplace',12004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19113,'泸州市','12004','nativeplace',12004,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19112,'盐边县','12003.5','nativeplace',12004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19111,'米易县','12003.4','nativeplace',12003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19110,'仁和区','12003.3','nativeplace',12003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19109,'西　区','12003.2','nativeplace',12003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19108,'东　区','12003.1','nativeplace',12003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19107,'攀枝花市','12003','nativeplace',12003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19106,'富顺县','12002.6','nativeplace',12003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19105,'荣　县','12002.5','nativeplace',12003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19104,'沿滩区','12002.4','nativeplace',12002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19103,'大安区','12002.3','nativeplace',12002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19102,'贡井区','12002.2','nativeplace',12002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19101,'自流井区','12002.1','nativeplace',12002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19100,'自贡市','12002','nativeplace',12002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19099,'崇州市','12001.19','nativeplace',12001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19098,'邛崃市','12001.18','nativeplace',12001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19097,'彭州市','12001.17','nativeplace',12001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19096,'都江堰市','12001.16','nativeplace',12001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19095,'新津县','12001.15','nativeplace',12001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19094,'蒲江县','12001.14','nativeplace',12001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19093,'大邑县','12001.13','nativeplace',12001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19092,'郫　县','12001.12','nativeplace',12001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19091,'双流县','12001.11','nativeplace',12001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19090,'金堂县','12001.10','nativeplace',12001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19089,'温江区','12001.9','nativeplace',12002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19088,'新都区','12001.8','nativeplace',12002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19087,'青白江区','12001.7','nativeplace',12002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19086,'龙泉驿区','12001.6','nativeplace',12002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19085,'成华区','12001.5','nativeplace',12002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19084,'武侯区','12001.4','nativeplace',12001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19083,'金牛区','12001.3','nativeplace',12001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19082,'青羊区','12001.2','nativeplace',12001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19081,'锦江区','12001.1','nativeplace',12001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19080,'成都市','12001','nativeplace',12001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19079,'四川省','12000','nativeplace',12000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19078,'南川市','11540','nativeplace',11540,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19077,'永川市','11539','nativeplace',11539,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19076,'合川市','11538','nativeplace',11538,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19075,'江津市','11537','nativeplace',11537,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19074,'彭水苗族土家族自治县','11536','nativeplace',11536,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19073,'酉阳土家族苗族自治县','11535','nativeplace',11535,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19072,'秀山土家族苗族自治县','11534','nativeplace',11534,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19071,'石柱土家族自治县','11533','nativeplace',11533,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19070,'巫溪县','11532','nativeplace',11532,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19069,'巫山县','11531','nativeplace',11531,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19068,'奉节县','11530','nativeplace',11530,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19067,'云阳县','11529','nativeplace',11529,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19066,'开　县','11528','nativeplace',11528,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19065,'忠　县','11527','nativeplace',11527,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19064,'武隆县','11526','nativeplace',11526,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19063,'垫江县','11525','nativeplace',11525,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19062,'丰都县','11524','nativeplace',11524,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19061,'城口县','11523','nativeplace',11523,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19060,'梁平县','11522','nativeplace',11522,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19059,'璧山县','11521','nativeplace',11521,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19058,'荣昌县','11520','nativeplace',11520,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19057,'大足县','11519','nativeplace',11519,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19056,'铜梁县','11518','nativeplace',11518,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19055,'潼南县','11517','nativeplace',11517,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19054,'綦江县','11516','nativeplace',11516,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19053,'长寿区','11515','nativeplace',11515,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19052,'黔江区','11514','nativeplace',11514,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19051,'巴南区','11513','nativeplace',11513,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19050,'渝北区','11512','nativeplace',11512,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19049,'双桥区','11511','nativeplace',11511,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19048,'万盛区','11510','nativeplace',11510,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19047,'北碚区','11509','nativeplace',11509,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19046,'南岸区','11508','nativeplace',11508,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19045,'九龙坡区','11507','nativeplace',11507,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19044,'沙坪坝区','11506','nativeplace',11506,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19043,'江北区','11505','nativeplace',11505,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19042,'大渡口区','11504','nativeplace',11504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19041,'渝中区','11503','nativeplace',11503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19040,'涪陵区','11502','nativeplace',11502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19039,'万州区','11501','nativeplace',11501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19038,'重庆市','11500','nativeplace',11500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19037,'中沙群岛的岛礁及其海域','11003.19','nativeplace',11003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19036,'南沙群岛','11003.18','nativeplace',11003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19035,'西沙群岛','11003.17','nativeplace',11003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19034,'琼中黎族苗族自治县','11003.16','nativeplace',11003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19033,'保亭黎族苗族自治县','11003.15','nativeplace',11003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19032,'陵水黎族自治县','11003.14','nativeplace',11003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19031,'乐东黎族自治县','11003.13','nativeplace',11003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19030,'昌江黎族自治县','11003.12','nativeplace',11003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19029,'白沙黎族自治县','11003.11','nativeplace',11003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19028,'临高县','11003.10','nativeplace',11003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19027,'澄迈县','11003.9','nativeplace',11004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19026,'屯昌县','11003.8','nativeplace',11004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19025,'定安县','11003.7','nativeplace',11004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19024,'东方市','11003.6','nativeplace',11004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19023,'万宁市','11003.5','nativeplace',11004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19022,'文昌市','11003.4','nativeplace',11003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19021,'儋州市','11003.3','nativeplace',11003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19020,'琼海市','11003.2','nativeplace',11003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19019,'五指山市','11003.1','nativeplace',11003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19018,'省直辖县级行政单位','11003','nativeplace',11003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19017,'三亚市','11002','nativeplace',11002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19016,'美兰区','11001.4','nativeplace',11001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19015,'琼山区','11001.3','nativeplace',11001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19014,'龙华区','11001.2','nativeplace',11001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19013,'秀英区','11001.1','nativeplace',11001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19012,'海口市','11001','nativeplace',11001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19011,'海南省','11000','nativeplace',11000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19010,'凭祥市','10514.7','nativeplace',10515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19009,'天等县','10514.6','nativeplace',10515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19008,'大新县','10514.5','nativeplace',10515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19007,'龙州县','10514.4','nativeplace',10514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19006,'宁明县','10514.3','nativeplace',10514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19005,'扶绥县','10514.2','nativeplace',10514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19004,'江洲区','10514.1','nativeplace',10514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19003,'崇左市','10514','nativeplace',10514,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19002,'合山市','10513.6','nativeplace',10514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19001,'金秀瑶族自治县','10513.5','nativeplace',10514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (19000,'武宣县','10513.4','nativeplace',10513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18999,'象州县','10513.3','nativeplace',10513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18998,'忻城县','10513.2','nativeplace',10513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18997,'兴宾区','10513.1','nativeplace',10513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18996,'来宾市','10513','nativeplace',10513,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18995,'宜州市','10512.11','nativeplace',10512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18994,'大化瑶族自治县','10512.10','nativeplace',10512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18993,'都安瑶族自治县','10512.9','nativeplace',10513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18992,'巴马瑶族自治县','10512.8','nativeplace',10513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18991,'环江毛南族自治县','10512.7','nativeplace',10513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18990,'罗城仫佬族自治县','10512.6','nativeplace',10513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18989,'东兰县','10512.5','nativeplace',10513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18988,'凤山县','10512.4','nativeplace',10512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18987,'天峨县','10512.3','nativeplace',10512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18986,'南丹县','10512.2','nativeplace',10512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18985,'金城江区','10512.1','nativeplace',10512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18984,'河池市','10512','nativeplace',10512,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18983,'富川瑶族自治县','10511.4','nativeplace',10511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18982,'钟山县','10511.3','nativeplace',10511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18981,'昭平县','10511.2','nativeplace',10511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18980,'八步区','10511.1','nativeplace',10511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18979,'贺州市','10511','nativeplace',10511,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18978,'隆林各族自治县','10510.12','nativeplace',10510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18977,'西林县','10510.11','nativeplace',10510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18976,'田林县','10510.10','nativeplace',10510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18975,'乐业县','10510.9','nativeplace',10511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18974,'凌云县','10510.8','nativeplace',10511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18973,'那坡县','10510.7','nativeplace',10511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18972,'靖西县','10510.6','nativeplace',10511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18971,'德保县','10510.5','nativeplace',10511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18970,'平果县','10510.4','nativeplace',10510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18969,'田东县','10510.3','nativeplace',10510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18968,'田阳县','10510.2','nativeplace',10510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18967,'右江区','10510.1','nativeplace',10510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18966,'百色市','10510','nativeplace',10510,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18965,'北流市','10509.6','nativeplace',10510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18964,'兴业县','10509.5','nativeplace',10510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18963,'博白县','10509.4','nativeplace',10509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18962,'陆川县','10509.3','nativeplace',10509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18961,'容　县','10509.2','nativeplace',10509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18960,'玉州区','10509.1','nativeplace',10509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18959,'玉林市','10509','nativeplace',10509,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18958,'桂平市','10508.5','nativeplace',10509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18957,'平南县','10508.4','nativeplace',10508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18956,'覃塘区','10508.3','nativeplace',10508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18955,'港南区','10508.2','nativeplace',10508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18954,'港北区','10508.1','nativeplace',10508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18953,'贵港市','10508','nativeplace',10508,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18952,'浦北县','10507.4','nativeplace',10507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18951,'灵山县','10507.3','nativeplace',10507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18950,'钦北区','10507.2','nativeplace',10507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18949,'钦南区','10507.1','nativeplace',10507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18948,'钦州市','10507','nativeplace',10507,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18947,'东兴市','10506.4','nativeplace',10506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18946,'上思县','10506.3','nativeplace',10506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18945,'防城区','10506.2','nativeplace',10506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18944,'港口区','10506.1','nativeplace',10506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18943,'防城港市','10506','nativeplace',10506,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18942,'合浦县','10505.4','nativeplace',10505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18941,'铁山港区','10505.3','nativeplace',10505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18940,'银海区','10505.2','nativeplace',10505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18939,'海城区','10505.1','nativeplace',10505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18938,'北海市','10505','nativeplace',10505,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18937,'岑溪市','10504.7','nativeplace',10505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18936,'蒙山县','10504.6','nativeplace',10505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18935,'藤　县','10504.5','nativeplace',10505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18934,'苍梧县','10504.4','nativeplace',10504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18933,'长洲区','10504.3','nativeplace',10504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18932,'蝶山区','10504.2','nativeplace',10504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18931,'万秀区','10504.1','nativeplace',10504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18930,'梧州市','10504','nativeplace',10504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18929,'恭城瑶族自治县','10503.17','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18928,'荔蒲县','10503.16','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18927,'平乐县','10503.15','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18926,'资源县','10503.14','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18925,'龙胜各族自治县','10503.13','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18924,'灌阳县','10503.12','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18923,'永福县','10503.11','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18922,'兴安县','10503.10','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18921,'全州县','10503.9','nativeplace',10504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18920,'灵川县','10503.8','nativeplace',10504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18919,'临桂县','10503.7','nativeplace',10504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18918,'阳朔县','10503.6','nativeplace',10504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18917,'雁山区','10503.5','nativeplace',10504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18916,'七星区','10503.4','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18915,'象山区','10503.3','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18914,'叠彩区','10503.2','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18913,'秀峰区','10503.1','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18912,'桂林市','10503','nativeplace',10503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18911,'三江侗族自治县','10502.10','nativeplace',10502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18910,'融水苗族自治县','10502.9','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18909,'融安县','10502.8','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18908,'鹿寨县','10502.7','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18907,'柳城县','10502.6','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18906,'柳江县','10502.5','nativeplace',10503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18905,'柳北区','10502.4','nativeplace',10502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18904,'柳南区','10502.3','nativeplace',10502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18903,'鱼峰区','10502.2','nativeplace',10502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18902,'城中区','10502.1','nativeplace',10502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18901,'柳州市','10502','nativeplace',10502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18900,'横　县','10501.12','nativeplace',10501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18899,'宾阳县','10501.11','nativeplace',10501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18898,'上林县','10501.10','nativeplace',10501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18897,'马山县','10501.9','nativeplace',10502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18896,'隆安县','10501.8','nativeplace',10502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18895,'武鸣县','10501.7','nativeplace',10502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18894,'邕宁区','10501.6','nativeplace',10502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18893,'良庆区','10501.5','nativeplace',10502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18892,'西乡塘区','10501.4','nativeplace',10501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18891,'江南区','10501.3','nativeplace',10501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18890,'青秀区','10501.2','nativeplace',10501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18889,'兴宁区','10501.1','nativeplace',10501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18888,'南宁市','10501','nativeplace',10501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18887,'广西壮族自治区','10500','nativeplace',10500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18886,'罗定市','10021.5','nativeplace',10022,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18885,'云安县','10021.4','nativeplace',10021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18884,'郁南县','10021.3','nativeplace',10021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18883,'新兴县','10021.2','nativeplace',10021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18882,'云城区','10021.1','nativeplace',10021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18881,'云浮市','10021','nativeplace',10021,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18880,'普宁市','10020.5','nativeplace',10021,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18879,'惠来县','10020.4','nativeplace',10020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18878,'揭西县','10020.3','nativeplace',10020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18877,'揭东县','10020.2','nativeplace',10020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18876,'榕城区','10020.1','nativeplace',10020,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18875,'揭阳市','10020','nativeplace',10020,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18874,'饶平县','10019.2','nativeplace',10019,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18873,'潮安县','10019.1','nativeplace',10019,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18872,'潮州市','10019','nativeplace',10019,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18871,'中山市','10018','nativeplace',10018,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18870,'东莞市','10017','nativeplace',10017,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18869,'连州市','10016.8','nativeplace',10017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18868,'英德市','10016.7','nativeplace',10017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18867,'清新县','10016.6','nativeplace',10017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18866,'连南瑶族自治县','10016.5','nativeplace',10017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18865,'连山壮族瑶族自治县','10016.4','nativeplace',10016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18864,'阳山县','10016.3','nativeplace',10016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18863,'佛冈县','10016.2','nativeplace',10016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18862,'清城区','10016.1','nativeplace',10016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18861,'清远市','10016','nativeplace',10016,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18860,'阳春市','10015.4','nativeplace',10015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18859,'阳东县','10015.3','nativeplace',10015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18858,'阳西县','10015.2','nativeplace',10015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18857,'江城区','10015.1','nativeplace',10015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18856,'阳江市','10015','nativeplace',10015,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18855,'东源县','10014.6','nativeplace',10015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18854,'和平县','10014.5','nativeplace',10015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18853,'连平县','10014.4','nativeplace',10014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18852,'龙川县','10014.3','nativeplace',10014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18851,'紫金县','10014.2','nativeplace',10014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18850,'源城区','10014.1','nativeplace',10014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18849,'河源市','10014','nativeplace',10014,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18848,'陆丰市','10013.4','nativeplace',10013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18847,'陆河县','10013.3','nativeplace',10013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18846,'海丰县','10013.2','nativeplace',10013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18845,'城　区','10013.1','nativeplace',10013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18844,'汕尾市','10013','nativeplace',10013,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18843,'兴宁市','10012.8','nativeplace',10013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18842,'蕉岭县','10012.7','nativeplace',10013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18841,'平远县','10012.6','nativeplace',10013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18840,'五华县','10012.5','nativeplace',10013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18839,'丰顺县','10012.4','nativeplace',10012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18838,'大埔县','10012.3','nativeplace',10012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18837,'梅　县','10012.2','nativeplace',10012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18836,'梅江区','10012.1','nativeplace',10012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18835,'梅州市','10012','nativeplace',10012,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18834,'龙门县','10011.5','nativeplace',10012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18833,'惠东县','10011.4','nativeplace',10011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18832,'博罗县','10011.3','nativeplace',10011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18831,'惠阳区','10011.2','nativeplace',10011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18830,'惠城区','10011.1','nativeplace',10011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18829,'惠州市','10011','nativeplace',10011,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18828,'四会市','10010.8','nativeplace',10011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18827,'高要市','10010.7','nativeplace',10011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18826,'德庆县','10010.6','nativeplace',10011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18825,'封开县','10010.5','nativeplace',10011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18824,'怀集县','10010.4','nativeplace',10010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18823,'广宁县','10010.3','nativeplace',10010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18822,'鼎湖区','10010.2','nativeplace',10010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18821,'端州区','10010.1','nativeplace',10010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18820,'肇庆市','10010','nativeplace',10010,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18819,'信宜市','10009.6','nativeplace',10010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18818,'化州市','10009.5','nativeplace',10010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18817,'高州市','10009.4','nativeplace',10009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18816,'电白县','10009.3','nativeplace',10009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18815,'茂港区','10009.2','nativeplace',10009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18814,'茂南区','10009.1','nativeplace',10009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18813,'茂名市','10009','nativeplace',10009,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18812,'吴川市','10008.9','nativeplace',10009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18811,'雷州市','10008.8','nativeplace',10009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18810,'廉江市','10008.7','nativeplace',10009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18809,'徐闻县','10008.6','nativeplace',10009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18808,'遂溪县','10008.5','nativeplace',10009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18807,'麻章区','10008.4','nativeplace',10008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18806,'坡头区','10008.3','nativeplace',10008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18805,'霞山区','10008.2','nativeplace',10008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18804,'赤坎区','10008.1','nativeplace',10008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18803,'湛江市','10008','nativeplace',10008,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18802,'恩平市','10007.7','nativeplace',10008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18801,'鹤山市','10007.6','nativeplace',10008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18800,'开平市','10007.5','nativeplace',10008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18799,'台山市','10007.4','nativeplace',10007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18798,'新会区','10007.3','nativeplace',10007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18797,'江海区','10007.2','nativeplace',10007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18796,'蓬江区','10007.1','nativeplace',10007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18795,'江门市','10007','nativeplace',10007,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18794,'高明区','10006.5','nativeplace',10007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18793,'三水区','10006.4','nativeplace',10006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18792,'顺德区','10006.3','nativeplace',10006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18791,'南海区','10006.2','nativeplace',10006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18790,'禅城区','10006.1','nativeplace',10006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18789,'佛山市','10006','nativeplace',10006,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18788,'南澳县','10005.7','nativeplace',10006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18787,'澄海区','10005.6','nativeplace',10006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18786,'潮南区','10005.5','nativeplace',10006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18785,'潮阳区','10005.4','nativeplace',10005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18784,'濠江区','10005.3','nativeplace',10005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18783,'金平区','10005.2','nativeplace',10005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18782,'龙湖区','10005.1','nativeplace',10005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18781,'汕头市','10005','nativeplace',10005,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18780,'金湾区','10004.3','nativeplace',10004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18779,'斗门区','10004.2','nativeplace',10004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18778,'洲区','10004.1','nativeplace',10004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18777,'珠海市','10004','nativeplace',10004,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18776,'盐田区','10003.6','nativeplace',10004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18775,'龙岗区','10003.5','nativeplace',10004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18774,'宝安区','10003.4','nativeplace',10003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18773,'南山区','10003.3','nativeplace',10003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18772,'福田区','10003.2','nativeplace',10003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18771,'罗湖区','10003.1','nativeplace',10003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18770,'深圳市','10003','nativeplace',10003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18769,'南雄市','10002.10','nativeplace',10002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18768,'乐昌市','10002.9','nativeplace',10003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18767,'新丰县','10002.8','nativeplace',10003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18766,'乳源瑶族自治县','10002.7','nativeplace',10003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18765,'翁源县','10002.6','nativeplace',10003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18764,'仁化县','10002.5','nativeplace',10003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18763,'始兴县','10002.4','nativeplace',10002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18762,'曲江区','10002.3','nativeplace',10002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18761,'浈江区','10002.2','nativeplace',10002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18760,'武江区','10002.1','nativeplace',10002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18759,'韶关市','10002','nativeplace',10002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18758,'从化市','10001.12','nativeplace',10001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18757,'增城市','10001.11','nativeplace',10001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18756,'花都区','10001.10','nativeplace',10001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18755,'番禺区','10001.9','nativeplace',10002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18754,'黄埔区','10001.8','nativeplace',10002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18753,'白云区','10001.7','nativeplace',10002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18752,'芳村区','10001.6','nativeplace',10002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18751,'天河区','10001.5','nativeplace',10002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18750,'海珠区','10001.4','nativeplace',10001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18749,'越秀区','10001.3','nativeplace',10001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18748,'荔湾区','10001.2','nativeplace',10001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18747,'东山区','10001.1','nativeplace',10001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18746,'广州市','10001','nativeplace',10001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18745,'广东省','10000','nativeplace',10000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18744,'龙山县','9514.8','nativeplace',9515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18743,'永顺县','9514.7','nativeplace',9515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18742,'古丈县','9514.6','nativeplace',9515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18741,'保靖县','9514.5','nativeplace',9515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18740,'花垣县','9514.4','nativeplace',9514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18739,'凤凰县','9514.3','nativeplace',9514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18738,'泸溪县','9514.2','nativeplace',9514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18737,'吉首市','9514.1','nativeplace',9514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18736,'湘西土家族苗族自治州','9514','nativeplace',9514,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18735,'涟源市','9513.5','nativeplace',9514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18734,'冷水江市','9513.4','nativeplace',9513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18733,'新化县','9513.3','nativeplace',9513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18732,'双峰县','9513.2','nativeplace',9513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18731,'娄星区','9513.1','nativeplace',9513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18730,'娄底市','9513','nativeplace',9513,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18729,'洪江市','9512.12','nativeplace',9512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18728,'通道侗族自治县','9512.11','nativeplace',9512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18727,'靖州苗族侗族自治县','9512.10','nativeplace',9512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18726,'芷江侗族自治县','9512.9','nativeplace',9513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18725,'新晃侗族自治县','9512.8','nativeplace',9513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18724,'麻阳苗族自治县','9512.7','nativeplace',9513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18723,'会同县','9512.6','nativeplace',9513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18722,'溆浦县','9512.5','nativeplace',9513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18721,'辰溪县','9512.4','nativeplace',9512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18720,'沅陵县','9512.3','nativeplace',9512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18719,'中方县','9512.2','nativeplace',9512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18718,'鹤城区','9512.1','nativeplace',9512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18717,'怀化市','9512','nativeplace',9512,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18716,'江华瑶族自治县','9511.11','nativeplace',9511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18715,'新田县','9511.10','nativeplace',9511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18714,'蓝山县','9511.9','nativeplace',9512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18713,'宁远县','9511.8','nativeplace',9512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18712,'江永县','9511.7','nativeplace',9512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18711,'道　县','9511.6','nativeplace',9512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18710,'双牌县','9511.5','nativeplace',9512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18709,'东安县','9511.4','nativeplace',9511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18708,'祁阳县','9511.3','nativeplace',9511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18707,'冷水滩区','9511.2','nativeplace',9511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18706,'芝山区','9511.1','nativeplace',9511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18705,'永州市','9511','nativeplace',9511,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18704,'资兴市','9510.11','nativeplace',9510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18703,'安仁县','9510.10','nativeplace',9510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18702,'桂东县','9510.9','nativeplace',9511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18701,'汝城县','9510.8','nativeplace',9511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18700,'临武县','9510.7','nativeplace',9511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18699,'嘉禾县','9510.6','nativeplace',9511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18698,'永兴县','9510.5','nativeplace',9511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18697,'宜章县','9510.4','nativeplace',9510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18696,'桂阳县','9510.3','nativeplace',9510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18695,'苏仙区','9510.2','nativeplace',9510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18694,'北湖区','9510.1','nativeplace',9510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18693,'郴州市','9510','nativeplace',9510,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18692,'沅江市','9509.6','nativeplace',9510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18691,'安化县','9509.5','nativeplace',9510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18690,'桃江县','9509.4','nativeplace',9509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18689,'南　县','9509.3','nativeplace',9509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18688,'赫山区','9509.2','nativeplace',9509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18687,'资阳区','9509.1','nativeplace',9509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18686,'益阳市','9509','nativeplace',9509,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18685,'桑植县','9508.4','nativeplace',9508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18684,'慈利县','9508.3','nativeplace',9508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18683,'武陵源区','9508.2','nativeplace',9508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18682,'永定区','9508.1','nativeplace',9508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18681,'张家界市','9508','nativeplace',9508,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18680,'津市市','9507.9','nativeplace',9508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18679,'石门县','9507.8','nativeplace',9508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18678,'桃源县','9507.7','nativeplace',9508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18677,'临澧县','9507.6','nativeplace',9508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18676,'澧　县','9507.5','nativeplace',9508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18675,'汉寿县','9507.4','nativeplace',9507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18674,'安乡县','9507.3','nativeplace',9507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18673,'鼎城区','9507.2','nativeplace',9507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18672,'武陵区','9507.1','nativeplace',9507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18671,'常德市','9507','nativeplace',9507,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18670,'临湘市','9506.9','nativeplace',9507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18669,'汨罗市','9506.8','nativeplace',9507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18668,'平江县','9506.7','nativeplace',9507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18667,'湘阴县','9506.6','nativeplace',9507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18666,'华容县','9506.5','nativeplace',9507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18665,'岳阳县','9506.4','nativeplace',9506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18664,'君山区','9506.3','nativeplace',9506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18663,'云溪区','9506.2','nativeplace',9506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18662,'岳阳楼区','9506.1','nativeplace',9506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18661,'岳阳市','9506','nativeplace',9506,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18660,'武冈市','9505.12','nativeplace',9505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18659,'城步苗族自治县','9505.11','nativeplace',9505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18658,'新宁县','9505.10','nativeplace',9505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18657,'绥宁县','9505.9','nativeplace',9506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18656,'洞口县','9505.8','nativeplace',9506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18655,'隆回县','9505.7','nativeplace',9506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18654,'邵阳县','9505.6','nativeplace',9506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18653,'新邵县','9505.5','nativeplace',9506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18652,'邵东县','9505.4','nativeplace',9505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18651,'北塔区','9505.3','nativeplace',9505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18650,'大祥区','9505.2','nativeplace',9505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18649,'双清区','9505.1','nativeplace',9505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18648,'邵阳市','9505','nativeplace',9505,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18647,'常宁市','9504.12','nativeplace',9504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18646,'耒阳市','9504.11','nativeplace',9504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18645,'祁东县','9504.10','nativeplace',9504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18644,'衡东县','9504.9','nativeplace',9505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18643,'衡山县','9504.8','nativeplace',9505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18642,'衡南县','9504.7','nativeplace',9505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18641,'衡阳县','9504.6','nativeplace',9505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18640,'南岳区','9504.5','nativeplace',9505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18639,'蒸湘区','9504.4','nativeplace',9504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18638,'石鼓区','9504.3','nativeplace',9504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18637,'雁峰区','9504.2','nativeplace',9504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18636,'珠晖区','9504.1','nativeplace',9504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18635,'衡阳市','9504','nativeplace',9504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18634,'韶山市','9503.5','nativeplace',9504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18633,'湘乡市','9503.4','nativeplace',9503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18632,'湘潭县','9503.3','nativeplace',9503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18631,'岳塘区','9503.2','nativeplace',9503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18630,'雨湖区','9503.1','nativeplace',9503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18629,'湘潭市','9503','nativeplace',9503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18628,'醴陵市','9502.9','nativeplace',9503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18627,'炎陵县','9502.8','nativeplace',9503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18626,'茶陵县','9502.7','nativeplace',9503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18625,'攸　县','9502.6','nativeplace',9503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18624,'株洲县','9502.5','nativeplace',9503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18623,'天元区','9502.4','nativeplace',9502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18622,'石峰区','9502.3','nativeplace',9502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18621,'芦淞区','9502.2','nativeplace',9502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18620,'荷塘区','9502.1','nativeplace',9502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18619,'株洲市','9502','nativeplace',9502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18618,'浏阳市','9501.9','nativeplace',9502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18617,'宁乡县','9501.8','nativeplace',9502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18616,'望城县','9501.7','nativeplace',9502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18615,'长沙县','9501.6','nativeplace',9502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18614,'雨花区','9501.5','nativeplace',9502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18613,'开福区','9501.4','nativeplace',9501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18612,'岳麓区','9501.3','nativeplace',9501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18611,'天心区','9501.2','nativeplace',9501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18610,'芙蓉区','9501.1','nativeplace',9501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18609,'长沙市','9501','nativeplace',9501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18608,'湖南省','9500','nativeplace',9500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18607,'神农架林区','9014.4','nativeplace',9014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18606,'天门市','9014.3','nativeplace',9014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18605,'潜江市','9014.2','nativeplace',9014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18604,'仙桃市','9014.1','nativeplace',9014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18603,'省直辖行政单位','9014','nativeplace',9014,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18602,'鹤峰县','9013.8','nativeplace',9014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18601,'来凤县','9013.7','nativeplace',9014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18600,'咸丰县','9013.6','nativeplace',9014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18599,'宣恩县','9013.5','nativeplace',9014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18598,'巴东县','9013.4','nativeplace',9013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18597,'建始县','9013.3','nativeplace',9013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18596,'利川市','9013.2','nativeplace',9013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18595,'恩施市','9013.1','nativeplace',9013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18594,'恩施土家族苗族自治州','9013','nativeplace',9013,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18593,'广水市','9012.2','nativeplace',9012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18592,'曾都区','9012.1','nativeplace',9012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18591,'随州市','9012','nativeplace',9012,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18590,'赤壁市','9011.6','nativeplace',9012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18589,'通山县','9011.5','nativeplace',9012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18588,'崇阳县','9011.4','nativeplace',9011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18587,'通城县','9011.3','nativeplace',9011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18586,'嘉鱼县','9011.2','nativeplace',9011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18585,'咸安区','9011.1','nativeplace',9011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18584,'咸宁市','9011','nativeplace',9011,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18583,'武穴市','9010.10','nativeplace',9010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18582,'麻城市','9010.9','nativeplace',9011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18581,'黄梅县','9010.8','nativeplace',9011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18580,'蕲春县','9010.7','nativeplace',9011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18579,'浠水县','9010.6','nativeplace',9011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18578,'英山县','9010.5','nativeplace',9011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18577,'罗田县','9010.4','nativeplace',9010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18576,'红安县','9010.3','nativeplace',9010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18575,'团风县','9010.2','nativeplace',9010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18574,'州区','9010.1','nativeplace',9010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18573,'黄冈市','9010','nativeplace',9010,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18572,'松滋市','9009.8','nativeplace',9010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18571,'洪湖市','9009.7','nativeplace',9010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18570,'石首市','9009.6','nativeplace',9010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18569,'江陵县','9009.5','nativeplace',9010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18568,'监利县','9009.4','nativeplace',9009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18567,'公安县','9009.3','nativeplace',9009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18566,'荆州区','9009.2','nativeplace',9009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18565,'沙市区','9009.1','nativeplace',9009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18564,'荆州市','9009','nativeplace',9009,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18563,'汉川市','9008.7','nativeplace',9009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18562,'孝南区','9008.6','nativeplace',9009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18561,'孝昌县','9008.5','nativeplace',9009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18560,'大悟县','9008.4','nativeplace',9008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18559,'云梦县','9008.3','nativeplace',9008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18558,'应城市','9008.2','nativeplace',9008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18557,'安陆市','9008.1','nativeplace',9008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18556,'孝感市','9008','nativeplace',9008,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18555,'东宝区','9007.5','nativeplace',9008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18554,'掇刀区','9007.4','nativeplace',9007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18553,'京山县','9007.3','nativeplace',9007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18552,'沙洋县','9007.2','nativeplace',9007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18551,'钟祥市','9007.1','nativeplace',9007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18550,'荆门市','9007','nativeplace',9007,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18549,'鄂城区','9006.3','nativeplace',9006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18548,'华容区','9006.2','nativeplace',9006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18547,'梁子湖区','9006.1','nativeplace',9006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18546,'鄂州市','9006','nativeplace',9006,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18545,'宜城市','9005.9','nativeplace',9006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18544,'枣阳市','9005.8','nativeplace',9006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18543,'老河口市','9005.7','nativeplace',9006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18542,'保康县','9005.6','nativeplace',9006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18541,'谷城县','9005.5','nativeplace',9006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18540,'南漳县','9005.4','nativeplace',9005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18539,'襄阳区','9005.3','nativeplace',9005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18538,'樊城区','9005.2','nativeplace',9005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18537,'襄城区','9005.1','nativeplace',9005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18536,'襄樊市','9005','nativeplace',9005,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18535,'枝江市','9004.13','nativeplace',9004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18534,'当阳市','9004.12','nativeplace',9004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18533,'宜都市','9004.11','nativeplace',9004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18532,'五峰土家族自治县','9004.10','nativeplace',9004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18531,'长阳土家族自治县','9004.9','nativeplace',9005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18530,'秭归县','9004.8','nativeplace',9005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18529,'兴山县','9004.7','nativeplace',9005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18528,'远安县','9004.6','nativeplace',9005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18527,'夷陵区','9004.5','nativeplace',9005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18526,'?亭区','9004.4','nativeplace',9004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18525,'点军区','9004.3','nativeplace',9004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18524,'伍家岗区','9004.2','nativeplace',9004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18523,'西陵区','9004.1','nativeplace',9004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18522,'宜昌市','9004','nativeplace',9004,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18521,'丹江口市','9003.8','nativeplace',9004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18520,'房　县','9003.7','nativeplace',9004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18519,'竹溪县','9003.6','nativeplace',9004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18518,'竹山县','9003.5','nativeplace',9004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18517,'郧西县','9003.4','nativeplace',9003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18516,'郧　县','9003.3','nativeplace',9003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18515,'张湾区','9003.2','nativeplace',9003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18514,'茅箭区','9003.1','nativeplace',9003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18513,'十堰市','9003','nativeplace',9003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18512,'大冶市','9002.6','nativeplace',9003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18511,'阳新县','9002.5','nativeplace',9003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18510,'铁山区','9002.4','nativeplace',9002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18509,'下陆区','9002.3','nativeplace',9002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18508,'西塞山区','9002.2','nativeplace',9002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18507,'黄石港区','9002.1','nativeplace',9002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18506,'黄石市','9002','nativeplace',9002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18505,'新洲区','9001.13','nativeplace',9001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18504,'黄陂区','9001.12','nativeplace',9001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18503,'江夏区','9001.11','nativeplace',9001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18502,'蔡甸区','9001.10','nativeplace',9001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18501,'汉南区','9001.9','nativeplace',9002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18500,'东西湖区','9001.8','nativeplace',9002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18499,'洪山区','9001.7','nativeplace',9002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18498,'青山区','9001.6','nativeplace',9002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18497,'武昌区','9001.5','nativeplace',9002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18496,'汉阳区','9001.4','nativeplace',9001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18495,'乔口区','9001.3','nativeplace',9001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18494,'江汉区','9001.2','nativeplace',9001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18493,'江岸区','9001.1','nativeplace',9001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18492,'武汉市','9001','nativeplace',9001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18491,'湖北省','9000','nativeplace',9000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18490,'新蔡县','8517.10','nativeplace',8517,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18489,'遂平县','8517.9','nativeplace',8518,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18488,'汝南县','8517.8','nativeplace',8518,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18487,'泌阳县','8517.7','nativeplace',8518,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18486,'确山县','8517.6','nativeplace',8518,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18485,'正阳县','8517.5','nativeplace',8518,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18484,'平舆县','8517.4','nativeplace',8517,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18483,'上蔡县','8517.3','nativeplace',8517,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18482,'西平县','8517.2','nativeplace',8517,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18481,'驿城区','8517.1','nativeplace',8517,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18480,'驻马店市','8517','nativeplace',8517,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18479,'项城市','8516.10','nativeplace',8516,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18478,'鹿邑县','8516.9','nativeplace',8517,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18477,'太康县','8516.8','nativeplace',8517,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18476,'淮阳县','8516.7','nativeplace',8517,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18475,'郸城县','8516.6','nativeplace',8517,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18474,'沈丘县','8516.5','nativeplace',8517,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18473,'商水县','8516.4','nativeplace',8516,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18472,'西华县','8516.3','nativeplace',8516,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18471,'扶沟县','8516.2','nativeplace',8516,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18470,'川汇区','8516.1','nativeplace',8516,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18469,'周口市','8516','nativeplace',8516,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18468,'息　县','8515.10','nativeplace',8515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18467,'淮滨县','8515.9','nativeplace',8516,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18466,'潢川县','8515.8','nativeplace',8516,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18465,'固始县','8515.7','nativeplace',8516,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18464,'商城县','8515.6','nativeplace',8516,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18463,'新　县','8515.5','nativeplace',8516,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18462,'光山县','8515.4','nativeplace',8515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18461,'罗山县','8515.3','nativeplace',8515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18460,'平桥区','8515.2','nativeplace',8515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18459,'师河区','8515.1','nativeplace',8515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18458,'信阳市','8515','nativeplace',8515,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18457,'永城市','8514.9','nativeplace',8515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18456,'夏邑县','8514.8','nativeplace',8515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18455,'虞城县','8514.7','nativeplace',8515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18454,'柘城县','8514.6','nativeplace',8515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18453,'宁陵县','8514.5','nativeplace',8515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18452,'睢　县','8514.4','nativeplace',8514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18451,'民权县','8514.3','nativeplace',8514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18450,'睢阳区','8514.2','nativeplace',8514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18449,'梁园区','8514.1','nativeplace',8514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18448,'商丘市','8514','nativeplace',8514,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18447,'邓州市','8513.13','nativeplace',8513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18446,'桐柏县','8513.12','nativeplace',8513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18445,'新野县','8513.11','nativeplace',8513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18444,'唐河县','8513.10','nativeplace',8513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18443,'社旗县','8513.9','nativeplace',8514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18442,'淅川县','8513.8','nativeplace',8514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18441,'内乡县','8513.7','nativeplace',8514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18440,'镇平县','8513.6','nativeplace',8514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18439,'西峡县','8513.5','nativeplace',8514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18438,'方城县','8513.4','nativeplace',8513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18437,'南召县','8513.3','nativeplace',8513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18436,'卧龙区','8513.2','nativeplace',8513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18435,'宛城区','8513.1','nativeplace',8513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18434,'南阳市','8513','nativeplace',8513,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18433,'灵宝市','8512.6','nativeplace',8513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18432,'义马市','8512.5','nativeplace',8513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18431,'卢氏县','8512.4','nativeplace',8512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18430,'陕　县','8512.3','nativeplace',8512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18429,'渑池县','8512.2','nativeplace',8512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18428,'湖滨区','8512.1','nativeplace',8512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18427,'三门峡市','8512','nativeplace',8512,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18426,'临颍县','8511.5','nativeplace',8512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18425,'舞阳县','8511.4','nativeplace',8511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18424,'召陵区','8511.3','nativeplace',8511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18423,'郾城区','8511.2','nativeplace',8511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18422,'源汇区','8511.1','nativeplace',8511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18421,'漯河市','8511','nativeplace',8511,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18420,'长葛市','8510.6','nativeplace',8511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18419,'禹州市','8510.5','nativeplace',8511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18418,'襄城县','8510.4','nativeplace',8510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18417,'鄢陵县','8510.3','nativeplace',8510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18416,'许昌县','8510.2','nativeplace',8510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18415,'魏都区','8510.1','nativeplace',8510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18414,'许昌市','8510','nativeplace',8510,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18413,'濮阳县','8509.6','nativeplace',8510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18412,'台前县','8509.5','nativeplace',8510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18411,'范　县','8509.4','nativeplace',8509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18410,'南乐县','8509.3','nativeplace',8509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18409,'清丰县','8509.2','nativeplace',8509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18408,'华龙区','8509.1','nativeplace',8509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18407,'濮阳市','8509','nativeplace',8509,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18406,'孟州市','8508.11','nativeplace',8508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18405,'沁阳市','8508.10','nativeplace',8508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18404,'济源市','8508.9','nativeplace',8509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18403,'温　县','8508.8','nativeplace',8509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18402,'武陟县','8508.7','nativeplace',8509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18401,'博爱县','8508.6','nativeplace',8509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18400,'修武县','8508.5','nativeplace',8509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18399,'山阳区','8508.4','nativeplace',8508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18398,'马村区','8508.3','nativeplace',8508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18397,'中站区','8508.2','nativeplace',8508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18396,'解放区','8508.1','nativeplace',8508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18395,'焦作市','8508','nativeplace',8508,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18394,'辉县市','8507.12','nativeplace',8507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18393,'卫辉市','8507.11','nativeplace',8507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18392,'长垣县','8507.10','nativeplace',8507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18391,'封丘县','8507.9','nativeplace',8508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18390,'延津县','8507.8','nativeplace',8508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18389,'原阳县','8507.7','nativeplace',8508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18388,'获嘉县','8507.6','nativeplace',8508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18387,'新乡县','8507.5','nativeplace',8508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18386,'牧野区','8507.4','nativeplace',8507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18385,'凤泉区','8507.3','nativeplace',8507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18384,'卫滨区','8507.2','nativeplace',8507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18383,'红旗区','8507.1','nativeplace',8507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18382,'新乡市','8507','nativeplace',8507,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18381,'淇　县','8506.5','nativeplace',8507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18380,'浚　县','8506.4','nativeplace',8506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18379,'淇滨区','8506.3','nativeplace',8506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18378,'山城区','8506.2','nativeplace',8506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18377,'鹤山区','8506.1','nativeplace',8506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18376,'鹤壁市','8506','nativeplace',8506,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18375,'林州市','8505.9','nativeplace',8506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18374,'内黄县','8505.8','nativeplace',8506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18373,'滑　县','8505.7','nativeplace',8506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18372,'汤阴县','8505.6','nativeplace',8506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18371,'安阳县','8505.5','nativeplace',8506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18370,'龙安区','8505.4','nativeplace',8505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18369,'殷都区','8505.3','nativeplace',8505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18368,'北关区','8505.2','nativeplace',8505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18367,'文峰区','8505.1','nativeplace',8505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18366,'安阳市','8505','nativeplace',8505,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18365,'汝州市','8504.10','nativeplace',8504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18364,'舞钢市','8504.9','nativeplace',8505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18363,'郏　县','8504.8','nativeplace',8505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18362,'鲁山县','8504.7','nativeplace',8505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18361,'叶　县','8504.6','nativeplace',8505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18360,'宝丰县','8504.5','nativeplace',8505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18359,'湛河区','8504.4','nativeplace',8504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18358,'石龙区','8504.3','nativeplace',8504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18357,'卫东区','8504.2','nativeplace',8504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18356,'新华区','8504.1','nativeplace',8504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18355,'平顶山市','8504','nativeplace',8504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18354,'偃师市','8503.15','nativeplace',8503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18353,'伊川县','8503.14','nativeplace',8503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18352,'洛宁县','8503.13','nativeplace',8503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18351,'宜阳县','8503.12','nativeplace',8503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18350,'汝阳县','8503.11','nativeplace',8503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18349,'嵩　县','8503.10','nativeplace',8503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18348,'栾川县','8503.9','nativeplace',8504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18347,'新安县','8503.8','nativeplace',8504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18346,'孟津县','8503.7','nativeplace',8504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18345,'洛龙区','8503.6','nativeplace',8504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18344,'吉利区','8503.5','nativeplace',8504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18343,'涧西区','8503.4','nativeplace',8503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18342,'廛河回族区','8503.3','nativeplace',8503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18341,'西工区','8503.2','nativeplace',8503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18340,'老城区','8503.1','nativeplace',8503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18339,'洛阳市','8503','nativeplace',8503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18338,'兰考县','8502.10','nativeplace',8502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18337,'开封县','8502.9','nativeplace',8503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18336,'尉氏县','8502.8','nativeplace',8503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18335,'通许县','8502.7','nativeplace',8503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18334,'杞　县','8502.6','nativeplace',8503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18333,'郊　区','8502.5','nativeplace',8503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18332,'南关区','8502.4','nativeplace',8502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18331,'鼓楼区','8502.3','nativeplace',8502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18330,'顺河回族区','8502.2','nativeplace',8502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18329,'龙亭区','8502.1','nativeplace',8502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18328,'开封市','8502','nativeplace',8502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18327,'登封市','8501.12','nativeplace',8501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18326,'新郑市','8501.11','nativeplace',8501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18325,'新密市','8501.10','nativeplace',8501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18324,'荥阳市','8501.9','nativeplace',8502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18323,'巩义市','8501.8','nativeplace',8502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18322,'中牟县','8501.7','nativeplace',8502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18321,'邙山区','8501.6','nativeplace',8502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18320,'上街区','8501.5','nativeplace',8502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18319,'金水区','8501.4','nativeplace',8501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18318,'管城回族区','8501.3','nativeplace',8501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18317,'二七区','8501.2','nativeplace',8501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18316,'中原区','8501.1','nativeplace',8501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18315,'郑州市','8501','nativeplace',8501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18314,'河南省','8500','nativeplace',8500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18313,'东明县','8016.9','nativeplace',8017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18312,'定陶县','8016.8','nativeplace',8017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18311,'鄄城县','8016.7','nativeplace',8017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18310,'郓城县','8016.6','nativeplace',8017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18309,'巨野县','8016.5','nativeplace',8017,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18308,'成武县','8016.4','nativeplace',8016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18307,'单　县','8016.3','nativeplace',8016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18306,'曹　县','8016.2','nativeplace',8016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18305,'牡丹区','8016.1','nativeplace',8016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18304,'荷泽市','8016','nativeplace',8016,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18303,'邹平县','8015.7','nativeplace',8016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18302,'博兴县','8015.6','nativeplace',8016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18301,'沾化县','8015.5','nativeplace',8016,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18300,'无棣县','8015.4','nativeplace',8015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18299,'阳信县','8015.3','nativeplace',8015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18298,'惠民县','8015.2','nativeplace',8015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18297,'滨城区','8015.1','nativeplace',8015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18296,'滨州市','8015','nativeplace',8015,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18295,'临清市','8014.8','nativeplace',8015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18294,'高唐县','8014.7','nativeplace',8015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18293,'冠　县','8014.6','nativeplace',8015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18292,'东阿县','8014.5','nativeplace',8015,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18291,'茌平县','8014.4','nativeplace',8014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18290,'莘　县','8014.3','nativeplace',8014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18289,'阳谷县','8014.2','nativeplace',8014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18288,'东昌府区','8014.1','nativeplace',8014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18287,'聊城市','8014','nativeplace',8014,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18286,'禹城市','8013.11','nativeplace',8013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18285,'乐陵市','8013.10','nativeplace',8013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18284,'武城县','8013.9','nativeplace',8014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18283,'夏津县','8013.8','nativeplace',8014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18282,'平原县','8013.7','nativeplace',8014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18281,'齐河县','8013.6','nativeplace',8014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18280,'临邑县','8013.5','nativeplace',8014,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18279,'庆云县','8013.4','nativeplace',8013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18278,'宁津县','8013.3','nativeplace',8013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18277,'陵　县','8013.2','nativeplace',8013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18276,'德城区','8013.1','nativeplace',8013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18275,'德州市','8013','nativeplace',8013,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18274,'临沭县','8012.12','nativeplace',8012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18273,'蒙阴县','8012.11','nativeplace',8012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18272,'莒南县','8012.10','nativeplace',8012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18271,'平邑县','8012.9','nativeplace',8013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18270,'费　县','8012.8','nativeplace',8013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18269,'苍山县','8012.7','nativeplace',8013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18268,'沂水县','8012.6','nativeplace',8013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18267,'郯城县','8012.5','nativeplace',8013,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18266,'沂南县','8012.4','nativeplace',8012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18265,'河东区','8012.3','nativeplace',8012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18264,'罗庄区','8012.2','nativeplace',8012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18263,'兰山区','8012.1','nativeplace',8012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18262,'临沂市','8012','nativeplace',8012,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18261,'钢城区','8011.2','nativeplace',8011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18260,'莱城区','8011.1','nativeplace',8011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18259,'莱芜市','8011','nativeplace',8011,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18258,'莒　县','8010.4','nativeplace',8010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18257,'五莲县','8010.3','nativeplace',8010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18256,'岚山区','8010.2','nativeplace',8010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18255,'东港区','8010.1','nativeplace',8010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18254,'日照市','8010','nativeplace',8010,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18253,'乳山市','8009.4','nativeplace',8009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18252,'荣成市','8009.3','nativeplace',8009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18251,'文登市','8009.2','nativeplace',8009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18250,'环翠区','8009.1','nativeplace',8009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18249,'威海市','8009','nativeplace',8009,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18248,'肥城市','8008.6','nativeplace',8009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18247,'新泰市','8008.5','nativeplace',8009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18246,'东平县','8008.4','nativeplace',8008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18245,'宁阳县','8008.3','nativeplace',8008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18244,'岱岳区','8008.2','nativeplace',8008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18243,'泰山区','8008.1','nativeplace',8008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18242,'泰安市','8008','nativeplace',8008,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18241,'邹城市','8007.12','nativeplace',8007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18240,'兖州市','8007.11','nativeplace',8007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18239,'曲阜市','8007.10','nativeplace',8007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18238,'梁山县','8007.9','nativeplace',8008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18237,'泗水县','8007.8','nativeplace',8008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18236,'汶上县','8007.7','nativeplace',8008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18235,'嘉祥县','8007.6','nativeplace',8008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18234,'金乡县','8007.5','nativeplace',8008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18233,'鱼台县','8007.4','nativeplace',8007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18232,'微山县','8007.3','nativeplace',8007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18231,'任城区','8007.2','nativeplace',8007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18230,'市中区','8007.1','nativeplace',8007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18229,'济宁市','8007','nativeplace',8007,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18228,'昌邑市','8006.12','nativeplace',8006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18227,'高密市','8006.11','nativeplace',8006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18226,'安丘市','8006.10','nativeplace',8006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18225,'寿光市','8006.9','nativeplace',8007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18224,'诸城市','8006.8','nativeplace',8007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18223,'青州市','8006.7','nativeplace',8007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18222,'昌乐县','8006.6','nativeplace',8007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18221,'临朐县','8006.5','nativeplace',8007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18220,'奎文区','8006.4','nativeplace',8006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18219,'坊子区','8006.3','nativeplace',8006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18218,'寒亭区','8006.2','nativeplace',8006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18217,'潍城区','8006.1','nativeplace',8006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18216,'潍坊市','8006','nativeplace',8006,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18215,'海阳市','8005.12','nativeplace',8005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18214,'栖霞市','8005.11','nativeplace',8005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18213,'招远市','8005.10','nativeplace',8005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18212,'蓬莱市','8005.9','nativeplace',8006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18211,'莱州市','8005.8','nativeplace',8006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18210,'莱阳市','8005.7','nativeplace',8006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18209,'龙口市','8005.6','nativeplace',8006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18208,'长岛县','8005.5','nativeplace',8006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18207,'莱山区','8005.4','nativeplace',8005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18206,'牟平区','8005.3','nativeplace',8005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18205,'福山区','8005.2','nativeplace',8005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18204,'芝罘区','8005.1','nativeplace',8005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18203,'烟台市','8005','nativeplace',8005,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18202,'滕州市','8004.6','nativeplace',8005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18201,'山亭区','8004.5','nativeplace',8005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18200,'台儿庄区','8004.4','nativeplace',8004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18199,'峄城区','8004.3','nativeplace',8004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18198,'薛城区','8004.2','nativeplace',8004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18197,'市中区','8004.1','nativeplace',8004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18196,'枣庄市','8004','nativeplace',8004,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18195,'沂源县','8003.8','nativeplace',8004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18194,'高青县','8003.7','nativeplace',8004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18193,'桓台县','8003.6','nativeplace',8004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18192,'周村区','8003.5','nativeplace',8004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18191,'临淄区','8003.4','nativeplace',8003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18190,'博山区','8003.3','nativeplace',8003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18189,'张店区','8003.2','nativeplace',8003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18188,'淄川区','8003.1','nativeplace',8003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18187,'淄博市','8003','nativeplace',8003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18186,'莱西市','8002.12','nativeplace',8002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18185,'胶南市','8002.11','nativeplace',8002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18184,'平度市','8002.10','nativeplace',8002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18183,'即墨市','8002.9','nativeplace',8003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18182,'胶州市','8002.8','nativeplace',8003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18181,'城阳区','8002.7','nativeplace',8003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18180,'李沧区','8002.6','nativeplace',8003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18179,'崂山区','8002.5','nativeplace',8003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18178,'黄岛区','8002.4','nativeplace',8002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18177,'四方区','8002.3','nativeplace',8002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18176,'市北区','8002.2','nativeplace',8002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18175,'市南区','8002.1','nativeplace',8002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18174,'青岛市','8002','nativeplace',8002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18173,'章丘市','8001.10','nativeplace',8001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18172,'商河县','8001.9','nativeplace',8002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18171,'济阳县','8001.8','nativeplace',8002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18170,'平阴县','8001.7','nativeplace',8002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18169,'长清区','8001.6','nativeplace',8002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18168,'历城区','8001.5','nativeplace',8002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18167,'天桥区','8001.4','nativeplace',8001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18166,'槐荫区','8001.3','nativeplace',8001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18165,'市中区','8001.2','nativeplace',8001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18164,'历下区','8001.1','nativeplace',8001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18163,'济南市','8001','nativeplace',8001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18162,'山东省','8000','nativeplace',8000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18161,'德兴市','7511.12','nativeplace',7511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18160,'婺源县','7511.11','nativeplace',7511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18159,'万年县','7511.10','nativeplace',7511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18158,'鄱阳县','7511.9','nativeplace',7512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18157,'余干县','7511.8','nativeplace',7512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18156,'弋阳县','7511.7','nativeplace',7512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18155,'横峰县','7511.6','nativeplace',7512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18154,'铅山县','7511.5','nativeplace',7512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18153,'玉山县','7511.4','nativeplace',7511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18152,'广丰县','7511.3','nativeplace',7511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18151,'上饶县','7511.2','nativeplace',7511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18150,'信州区','7511.1','nativeplace',7511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18149,'上饶市','7511','nativeplace',7511,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18148,'广昌县','7510.11','nativeplace',7510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18147,'东乡县','7510.10','nativeplace',7510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18146,'资溪县','7510.9','nativeplace',7511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18145,'金溪县','7510.8','nativeplace',7511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18144,'宜黄县','7510.7','nativeplace',7511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18143,'乐安县','7510.6','nativeplace',7511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18142,'崇仁县','7510.5','nativeplace',7511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18141,'南丰县','7510.4','nativeplace',7510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18140,'黎川县','7510.3','nativeplace',7510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18139,'南城县','7510.2','nativeplace',7510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18138,'临川区','7510.1','nativeplace',7510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18137,'抚州市','7510','nativeplace',7510,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18136,'高安市','7509.10','nativeplace',7509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18135,'樟树市','7509.9','nativeplace',7510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18134,'丰城市','7509.8','nativeplace',7510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18133,'铜鼓县','7509.7','nativeplace',7510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18132,'靖安县','7509.6','nativeplace',7510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18131,'宜丰县','7509.5','nativeplace',7510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18130,'上高县','7509.4','nativeplace',7509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18129,'万载县','7509.3','nativeplace',7509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18128,'奉新县','7509.2','nativeplace',7509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18127,'袁州区','7509.1','nativeplace',7509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18126,'宜春市','7509','nativeplace',7509,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18125,'井冈山市','7508.13','nativeplace',7508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18124,'永新县','7508.12','nativeplace',7508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18123,'安福县','7508.11','nativeplace',7508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18122,'万安县','7508.10','nativeplace',7508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18121,'遂川县','7508.9','nativeplace',7509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18120,'泰和县','7508.8','nativeplace',7509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18119,'永丰县','7508.7','nativeplace',7509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18118,'新干县','7508.6','nativeplace',7509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18117,'峡江县','7508.5','nativeplace',7509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18116,'吉水县','7508.4','nativeplace',7508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18115,'吉安县','7508.3','nativeplace',7508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18114,'青原区','7508.2','nativeplace',7508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18113,'吉州区','7508.1','nativeplace',7508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18112,'吉安市','7508','nativeplace',7508,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18111,'南康市','7507.18','nativeplace',7507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18110,'瑞金市','7507.17','nativeplace',7507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18109,'石城县','7507.16','nativeplace',7507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18108,'寻乌县','7507.15','nativeplace',7507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18107,'会昌县','7507.14','nativeplace',7507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18106,'兴国县','7507.13','nativeplace',7507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18105,'于都县','7507.12','nativeplace',7507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18104,'宁都县','7507.11','nativeplace',7507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18103,'全南县','7507.10','nativeplace',7507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18102,'定南县','7507.9','nativeplace',7508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18101,'龙南县','7507.8','nativeplace',7508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18100,'安远县','7507.7','nativeplace',7508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18099,'崇义县','7507.6','nativeplace',7508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18098,'上犹县','7507.5','nativeplace',7508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18097,'大余县','7507.4','nativeplace',7507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18096,'信丰县','7507.3','nativeplace',7507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18095,'赣　县','7507.2','nativeplace',7507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18094,'章贡区','7507.1','nativeplace',7507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18093,'赣州市','7507','nativeplace',7507,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18092,'贵溪市','7506.3','nativeplace',7506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18091,'余江县','7506.2','nativeplace',7506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18090,'月湖区','7506.1','nativeplace',7506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18089,'鹰潭市','7506','nativeplace',7506,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18088,'分宜县','7505.2','nativeplace',7505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18087,'渝水区','7505.1','nativeplace',7505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18086,'新余市','7505','nativeplace',7505,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18085,'瑞昌市','7504.12','nativeplace',7504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18084,'彭泽县','7504.11','nativeplace',7504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18083,'湖口县','7504.10','nativeplace',7504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18082,'都昌县','7504.9','nativeplace',7505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18081,'星子县','7504.8','nativeplace',7505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18080,'德安县','7504.7','nativeplace',7505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18079,'永修县','7504.6','nativeplace',7505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18078,'修水县','7504.5','nativeplace',7505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18077,'武宁县','7504.4','nativeplace',7504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18076,'九江县','7504.3','nativeplace',7504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18075,'浔阳区','7504.2','nativeplace',7504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18074,'庐山区','7504.1','nativeplace',7504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18073,'九江市','7504','nativeplace',7504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18072,'芦溪县','7503.5','nativeplace',7504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18071,'上栗县','7503.4','nativeplace',7503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18070,'莲花县','7503.3','nativeplace',7503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18069,'湘东区','7503.2','nativeplace',7503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18068,'安源区','7503.1','nativeplace',7503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18067,'萍乡市','7503','nativeplace',7503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18066,'乐平市','7502.4','nativeplace',7502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18065,'浮梁县','7502.3','nativeplace',7502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18064,'珠山区','7502.2','nativeplace',7502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18063,'昌江区','7502.1','nativeplace',7502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18062,'景德镇市','7502','nativeplace',7502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18061,'进贤县','7501.9','nativeplace',7502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18060,'安义县','7501.8','nativeplace',7502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18059,'新建县','7501.7','nativeplace',7502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18058,'南昌县','7501.6','nativeplace',7502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18057,'青山湖区','7501.5','nativeplace',7502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18056,'湾里区','7501.4','nativeplace',7501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18055,'青云谱区','7501.3','nativeplace',7501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18054,'西湖区','7501.2','nativeplace',7501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18053,'东湖区','7501.1','nativeplace',7501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18052,'南昌市','7501','nativeplace',7501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18051,'江西省','7500','nativeplace',7500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18050,'福鼎市','7009.9','nativeplace',7010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18049,'福安市','7009.8','nativeplace',7010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18048,'柘荣县','7009.7','nativeplace',7010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18047,'周宁县','7009.6','nativeplace',7010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18046,'寿宁县','7009.5','nativeplace',7010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18045,'屏南县','7009.4','nativeplace',7009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18044,'古田县','7009.3','nativeplace',7009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18043,'霞浦县','7009.2','nativeplace',7009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18042,'蕉城区','7009.1','nativeplace',7009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18041,'宁德市','7009','nativeplace',7009,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18040,'漳平市','7008.7','nativeplace',7009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18039,'连城县','7008.6','nativeplace',7009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18038,'武平县','7008.5','nativeplace',7009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18037,'上杭县','7008.4','nativeplace',7008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18036,'永定县','7008.3','nativeplace',7008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18035,'长汀县','7008.2','nativeplace',7008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18034,'新罗区','7008.1','nativeplace',7008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18033,'龙岩市','7008','nativeplace',7008,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18032,'建阳市','7007.10','nativeplace',7007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18031,'建瓯市','7007.9','nativeplace',7008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18030,'武夷山市','7007.8','nativeplace',7008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18029,'邵武市','7007.7','nativeplace',7008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18028,'政和县','7007.6','nativeplace',7008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18027,'松溪县','7007.5','nativeplace',7008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18026,'光泽县','7007.4','nativeplace',7007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18025,'浦城县','7007.3','nativeplace',7007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18024,'顺昌县','7007.2','nativeplace',7007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18023,'延平区','7007.1','nativeplace',7007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18022,'南平市','7007','nativeplace',7007,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18021,'龙海市','7006.11','nativeplace',7006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18020,'华安县','7006.10','nativeplace',7006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18019,'平和县','7006.9','nativeplace',7007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18018,'南靖县','7006.8','nativeplace',7007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18017,'东山县','7006.7','nativeplace',7007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18016,'长泰县','7006.6','nativeplace',7007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18015,'诏安县','7006.5','nativeplace',7007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18014,'漳浦县','7006.4','nativeplace',7006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18013,'云霄县','7006.3','nativeplace',7006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18012,'龙文区','7006.2','nativeplace',7006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18011,'芗城区','7006.1','nativeplace',7006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18010,'漳州市','7006','nativeplace',7006,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18009,'南安市','7005.12','nativeplace',7005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18008,'晋江市','7005.11','nativeplace',7005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18007,'石狮市','7005.10','nativeplace',7005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18006,'金门县','7005.9','nativeplace',7006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18005,'德化县','7005.8','nativeplace',7006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18004,'永春县','7005.7','nativeplace',7006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18003,'安溪县','7005.6','nativeplace',7006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18002,'惠安县','7005.5','nativeplace',7006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18001,'泉港区','7005.4','nativeplace',7005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (18000,'洛江区','7005.3','nativeplace',7005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17999,'丰泽区','7005.2','nativeplace',7005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17998,'鲤城区','7005.1','nativeplace',7005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17997,'泉州市','7005','nativeplace',7005,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17996,'永安市','7004.12','nativeplace',7004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17995,'建宁县','7004.11','nativeplace',7004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17994,'泰宁县','7004.10','nativeplace',7004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17993,'将乐县','7004.9','nativeplace',7005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17992,'沙　县','7004.8','nativeplace',7005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17991,'尤溪县','7004.7','nativeplace',7005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17990,'大田县','7004.6','nativeplace',7005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17989,'宁化县','7004.5','nativeplace',7005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17988,'清流县','7004.4','nativeplace',7004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17987,'明溪县','7004.3','nativeplace',7004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17986,'三元区','7004.2','nativeplace',7004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17985,'梅列区','7004.1','nativeplace',7004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17984,'三明市','7004','nativeplace',7004,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17983,'仙游县','7003.5','nativeplace',7004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17982,'秀屿区','7003.4','nativeplace',7003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17981,'荔城区','7003.3','nativeplace',7003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17980,'涵江区','7003.2','nativeplace',7003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17979,'城厢区','7003.1','nativeplace',7003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17978,'莆田市','7003','nativeplace',7003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17977,'翔安区','7002.6','nativeplace',7003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17976,'同安区','7002.5','nativeplace',7003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17975,'集美区','7002.4','nativeplace',7002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17974,'湖里区','7002.3','nativeplace',7002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17973,'海沧区','7002.2','nativeplace',7002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17972,'思明区','7002.1','nativeplace',7002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17971,'厦门市','7002','nativeplace',7002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17970,'长乐市','7001.13','nativeplace',7001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17969,'福清市','7001.12','nativeplace',7001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17968,'平潭县','7001.11','nativeplace',7001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17967,'永泰县','7001.10','nativeplace',7001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17966,'闽清县','7001.9','nativeplace',7002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17965,'罗源县','7001.8','nativeplace',7002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17964,'连江县','7001.7','nativeplace',7002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17963,'闽侯县','7001.6','nativeplace',7002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17962,'晋安区','7001.5','nativeplace',7002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17961,'马尾区','7001.4','nativeplace',7001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17960,'仓山区','7001.3','nativeplace',7001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17959,'台江区','7001.2','nativeplace',7001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17958,'鼓楼区','7001.1','nativeplace',7001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17957,'福州市','7001','nativeplace',7001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17956,'福建省','7000','nativeplace',7000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17955,'宁国市','6517.7','nativeplace',6518,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17954,'旌德县','6517.6','nativeplace',6518,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17953,'绩溪县','6517.5','nativeplace',6518,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17952,'泾　县','6517.4','nativeplace',6517,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17951,'广德县','6517.3','nativeplace',6517,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17950,'郎溪县','6517.2','nativeplace',6517,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17949,'宣州区','6517.1','nativeplace',6517,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17948,'宣城市','6517','nativeplace',6517,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17947,'青阳县','6516.4','nativeplace',6516,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17946,'石台县','6516.3','nativeplace',6516,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17945,'东至县','6516.2','nativeplace',6516,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17944,'贵池区','6516.1','nativeplace',6516,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17943,'池州市','6516','nativeplace',6516,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17942,'利辛县','6515.4','nativeplace',6515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17941,'蒙城县','6515.3','nativeplace',6515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17940,'涡阳县','6515.2','nativeplace',6515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17939,'谯城区','6515.1','nativeplace',6515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17938,'亳州市','6515','nativeplace',6515,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17937,'霍山县','6514.7','nativeplace',6515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17936,'金寨县','6514.6','nativeplace',6515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17935,'舒城县','6514.5','nativeplace',6515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17934,'霍邱县','6514.4','nativeplace',6514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17933,'寿　县','6514.3','nativeplace',6514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17932,'裕安区','6514.2','nativeplace',6514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17931,'金安区','6514.1','nativeplace',6514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17930,'六安市','6514','nativeplace',6514,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17929,'和　县','6513.5','nativeplace',6514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17928,'含山县','6513.4','nativeplace',6513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17927,'无为县','6513.3','nativeplace',6513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17926,'庐江县','6513.2','nativeplace',6513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17925,'居巢区','6513.1','nativeplace',6513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17924,'巢湖市','6513','nativeplace',6513,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17923,'泗　县','6512.5','nativeplace',6513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17922,'灵璧县','6512.4','nativeplace',6512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17921,'萧　县','6512.3','nativeplace',6512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17920,'砀山县','6512.2','nativeplace',6512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17919,'墉桥区','6512.1','nativeplace',6512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17918,'宿州市','6512','nativeplace',6512,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17917,'界首市','6511.8','nativeplace',6512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17916,'颍上县','6511.7','nativeplace',6512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17915,'阜南县','6511.6','nativeplace',6512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17914,'太和县','6511.5','nativeplace',6512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17913,'临泉县','6511.4','nativeplace',6511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17912,'颍泉区','6511.3','nativeplace',6511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17911,'颍东区','6511.2','nativeplace',6511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17910,'颍州区','6511.1','nativeplace',6511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17909,'阜阳市','6511','nativeplace',6511,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17908,'明光市','6510.8','nativeplace',6511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17907,'天长市','6510.7','nativeplace',6511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17906,'凤阳县','6510.6','nativeplace',6511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17905,'定远县','6510.5','nativeplace',6511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17904,'全椒县','6510.4','nativeplace',6510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17903,'来安县','6510.3','nativeplace',6510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17902,'南谯区','6510.2','nativeplace',6510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17901,'琅琊区','6510.1','nativeplace',6510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17900,'滁州市','6510','nativeplace',6510,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17899,'祁门县','6509.7','nativeplace',6510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17898,'黟　县','6509.6','nativeplace',6510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17897,'休宁县','6509.5','nativeplace',6510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17896,'歙　县','6509.4','nativeplace',6509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17895,'徽州区','6509.3','nativeplace',6509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17894,'黄山区','6509.2','nativeplace',6509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17893,'屯溪区','6509.1','nativeplace',6509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17892,'黄山市','6509','nativeplace',6509,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17891,'桐城市','6508.11','nativeplace',6508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17890,'岳西县','6508.10','nativeplace',6508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17889,'望江县','6508.9','nativeplace',6509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17888,'宿松县','6508.8','nativeplace',6509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17887,'太湖县','6508.7','nativeplace',6509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17886,'潜山县','6508.6','nativeplace',6509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17885,'枞阳县','6508.5','nativeplace',6509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17884,'怀宁县','6508.4','nativeplace',6508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17883,'郊　区','6508.3','nativeplace',6508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17882,'大观区','6508.2','nativeplace',6508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17881,'迎江区','6508.1','nativeplace',6508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17880,'安庆市','6508','nativeplace',6508,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17879,'铜陵县','6507.4','nativeplace',6507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17878,'郊　区','6507.3','nativeplace',6507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17877,'狮子山区','6507.2','nativeplace',6507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17876,'铜官山区','6507.1','nativeplace',6507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17875,'铜陵市','6507','nativeplace',6507,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17874,'濉溪县','6506.4','nativeplace',6506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17873,'烈山区','6506.3','nativeplace',6506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17872,'相山区','6506.2','nativeplace',6506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17871,'杜集区','6506.1','nativeplace',6506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17870,'淮北市','6506','nativeplace',6506,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17869,'当涂县','6505.4','nativeplace',6505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17868,'雨山区','6505.3','nativeplace',6505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17867,'花山区','6505.2','nativeplace',6505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17866,'金家庄区','6505.1','nativeplace',6505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17865,'马鞍山市','6505','nativeplace',6505,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17864,'凤台县','6504.6','nativeplace',6505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17863,'潘集区','6504.5','nativeplace',6505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17862,'八公山区','6504.4','nativeplace',6504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17861,'谢家集区','6504.3','nativeplace',6504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17860,'田家庵区','6504.2','nativeplace',6504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17859,'大通区','6504.1','nativeplace',6504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17858,'淮南市','6504','nativeplace',6504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17857,'固镇县','6503.7','nativeplace',6504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17856,'五河县','6503.6','nativeplace',6504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17855,'怀远县','6503.5','nativeplace',6504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17854,'淮上区','6503.4','nativeplace',6503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17853,'禹会区','6503.3','nativeplace',6503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17852,'蚌山区','6503.2','nativeplace',6503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17851,'龙子湖区','6503.1','nativeplace',6503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17850,'蚌埠市','6503','nativeplace',6503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17849,'南陵县','6502.7','nativeplace',6503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17848,'繁昌县','6502.6','nativeplace',6503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17847,'芜湖县','6502.5','nativeplace',6503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17846,'鸠江区','6502.4','nativeplace',6502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17845,'新芜区','6502.3','nativeplace',6502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17844,'马塘区','6502.2','nativeplace',6502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17843,'镜湖区','6502.1','nativeplace',6502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17842,'芜湖市','6502','nativeplace',6502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17841,'肥西县','6501.7','nativeplace',6502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17840,'肥东县','6501.6','nativeplace',6502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17839,'长丰县','6501.5','nativeplace',6502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17838,'包河区','6501.4','nativeplace',6501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17837,'蜀山区','6501.3','nativeplace',6501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17836,'庐阳区','6501.2','nativeplace',6501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17835,'瑶海区','6501.1','nativeplace',6501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17834,'合肥市','6501','nativeplace',6501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17833,'安徽省','6500','nativeplace',6500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17832,'龙泉市','6011.9','nativeplace',6012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17831,'景宁畲族自治县','6011.8','nativeplace',6012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17830,'庆元县','6011.7','nativeplace',6012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17829,'云和县','6011.6','nativeplace',6012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17828,'松阳县','6011.5','nativeplace',6012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17827,'遂昌县','6011.4','nativeplace',6011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17826,'缙云县','6011.3','nativeplace',6011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17825,'青田县','6011.2','nativeplace',6011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17824,'莲都区','6011.1','nativeplace',6011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17823,'丽水市','6011','nativeplace',6011,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17822,'临海市','6010.9','nativeplace',6011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17821,'温岭市','6010.8','nativeplace',6011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17820,'仙居县','6010.7','nativeplace',6011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17819,'天台县','6010.6','nativeplace',6011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17818,'三门县','6010.5','nativeplace',6011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17817,'玉环县','6010.4','nativeplace',6010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17816,'路桥区','6010.3','nativeplace',6010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17815,'黄岩区','6010.2','nativeplace',6010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17814,'椒江区','6010.1','nativeplace',6010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17813,'台州市','6010','nativeplace',6010,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17812,'嵊泗县','6009.4','nativeplace',6009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17811,'岱山县','6009.3','nativeplace',6009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17810,'普陀区','6009.2','nativeplace',6009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17809,'定海区','6009.1','nativeplace',6009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17808,'舟山市','6009','nativeplace',6009,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17807,'江山市','6008.6','nativeplace',6009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17806,'龙游县','6008.5','nativeplace',6009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17805,'开化县','6008.4','nativeplace',6008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17804,'常山县','6008.3','nativeplace',6008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17803,'衢江区','6008.2','nativeplace',6008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17802,'柯城区','6008.1','nativeplace',6008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17801,'衢州市','6008','nativeplace',6008,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17800,'永康市','6007.9','nativeplace',6008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17799,'东阳市','6007.8','nativeplace',6008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17798,'义乌市','6007.7','nativeplace',6008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17797,'兰溪市','6007.6','nativeplace',6008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17796,'磐安县','6007.5','nativeplace',6008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17795,'浦江县','6007.4','nativeplace',6007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17794,'武义县','6007.3','nativeplace',6007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17793,'金东区','6007.2','nativeplace',6007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17792,'婺城区','6007.1','nativeplace',6007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17791,'金华市','6007','nativeplace',6007,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17790,'嵊州市','6006.6','nativeplace',6007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17789,'上虞市','6006.5','nativeplace',6007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17788,'诸暨市','6006.4','nativeplace',6006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17787,'新昌县','6006.3','nativeplace',6006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17786,'绍兴县','6006.2','nativeplace',6006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17785,'越城区','6006.1','nativeplace',6006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17784,'绍兴市','6006','nativeplace',6006,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17783,'安吉县','6005.5','nativeplace',6006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17782,'长兴县','6005.4','nativeplace',6005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17781,'德清县','6005.3','nativeplace',6005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17780,'南浔区','6005.2','nativeplace',6005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17779,'吴兴区','6005.1','nativeplace',6005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17778,'湖州市','6005','nativeplace',6005,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17777,'桐乡市','6004.7','nativeplace',6005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17776,'平湖市','6004.6','nativeplace',6005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17775,'海宁市','6004.5','nativeplace',6005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17774,'海盐县','6004.4','nativeplace',6004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17773,'嘉善县','6004.3','nativeplace',6004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17772,'秀洲区','6004.2','nativeplace',6004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17771,'秀城区','6004.1','nativeplace',6004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17770,'嘉兴市','6004','nativeplace',6004,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17769,'乐清市','6003.11','nativeplace',6003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17768,'瑞安市','6003.10','nativeplace',6003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17767,'泰顺县','6003.9','nativeplace',6004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17766,'文成县','6003.8','nativeplace',6004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17765,'苍南县','6003.7','nativeplace',6004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17764,'平阳县','6003.6','nativeplace',6004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17763,'永嘉县','6003.5','nativeplace',6004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17762,'洞头县','6003.4','nativeplace',6003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17761,'瓯海区','6003.3','nativeplace',6003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17760,'龙湾区','6003.2','nativeplace',6003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17759,'鹿城区','6003.1','nativeplace',6003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17758,'温州市','6003','nativeplace',6003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17757,'奉化市','6002.11','nativeplace',6002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17756,'慈溪市','6002.10','nativeplace',6002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17755,'余姚市','6002.9','nativeplace',6003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17754,'宁海县','6002.8','nativeplace',6003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17753,'象山县','6002.7','nativeplace',6003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17752,'鄞州区','6002.6','nativeplace',6003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17751,'镇海区','6002.5','nativeplace',6003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17750,'北仑区','6002.4','nativeplace',6002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17749,'江北区','6002.3','nativeplace',6002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17748,'江东区','6002.2','nativeplace',6002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17747,'海曙区','6002.1','nativeplace',6002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17746,'宁波市','6002','nativeplace',6002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17745,'临安市','6001.13','nativeplace',6001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17744,'富阳市','6001.12','nativeplace',6001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17743,'建德市','6001.11','nativeplace',6001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17742,'淳安县','6001.10','nativeplace',6001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17741,'桐庐县','6001.9','nativeplace',6002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17740,'余杭区','6001.8','nativeplace',6002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17739,'萧山区','6001.7','nativeplace',6002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17738,'滨江区','6001.6','nativeplace',6002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17737,'西湖区','6001.5','nativeplace',6002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17736,'拱墅区','6001.4','nativeplace',6001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17735,'江干区','6001.3','nativeplace',6001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17734,'下城区','6001.2','nativeplace',6001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17733,'上城区','6001.1','nativeplace',6001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17732,'杭州市','6001','nativeplace',6001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17731,'浙江省','6000','nativeplace',6000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17730,'泗洪县','5513.5','nativeplace',5514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17729,'泗阳县','5513.4','nativeplace',5513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17728,'沭阳县','5513.3','nativeplace',5513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17727,'宿豫区','5513.2','nativeplace',5513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17726,'宿城区','5513.1','nativeplace',5513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17725,'宿迁市','5513','nativeplace',5513,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17724,'姜堰市','5512.6','nativeplace',5513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17723,'泰兴市','5512.5','nativeplace',5513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17722,'靖江市','5512.4','nativeplace',5512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17721,'兴化市','5512.3','nativeplace',5512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17720,'高港区','5512.2','nativeplace',5512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17719,'海陵区','5512.1','nativeplace',5512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17718,'泰州市','5512','nativeplace',5512,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17717,'句容市','5511.6','nativeplace',5512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17716,'扬中市','5511.5','nativeplace',5512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17715,'丹阳市','5511.4','nativeplace',5511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17714,'丹徒区','5511.3','nativeplace',5511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17713,'润州区','5511.2','nativeplace',5511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17712,'京口区','5511.1','nativeplace',5511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17711,'镇江市','5511','nativeplace',5511,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17710,'江都市','5510.7','nativeplace',5511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17709,'高邮市','5510.6','nativeplace',5511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17708,'仪征市','5510.5','nativeplace',5511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17707,'宝应县','5510.4','nativeplace',5510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17706,'郊　区','5510.3','nativeplace',5510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17705,'邗江区','5510.2','nativeplace',5510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17704,'广陵区','5510.1','nativeplace',5510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17703,'扬州市','5510','nativeplace',5510,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17702,'大丰市','5509.9','nativeplace',5510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17701,'东台市','5509.8','nativeplace',5510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17700,'建湖县','5509.7','nativeplace',5510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17699,'射阳县','5509.6','nativeplace',5510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17698,'阜宁县','5509.5','nativeplace',5510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17697,'滨海县','5509.4','nativeplace',5509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17696,'响水县','5509.3','nativeplace',5509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17695,'盐都区','5509.2','nativeplace',5509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17694,'亭湖区','5509.1','nativeplace',5509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17693,'盐城市','5509','nativeplace',5509,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17692,'金湖县','5508.8','nativeplace',5509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17691,'盱眙县','5508.7','nativeplace',5509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17690,'洪泽县','5508.6','nativeplace',5509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17689,'涟水县','5508.5','nativeplace',5509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17688,'清浦区','5508.4','nativeplace',5508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17687,'淮阴区','5508.3','nativeplace',5508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17686,'楚州区','5508.2','nativeplace',5508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17685,'清河区','5508.1','nativeplace',5508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17684,'淮安市','5508','nativeplace',5508,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17683,'灌南县','5507.7','nativeplace',5508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17682,'灌云县','5507.6','nativeplace',5508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17681,'东海县','5507.5','nativeplace',5508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17680,'赣榆县','5507.4','nativeplace',5507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17679,'海州区','5507.3','nativeplace',5507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17678,'新浦区','5507.2','nativeplace',5507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17677,'连云区','5507.1','nativeplace',5507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17676,'连云港市','5507','nativeplace',5507,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17675,'海门市','5506.8','nativeplace',5507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17674,'通州市','5506.7','nativeplace',5507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17673,'如皋市','5506.6','nativeplace',5507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17672,'启东市','5506.5','nativeplace',5507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17671,'如东县','5506.4','nativeplace',5506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17670,'海安县','5506.3','nativeplace',5506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17669,'港闸区','5506.2','nativeplace',5506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17668,'崇川区','5506.1','nativeplace',5506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17667,'南通市','5506','nativeplace',5506,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17666,'太仓市','5505.11','nativeplace',5505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17665,'吴江市','5505.10','nativeplace',5505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17664,'昆山市','5505.9','nativeplace',5506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17663,'张家港市','5505.8','nativeplace',5506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17662,'常熟市','5505.7','nativeplace',5506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17661,'相城区','5505.6','nativeplace',5506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17660,'吴中区','5505.5','nativeplace',5506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17659,'虎丘区','5505.4','nativeplace',5505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17658,'金阊区','5505.3','nativeplace',5505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17657,'平江区','5505.2','nativeplace',5505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17656,'沧浪区','5505.1','nativeplace',5505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17655,'苏州市','5505','nativeplace',5505,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17654,'金坛市','5504.7','nativeplace',5505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17653,'溧阳市','5504.6','nativeplace',5505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17652,'武进区','5504.5','nativeplace',5505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17651,'新北区','5504.4','nativeplace',5504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17650,'戚墅堰区','5504.3','nativeplace',5504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17649,'钟楼区','5504.2','nativeplace',5504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17648,'天宁区','5504.1','nativeplace',5504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17647,'常州市','5504','nativeplace',5504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17646,'邳州市','5503.11','nativeplace',5503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17645,'新沂市','5503.10','nativeplace',5503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17644,'睢宁县','5503.9','nativeplace',5504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17643,'铜山县','5503.8','nativeplace',5504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17642,'沛　县','5503.7','nativeplace',5504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17641,'丰　县','5503.6','nativeplace',5504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17640,'泉山区','5503.5','nativeplace',5504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17639,'贾汪区','5503.4','nativeplace',5503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17638,'九里区','5503.3','nativeplace',5503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17637,'云龙区','5503.2','nativeplace',5503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17636,'鼓楼区','5503.1','nativeplace',5503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17635,'徐州市','5503','nativeplace',5503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17634,'宜兴市','5502.8','nativeplace',5503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17633,'江阴市','5502.7','nativeplace',5503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17632,'滨湖区','5502.6','nativeplace',5503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17631,'惠山区','5502.5','nativeplace',5503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17630,'锡山区','5502.4','nativeplace',5502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17629,'北塘区','5502.3','nativeplace',5502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17628,'南长区','5502.2','nativeplace',5502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17627,'崇安区','5502.1','nativeplace',5502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17626,'无锡市','5502','nativeplace',5502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17625,'高淳县','5501.13','nativeplace',5501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17624,'溧水县','5501.12','nativeplace',5501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17623,'六合区','5501.11','nativeplace',5501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17622,'江宁区','5501.10','nativeplace',5501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17621,'雨花台区','5501.9','nativeplace',5502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17620,'栖霞区','5501.8','nativeplace',5502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17619,'浦口区','5501.7','nativeplace',5502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17618,'下关区','5501.6','nativeplace',5502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17617,'鼓楼区','5501.5','nativeplace',5502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17616,'建邺区','5501.4','nativeplace',5501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17615,'秦淮区','5501.3','nativeplace',5501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17614,'白下区','5501.2','nativeplace',5501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17613,'武区','5501.1','nativeplace',5501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17612,'南京市','5501','nativeplace',5501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17611,'江苏省','5500','nativeplace',5500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17610,'崇明县','5019','nativeplace',5019,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17609,'奉贤区','5018','nativeplace',5018,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17608,'南汇区','5017','nativeplace',5017,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17607,'青浦区','5016','nativeplace',5016,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17606,'松江区','5015','nativeplace',5015,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17605,'金山区','5014','nativeplace',5014,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17604,'浦东新区','5013','nativeplace',5013,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17603,'嘉定区','5012','nativeplace',5012,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17602,'宝山区','5011','nativeplace',5011,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17601,'闵行区','5010','nativeplace',5010,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17600,'杨浦区','5009','nativeplace',5009,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17599,'虹口区','5008','nativeplace',5008,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17598,'闸北区','5007','nativeplace',5007,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17597,'普陀区','5006','nativeplace',5006,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17596,'静安区','5005','nativeplace',5005,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17595,'长宁区','5004','nativeplace',5004,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17594,'徐汇区','5003','nativeplace',5003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17593,'卢湾区','5002','nativeplace',5002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17592,'黄浦区','5001','nativeplace',5001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17591,'上海市','5000','nativeplace',5000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17590,'漠河县','4513.3','nativeplace',4513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17589,'塔河县','4513.2','nativeplace',4513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17588,'呼玛县','4513.1','nativeplace',4513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17587,'大兴安岭地区','4513','nativeplace',4513,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17586,'海伦市','4512.10','nativeplace',4512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17585,'肇东市','4512.9','nativeplace',4513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17584,'安达市','4512.8','nativeplace',4513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17583,'绥棱县','4512.7','nativeplace',4513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17582,'明水县','4512.6','nativeplace',4513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17581,'庆安县','4512.5','nativeplace',4513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17580,'青冈县','4512.4','nativeplace',4512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17579,'兰西县','4512.3','nativeplace',4512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17578,'望奎县','4512.2','nativeplace',4512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17577,'北林区','4512.1','nativeplace',4512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17576,'绥化市','4512','nativeplace',4512,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17575,'五大连池市','4511.6','nativeplace',4512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17574,'北安市','4511.5','nativeplace',4512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17573,'孙吴县','4511.4','nativeplace',4511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17572,'逊克县','4511.3','nativeplace',4511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17571,'嫩江县','4511.2','nativeplace',4511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17570,'爱辉区','4511.1','nativeplace',4511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17569,'黑河市','4511','nativeplace',4511,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17568,'穆棱市','4510.10','nativeplace',4510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17567,'宁安市','4510.9','nativeplace',4511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17566,'海林市','4510.8','nativeplace',4511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17565,'绥芬河市','4510.7','nativeplace',4511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17564,'林口县','4510.6','nativeplace',4511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17563,'东宁县','4510.5','nativeplace',4511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17562,'西安区','4510.4','nativeplace',4510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17561,'爱民区','4510.3','nativeplace',4510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17560,'阳明区','4510.2','nativeplace',4510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17559,'东安区','4510.1','nativeplace',4510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17558,'牡丹江市','4510','nativeplace',4510,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17557,'勃利县','4509.4','nativeplace',4509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17556,'茄子河区','4509.3','nativeplace',4509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17555,'桃山区','4509.2','nativeplace',4509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17554,'新兴区','4509.1','nativeplace',4509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17553,'七台河市','4509','nativeplace',4509,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17552,'富锦市','4508.11','nativeplace',4508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17551,'同江市','4508.10','nativeplace',4508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17550,'抚远县','4508.9','nativeplace',4509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17549,'汤原县','4508.8','nativeplace',4509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17548,'桦川县','4508.7','nativeplace',4509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17547,'桦南县','4508.6','nativeplace',4509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17546,'郊　区','4508.5','nativeplace',4509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17545,'东风区','4508.4','nativeplace',4508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17544,'前进区','4508.3','nativeplace',4508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17543,'向阳区','4508.2','nativeplace',4508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17542,'永红区','4508.1','nativeplace',4508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17541,'佳木斯市','4508','nativeplace',4508,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17540,'铁力市','4507.17','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17539,'嘉荫县','4507.16','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17538,'上甘岭区','4507.15','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17537,'红星区','4507.14','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17536,'乌伊岭区','4507.13','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17535,'带岭区','4507.12','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17534,'汤旺河区','4507.11','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17533,'乌马河区','4507.10','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17532,'五营区','4507.9','nativeplace',4508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17531,'金山屯区','4507.8','nativeplace',4508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17530,'美溪区','4507.7','nativeplace',4508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17529,'新青区','4507.6','nativeplace',4508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17528,'翠峦区','4507.5','nativeplace',4508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17527,'西林区','4507.4','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17526,'友好区','4507.3','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17525,'南岔区','4507.2','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17524,'伊春区','4507.1','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17523,'伊春市','4507','nativeplace',4507,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17522,'杜尔伯特蒙古族自治县','4506.9','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17521,'林甸县','4506.8','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17520,'肇源县','4506.7','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17519,'肇州县','4506.6','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17518,'大同区','4506.5','nativeplace',4507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17517,'红岗区','4506.4','nativeplace',4506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17516,'让胡路区','4506.3','nativeplace',4506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17515,'龙凤区','4506.2','nativeplace',4506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17514,'萨尔图区','4506.1','nativeplace',4506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17513,'大庆市','4506','nativeplace',4506,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17512,'饶河县','4505.8','nativeplace',4506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17511,'宝清县','4505.7','nativeplace',4506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17510,'友谊县','4505.6','nativeplace',4506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17509,'集贤县','4505.5','nativeplace',4506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17508,'宝山区','4505.4','nativeplace',4505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17507,'四方台区','4505.3','nativeplace',4505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17506,'岭东区','4505.2','nativeplace',4505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17505,'尖山区','4505.1','nativeplace',4505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17504,'双鸭山市','4505','nativeplace',4505,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17503,'绥滨县','4504.8','nativeplace',4505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17502,'萝北县','4504.7','nativeplace',4505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17501,'兴山区','4504.6','nativeplace',4505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17500,'东山区','4504.5','nativeplace',4505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17499,'兴安区','4504.4','nativeplace',4504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17498,'南山区','4504.3','nativeplace',4504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17497,'工农区','4504.2','nativeplace',4504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17496,'向阳区','4504.1','nativeplace',4504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17495,'鹤岗市','4504','nativeplace',4504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17494,'密山市','4503.9','nativeplace',4504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17493,'虎林市','4503.8','nativeplace',4504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17492,'鸡东县','4503.7','nativeplace',4504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17491,'麻山区','4503.6','nativeplace',4504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17490,'城子河区','4503.5','nativeplace',4504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17489,'梨树区','4503.4','nativeplace',4503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17488,'滴道区','4503.3','nativeplace',4503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17487,'恒山区','4503.2','nativeplace',4503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17486,'鸡冠区','4503.1','nativeplace',4503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17485,'鸡西市','4503','nativeplace',4503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17484,'讷河市','4502.15','nativeplace',4502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17483,'拜泉县','4502.14','nativeplace',4502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17482,'克东县','4502.13','nativeplace',4502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17481,'克山县','4502.12','nativeplace',4502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17480,'富裕县','4502.11','nativeplace',4502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17479,'甘南县','4502.10','nativeplace',4502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17478,'泰来县','4502.9','nativeplace',4503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17477,'龙江县 依安县','4502.8','nativeplace',4503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17476,'梅里斯达斡尔族区','4502.7','nativeplace',4503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17475,'碾子山区','4502.6','nativeplace',4503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17474,'富拉尔基区','4502.5','nativeplace',4503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17473,'昂昂溪区','4502.4','nativeplace',4502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17472,'铁锋区','4502.3','nativeplace',4502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17471,'建华区','4502.2','nativeplace',4502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17470,'龙沙区','4502.1','nativeplace',4502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17469,'齐齐哈尔市','4502','nativeplace',4502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17468,'五常市','4501.19','nativeplace',4501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17467,'尚志市','4501.18','nativeplace',4501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17466,'双城市','4501.17','nativeplace',4501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17465,'阿城市','4501.16','nativeplace',4501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17464,'延寿县','4501.15','nativeplace',4501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17463,'通河县','4501.14','nativeplace',4501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17462,'木兰县','4501.13','nativeplace',4501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17461,'巴彦县','4501.12','nativeplace',4501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17460,'宾　县','4501.11','nativeplace',4501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17459,'方正县','4501.10','nativeplace',4501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17458,'依兰县','4501.9','nativeplace',4502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17457,'呼兰区','4501.8','nativeplace',4502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17456,'松北区','4501.7','nativeplace',4502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17455,'平房区','4501.6','nativeplace',4502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17454,'动力区','4501.5','nativeplace',4502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17453,'香坊区','4501.4','nativeplace',4501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17452,'道外区','4501.3','nativeplace',4501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17451,'南岗区','4501.2','nativeplace',4501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17450,'道里区','4501.1','nativeplace',4501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17449,'哈尔滨市','4501','nativeplace',4501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17448,'黑龙江省','4500','nativeplace',4500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17447,'安图县','4009.8','nativeplace',4010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17446,'汪清县','4009.7','nativeplace',4010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17445,'和龙市','4009.6','nativeplace',4010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17444,'龙井市','4009.5','nativeplace',4010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17443,'珲春市','4009.4','nativeplace',4009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17442,'敦化市','4009.3','nativeplace',4009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17441,'图们市','4009.2','nativeplace',4009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17440,'延吉市','4009.1','nativeplace',4009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17439,'延边朝鲜族自治州','4009','nativeplace',4009,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17438,'大安市','4008.5','nativeplace',4009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17437,'洮南市','4008.4','nativeplace',4008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17436,'通榆县','4008.3','nativeplace',4008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17435,'镇赉县','4008.2','nativeplace',4008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17434,'洮北区','4008.1','nativeplace',4008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17433,'白城市','4008','nativeplace',4008,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17432,'扶余县','4007.5','nativeplace',4008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17431,'乾安县','4007.4','nativeplace',4007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17430,'长岭县','4007.3','nativeplace',4007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17429,'前郭尔罗斯蒙古族自治县','4007.2','nativeplace',4007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17428,'宁江区','4007.1','nativeplace',4007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17427,'松原市','4007','nativeplace',4007,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17426,'临江市','4006.6','nativeplace',4007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17425,'江源县','4006.5','nativeplace',4007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17424,'长白朝鲜族自治县','4006.4','nativeplace',4006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17423,'靖宇县','4006.3','nativeplace',4006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17422,'抚松县','4006.2','nativeplace',4006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17421,'八道江区','4006.1','nativeplace',4006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17420,'白山市','4006','nativeplace',4006,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17419,'集安市','4005.7','nativeplace',4006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17418,'梅河口市','4005.6','nativeplace',4006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17417,'柳河县','4005.5','nativeplace',4006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17416,'辉南县','4005.4','nativeplace',4005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17415,'通化县','4005.3','nativeplace',4005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17414,'二道江区','4005.2','nativeplace',4005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17413,'东昌区','4005.1','nativeplace',4005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17412,'通化市','4005','nativeplace',4005,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17411,'东辽县','4004.4','nativeplace',4004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17410,'东丰县','4004.3','nativeplace',4004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17409,'西安区','4004.2','nativeplace',4004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17408,'龙山区','4004.1','nativeplace',4004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17407,'辽源市','4004','nativeplace',4004,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17406,'双辽市','4003.6','nativeplace',4004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17405,'公主岭市','4003.5','nativeplace',4004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17404,'伊通满族自治县','4003.4','nativeplace',4003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17403,'梨树县','4003.3','nativeplace',4003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17402,'铁东区','4003.2','nativeplace',4003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17401,'铁西区','4003.1','nativeplace',4003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17400,'四平市','4003','nativeplace',4003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17399,'磐石市','4002.9','nativeplace',4003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17398,'舒兰市','4002.8','nativeplace',4003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17397,'桦甸市','4002.7','nativeplace',4003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17396,'蛟河市','4002.6','nativeplace',4003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17395,'永吉县','4002.5','nativeplace',4003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17394,'丰满区','4002.4','nativeplace',4002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17393,'船营区','4002.3','nativeplace',4002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17392,'龙潭区','4002.2','nativeplace',4002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17391,'昌邑区','4002.1','nativeplace',4002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17390,'吉林市','4002','nativeplace',4002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17389,'德惠市','4001.10','nativeplace',4001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17388,'榆树市','4001.9','nativeplace',4002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17387,'九台市','4001.8','nativeplace',4002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17386,'农安县','4001.7','nativeplace',4002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17385,'双阳区','4001.6','nativeplace',4002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17384,'绿园区','4001.5','nativeplace',4002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17383,'二道区','4001.4','nativeplace',4001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17382,'朝阳区','4001.3','nativeplace',4001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17381,'宽城区','4001.2','nativeplace',4001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17380,'南关区','4001.1','nativeplace',4001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17379,'长春市','4001','nativeplace',4001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17378,'吉林省','4000','nativeplace',4000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17377,'兴城市','3514.6','nativeplace',3515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17376,'建昌县','3514.5','nativeplace',3515,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17375,'绥中县','3514.4','nativeplace',3514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17374,'南票区','3514.3','nativeplace',3514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17373,'龙港区','3514.2','nativeplace',3514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17372,'连山区','3514.1','nativeplace',3514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17371,'葫芦岛市','3514','nativeplace',3514,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17370,'凌源市','3513.7','nativeplace',3514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17369,'北票市','3513.6','nativeplace',3514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17368,'喀喇沁左翼蒙古族自治县','3513.5','nativeplace',3514,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17367,'建平县','3513.4','nativeplace',3513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17366,'朝阳县','3513.3','nativeplace',3513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17365,'龙城区','3513.2','nativeplace',3513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17364,'双塔区','3513.1','nativeplace',3513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17363,'朝阳市','3513','nativeplace',3513,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17362,'开原市','3512.7','nativeplace',3513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17361,'调兵山市','3512.6','nativeplace',3513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17360,'昌图县','3512.5','nativeplace',3513,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17359,'西丰县','3512.4','nativeplace',3512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17358,'铁岭县','3512.3','nativeplace',3512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17357,'清河区','3512.2','nativeplace',3512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17356,'银州区','3512.1','nativeplace',3512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17355,'铁岭市','3512','nativeplace',3512,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17354,'盘山县','3511.4','nativeplace',3511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17353,'大洼县','3511.3','nativeplace',3511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17352,'兴隆台区','3511.2','nativeplace',3511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17351,'双台子区','3511.1','nativeplace',3511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17350,'盘锦市','3511','nativeplace',3511,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17349,'灯塔市','3510.7','nativeplace',3511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17348,'辽阳县','3510.6','nativeplace',3511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17347,'太子河区','3510.5','nativeplace',3511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17346,'弓长岭区','3510.4','nativeplace',3510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17345,'宏伟区','3510.3','nativeplace',3510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17344,'文圣区','3510.2','nativeplace',3510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17343,'白塔区','3510.1','nativeplace',3510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17342,'辽阳市','3510','nativeplace',3510,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17341,'彰武县','3509.7','nativeplace',3510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17340,'阜新蒙古族自治县','3509.6','nativeplace',3510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17339,'细河区','3509.5','nativeplace',3510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17338,'清河门区','3509.4','nativeplace',3509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17337,'太平区','3509.3','nativeplace',3509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17336,'新邱区','3509.2','nativeplace',3509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17335,'海州区','3509.1','nativeplace',3509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17334,'阜新市','3509','nativeplace',3509,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17333,'大石桥市','3508.6','nativeplace',3509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17332,'盖州市','3508.5','nativeplace',3509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17331,'老边区','3508.4','nativeplace',3508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17330,'鲅鱼圈区','3508.3','nativeplace',3508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17329,'西市区','3508.2','nativeplace',3508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17328,'站前区','3508.1','nativeplace',3508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17327,'营口市','3508','nativeplace',3508,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17326,'北宁市','3507.7','nativeplace',3508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17325,'凌海市','3507.6','nativeplace',3508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17324,'义　县','3507.5','nativeplace',3508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17323,'黑山县','3507.4','nativeplace',3507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17322,'太和区','3507.3','nativeplace',3507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17321,'凌河区','3507.2','nativeplace',3507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17320,'古塔区','3507.1','nativeplace',3507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17319,'锦州市','3507','nativeplace',3507,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17318,'凤城市','3506.6','nativeplace',3507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17317,'东港市','3506.5','nativeplace',3507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17316,'宽甸满族自治县','3506.4','nativeplace',3506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17315,'振安区','3506.3','nativeplace',3506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17314,'振兴区','3506.2','nativeplace',3506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17313,'元宝区','3506.1','nativeplace',3506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17312,'丹东市','3506','nativeplace',3506,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17311,'桓仁满族自治县','3505.6','nativeplace',3506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17310,'本溪满族自治县','3505.5','nativeplace',3506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17309,'南芬区','3505.4','nativeplace',3505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17308,'明山区','3505.3','nativeplace',3505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17307,'溪湖区','3505.2','nativeplace',3505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17306,'平山区','3505.1','nativeplace',3505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17305,'本溪市','3505','nativeplace',3505,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17304,'清原满族自治县','3504.7','nativeplace',3505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17303,'新宾满族自治县','3504.6','nativeplace',3505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17302,'抚顺县','3504.5','nativeplace',3505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17301,'顺城区','3504.4','nativeplace',3504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17300,'望花区','3504.3','nativeplace',3504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17299,'东洲区','3504.2','nativeplace',3504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17298,'新抚区','3504.1','nativeplace',3504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17297,'抚顺市','3504','nativeplace',3504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17296,'海城市','3503.7','nativeplace',3504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17295,'岫岩满族自治县','3503.6','nativeplace',3504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17294,'台安县','3503.5','nativeplace',3504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17293,'千山区','3503.4','nativeplace',3503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17292,'立山区','3503.3','nativeplace',3503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17291,'铁西区','3503.2','nativeplace',3503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17290,'铁东区','3503.1','nativeplace',3503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17289,'鞍山市','3503','nativeplace',3503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17288,'庄河市','3502.10','nativeplace',3502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17287,'普兰店市','3502.9','nativeplace',3503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17286,'瓦房店市','3502.8','nativeplace',3503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17285,'长海县','3502.7','nativeplace',3503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17284,'金州区','3502.6','nativeplace',3503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17283,'旅顺口区','3502.5','nativeplace',3503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17282,'甘井子区','3502.4','nativeplace',3502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17281,'沙河口区','3502.3','nativeplace',3502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17280,'西岗区','3502.2','nativeplace',3502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17279,'中山区','3502.1','nativeplace',3502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17278,'大连市','3502','nativeplace',3502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17277,'新民市','3501.13','nativeplace',3501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17276,'法库县','3501.12','nativeplace',3501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17275,'康平县','3501.11','nativeplace',3501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17274,'辽中县','3501.10','nativeplace',3501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17273,'于洪区','3501.9','nativeplace',3502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17272,'新城子区','3501.8','nativeplace',3502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17271,'东陵区','3501.7','nativeplace',3502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17270,'苏家屯区','3501.6','nativeplace',3502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17269,'铁西区','3501.5','nativeplace',3502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17268,'皇姑区','3501.4','nativeplace',3501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17267,'大东区','3501.3','nativeplace',3501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17266,'沈河区','3501.2','nativeplace',3501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17265,'和平区','3501.1','nativeplace',3501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17264,'沈阳市','3501','nativeplace',3501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17263,'辽宁省','3500','nativeplace',3500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17262,'额济纳旗','3012.3','nativeplace',3012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17261,'阿拉善右旗','3012.2','nativeplace',3012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17260,'阿拉善左旗','3012.1','nativeplace',3012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17259,'阿拉善盟','3012','nativeplace',3012,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17258,'多伦县','3011.12','nativeplace',3011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17257,'正蓝旗','3011.11','nativeplace',3011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17256,'正镶白旗','3011.10','nativeplace',3011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17255,'镶黄旗','3011.9','nativeplace',3012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17254,'太仆寺旗','3011.8','nativeplace',3012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17253,'西乌珠穆沁旗','3011.7','nativeplace',3012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17252,'东乌珠穆沁旗','3011.6','nativeplace',3012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17251,'苏尼特右旗','3011.5','nativeplace',3012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17250,'苏尼特左旗','3011.4','nativeplace',3011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17249,'阿巴嘎旗','3011.3','nativeplace',3011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17248,'锡林浩特市','3011.2','nativeplace',3011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17247,'二连浩特市','3011.1','nativeplace',3011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17246,'锡林郭勒盟','3011','nativeplace',3011,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17245,'突泉县','3010.6','nativeplace',3011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17244,'扎赉特旗','3010.5','nativeplace',3011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17243,'科尔沁右翼中旗','3010.4','nativeplace',3010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17242,'科尔沁右翼前旗','3010.3','nativeplace',3010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17241,'阿尔山市','3010.2','nativeplace',3010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17240,'乌兰浩特市','3010.1','nativeplace',3010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17239,'兴安盟','3010','nativeplace',3010,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17238,'丰镇市','3009.11','nativeplace',3009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17237,'四子王旗','3009.10','nativeplace',3009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17236,'察哈尔右翼后旗','3009.9','nativeplace',3010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17235,'察哈尔右翼中旗','3009.8','nativeplace',3010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17234,'察哈尔右翼前旗','3009.7','nativeplace',3010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17233,'凉城县','3009.6','nativeplace',3010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17232,'兴和县','3009.5','nativeplace',3010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17231,'商都县','3009.4','nativeplace',3009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17230,'化德县','3009.3','nativeplace',3009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17229,'卓资县','3009.2','nativeplace',3009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17228,'集宁区','3009.1','nativeplace',3009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17227,'乌兰察布市','3009','nativeplace',3009,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17226,'杭锦后旗','3008.7','nativeplace',3009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17225,'乌拉特后旗','3008.6','nativeplace',3009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17224,'乌拉特中旗','3008.5','nativeplace',3009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17223,'乌拉特前旗','3008.4','nativeplace',3008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17222,'磴口县','3008.3','nativeplace',3008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17221,'五原县','3008.2','nativeplace',3008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17220,'临河区','3008.1','nativeplace',3008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17219,'巴彦淖尔市','3008','nativeplace',3008,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17218,'根河市','3007.13','nativeplace',3007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17217,'额尔古纳市','3007.12','nativeplace',3007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17216,'扎兰屯市','3007.11','nativeplace',3007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17215,'牙克石市','3007.10','nativeplace',3007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17214,'满洲里市','3007.9','nativeplace',3008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17213,'新巴尔虎右旗','3007.8','nativeplace',3008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17212,'新巴尔虎左旗','3007.7','nativeplace',3008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17211,'陈巴尔虎旗','3007.6','nativeplace',3008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17210,'鄂温克族自治旗','3007.5','nativeplace',3008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17209,'鄂伦春自治旗','3007.4','nativeplace',3007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17208,'莫力达瓦达斡尔族自治旗','3007.3','nativeplace',3007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17207,'阿荣旗','3007.2','nativeplace',3007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17206,'海拉尔区','3007.1','nativeplace',3007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17205,'呼伦贝尔市','3007','nativeplace',3007,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17204,'伊金霍洛旗','3006.8','nativeplace',3007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17203,'乌审旗','3006.7','nativeplace',3007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17202,'杭锦旗','3006.6','nativeplace',3007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17201,'鄂托克旗','3006.5','nativeplace',3007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17200,'鄂托克前旗','3006.4','nativeplace',3006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17199,'准格尔旗','3006.3','nativeplace',3006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17198,'达拉特旗','3006.2','nativeplace',3006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17197,'东胜区','3006.1','nativeplace',3006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17196,'鄂尔多斯市','3006','nativeplace',3006,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17195,'霍林郭勒市','3005.8','nativeplace',3006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17194,'扎鲁特旗','3005.7','nativeplace',3006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17193,'奈曼旗','3005.6','nativeplace',3006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17192,'库伦旗','3005.5','nativeplace',3006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17191,'开鲁县','3005.4','nativeplace',3005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17190,'科尔沁左翼后旗','3005.3','nativeplace',3005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17189,'科尔沁左翼中旗','3005.2','nativeplace',3005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17188,'科尔沁区','3005.1','nativeplace',3005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17187,'通辽市','3005','nativeplace',3005,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17186,'敖汉旗','3004.12','nativeplace',3004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17185,'宁城县','3004.11','nativeplace',3004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17184,'喀喇沁旗','3004.10','nativeplace',3004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17183,'翁牛特旗','3004.9','nativeplace',3005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17182,'克什克腾旗','3004.8','nativeplace',3005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17181,'林西县','3004.7','nativeplace',3005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17180,'巴林右旗','3004.6','nativeplace',3005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17179,'巴林左旗','3004.5','nativeplace',3005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17178,'阿鲁科尔沁旗','3004.4','nativeplace',3004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17177,'松山区','3004.3','nativeplace',3004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17176,'元宝山区','3004.2','nativeplace',3004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17175,'红山区','3004.1','nativeplace',3004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17174,'赤峰市','3004','nativeplace',3004,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17173,'乌达区','3003.3','nativeplace',3003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17172,'海南区','3003.2','nativeplace',3003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17171,'海勃湾区','3003.1','nativeplace',3003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17170,'乌海市','3003','nativeplace',3003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17169,'达尔罕茂明安联合旗','3002.9','nativeplace',3003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17168,'固阳县','3002.8','nativeplace',3003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17167,'土默特右旗','3002.7','nativeplace',3003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17166,'九原区','3002.6','nativeplace',3003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17165,'白云矿区','3002.5','nativeplace',3003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17164,'石拐区','3002.4','nativeplace',3002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17163,'青山区','3002.3','nativeplace',3002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17162,'昆都仑区','3002.2','nativeplace',3002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17161,'东河区','3002.1','nativeplace',3002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17160,'包头市','3002','nativeplace',3002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17159,'武川县','3001.9','nativeplace',3002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17158,'清水河县','3001.8','nativeplace',3002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17157,'和林格尔县','3001.7','nativeplace',3002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17156,'托克托县','3001.6','nativeplace',3002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17155,'土默特左旗','3001.5','nativeplace',3002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17154,'赛罕区','3001.4','nativeplace',3001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17153,'玉泉区','3001.3','nativeplace',3001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17152,'回民区','3001.2','nativeplace',3001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17151,'新城区','3001.1','nativeplace',3001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17150,'呼和浩特市','3001','nativeplace',3001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17149,'内蒙古自治区','3000','nativeplace',3000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17148,'汾阳市','2511.13','nativeplace',2511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17147,'孝义市','2511.12','nativeplace',2511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17146,'交口县','2511.11','nativeplace',2511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17145,'中阳县','2511.10','nativeplace',2511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17144,'方山县','2511.9','nativeplace',2512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17143,'岚　县','2511.8','nativeplace',2512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17142,'石楼县','2511.7','nativeplace',2512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17141,'柳林县','2511.6','nativeplace',2512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17140,'临　县','2511.5','nativeplace',2512,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17139,'兴　县','2511.4','nativeplace',2511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17138,'交城县','2511.3','nativeplace',2511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17137,'文水县','2511.2','nativeplace',2511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17136,'离石区','2511.1','nativeplace',2511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17135,'吕梁市','2511','nativeplace',2511,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17134,'霍州市','2510.17','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17133,'侯马市','2510.16','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17132,'汾西县','2510.15','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17131,'蒲　县','2510.14','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17130,'永和县','2510.13','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17129,'隰　县','2510.12','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17128,'大宁县','2510.11','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17127,'乡宁县','2510.10','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17126,'吉　县','2510.9','nativeplace',2511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17125,'浮山县','2510.8','nativeplace',2511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17124,'安泽县','2510.7','nativeplace',2511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17123,'古　县','2510.6','nativeplace',2511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17122,'洪洞县','2510.5','nativeplace',2511,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17121,'襄汾县','2510.4','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17120,'翼城县','2510.3','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17119,'曲沃县','2510.2','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17118,'尧都区','2510.1','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17117,'临汾市','2510','nativeplace',2510,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17116,'原平市','2509.14','nativeplace',2509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17115,'偏关县','2509.13','nativeplace',2509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17114,'保德县','2509.12','nativeplace',2509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17113,'河曲县','2509.11','nativeplace',2509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17112,'岢岚县','2509.10','nativeplace',2509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17111,'五寨县','2509.9','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17110,'神池县','2509.8','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17109,'静乐县','2509.7','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17108,'宁武县','2509.6','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17107,'繁峙县','2509.5','nativeplace',2510,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17106,'代　县','2509.4','nativeplace',2509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17105,'五台县','2509.3','nativeplace',2509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17104,'定襄县','2509.2','nativeplace',2509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17103,'忻府区','2509.1','nativeplace',2509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17102,'忻州市','2509','nativeplace',2509,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17101,'河津市','2508.13','nativeplace',2508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17100,'永济市','2508.12','nativeplace',2508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17099,'芮城县','2508.11','nativeplace',2508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17098,'平陆县','2508.10','nativeplace',2508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17097,'夏　县','2508.9','nativeplace',2509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17096,'垣曲县','2508.8','nativeplace',2509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17095,'绛　县','2508.7','nativeplace',2509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17094,'新绛县','2508.6','nativeplace',2509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17093,'稷山县','2508.5','nativeplace',2509,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17092,'闻喜县','2508.4','nativeplace',2508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17091,'万荣县','2508.3','nativeplace',2508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17090,'临猗县','2508.2','nativeplace',2508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17089,'盐湖区','2508.1','nativeplace',2508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17088,'运城市','2508','nativeplace',2508,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17087,'介休市','2507.11','nativeplace',2507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17086,'灵石县','2507.10','nativeplace',2507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17085,'平遥县','2507.9','nativeplace',2508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17084,'祁　县','2507.8','nativeplace',2508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17083,'太谷县','2507.7','nativeplace',2508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17082,'寿阳县','2507.6','nativeplace',2508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17081,'昔阳县','2507.5','nativeplace',2508,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17080,'和顺县','2507.4','nativeplace',2507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17079,'左权县','2507.3','nativeplace',2507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17078,'榆社县','2507.2','nativeplace',2507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17077,'榆次区','2507.1','nativeplace',2507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17076,'晋中市','2507','nativeplace',2507,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17075,'怀仁县','2506.6','nativeplace',2507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17074,'右玉县','2506.5','nativeplace',2507,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17073,'应　县','2506.4','nativeplace',2506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17072,'山阴县','2506.3','nativeplace',2506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17071,'平鲁区','2506.2','nativeplace',2506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17070,'朔城区','2506.1','nativeplace',2506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17069,'朔州市','2506','nativeplace',2506,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17068,'高平市','2505.6','nativeplace',2506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17067,'泽州县','2505.5','nativeplace',2506,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17066,'陵川县','2505.4','nativeplace',2505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17065,'阳城县','2505.3','nativeplace',2505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17064,'沁水县','2505.2','nativeplace',2505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17063,'城　区','2505.1','nativeplace',2505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17062,'晋城市','2505','nativeplace',2505,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17061,'潞城市','2504.13','nativeplace',2504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17060,'沁源县','2504.12','nativeplace',2504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17059,'沁　县','2504.11','nativeplace',2504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17058,'武乡县','2504.10','nativeplace',2504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17057,'长子县','2504.9','nativeplace',2505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17056,'壶关县','2504.8','nativeplace',2505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17055,'黎城县','2504.7','nativeplace',2505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17054,'平顺县','2504.6','nativeplace',2505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17053,'屯留县','2504.5','nativeplace',2505,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17052,'襄垣县','2504.4','nativeplace',2504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17051,'长治县','2504.3','nativeplace',2504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17050,'郊　区','2504.2','nativeplace',2504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17049,'城　区','2504.1','nativeplace',2504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17048,'长治市','2504','nativeplace',2504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17047,'盂　县','2503.5','nativeplace',2504,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17046,'平定县','2503.4','nativeplace',2503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17045,'郊　区','2503.3','nativeplace',2503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17044,'矿　区','2503.2','nativeplace',2503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17043,'城　区','2503.1','nativeplace',2503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17042,'阳泉市','2503','nativeplace',2503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17041,'南郊区','2502.12','nativeplace',2502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17040,'矿　区','2502.11','nativeplace',2502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17039,'城　区','2502.10','nativeplace',2502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17038,'大同县','2502.9','nativeplace',2503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17037,'左云县','2502.8','nativeplace',2503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17036,'浑源县','2502.7','nativeplace',2503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17035,'灵丘县','2502.6','nativeplace',2503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17034,'广灵县','2502.5','nativeplace',2503,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17033,'天镇县','2502.4','nativeplace',2502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17032,'阳高县','2502.3','nativeplace',2502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17031,'新荣区','2502.2','nativeplace',2502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17030,'南郊区','2502.1','nativeplace',2502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17029,'大同市','2502','nativeplace',2502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17028,'古交市','2501.10','nativeplace',2501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17027,'娄烦县','2501.9','nativeplace',2502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17026,'阳曲县','2501.8','nativeplace',2502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17025,'清徐县','2501.7','nativeplace',2502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17024,'晋源区','2501.6','nativeplace',2502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17023,'万柏林区','2501.5','nativeplace',2502,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17022,'尖草坪区','2501.4','nativeplace',2501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17021,'杏花岭区','2501.3','nativeplace',2501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17020,'迎泽区','2501.2','nativeplace',2501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17019,'小店区','2501.1','nativeplace',2501,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17018,'太原市','2501','nativeplace',2501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17017,'山西省','2500','nativeplace',2500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17016,'河间市','2011.16','nativeplace',2011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17015,'黄骅市','2011.15','nativeplace',2011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17014,'任丘市','2011.14','nativeplace',2011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17013,'泊头市','2011.13','nativeplace',2011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17012,'孟村回族自治县','2011.12','nativeplace',2011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17011,'献　县','2011.11','nativeplace',2011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17010,'吴桥县','2011.10','nativeplace',2011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17009,'南皮县','2011.9','nativeplace',2012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17008,'肃宁县','2011.8','nativeplace',2012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17007,'盐山县','2011.7','nativeplace',2012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17006,'海兴县','2011.6','nativeplace',2012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17005,'东光县','2011.5','nativeplace',2012,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17004,'青　县','2011.4','nativeplace',2011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17003,'沧　县','2011.3','nativeplace',2011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17002,'运河区','2011.2','nativeplace',2011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17001,'新华区','2011.1','nativeplace',2011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (17000,'沧州市','2011','nativeplace',2011,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16999,'深州市','2010.11','nativeplace',2010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16998,'冀州市','2010.10','nativeplace',2010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16997,'阜城县','2010.9','nativeplace',2011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16996,'景　县','2010.8','nativeplace',2011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16995,'故城县','2010.7','nativeplace',2011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16994,'安平县','2010.6','nativeplace',2011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16993,'饶阳县','2010.5','nativeplace',2011,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16992,'武强县','2010.4','nativeplace',2010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16991,'武邑县','2010.3','nativeplace',2010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16990,'枣强县','2010.2','nativeplace',2010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16989,'桃城区','2010.1','nativeplace',2010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16988,'衡水市','2010','nativeplace',2010,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16987,'三河市','2009.10','nativeplace',2009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16986,'霸州市','2009.9','nativeplace',2010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16985,'大厂回族自治县','2009.8','nativeplace',2010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16984,'文安县','2009.7','nativeplace',2010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16983,'大城县','2009.6','nativeplace',2010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16982,'香河县','2009.5','nativeplace',2010,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16981,'永清县','2009.4','nativeplace',2009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16980,'固安县','2009.3','nativeplace',2009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16979,'广阳区','2009.2','nativeplace',2009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16978,'安次区','2009.1','nativeplace',2009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16977,'廊坊市','2009','nativeplace',2009,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16976,' 围场满族蒙古族自治县','2008.11','nativeplace',2008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16975,'宽城满族自治','2008.10','nativeplace',2008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16974,'丰宁满族自治县','2008.9','nativeplace',2009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16973,'隆化县','2008.8','nativeplace',2009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16972,'滦平县','2008.7','nativeplace',2009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16971,'平泉县','2008.6','nativeplace',2009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16970,'兴隆县','2008.5','nativeplace',2009,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16969,'承德县','2008.4','nativeplace',2008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16968,'鹰手营子矿区','2008.3','nativeplace',2008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16967,'双滦区','2008.2','nativeplace',2008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16966,'双桥区','2008.1','nativeplace',2008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16965,'承德市','2008','nativeplace',2008,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16964,'崇礼县','2007.17','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16963,'赤城县','2007.16','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16962,'涿鹿县','2007.15','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16961,'怀来县','2007.14','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16960,'万全县','2007.13','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16959,'怀安县','2007.12','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16958,'阳原县','2007.11','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16957,'蔚　县','2007.10','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16956,'尚义县','2007.9','nativeplace',2008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16955,'沽源县','2007.8','nativeplace',2008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16954,'康保县','2007.7','nativeplace',2008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16953,'张北县','2007.6','nativeplace',2008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16952,'宣化县','2007.5','nativeplace',2008,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16951,'下花园区','2007.4','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16950,'宣化区','2007.3','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16949,'桥西区','2007.2','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16948,'桥东区','2007.1','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16947,'张家口市','2007','nativeplace',2007,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16946,'高碑店市','2006.25','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16945,'安国市','2006.24','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16944,'定州市','2006.23','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16943,'涿州市','2006.22','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16942,'雄　县','2006.21','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16941,'博野县','2006.20','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16940,'顺平县','2006.19','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16939,'蠡　县','2006.18','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16938,'曲阳县','2006.17','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16937,'易县','2006.16','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16936,'安新县','2006.15','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16935,'望都县','2006.14','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16934,'涞源县','2006.13','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16933,'容城县','2006.12','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16932,'高阳县','2006.11','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16931,'唐　县','2006.10','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16930,'定兴县','2006.9','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16929,'徐水县','2006.8','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16928,'阜平县','2006.7','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16927,'涞水县','2006.6','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16926,'清苑县','2006.5','nativeplace',2007,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16925,'满城县','2006.4','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16924,'南市区','2006.3','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16923,'北市区','2006.2','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16922,'新市区','2006.1','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16921,'保定市','2006','nativeplace',2006,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16920,'沙河市','2005.19','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16919,'南宫市','2005.18','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16918,'临西县','2005.17','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16917,'清河县','2005.16','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16916,'威　县','2005.15','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16915,'平乡县','2005.14','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16914,'广宗县','2005.13','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16913,'新河县','2005.12','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16912,'巨鹿县','2005.11','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16911,'宁晋县','2005.10','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16910,'南和县','2005.9','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16909,'任　县','2005.8','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16908,'隆尧县','2005.7','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16907,'柏乡县','2005.6','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16906,'内丘县','2005.5','nativeplace',2006,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16905,'临城县','2005.4','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16904,'邢台县','2005.3','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16903,'桥西区','2005.2','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16902,'桥东区','2005.1','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16901,'邢台市','2005','nativeplace',2005,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16900,'武安市','2004.20','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16899,'曲周县','2004.19','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16898,'魏县','2004.18','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16897,'馆陶县','2004.17','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16896,'广平县','2004.16','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16895,'鸡泽县','2004.15','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16894,'邱　县','2004.14','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16893,'永年县','2004.13','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16892,'肥乡县','2004.12','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16891,'磁　县','2004.11','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16890,'涉　县','2004.10','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16889,'大名县','2004.9','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16888,'成安县','2004.8','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16887,'临漳县','2004.7','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16886,'邯郸县','2004.6','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16885,'峰峰矿区','2004.5','nativeplace',2005,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16884,'复兴区','2004.4','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16883,'丛台区','2004.3','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16882,'邯山区','2004.2','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16881,'市辖区','2004.1','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16880,'邯郸市','2004','nativeplace',2004,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16879,'卢龙县','2003.7','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16878,'抚宁县','2003.6','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16877,'昌黎县','2003.5','nativeplace',2004,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16876,'青龙满族自治县','2003.4','nativeplace',2003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16875,'北戴河区','2003.3','nativeplace',2003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16874,'山海关区','2003.2','nativeplace',2003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16873,'海港区','2003.1','nativeplace',2003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16872,'秦皇岛市','2003','nativeplace',2003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16871,'迁安市','2002.14','nativeplace',2002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16870,'遵化市','2002.13','nativeplace',2002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16869,'唐海县','2002.12','nativeplace',2002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16868,'玉田县','2002.11','nativeplace',2002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16867,'迁西县','2002.10','nativeplace',2002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16866,'乐亭县','2002.9','nativeplace',2003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16865,'滦南县','2002.8','nativeplace',2003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16864,'滦　县','2002.7','nativeplace',2003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16863,'丰润区','2002.6','nativeplace',2003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16862,'丰南区','2002.5','nativeplace',2003,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16861,'开平区','2002.4','nativeplace',2002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16860,'古冶区','2002.3','nativeplace',2002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16859,'路北区','2002.2','nativeplace',2002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16858,'路南区','2002.1','nativeplace',2002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16857,'唐山市','2002','nativeplace',2002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16856,'鹿泉市','2001.23','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16855,'新乐市','2001.22','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16854,'晋州市','2001.21','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16853,'藁城市','2001.20','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16852,'辛集市','2001.19','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16851,'赵　县','2001.18','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16850,'元氏县','2001.17','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16849,'平山县','2001.16','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16848,'无极县','2001.15','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16847,'赞皇县','2001.14','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16846,'深泽县','2001.13','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16845,'高邑县','2001.12','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16844,'灵寿县','2001.11','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16843,'行唐县','2001.10','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16842,'栾城县','2001.9','nativeplace',2002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16841,'正定县','2001.8','nativeplace',2002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16840,'井陉县','2001.7','nativeplace',2002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16839,'裕华区','2001.6','nativeplace',2002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16838,'井陉矿区','2001.5','nativeplace',2002,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16837,'新华区','2001.4','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16836,'桥西区','2001.3','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16835,'桥东区','2001.2','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16834,'长安区','2001.1','nativeplace',2001,2);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16833,'石家庄市','2001','nativeplace',2001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16832,'河北省','2000','nativeplace',2000,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16831,'蓟　县','1518','nativeplace',1518,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16830,'静海县','1517','nativeplace',1517,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16829,'宁河县','1516','nativeplace',1516,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16828,'宝坻区','1515','nativeplace',1515,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16827,'武清区','1514','nativeplace',1514,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16826,'北辰区','1513','nativeplace',1513,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16825,'津南区','1512','nativeplace',1512,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16824,'西青区','1511','nativeplace',1511,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16823,'东丽区','1510','nativeplace',1510,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16822,'大港区','1509','nativeplace',1509,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16821,'汉沽区','1508','nativeplace',1508,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16820,'塘沽区','1507','nativeplace',1507,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16819,'红桥区','1506','nativeplace',1506,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16818,'河北区','1505','nativeplace',1505,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16817,'南开区','1504','nativeplace',1504,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16816,'河西区','1503','nativeplace',1503,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16815,'河东区','1502','nativeplace',1502,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16814,'和平区','1501','nativeplace',1501,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16813,'天津市','1500','nativeplace',1500,0);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16812,'延庆县','1018','nativeplace',1018,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16811,'密云县','1017','nativeplace',1017,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16810,'平谷区','1016','nativeplace',1016,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16809,'怀柔区','1015','nativeplace',1015,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16808,'大兴区','1014','nativeplace',1014,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16807,'昌平区','1013','nativeplace',1013,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16806,'顺义区','1012','nativeplace',1012,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16805,'通州区','1011','nativeplace',1011,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16804,'房山区','1010','nativeplace',1010,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16803,'门头沟区','1009','nativeplace',1009,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16802,'海淀区','1008','nativeplace',1008,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16801,'石景山区','1007','nativeplace',1007,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16800,'丰台区','1006','nativeplace',1006,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16799,'朝阳区','1005','nativeplace',1005,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16798,'宣武区','1004','nativeplace',1004,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16797,'崇文区','1003','nativeplace',1003,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16796,'西城区','1002','nativeplace',1002,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16795,'东城区','1001','nativeplace',1001,1);
insert  into `dede_sys_enum`(`id`,`ename`,`evalue`,`egroup`,`disorder`,`issign`) values (16794,'北京市','1000','nativeplace',1000,0);

/*Table structure for table `dede_sys_module` */

DROP TABLE IF EXISTS `dede_sys_module`;

CREATE TABLE `dede_sys_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hashcode` char(32) NOT NULL DEFAULT '',
  `modname` varchar(30) NOT NULL DEFAULT '',
  `indexname` varchar(20) NOT NULL DEFAULT '',
  `indexurl` varchar(30) NOT NULL DEFAULT '',
  `ismember` tinyint(4) NOT NULL DEFAULT '1',
  `menustring` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `dede_sys_module` */

insert  into `dede_sys_module`(`id`,`hashcode`,`modname`,`indexname`,`indexurl`,`ismember`,`menustring`) values (1,'0cce60bc0238aa03804682c801584991','百度新闻','','',0,'');
insert  into `dede_sys_module`(`id`,`hashcode`,`modname`,`indexname`,`indexurl`,`ismember`,`menustring`) values (2,'1f35620fb42d452fa2bdc1dee1690f92','文件管理器','','',0,'');
insert  into `dede_sys_module`(`id`,`hashcode`,`modname`,`indexname`,`indexurl`,`ismember`,`menustring`) values (4,'b437d85a7a7bc778c9c79b5ec36ab9aa','友情链接','','',0,'');
insert  into `dede_sys_module`(`id`,`hashcode`,`modname`,`indexname`,`indexurl`,`ismember`,`menustring`) values (5,'acb8b88eb4a6d4bfc375c18534f9439e','投票模块','','',0,'');
insert  into `dede_sys_module`(`id`,`hashcode`,`modname`,`indexname`,`indexurl`,`ismember`,`menustring`) values (6,'572606600345b1a4bb8c810bbae434cc','挑错管理','','',0,'');
insert  into `dede_sys_module`(`id`,`hashcode`,`modname`,`indexname`,`indexurl`,`ismember`,`menustring`) values (7,'533c5b843ded8752b9857cc7c8e5b455','得德广告模块','','',0,'<m:top name=\'德得广告\' display=\'block\'>\r\n<m:item name=\'德得模块\' link=\'mda_main.php\' rank=\'plus_广告管理\' target=\'main\'/>\r\n<m:item name=\'广告管理\' link=\'mda_main.php?dopost=place\' rank=\'plus_广告管理\' target=\'main\'/>\r\n<m:item name=\'查看报表\' link=\'mda_main.php?dopost=report\' rank=\'plus_广告管理\' target=\'main\'/>\r\n<m:item name=\'结算中心\' link=\'mda_main.php?dopost=account\' rank=\'plus_广告管理\' target=\'main\'/>\r\n<m:item name=\'德得设置\' link=\'mda_main.php?dopost=setting\' rank=\'plus_广告管理\' target=\'main\'/>\r\n</m:top>');
insert  into `dede_sys_module`(`id`,`hashcode`,`modname`,`indexname`,`indexurl`,`ismember`,`menustring`) values (8,'be722dbfa3cb3cb5628aab2d767ff62e','问答模块','问答','../ask/?ct=myask',1,'<m:top name=\'问答管理\' c=\'6,\' display=\'block\' rank=\'\'>\r\n  <m:item name=\'栏目管理\' link=\'../ask/admin.php?ct=asktype\' rank=\'\' target=\'main\' />\r\n  <m:item name=\'问题管理\' link=\'../ask/admin.php?ct=issue\' rank=\'\' target=\'main\' />\r\n  <m:item name=\'答案管理\' link=\'../ask/admin.php?ct=answer\' rank=\'\' target=\'main\' />\r\n  <m:item name=\'幻灯片管理\' link=\'../ask/admin.php?ct=slide\' rank=\'\' target=\'main\' />\r\n</m:top>');

/*Table structure for table `dede_sys_set` */

DROP TABLE IF EXISTS `dede_sys_set`;

CREATE TABLE `dede_sys_set` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sname` char(20) NOT NULL DEFAULT '',
  `items` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `dede_sys_set` */

insert  into `dede_sys_set`(`id`,`sname`,`items`) values (1,'nature','性格外向,性格内向,活泼开朗,沉默寡言,幽默,稳重,轻浮,冲动,坚强,脆弱,幼稚,成熟,能说会道,自私,真诚,独立,依赖,任性,自负,自卑,温柔体贴,神经质,拜金,小心翼翼,暴躁,倔强,逆来顺受,不拘小节,婆婆妈妈,交际广泛,豪爽,害羞,狡猾善变,耿直,虚伪,乐观向上,悲观消极,郁郁寡欢,孤僻,难以琢磨,胆小怕事,敢做敢当,助人为乐,老实,守旧,敏感,迟钝,武断,果断,优柔寡断,暴力倾向,刻薄,损人利己,附庸风雅,时喜时悲,患得患失,快言快语,豪放不羁,多愁善感,循规蹈矩');
insert  into `dede_sys_set`(`id`,`sname`,`items`) values (2,'language','普通话,上海话,广东话,英语,日语,韩语,法语,意大利语,德语,西班牙语,俄语,阿拉伯语');

/*Table structure for table `dede_sys_task` */

DROP TABLE IF EXISTS `dede_sys_task`;

CREATE TABLE `dede_sys_task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taskname` varchar(50) NOT NULL,
  `dourl` varchar(100) NOT NULL,
  `islock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `runtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `runtime` varchar(10) DEFAULT '0000',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `freq` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `lastrun` int(10) unsigned NOT NULL DEFAULT '0',
  `description` varchar(250) NOT NULL,
  `parameter` text,
  `settime` int(10) unsigned NOT NULL DEFAULT '0',
  `sta` enum('运行','成功','失败') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_sys_task` */

/*Table structure for table `dede_sysconfig` */

DROP TABLE IF EXISTS `dede_sysconfig`;

CREATE TABLE `dede_sysconfig` (
  `aid` smallint(8) unsigned NOT NULL DEFAULT '0',
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'string',
  `value` text,
  PRIMARY KEY (`varname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_sysconfig` */

insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (1,'cfg_basehost','站点根网址',1,'string','http://localhost');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (2,'cfg_cmspath','DedeCMS安装目录',2,'string','/de');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (3,'cfg_cookie_encode','cookie加密码',2,'string','yx4mLrKtvFkILO8b2PVrcIFPxGiN');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (4,'cfg_indexurl','网页主页链接',1,'string','/de');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (5,'cfg_backup_dir','数据备份目录（在data目录内）',2,'string','backupdata');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (6,'cfg_indexname','主页链接名',1,'string','主页');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (7,'cfg_webname','网站名称',1,'string','我的网站');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (8,'cfg_adminemail','网站发信EMAIL',2,'string','admin@dedecms.com');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (9,'cfg_html_editor','Html编辑器（ckeditor,需要fck的用户可以去官网下载）',2,'string','ckeditor');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (10,'cfg_arcdir','文档HTML默认保存路径',1,'string','/a');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (11,'cfg_medias_dir','图片/上传文件默认路径',1,'string','/uploads');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (12,'cfg_ddimg_width','缩略图默认宽度',3,'number','240');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (13,'cfg_ddimg_height','缩略图默认高度',3,'number','180');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (63,'cfg_album_width','图集默认显示图片的大小',3,'number','800');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (15,'cfg_imgtype','图片浏览器文件类型',3,'string','jpg|gif|png');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (16,'cfg_softtype','允许上传的软件类型',3,'bstring','zip|gz|rar|iso|doc|xsl|ppt|wps');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (17,'cfg_mediatype','允许的多媒体文件类型',3,'bstring','swf|mpg|mp3|rm|rmvb|wmv|wma|wav|mid|mov');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (18,'cfg_specnote','专题的最大节点数',2,'number','6');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (19,'cfg_list_symbol','栏目位置的间隔符号',2,'string',' > ');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (20,'cfg_notallowstr','禁用词语（系统将直接停止用户动作）<br/>用|分开，但不要在结尾加|',5,'bstring','非典|艾滋病|阳痿');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (21,'cfg_feedbackcheck','评论及留言(是/否)需审核',5,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (22,'cfg_keyword_replace','关键字替换(是/否)使用本功能会影响HTML生成速度',2,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (23,'cfg_fck_xhtml','编辑器(是/否)使用XHTML',1,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (24,'cfg_df_style','模板默认风格',1,'string','default');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (25,'cfg_multi_site','(是/否)支持多站点，开启此项后附件、栏目连接、arclist内容启用绝对网址',2,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (58,'cfg_rm_remote','远程图片本地化',7,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (27,'cfg_dede_log','(是/否)开启管理日志',2,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (28,'cfg_powerby','网站版权信息',1,'bstring','Copyright &copy; 2002-2017 DEDECMS. 织梦科技 版权所有');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (722,'cfg_jump_once','跳转网址是否直接跳转？（否则显示中转页）',7,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (723,'cfg_task_pwd','系统计划任务客户端许可密码<br/>(需要客户端，通常不会太重要)',7,'string','');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (29,'cfg_arcsptitle','(是/否)开启分页标题，开启会影响HTML生成速度',6,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (30,'cfg_arcautosp','(是/否)开启长文章自动分页',6,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (31,'cfg_arcautosp_size','文章自动分页大小（单位: K）',6,'number','5');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (32,'cfg_auot_description','自动摘要长度（0-250，0表示不启用）',7,'number','240');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (33,'cfg_ftp_host','FTP主机',2,'string','');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (34,'cfg_ftp_port','FTP端口',2,'number','21');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (35,'cfg_ftp_user','FTP用户名',2,'string','');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (36,'cfg_ftp_pwd','FTP密码',2,'string','');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (37,'cfg_ftp_root','网站根在FTP中的目录',2,'string','/');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (38,'cfg_ftp_mkdir','是否强制用FTP创建目录',2,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (39,'cfg_feedback_ck','评论加验证码重确认',5,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (40,'cfg_list_son','上级列表是否包含子类内容',6,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (41,'cfg_mb_open','是否开启会员功能',4,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (42,'cfg_mb_album','是否开启会员图集功能',4,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (43,'cfg_mb_upload','是否允许会员上传非图片附件',4,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (44,'cfg_mb_upload_size','会员上传文件大小(K)',4,'number','1024');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (45,'cfg_mb_sendall','是否开放会员对自定义模型投稿',4,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (46,'cfg_mb_rmdown','是否把会员指定的远程文档下载到本地',4,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (47,'cfg_cli_time','服务器时区设置',2,'number','8');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (48,'cfg_mb_addontype','会员附件许可的类型',4,'bstring','swf|mpg|mp3|rm|rmvb|wmv|wma|wav|mid|mov|zip|rar|doc|xsl|ppt|wps');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (49,'cfg_mb_max','会员附件总大小限制(MB)',4,'number','500');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (20,'cfg_replacestr','替换词语（词语会被替换成***）<br/>用|分开，但不要在结尾加|',5,'bstring','她妈|它妈|他妈|你妈|去死|贱人');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (719,'cfg_makeindex','发布文章后马上更新网站主页',6,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (51,'cfg_keyword_like','使用关键词关连文章',6,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (52,'cfg_index_max','网站主页调用函数最大索引文档数<br>不适用于经常单栏目采集过多内容的网站<br>不启用本项此值设置为0即可',6,'number','10000');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (53,'cfg_index_cache','arclist标签调用缓存<br />(0 不启用，大于0值为多少秒)',6,'number','86400');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (54,'cfg_tplcache','是否启用模板缓存',6,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (55,'cfg_tplcache_dir','模板缓存目录',6,'string','/data/tplcache');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (56,'cfg_makesign_cache','发布/修改单个文档是否使用调用缓存',6,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (59,'cfg_arc_dellink','删除非站内链接',7,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (60,'cfg_arc_autopic','提取第一张图片作为缩略图',7,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (61,'cfg_arc_autokeyword','自动提取关键字',7,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (62,'cfg_title_maxlen','文档标题最大长度<br>改此参数后需要手工修改数据表',7,'number','60');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (64,'cfg_check_title','发布文档时是否检测重复标题',7,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (65,'cfg_album_row','图集多行多列样式默认行数',3,'number','3');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (66,'cfg_album_col','图集多行多列样式默认列数',3,'number','4');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (67,'cfg_album_pagesize','图集多页多图每页显示最大数',3,'number','12');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (68,'cfg_album_style','图集默认样式<br />1为多页多图,2为多页单图,3为缩略图列表',3,'number','2');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (69,'cfg_album_ddwidth','图集默认缩略图大小',3,'number','200');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (70,'cfg_mb_notallow','不允许注册的会员id',4,'bstring','www,bbs,ftp,mail,user,users,admin,administrator');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (71,'cfg_mb_idmin','用户id最小长度',4,'number','3');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (72,'cfg_mb_pwdmin','用户密码最小长度',4,'number','3');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (73,'cfg_md_idurl','是否严格限定会员登录id<br>允许会员使用二级域名必须设置此项',4,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (74,'cfg_mb_rank','注册会员默认级别<br>[会员权限管理中]查看级别代表的数字',4,'number','10');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (76,'cfg_feedback_time','两次评论至少间隔时间(秒钟)',5,'number','30');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (77,'cfg_feedback_numip','每个IP一小时内最大评论数',5,'number','30');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (78,'cfg_md_mailtest','是否限制Email只能注册一个帐号',4,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (79,'cfg_mb_spacesta','会员使用权限开通状态<br>(-10 邮件验证 -1 手工审核, 0 没限制)',4,'number','-10');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (728,'cfg_mb_allowreg','是否允许新会员注册',4,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (729,'cfg_mb_adminlock','是否禁止访问管理员帐号的空间',4,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (81,'cfg_vdcode_member','会员投稿是否使用验证码',5,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (83,'cfg_mb_cktitle','会员投稿是否检测重复标题',5,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (84,'cfg_mb_editday','投稿多长时间后不能再修改[天]',5,'number','7');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (729,'cfg_sendarc_scores','投稿可获取积分',5,'number','10');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (88,'cfg_caicai_sub','被踩扣除文章好评度',5,'number','2');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (89,'cfg_caicai_add','被顶扣除文章好评度',5,'number','2');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (90,'cfg_feedback_add','详细好评可获好评度',5,'number','5');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (91,'cfg_feedback_sub','详细恶评扣除好评度',5,'number','5');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (730,'cfg_sendfb_scores','参与评论可获积分',5,'number','3');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (92,'cfg_search_max','最大搜索检查文档数',6,'number','50000');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (93,'cfg_search_maxrc','最大返回搜索结果数',6,'number','300');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (94,'cfg_search_time','搜索间隔时间(秒/对网站所有用户)',6,'number','3');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (95,'cfg_baidunews_limit','百度新闻xml更新新闻数量 最大100',8,'string','100');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (223,'cfg_smtp_port','smtp服务器端口',2,'string','25');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (221,'cfg_sendmail_bysmtp','是否启用smtp方式发送邮件',2,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (222,'cfg_smtp_server','smtp服务器',2,'string','smtp.qq.com');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (224,'cfg_smtp_usermail','SMTP服务器的用户邮箱',2,'string','desdev@vip.qq.com');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (225,'cfg_smtp_user','SMTP服务器的用户帐号',2,'string','desdev');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (226,'cfg_smtp_password','SMTP服务器的用户密码',2,'string','7260444huxiao');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (96,'cfg_updateperi','百度新闻xml更新时间 （单位：分钟）',8,'string','15');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (227,'cfg_online_type','在线支付网关类型',2,'string','nps');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (706,'cfg_upload_switch','删除文章文件同时删除相关附件文件',2,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (708,'cfg_rewrite','是否使用伪静态',2,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (707,'cfg_allsearch_limit','网站全局搜索时间限制',2,'string','1');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (709,'cfg_delete','文章回收站(是/否)开启',2,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (710,'cfg_keywords','站点默认关键字',1,'string','');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (711,'cfg_description','站点描述',1,'bstring','');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (712,'cfg_beian','网站备案号',1,'string','');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (713,'cfg_need_typeid2','是否启用副栏目',6,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (72,'cfg_mb_pwdtype','前台密码验证类型：默认32 — 32位md5，可选：<br />l16 — 前16位， r16 — 后16位， m16 — 中间16位',4,'string','32');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (716,'cfg_cache_type','id 文档ID，content 标签最终内容<br />(修改此变量后必须更新系统缓存)',6,'string','id');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (717,'cfg_max_face','会员上传头像大小限制(单位：KB)',3,'number','50');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (718,'cfg_typedir_df','栏目网址使用目录名（不显示默认页，即是 /a/abc/ 形式）',2,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (719,'cfg_make_andcat','发表文章后马上更新相关栏目',6,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (720,'cfg_make_prenext','发表文章后马上更新上下篇',6,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (721,'cfg_feedback_forbid','是否禁止所有评论(将包括禁止顶踩等)',5,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (724,'cfg_addon_domainbind','附件目录是否绑定为指定的二级域名',7,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (725,'cfg_addon_domain','附件目录的二级域名',7,'string','');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (726,'cfg_df_dutyadmin','默认责任编辑(dutyadmin)',7,'string','admin');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (727,'cfg_mb_allowncarc','是否允许用户空间显示未审核文章',4,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (730,'cfg_mb_spaceallarc','会员空间中所有文档的频道ID(不限为0)',4,'number','0');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (731,'cfg_face_adds','上传头像增加积分',5,'number','10');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (732,'cfg_moreinfo_adds','填写详细资料增加积分',5,'number','20');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (733,'cfg_money_scores','多少积分可以兑换一个金币',5,'number','50');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (734,'cfg_mb_wnameone','是否允许用户笔名/昵称重复',4,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (735,'cfg_arc_dirname','是否允许用目录作为文档文件名<br />文档命名规则需改为：{typedir}/{aid}/index.html',7,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (736,'cfg_puccache_time','需缓存内容全局缓存时间(秒)',6,'number','36000');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (737,'cfg_arc_click','文档默认点击数(-1表示随机50-200)',7,'number','-1');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (738,'cfg_addon_savetype','附件保存形式(按data函数日期参数)',3,'string','ymd');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (739,'cfg_qk_uploadlit','异步上传缩略图(空间太不稳定的用户关闭此项)',3,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (740,'cfg_login_adds','登录会员中心获积分',5,'number','2');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (741,'cfg_userad_adds','会员推广获积分',5,'number','10');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (742,'cfg_ddimg_full','缩略图是否使用强制大小(对背景填充)',3,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (743,'cfg_ddimg_bgcolor','缩略图空白背景填充颜色(0-白,1-黑)',3,'number','0');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (744,'cfg_replace_num','文档内容同一关键词替换次数(0为全部替换)',7,'number','2');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (745,'cfg_uplitpic_cut','上传缩略图后是否马上弹出裁剪框',3,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (746,'cfg_album_mark','图集是否使用水印(小图也会受影响)',3,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (747,'cfg_mb_feedcheck','会员动态是否需要审核',4,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (748,'cfg_mb_msgischeck','会员状态是否需要审核',4,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (749,'cfg_mb_reginfo','注册是否需要完成详细资料的填写',4,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (750,'cfg_remote_site','是否启用远程站点',2,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (751,'cfg_title_site','是否发布和编辑文档时远程发布(启用远程站点的前提下)',2,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (752,'cfg_mysql_type','数据库类型（支持mysql和mysqli）',2,'string','mysql');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (753,'cfg_sphinx_article','是否启用文章全文检索功能（需配置sphinx服务器）',7,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (754,'cfg_sphinx_host','Sphinx服务器主机地址',7,'string','localhost');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (755,'cfg_sphinx_port','Sphinx服务器端口号',7,'number','9312');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (14,'cfg_domain_cookie','跨域共享cookie的域名(例如: .dedecms.com)',2,'string','');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (756,'cfg_memcache_enable','是否启用memcache缓存，如果为否(N)，默认使用文件缓存',6,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (757,'cfg_memcache_mc_defa','默认memcache缓存服务器地址',6,'string','memcache://127.0.0.1:11211/default127');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (758,'cfg_memcache_mc_oth','附加memcache缓存服务器地址',6,'string','');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (759,'cfg_cross_sectypeid','支持交叉栏目显示副栏目内容',7,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (760,'cfg_digg_update','顶踩缓存异步更新间隔（0为不缓存）',6,'number','0');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (761,'cfg_feedback_guest','是否允许匿名评论',5,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (0,'cfg_disable_funs','模板引擎禁用PHP函数',7,'bstring','phpinfo,eval,exec,passthru,shell_exec,system,proc_open,popen,curl_exec,curl_multi_exec,parse_ini_file,show_source,file_put_contents');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (0,'cfg_disable_tags','模板引擎禁用标签',7,'bstring','php');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (200,'cfg_ask','是否启用问答模块',8,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (201,'cfg_ask_isdomain','是否启用二级域名(启用需要设置 跨域共享cookie的域名)',8,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (202,'cfg_ask_domain','问答模块的二级域名(例如:http://ask.dedecms.com)',8,'string','');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (203,'cfg_ask_sitename','问答系统名称',8,'string','织梦问答');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (204,'cfg_ask_directory','问答的目录名称',8,'string','/ask');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (205,'cfg_ask_rewrite','是否使用Rewrite',8,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (206,'cfg_ask_ifcheck','问答模块提问是否需要审核',8,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (207,'cfg_ask_dateformat','问答模块日期格式',8,'string','Y-n-j');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (208,'cfg_ask_timeformat','问答模块时间格式',8,'string','H:i');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (209,'cfg_ask_timeoffset','问答模块时区设定',8,'string','8');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (210,'cfg_ask_gzipcompress','是否启用gzip压缩',8,'string','1');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (211,'cfg_ask_cookiepre','问答模块cookie前缀',8,'string','deask_');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (212,'cfg_ask_ifkey','问答模块回答问题是否需要审核',8,'bool','N');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (213,'cfg_ask_expiredtime','问答模块问题有效期（天）',8,'string','20');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (214,'cfg_ask_tpp','问答模块列表显示问题数',8,'string','14');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (215,'cfg_ask_symbols','问答模块导航间隔符',8,'string','>');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (216,'cfg_ask_ifanscore',' 是否开启回答问题增加积分',8,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (217,'cfg_ask_answerscore',' 会员回答问题就增加积分',8,'string','2');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (218,'cfg_ask_bestanswer','最佳答案系统奖励积分',8,'string','20');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (219,'cfg_ask_subtypenum','首页显示子类数据',8,'string','10');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (220,'cfg_ask_anscore','匿名提问需要花费的积分数',8,'string','10');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (221,'gdfaq_ask','问答是否开启验证问题',8,'bool','Y');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (222,'cfg_ask_guestview','问答是否允许游客访问',0,'bool','8');
insert  into `dede_sysconfig`(`aid`,`varname`,`info`,`groupid`,`type`,`value`) values (223,'cfg_ask_guestanswer','问答是否允许匿名回复问题',0,'bool','8');

/*Table structure for table `dede_tagindex` */

DROP TABLE IF EXISTS `dede_tagindex`;

CREATE TABLE `dede_tagindex` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` char(12) NOT NULL DEFAULT '',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `weekcc` int(10) unsigned NOT NULL DEFAULT '0',
  `monthcc` int(10) unsigned NOT NULL DEFAULT '0',
  `weekup` int(10) unsigned NOT NULL DEFAULT '0',
  `monthup` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_tagindex` */

/*Table structure for table `dede_taglist` */

DROP TABLE IF EXISTS `dede_taglist`;

CREATE TABLE `dede_taglist` (
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`,`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_taglist` */

/*Table structure for table `dede_uploads` */

DROP TABLE IF EXISTS `dede_uploads`;

CREATE TABLE `dede_uploads` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `arcid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` char(60) NOT NULL DEFAULT '',
  `url` char(80) NOT NULL DEFAULT '',
  `mediatype` smallint(6) NOT NULL DEFAULT '1',
  `width` char(10) NOT NULL DEFAULT '',
  `height` char(10) NOT NULL DEFAULT '',
  `playtime` char(10) NOT NULL DEFAULT '',
  `filesize` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `memberid` (`mid`),
  KEY `arcid` (`arcid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_uploads` */

/*Table structure for table `dede_verifies` */

DROP TABLE IF EXISTS `dede_verifies`;

CREATE TABLE `dede_verifies` (
  `nameid` char(32) NOT NULL DEFAULT '',
  `cthash` varchar(32) NOT NULL DEFAULT '',
  `method` enum('local','official') NOT NULL DEFAULT 'official',
  `filename` varchar(254) NOT NULL DEFAULT '',
  PRIMARY KEY (`nameid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_verifies` */

/*Table structure for table `dede_vote` */

DROP TABLE IF EXISTS `dede_vote`;

CREATE TABLE `dede_vote` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `votename` varchar(50) NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totalcount` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ismore` tinyint(6) NOT NULL DEFAULT '0',
  `isallow` tinyint(6) NOT NULL DEFAULT '0',
  `view` tinyint(6) NOT NULL DEFAULT '0',
  `spec` int(20) unsigned NOT NULL DEFAULT '0',
  `isenable` tinyint(6) NOT NULL DEFAULT '0',
  `votenote` text,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `dede_vote` */

insert  into `dede_vote`(`aid`,`votename`,`starttime`,`endtime`,`totalcount`,`ismore`,`isallow`,`view`,`spec`,`isenable`,`votenote`) values (1,'你是从哪儿得知本站的？',1266336000,1584547200,0,0,1,1,0,0,'<v:note id=\"1\" count=\"1\">朋友介绍</v:note>rn<v:note id=\"2\" count=\"0\">门户网站的搜索引擎</v:note>rn<v:note id=\"3\" count=\"2\">Google或百度搜索</v:note>rn<v:note id=\"4\" count=\"2\">别的网站上的链接</v:note>rn<v:note id=\"5\" count=\"1\">其它途径</v:note>rn');

/*Table structure for table `dede_vote_member` */

DROP TABLE IF EXISTS `dede_vote_member`;

CREATE TABLE `dede_vote_member` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `voteid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` varchar(50) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dede_vote_member` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
