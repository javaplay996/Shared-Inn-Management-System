/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gongxiangkezhan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gongxiangkezhan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gongxiangkezhan`;

/*Table structure for table `chuzhuxinxi` */

DROP TABLE IF EXISTS `chuzhuxinxi`;

CREATE TABLE `chuzhuxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fw_types` tinyint(255) DEFAULT NULL COMMENT '房屋名称 Search',
  `fd_types` tinyint(255) DEFAULT NULL COMMENT '房东名称 Search',
  `yh_types` tinyint(255) DEFAULT NULL COMMENT '用户名称 Search',
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '租房时间',
  `finish_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '结束租房时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `chuzhuxinxi` */

insert  into `chuzhuxinxi`(`id`,`fw_types`,`fd_types`,`yh_types`,`create_time`,`finish_time`) values (16,5,2,1,'2021-03-10 20:20:58','2021-03-21 00:00:00'),(17,6,2,1,'2021-03-10 20:21:53','2021-03-12 00:00:00');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '轮播图名称',
  `idcard_photo` varchar(100) DEFAULT NULL COMMENT '轮播图',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='轮播图';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`idcard_photo`) values (2,'picture5','http://localhost:8080/gongxiangkezhan/file/download?fileName=1612582097108.jpg'),(3,'picture4','http://localhost:8080/gongxiangkezhan/file/download?fileName=1612582082151.jpg'),(4,'picture3','http://localhost:8080/gongxiangkezhan/file/download?fileName=1612582053597.jpg'),(5,'picture2','http://localhost:8080/gongxiangkezhan/file/download?fileName=1612582013260.jpg'),(6,'picture1','http://localhost:8080/gongxiangkezhan/file/download?fileName=1612581940173.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'fwstate_types','房屋状态',1,'已出租',NULL,'2021-03-10 11:11:11'),(2,'fwstate_types','房屋状态',2,'未出租',NULL,'2021-03-10 11:11:11');

/*Table structure for table `discussfangwuxinxi` */

DROP TABLE IF EXISTS `discussfangwuxinxi`;

CREATE TABLE `discussfangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `replycontent` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='房屋信息评论表';

/*Data for the table `discussfangwuxinxi` */

insert  into `discussfangwuxinxi`(`id`,`addtime`,`refid`,`userid`,`replycontent`,`reply`) values (1,'2021-03-10 11:11:11',1,1,'评论内容1','回复内容1'),(2,'2021-03-10 11:11:11',2,2,'评论内容2','回复内容2');

/*Table structure for table `fangdongxinxi` */

DROP TABLE IF EXISTS `fangdongxinxi`;

CREATE TABLE `fangdongxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名称 Search',
  `account` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `fangdongxinxi` */

insert  into `fangdongxinxi`(`id`,`name`,`account`,`password`,`img_photo`,`role`) values (1,'房东1','111','111','http://localhost:8080/gongxiangkezhan/file/download?fileName=1612513338331.JPG','房东'),(2,'房东2','22','22','http://localhost:8080/gongxiangkezhan/file/download?fileName=1612513329511.JPG','房东');

/*Table structure for table `fangwuleixing` */

DROP TABLE IF EXISTS `fangwuleixing`;

CREATE TABLE `fangwuleixing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fwname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '房屋类型 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `fangwuleixing` */

insert  into `fangwuleixing`(`id`,`fwname`) values (1,'一室一厅'),(2,'二室一厅'),(3,'三室一厅一卫'),(4,'精装修'),(5,'豪华单间');

/*Table structure for table `fangwuxinxi` */

DROP TABLE IF EXISTS `fangwuxinxi`;

CREATE TABLE `fangwuxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fwname` varchar(255) DEFAULT NULL COMMENT '房屋名称 Search',
  `fwlx_types` tinyint(4) DEFAULT NULL COMMENT '房屋类型 Search',
  `money` decimal(10,0) DEFAULT NULL COMMENT '一个月的价格',
  `img_photo` varchar(255) DEFAULT NULL COMMENT '房屋图片',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `fwstate_types` tinyint(255) DEFAULT NULL COMMENT '房屋状态 Search',
  `fd_types` tinyint(255) DEFAULT NULL COMMENT '所属房东',
  `phone` varchar(255) DEFAULT NULL COMMENT '房东联系电话',
  `notice_content` varchar(255) DEFAULT NULL COMMENT '具体信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `fangwuxinxi` */

insert  into `fangwuxinxi`(`id`,`fwname`,`fwlx_types`,`money`,`img_photo`,`address`,`fwstate_types`,`fd_types`,`phone`,`notice_content`) values (1,'123',1,'123','http://localhost:8080/gongxiangkezhan/file/download?fileName=1615365710190.jpg','123',2,1,'123','<img src=\"http://localhost:8080/gongxiangkezhan/upload/1615365707774.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/gongxiangkezhan/upload/1615365707774.jpg\">123123123\r\n'),(2,'房屋名称1',3,'2900','http://localhost:8080/gongxiangkezhan/file/download?fileName=1615365699736.jpg','123',2,2,'123','<img src=\"http://localhost:8080/gongxiangkezhan/upload/1615365699736.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/gongxiangkezhan/upload/1615365699736.jpg\">房屋内容1\r\n'),(3,'房屋名称2',1,'1233','http://localhost:8080/gongxiangkezhan/file/download?fileName=1615365690984.jpg','123123',2,1,'123123','<img src=\"http://localhost:8080/gongxiangkezhan/upload/1615365690992.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/gongxiangkezhan/upload/1615365690992.jpg\">123123\r\n'),(4,'房屋名称3',2,'455','http://localhost:8080/gongxiangkezhan/file/download?fileName=1615365143672.jpg','123',2,1,'12312','<img src=\"http://localhost:8080/gongxiangkezhan/upload/1615365143672.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/gongxiangkezhan/upload/1615365143672.jpg\">123132突然一个德国法国\r\n'),(5,'xxxx小区1123',5,'10000','http://localhost:8080/gongxiangkezhan/file/download?fileName=1615365138197.jpg','1223',1,2,'123123123123123','<img src=\"http://localhost:8080/gongxiangkezhan/upload/1615365138198.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/gongxiangkezhan/upload/1615365138198.jpg\">房屋描述信息1111\r\n'),(6,'123',2,'123','http://localhost:8080/gongxiangkezhan/file/download?fileName=1615365127518.jpg','123',1,2,'123123123','<img src=\"http://localhost:8080/gongxiangkezhan/upload/1615365127527.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/gongxiangkezhan/upload/1615365127527.jpg\">123123123123\r\n');

/*Table structure for table `hetongxinxi` */

DROP TABLE IF EXISTS `hetongxinxi`;

CREATE TABLE `hetongxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `htname` varchar(255) DEFAULT NULL COMMENT '合同名称',
  `prove_file` varchar(255) DEFAULT NULL COMMENT '附件信息',
  `fd_types` tinyint(255) DEFAULT NULL COMMENT '甲方名称 Search',
  `yh_types` tinyint(255) DEFAULT NULL COMMENT '乙方名称 Search',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '签约时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `hetongxinxi` */

insert  into `hetongxinxi`(`id`,`htname`,`prove_file`,`fd_types`,`yh_types`,`create_time`) values (8,'合同1','http://localhost:8080/gongxiangkezhan/file/download?fileName=1615369563157.doc',2,2,'2021-03-10 17:46:05'),(9,'合同2','http://localhost:8080/gongxiangkezhan/file/download?fileName=1615378634757.xls',1,1,'2021-03-10 20:17:18');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `img_photo` varchar(200) NOT NULL COMMENT '图片',
  `notice_content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`img_photo`,`notice_content`) values (2,'2021-03-10 11:11:11','看保利&金茂双央企打造的经开低容社区 保利金茂时光悦','http://localhost:8080/gongxiangkezhan/file/download?fileName=1612581836879.jpg','代言着政经大道的时代垂青，担当着城脉荣耀的匠者使命！经三路上，南政北经，非富即贵，40余个政府单位集群，28余个金融机构遍布，寸金寸土的背后，是历史的限量级，亦是城芯的藏品级，时间赋予了这片土地，问鼎中原人居的高度，申泰•中原印象深知这片土地的不可复制性，联袂TOP级大师阵容，以世界作品的范本人居，不负土地，不负时代！影响中原，都芯巨著！申泰•中原印象，以城芯罕有的百万方体量，世界规格的顶层设计，匠筑中原世代新门第--新中式国风雅邸，中原穹顶新封面--约150米云玺公寓/云顶商务，中原风尚新名片--约4.6万方名流商业，时代坐标，迭新城脉。万千繁华，全系奢配！申泰•中原印象，雍享周边全龄教育体系、立体交通体系、权威医疗体系、自然人文体系、三大商圈体系。享三纵三横、下穿双地铁（距地铁5号线省人民医院站仅约260米，距地铁2号线黄河路站仅约740米）多维交通，迅达全城；河南省人民医院举步即达；纬五路一小、省实验中学等30余所名校环伺，咫尺之间享繁华。豪宅血统，艺奢建标！申泰•中原印象以豪宅御用的装甲门、系统窗、金刚砂车库地坪、双精装入户大堂、五重净水系统、地暖入户、静音管材、六重安防系统、智能家居系统、雾森系统十大超规格建标，敬献中原超规格的尊重。时代审美，人文意境！申泰•中原印象联袂甲级景观机构重庆道合，打造门-堂-庭-园-门五重私家园林，儿童互动区、中年活力区、老年颐养区，全龄所享；约2095㎡的中央会客厅、国学书吧/学堂，全龄所享，阶层礼制，营造高端雅奢的人文栖居。\r\n'),(3,'2021-03-10 11:11:11','不负土地，不负中原','http://localhost:8080/gongxiangkezhan/file/download?fileName=1612577213231.jpg','代言着政经大道的时代垂青，担当着城脉荣耀的匠者使命！经三路上，南政北经，非富即贵，40余个政府单位集群，28余个金融机构遍布，寸金寸土的背后，是历史的限量级，亦是城芯的藏品级，时间赋予了这片土地，问鼎中原人居的高度，申泰•中原印象深知这片土地的不可复制性，联袂TOP级大师阵容，以世界作品的范本人居，不负土地，不负时代！影响中原，都芯巨著！申泰•中原印象，以城芯罕有的百万方体量，世界规格的顶层设计，匠筑中原世代新门第--新中式国风雅邸，中原穹顶新封面--约150米云玺公寓/云顶商务，中原风尚新名片--约4.6万方名流商业，时代坐标，迭新城脉。万千繁华，全系奢配！申泰•中原印象，雍享周边全龄教育体系、立体交通体系、权威医疗体系、自然人文体系、三大商圈体系。享三纵三横、下穿双地铁（距地铁5号线省人民医院站仅约260米，距地铁2号线黄河路站仅约740米）多维交通，迅达全城；河南省人民医院举步即达；纬五路一小、省实验中学等30余所名校环伺，咫尺之间享繁华。豪宅血统，艺奢建标！申泰•中原印象以豪宅御用的装甲门、系统窗、金刚砂车库地坪、双精装入户大堂、五重净水系统、地暖入户、静音管材、六重安防系统、智能家居系统、雾森系统十大超规格建标，敬献中原超规格的尊重。时代审美，人文意境！申泰•中原印象联袂甲级景观机构重庆道合，打造门-堂-庭-园-门五重私家园林，儿童互动区、中年活力区、老年颐养区，全龄所享；约2095㎡的中央会客厅、国学书吧/学堂，全龄所享，阶层礼制，营造高端雅奢的人文栖居。\r\n'),(4,'2021-03-10 11:11:11','碧桂园时代城 ，岁末渐至，为幸福加温','http://localhost:8080/gongxiangkezhan/file/download?fileName=1612577145007.jpg','亲爱的业主家人：\r\n展信欢颜！\r\n时光流转，寒来暑往，不知不觉，2020年又至尾声。感谢您一直以来对时代城的支持与厚爱；岁末年终，时光飞逝，我们为您写下一封家书，为您呈现【碧桂园时代城】最新工程进度和美好生活图景。\r\n碧桂园时代城满怀责任与匠心，于光影流年中，将人居理想升华于一砖一瓦间，让所有家的美好憧憬逐渐落地。\r\n时光雕琢品质，每一处细节的脱变，都写满匠人们精益求精的态度，目之所及皆是用心，心之所念不忘初衷。一封家书的呈阅，饱含您对美好生活的殷切期盼，更倾注着我们构筑美好生活的坚守。未来，我们将继续聚力前行，不负厚望雕琢点滴美好。\r\n2020年岁末\r\n\r\n'),(5,'2021-03-10 11:11:11','保利和光屿湖售楼处盛大开放','http://localhost:8080/gongxiangkezhan/file/download?fileName=1612577108641.jpg','保利高端和光系产品首次落地河南。项目位于高新区双湖科技城核心区域，生态环境好，区域内配套规划完善。项目共规划9栋20层高层，建面约90/115/120㎡，18栋8层洋房，建面约140㎡。\r\n保利和光屿湖售楼处已于1月1日盛大开放，欢迎大家参观了解。\r\n\r\n');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (8,1,'admin','users','管理员','7w93soh1xzp0hzxn5yrvcom1oy7hqas8','2021-03-10 19:37:34','2021-03-10 21:13:13'),(9,1,'房东1','users','房东','phudmc8gsr1mvn63bpe6rawb6ut94f12','2021-03-10 20:17:36','2021-03-10 21:17:37'),(10,2,'房东2','users','房东','myqql8ikuvw5af6baa7hfksy4ddx3oda','2021-03-10 20:19:14','2021-03-10 21:19:15'),(11,1,'小札','users','用户','p7b7fpqkahbgsm0rkylbodyewvco9h42','2021-03-10 20:20:33','2021-03-10 21:21:30');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) NOT NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-01-28 18:04:51');

/*Table structure for table `yonghuxinxi` */

DROP TABLE IF EXISTS `yonghuxinxi`;

CREATE TABLE `yonghuxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名称 Search',
  `account` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `yonghuxinxi` */

insert  into `yonghuxinxi`(`id`,`name`,`account`,`password`,`img_photo`,`role`) values (1,'小札','111','111','http://localhost:8080/gongxiangkezhan/file/download?fileName=1612512892375.jpg','用户'),(2,'小站','222','222','http://localhost:8080/gongxiangkezhan/file/download?fileName=1612512737276.jpg','用户');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
