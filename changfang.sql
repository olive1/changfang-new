/*
Navicat MySQL Data Transfer

Source Server         : lo
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : changfang

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-08-31 10:53:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `captcha`
-- ----------------------------
DROP TABLE IF EXISTS `captcha`;
CREATE TABLE `captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=MyISAM AUTO_INCREMENT=458 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha
-- ----------------------------

-- ----------------------------
-- Table structure for `ci_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(255) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO `ci_sessions` VALUES ('4ee5d7671c51361cab6b0a97cd1fad1b87a779ad', '127.0.0.1', '', '1503999165', '__ci_last_regenerate|i:1503999165;lm|s:4:\"open\";user|s:558:\"a:12:{s:8:\"admin_id\";s:1:\"1\";s:10:\"admin_name\";s:8:\"lm_admin\";s:14:\"admin_nickname\";s:6:\"阿猛\";s:14:\"admin_password\";s:32:\"e10adc3949ba59abbe56e057f20f883e\";s:5:\"group\";s:5:\"admin\";s:5:\"yhzid\";s:1:\"0\";s:11:\"purview_mdl\";s:144:\"a:6:{i:0;s:11:\"user/update\";i:1;s:9:\"order/del\";i:2;s:12:\"order/update\";i:3;s:9:\"co/update\";i:4;s:14:\"goods/del_menu\";i:5;s:13:\"goods/del_img\";}\";s:11:\"create_time\";s:10:\"1331018706\";s:11:\"update_time\";i:1503997353;s:5:\"token\";s:32:\"340ade41fd87cfa788c7861f40a1a450\";s:2:\"ip\";s:14:\"116.255.205.81\";s:14:\"admin_id_class\";s:1:\"0\";}\";');
INSERT INTO `ci_sessions` VALUES ('4d33795c166a55db953aa38b66aaf90b72bafa05', '127.0.0.1', '', '1503998514', '__ci_last_regenerate|i:1503998426;lm|s:4:\"open\";user|s:558:\"a:12:{s:8:\"admin_id\";s:1:\"1\";s:10:\"admin_name\";s:8:\"lm_admin\";s:14:\"admin_nickname\";s:6:\"阿猛\";s:14:\"admin_password\";s:32:\"e10adc3949ba59abbe56e057f20f883e\";s:5:\"group\";s:5:\"admin\";s:5:\"yhzid\";s:1:\"0\";s:11:\"purview_mdl\";s:144:\"a:6:{i:0;s:11:\"user/update\";i:1;s:9:\"order/del\";i:2;s:12:\"order/update\";i:3;s:9:\"co/update\";i:4;s:14:\"goods/del_menu\";i:5;s:13:\"goods/del_img\";}\";s:11:\"create_time\";s:10:\"1331018706\";s:11:\"update_time\";i:1503997353;s:5:\"token\";s:32:\"340ade41fd87cfa788c7861f40a1a450\";s:2:\"ip\";s:14:\"116.255.205.81\";s:14:\"admin_id_class\";s:1:\"0\";}\";');
INSERT INTO `ci_sessions` VALUES ('76ddbeffd572c8505caa952c385fb4f1680f3b1e', '127.0.0.1', '', '1503998036', '__ci_last_regenerate|i:1503998032;lm|s:4:\"open\";user|s:558:\"a:12:{s:8:\"admin_id\";s:1:\"1\";s:10:\"admin_name\";s:8:\"lm_admin\";s:14:\"admin_nickname\";s:6:\"阿猛\";s:14:\"admin_password\";s:32:\"e10adc3949ba59abbe56e057f20f883e\";s:5:\"group\";s:5:\"admin\";s:5:\"yhzid\";s:1:\"0\";s:11:\"purview_mdl\";s:144:\"a:6:{i:0;s:11:\"user/update\";i:1;s:9:\"order/del\";i:2;s:12:\"order/update\";i:3;s:9:\"co/update\";i:4;s:14:\"goods/del_menu\";i:5;s:13:\"goods/del_img\";}\";s:11:\"create_time\";s:10:\"1331018706\";s:11:\"update_time\";i:1503997353;s:5:\"token\";s:32:\"340ade41fd87cfa788c7861f40a1a450\";s:2:\"ip\";s:14:\"116.255.205.81\";s:14:\"admin_id_class\";s:1:\"0\";}\";');
INSERT INTO `ci_sessions` VALUES ('01b9b8fe8827979c2825755fde8b27276b87eb0d', '127.0.0.1', '', '1503997700', '__ci_last_regenerate|i:1503997679;lm|s:4:\"open\";user|s:558:\"a:12:{s:8:\"admin_id\";s:1:\"1\";s:10:\"admin_name\";s:8:\"lm_admin\";s:14:\"admin_nickname\";s:6:\"阿猛\";s:14:\"admin_password\";s:32:\"e10adc3949ba59abbe56e057f20f883e\";s:5:\"group\";s:5:\"admin\";s:5:\"yhzid\";s:1:\"0\";s:11:\"purview_mdl\";s:144:\"a:6:{i:0;s:11:\"user/update\";i:1;s:9:\"order/del\";i:2;s:12:\"order/update\";i:3;s:9:\"co/update\";i:4;s:14:\"goods/del_menu\";i:5;s:13:\"goods/del_img\";}\";s:11:\"create_time\";s:10:\"1331018706\";s:11:\"update_time\";i:1503997353;s:5:\"token\";s:32:\"340ade41fd87cfa788c7861f40a1a450\";s:2:\"ip\";s:14:\"116.255.205.81\";s:14:\"admin_id_class\";s:1:\"0\";}\";');
INSERT INTO `ci_sessions` VALUES ('deee560f0af0d0e01397200c8d9770940237a4c8', '127.0.0.1', '', '1503996908', '__ci_last_regenerate|i:1503996640;lm|b:0;');
INSERT INTO `ci_sessions` VALUES ('1f2ae876f28d8ab51e521d49b78fbbcd3261276c', '127.0.0.1', '', '1503997256', '__ci_last_regenerate|i:1503996963;lm|b:0;user|s:558:\"a:12:{s:8:\"admin_id\";s:1:\"1\";s:10:\"admin_name\";s:8:\"lm_admin\";s:14:\"admin_nickname\";s:6:\"阿猛\";s:14:\"admin_password\";s:32:\"e10adc3949ba59abbe56e057f20f883e\";s:5:\"group\";s:5:\"admin\";s:5:\"yhzid\";s:1:\"0\";s:11:\"purview_mdl\";s:144:\"a:6:{i:0;s:11:\"user/update\";i:1;s:9:\"order/del\";i:2;s:12:\"order/update\";i:3;s:9:\"co/update\";i:4;s:14:\"goods/del_menu\";i:5;s:13:\"goods/del_img\";}\";s:11:\"create_time\";s:10:\"1331018706\";s:11:\"update_time\";i:1503996968;s:5:\"token\";s:32:\"ad02ba6f600d9c57d3d12f02e8644ac6\";s:2:\"ip\";s:14:\"116.255.205.81\";s:14:\"admin_id_class\";s:1:\"0\";}\";');
INSERT INTO `ci_sessions` VALUES ('1a79f957907c83bf5533775ba52c2cc4b5c34286', '127.0.0.1', '', '1503997620', '__ci_last_regenerate|i:1503997348;lm|s:4:\"open\";user|s:558:\"a:12:{s:8:\"admin_id\";s:1:\"1\";s:10:\"admin_name\";s:8:\"lm_admin\";s:14:\"admin_nickname\";s:6:\"阿猛\";s:14:\"admin_password\";s:32:\"e10adc3949ba59abbe56e057f20f883e\";s:5:\"group\";s:5:\"admin\";s:5:\"yhzid\";s:1:\"0\";s:11:\"purview_mdl\";s:144:\"a:6:{i:0;s:11:\"user/update\";i:1;s:9:\"order/del\";i:2;s:12:\"order/update\";i:3;s:9:\"co/update\";i:4;s:14:\"goods/del_menu\";i:5;s:13:\"goods/del_img\";}\";s:11:\"create_time\";s:10:\"1331018706\";s:11:\"update_time\";i:1503997353;s:5:\"token\";s:32:\"340ade41fd87cfa788c7861f40a1a450\";s:2:\"ip\";s:14:\"116.255.205.81\";s:14:\"admin_id_class\";s:1:\"0\";}\";success|s:12:\"更新成功\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}');

-- ----------------------------
-- Table structure for `lm_admin`
-- ----------------------------
DROP TABLE IF EXISTS `lm_admin`;
CREATE TABLE `lm_admin` (
  `admin_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) NOT NULL COMMENT '用户名',
  `admin_nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `admin_password` varchar(32) NOT NULL COMMENT '密码',
  `group` varchar(10) NOT NULL DEFAULT 'edit',
  `yhzid` smallint(3) NOT NULL,
  `purview_mdl` varchar(1000) DEFAULT NULL COMMENT '权限表',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建日期',
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '更改日期',
  `token` varchar(32) DEFAULT NULL COMMENT '令牌',
  `ip` varchar(15) DEFAULT NULL COMMENT '最后登陆IP',
  `admin_id_class` smallint(5) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lm_admin
-- ----------------------------
INSERT INTO `lm_admin` VALUES ('1', 'lm_admin', '阿猛', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '0', 'a:6:{i:0;s:11:\"user/update\";i:1;s:9:\"order/del\";i:2;s:12:\"order/update\";i:3;s:9:\"co/update\";i:4;s:14:\"goods/del_menu\";i:5;s:13:\"goods/del_img\";}', '1331018706', '1503999165', '340ade41fd87cfa788c7861f40a1a450', '116.255.205.81', '0');

-- ----------------------------
-- Table structure for `lm_admin_group`
-- ----------------------------
DROP TABLE IF EXISTS `lm_admin_group`;
CREATE TABLE `lm_admin_group` (
  `yhzid` smallint(3) NOT NULL AUTO_INCREMENT,
  `authid_list` text NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`yhzid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lm_admin_group
-- ----------------------------
INSERT INTO `lm_admin_group` VALUES ('2', 'a:26:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:2:\"15\";i:3;s:2:\"17\";i:4;s:2:\"16\";i:5;s:1:\"3\";i:6;s:2:\"12\";i:7;s:2:\"14\";i:8;s:2:\"13\";i:9;s:1:\"5\";i:10;s:1:\"4\";i:11;s:2:\"29\";i:12;s:2:\"22\";i:13;s:2:\"21\";i:14;s:2:\"30\";i:15;s:2:\"31\";i:16;s:2:\"23\";i:17;s:2:\"24\";i:18;s:2:\"25\";i:19;s:2:\"26\";i:20;s:1:\"6\";i:21;s:1:\"7\";i:22;s:2:\"19\";i:23;s:2:\"18\";i:24;s:2:\"27\";i:25;s:2:\"28\";}', '管理员');
INSERT INTO `lm_admin_group` VALUES ('4', 'a:7:{i:0;s:2:\"20\";i:1;s:1:\"1\";i:2;s:1:\"5\";i:3;s:2:\"23\";i:4;s:2:\"25\";i:5;s:1:\"6\";i:6;s:2:\"27\";}', '编辑1号');
INSERT INTO `lm_admin_group` VALUES ('5', 'a:11:{i:0;s:2:\"20\";i:1;s:1:\"1\";i:2;s:1:\"5\";i:3;s:1:\"4\";i:4;s:2:\"29\";i:5;s:2:\"22\";i:6;s:2:\"21\";i:7;s:1:\"6\";i:8;s:1:\"7\";i:9;s:2:\"19\";i:10;s:2:\"18\";}', '编辑2号');
INSERT INTO `lm_admin_group` VALUES ('6', 'a:6:{i:0;s:2:\"20\";i:1;s:1:\"1\";i:2;s:2:\"23\";i:3;s:2:\"24\";i:4;s:2:\"25\";i:5;s:2:\"26\";}', '编辑3号');

-- ----------------------------
-- Table structure for `lm_auth`
-- ----------------------------
DROP TABLE IF EXISTS `lm_auth`;
CREATE TABLE `lm_auth` (
  `authid` smallint(3) NOT NULL AUTO_INCREMENT,
  `auth_title` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `auth_class_id` smallint(3) NOT NULL,
  `sort` smallint(3) DEFAULT '0',
  PRIMARY KEY (`authid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lm_auth
-- ----------------------------
INSERT INTO `lm_auth` VALUES ('1', '修改个人资料', 'admin_lm/me/', '1', '0');
INSERT INTO `lm_auth` VALUES ('2', '管理用户组', 'admin_group/n_list/', '1', '1');
INSERT INTO `lm_auth` VALUES ('3', '管理用户', 'admin_lm/a_list', '1', '4');
INSERT INTO `lm_auth` VALUES ('4', '增加商品', 'goods/add', '2', '1');
INSERT INTO `lm_auth` VALUES ('5', '查看商品列表', 'goods/g_list', '2', '0');
INSERT INTO `lm_auth` VALUES ('6', '查看资讯列表', 'news/n_list/', '5', '0');
INSERT INTO `lm_auth` VALUES ('7', '添加资讯', 'news/add/', '5', '1');
INSERT INTO `lm_auth` VALUES ('8', '头部', 'lm/header', '7', '0');
INSERT INTO `lm_auth` VALUES ('9', '菜单', 'lm/menu', '7', '0');
INSERT INTO `lm_auth` VALUES ('10', '主体', 'lm/body', '7', '0');
INSERT INTO `lm_auth` VALUES ('11', '结构', 'main/0', '7', '0');
INSERT INTO `lm_auth` VALUES ('12', '增加用户', 'admin_lm/add/', '1', '5');
INSERT INTO `lm_auth` VALUES ('13', '修改用户', 'admin_lm/update/', '1', '7');
INSERT INTO `lm_auth` VALUES ('14', '删除用户', 'admin_lm/del/', '1', '6');
INSERT INTO `lm_auth` VALUES ('15', '添加用户组', 'admin_group/add/', '1', '2');
INSERT INTO `lm_auth` VALUES ('16', '修改用户组', 'admin_group/update/', '1', '3');
INSERT INTO `lm_auth` VALUES ('17', '删除用户组', 'admin_group/del/', '1', '2');
INSERT INTO `lm_auth` VALUES ('18', '修改资讯', 'news/update/', '5', '3');
INSERT INTO `lm_auth` VALUES ('19', '删除资讯', 'news/del/', '5', '2');
INSERT INTO `lm_auth` VALUES ('20', '只能操作自己的信息', 'update/me/', '8', '1');
INSERT INTO `lm_auth` VALUES ('21', '修改商品', 'goods/update/', '2', '3');
INSERT INTO `lm_auth` VALUES ('22', '删除商品', 'goods/del/', '2', '2');
INSERT INTO `lm_auth` VALUES ('23', '查看会员列表', 'user/u_list/', '4', '0');
INSERT INTO `lm_auth` VALUES ('24', '删除会员列表', 'user/del/', '4', '1');
INSERT INTO `lm_auth` VALUES ('25', '查看订单', 'order/o_list/', '4', '2');
INSERT INTO `lm_auth` VALUES ('26', '处理订单', 'order/update_status/', '4', '3');
INSERT INTO `lm_auth` VALUES ('27', '查看首页设置', 'indexdefin/i_list/', '6', '1');
INSERT INTO `lm_auth` VALUES ('28', '修改首页设置', 'indexdefin/update/', '6', '1');
INSERT INTO `lm_auth` VALUES ('29', '增加商品保存', 'goods/add_save/', '2', '1');
INSERT INTO `lm_auth` VALUES ('30', '删除商品图片', 'goods/del_img', '2', '4');
INSERT INTO `lm_auth` VALUES ('31', '增加会议室', 'goodsmenu/add', '2', '5');
INSERT INTO `lm_auth` VALUES ('32', '删除会议室', 'goodsmenu/del/', '2', '6');
INSERT INTO `lm_auth` VALUES ('33', '修改会议室', 'goodsmenu/update', '2', '7');
INSERT INTO `lm_auth` VALUES ('34', '查看会议室列表', 'goodsmenu/n_list/', '2', '8');
INSERT INTO `lm_auth` VALUES ('35', '查看资讯分类列表', 'news_class/n_list', '9', '1');
INSERT INTO `lm_auth` VALUES ('36', '添加分类', 'news_class/add', '9', '2');
INSERT INTO `lm_auth` VALUES ('37', '删除分类', 'news_class/del', '9', '1');
INSERT INTO `lm_auth` VALUES ('38', '修改分类', 'news_class/update', '9', '4');
INSERT INTO `lm_auth` VALUES ('39', '查看需求', 'fabu/xuqiu_list', '4', '4');
INSERT INTO `lm_auth` VALUES ('40', '编辑需求', 'fabu/update_adm_xuqiu', '4', '5');
INSERT INTO `lm_auth` VALUES ('41', '删除需求', 'fabu/del', '4', '6');
INSERT INTO `lm_auth` VALUES ('42', '审核需求', 'fabu/update_xuqiu', '4', '7');
INSERT INTO `lm_auth` VALUES ('43', '首页设置上传', 'indexdefin/upload/', '6', '1');
INSERT INTO `lm_auth` VALUES ('44', '删除酒店菜单', 'goods/del_menu', '2', '4');

-- ----------------------------
-- Table structure for `lm_auth_class`
-- ----------------------------
DROP TABLE IF EXISTS `lm_auth_class`;
CREATE TABLE `lm_auth_class` (
  `auth_class_id` smallint(3) NOT NULL AUTO_INCREMENT,
  `auth_class_name` varchar(255) NOT NULL,
  `index_sort` smallint(3) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`auth_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lm_auth_class
-- ----------------------------
INSERT INTO `lm_auth_class` VALUES ('1', '系统管理', '1');
INSERT INTO `lm_auth_class` VALUES ('2', '商品中心', '2');
INSERT INTO `lm_auth_class` VALUES ('4', '会员中心', '4');
INSERT INTO `lm_auth_class` VALUES ('5', '资讯管理', '6');
INSERT INTO `lm_auth_class` VALUES ('6', '首页设置', '7');
INSERT INTO `lm_auth_class` VALUES ('8', '信息权限', '0');
INSERT INTO `lm_auth_class` VALUES ('9', '资讯分类', '5');

-- ----------------------------
-- Table structure for `lm_category`
-- ----------------------------
DROP TABLE IF EXISTS `lm_category`;
CREATE TABLE `lm_category` (
  `cat_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `cat_name` varchar(120) NOT NULL COMMENT '分类名称',
  `parent_id` mediumint(8) unsigned NOT NULL COMMENT '父级ID',
  `order_id` mediumint(8) unsigned NOT NULL COMMENT '排序号',
  `is_cond` char(1) DEFAULT NULL COMMENT '是否作为条件(判断上级父类)',
  `keywords` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lm_category
-- ----------------------------
INSERT INTO `lm_category` VALUES ('1', '区域', '0', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('2', '摆放形式', '0', '1', null, '', '');
INSERT INTO `lm_category` VALUES ('6', '北京', '1', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('7', '上海', '1', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('200', '剧院式', '2', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('201', '课桌式', '2', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('202', '宴会式', '2', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('203', '董事式', '2', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('204', '鱼骨式', '2', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('205', 'U型桌', '2', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('206', '鸡尾酒会', '2', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('207', '回字型', '2', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('208', '阶梯式', '2', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('209', '自助餐', '2', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('210', '会见式', '2', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('211', '星级', '0', '5', null, '', '');
INSERT INTO `lm_category` VALUES ('212', '1星', '211', '1', null, '1', '');
INSERT INTO `lm_category` VALUES ('213', '2星', '211', '2', null, '2', '');
INSERT INTO `lm_category` VALUES ('214', '3星', '211', '3', null, '3', '');
INSERT INTO `lm_category` VALUES ('215', '4星', '211', '4', null, '4', '');
INSERT INTO `lm_category` VALUES ('216', '5星', '211', '5', null, '5', '');
INSERT INTO `lm_category` VALUES ('217', '价格', '0', '2', null, '', '');
INSERT INTO `lm_category` VALUES ('218', '500元以下', '227', '0', null, '0-500', '');
INSERT INTO `lm_category` VALUES ('219', '500-1000元', '227', '0', null, '500-1000', '');
INSERT INTO `lm_category` VALUES ('78', '天津', '1', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('79', '重庆', '1', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('80', '河北', '1', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('81', '山西', '1', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('82', '内蒙古', '1', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('83', '辽宁', '1', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('84', '吉林', '1', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('85', '黄浦', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('86', '卢湾', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('87', '徐汇', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('88', '长宁', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('89', '静安', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('90', '普陀', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('91', '闸北', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('92', '虹口', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('93', '杨浦', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('94', '闵行', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('95', '宝山', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('96', '嘉定', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('97', '浦东', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('98', '金山', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('99', '松江', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('100', '青浦', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('101', '南汇', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('102', '奉贤', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('103', '崇明', '7', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('104', '和平', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('105', '东丽', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('106', '河东', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('107', '西青', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('108', '河西', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('109', '津南', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('110', '南开', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('111', '北辰', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('112', '河北', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('113', '武清', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('114', '红挢', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('115', '塘沽', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('116', '汉沽', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('117', '大港', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('118', '宁河', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('119', '静海', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('120', '宝坻', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('121', '蓟县', '78', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('122', '东城', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('123', '西城', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('124', '崇文', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('125', '宣武', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('126', '朝阳', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('127', '丰台', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('128', '石景山', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('129', '海淀', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('130', '门头沟', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('131', '房山', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('132', '通州', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('133', '顺义', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('134', '昌平', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('135', '大兴', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('136', '平谷', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('137', '怀柔', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('138', '密云', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('139', '延庆', '6', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('140', '人民广场', '85', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('141', '豫园', '85', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('142', '大世界', '85', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('143', '外滩', '85', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('144', '淮海中路', '86', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('145', '打浦桥', '86', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('146', '新天地', '86', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('147', '徐家汇', '87', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('148', '衡山路', '87', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('149', '万体馆', '87', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('150', '上海南站', '87', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('151', '漕河泾', '87', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('152', '中山公园', '88', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('153', '虹桥', '88', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('154', '动物园', '88', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('155', '江苏路', '88', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('156', '虹桥枢纽', '88', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('157', '静安寺', '89', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('158', '长风', '90', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('159', '武宁路', '90', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('160', '长寿路', '90', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('161', '火车站', '91', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('162', '大宁', '91', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('163', '鲁迅公园', '92', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('164', '四川北路', '92', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('165', '北外滩', '92', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('166', '五角场', '93', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('167', '大柏树', '93', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('168', '七宝', '94', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('169', '莘庄', '94', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('170', '虹桥镇', '94', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('171', '牡丹江路', '95', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('172', '花桥', '96', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('173', '安亭', '96', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('174', '嘉定镇', '96', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('175', '陆家嘴', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('176', '张江', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('177', '金桥', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('178', '八佰伴', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('179', '花木', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('180', '源深', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('181', '三林', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('182', '上钢新村', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('183', '世纪公园', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('184', '新国展', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('185', '外高桥', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('186', '杨浦大桥', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('187', '北蔡', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('188', '周浦', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('189', '川沙', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('190', '浦东机场', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('191', '塘桥', '97', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('192', '石化', '98', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('193', '大学城', '99', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('194', '泰晤士', '99', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('195', '松江老区', '99', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('196', '青浦镇', '100', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('197', '惠南镇', '101', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('198', '南桥镇', '102', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('199', '碧海金沙', '102', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('220', '1000-2000元', '227', '0', null, '1000-2000', '');
INSERT INTO `lm_category` VALUES ('221', '2000-4000元', '227', '0', null, '2000-4000', '');
INSERT INTO `lm_category` VALUES ('222', '4000-8000元', '227', '0', null, '4000-8000', '');
INSERT INTO `lm_category` VALUES ('223', '8000-15000元', '227', '0', null, '8000-15000', '');
INSERT INTO `lm_category` VALUES ('224', '15000-30000元', '227', '0', null, '15000-30000', '');
INSERT INTO `lm_category` VALUES ('225', '30000元以上', '227', '0', null, '30000-0', '');
INSERT INTO `lm_category` VALUES ('226', '价格分配', '217', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('227', '价格数值', '217', '0', null, '', '');
INSERT INTO `lm_category` VALUES ('228', '小时', '226', '0', null, 'pricea', '');
INSERT INTO `lm_category` VALUES ('229', '半天', '226', '0', null, 'priceb', '');
INSERT INTO `lm_category` VALUES ('230', '全天', '226', '0', null, 'pricec', '');
INSERT INTO `lm_category` VALUES ('231', '晚上', '226', '0', null, 'priced', '');
INSERT INTO `lm_category` VALUES ('232', '全天搭建', '226', '0', null, 'pricee', '');
INSERT INTO `lm_category` VALUES ('233', '晚上搭建', '226', '0', null, 'pricef', '');
INSERT INTO `lm_category` VALUES ('234', '人数', '0', '3', null, '', '');
INSERT INTO `lm_category` VALUES ('235', '面积', '0', '4', null, '', '');
INSERT INTO `lm_category` VALUES ('236', '30人以下', '234', '0', null, '0-30', '');
INSERT INTO `lm_category` VALUES ('237', '30-50人', '234', '0', null, '30-50', '');
INSERT INTO `lm_category` VALUES ('238', '50-100人', '234', '0', null, '50-100', '');
INSERT INTO `lm_category` VALUES ('239', '100-200人', '234', '0', null, '100-200', '');
INSERT INTO `lm_category` VALUES ('240', '200-500人', '234', '0', null, '200-500', '');
INSERT INTO `lm_category` VALUES ('241', '500-1000人', '234', '0', null, '500-1000', '');
INSERT INTO `lm_category` VALUES ('242', '1000人以上', '234', '0', null, '1000-0', '');
INSERT INTO `lm_category` VALUES ('243', '30平方米以下', '235', '0', null, '0-30', '');
INSERT INTO `lm_category` VALUES ('244', '30-50平方米', '235', '0', null, '30-50', '');
INSERT INTO `lm_category` VALUES ('245', '50-100平方米', '235', '0', null, '50-100', '');
INSERT INTO `lm_category` VALUES ('246', '100-200平方米', '235', '0', null, '100-200', '');
INSERT INTO `lm_category` VALUES ('247', '200-500平方米', '235', '0', null, '200-500', '');
INSERT INTO `lm_category` VALUES ('248', '500-1000平方米', '235', '0', null, '500-1000', '');
INSERT INTO `lm_category` VALUES ('249', '1000平方米以上', '235', '0', null, '1000-0', '');
INSERT INTO `lm_category` VALUES ('250', '崇明', '103', '0', null, '', '');

-- ----------------------------
-- Table structure for `lm_cj_fabu_x`
-- ----------------------------
DROP TABLE IF EXISTS `lm_cj_fabu_x`;
CREATE TABLE `lm_cj_fabu_x` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `fabuid` int(8) NOT NULL,
  `dwmc` varchar(255) DEFAULT NULL,
  `lxr` varchar(50) DEFAULT NULL,
  `lxdh` varchar(50) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `cjtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lm_cj_fabu_x
-- ----------------------------
INSERT INTO `lm_cj_fabu_x` VALUES ('1', '4', '单位1', '阿M', '1365199499', '这里是说明。。。', '女', '1358319947');
INSERT INTO `lm_cj_fabu_x` VALUES ('2', '5', '上海一横网络', '老宋', '135555555', '很好EEE', '女', '1358320523');

-- ----------------------------
-- Table structure for `lm_cmenu`
-- ----------------------------
DROP TABLE IF EXISTS `lm_cmenu`;
CREATE TABLE `lm_cmenu` (
  `menu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(255) DEFAULT NULL COMMENT '宴名',
  `menu_price` smallint(5) unsigned DEFAULT NULL COMMENT '宴价',
  `menu_name` text COMMENT '菜单',
  `menu_content` varchar(255) DEFAULT NULL COMMENT '菜单说明',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品ID',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lm_cmenu
-- ----------------------------
INSERT INTO `lm_cmenu` VALUES ('1', 'a11', '551', 'sss,555,66,771', 'aa11', '224');
INSERT INTO `lm_cmenu` VALUES ('2', 'a23', '33', 'ab,sss,555,66,77,dd3', 'aa23', '224');

-- ----------------------------
-- Table structure for `lm_co`
-- ----------------------------
DROP TABLE IF EXISTS `lm_co`;
CREATE TABLE `lm_co` (
  `co_id` int(8) NOT NULL AUTO_INCREMENT,
  `goods_id` int(8) unsigned NOT NULL COMMENT '商品ID',
  `user_id` int(8) unsigned NOT NULL COMMENT '会员ID',
  `cat_id` smallint(5) NOT NULL DEFAULT '8' COMMENT '区域',
  `create_time` int(11) unsigned DEFAULT NULL COMMENT '收藏日期',
  PRIMARY KEY (`co_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of lm_co
-- ----------------------------

-- ----------------------------
-- Table structure for `lm_fabu_x`
-- ----------------------------
DROP TABLE IF EXISTS `lm_fabu_x`;
CREATE TABLE `lm_fabu_x` (
  `fabuid` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `names` varchar(50) DEFAULT NULL COMMENT '姓名',
  `tel` varchar(50) DEFAULT NULL COMMENT '电话',
  `phone` char(11) DEFAULT NULL COMMENT '手机',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `content` text COMMENT '说明',
  `ver` smallint(1) DEFAULT '0' COMMENT '审核',
  `select` smallint(1) NOT NULL DEFAULT '0',
  `fabutime` int(11) NOT NULL COMMENT '发布时间',
  `vertime` int(11) DEFAULT '0' COMMENT '审核时间',
  `user_id` int(10) NOT NULL,
  `admin_id` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`fabuid`),
  UNIQUE KEY `fabuid` (`fabuid`),
  KEY `ver` (`ver`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='发布需求';

-- ----------------------------
-- Records of lm_fabu_x
-- ----------------------------
INSERT INTO `lm_fabu_x` VALUES ('4', '标题1需求1求求5', '姓名求5', '0755-326565655', '13817999195', '862376885@qq.com', 'fdaafddfadfsdfafdasfdaf求5', '1', '1', '1355736452', '0', '10', '1');
INSERT INTO `lm_fabu_x` VALUES ('5', '编辑1号33335', '姓名5', '021-55667785', '13817999195', 'olive5@qq.com', '木木木木木木木木木木木木木木木木木5gggggggggggggggggggggggggggggggggggggggggggggggggg', '1', '0', '1355886405', '0', '10', '1');

-- ----------------------------
-- Table structure for `lm_goods`
-- ----------------------------
DROP TABLE IF EXISTS `lm_goods`;
CREATE TABLE `lm_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) NOT NULL COMMENT '商品名称',
  `click_count` int(10) unsigned DEFAULT '10' COMMENT '点击数',
  `img_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '缩略图名称',
  `l_price` mediumint(8) unsigned NOT NULL COMMENT '面积',
  `h_price` mediumint(8) unsigned NOT NULL COMMENT '最高价',
  `tables` smallint(4) unsigned NOT NULL COMMENT '人数',
  `score` smallint(5) NOT NULL DEFAULT '3' COMMENT '评分',
  `cid_a` smallint(5) unsigned NOT NULL COMMENT '分类IDa',
  `cid_b` smallint(5) unsigned NOT NULL COMMENT '分类IDb',
  `area_id` smallint(5) unsigned DEFAULT NULL COMMENT '地区大类ID，遍于查询',
  `address` varchar(255) NOT NULL COMMENT '(分类IDb+地址)',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'keywords',
  `description` varchar(255) DEFAULT NULL COMMENT 'description',
  `contents` text COMMENT '婚宴信息',
  `contentsa` text COMMENT '活动优惠',
  `preferential` char(1) NOT NULL DEFAULT '1' COMMENT '是否优惠',
  `subway` varchar(50) DEFAULT NULL COMMENT '地铁',
  `bus` varchar(50) DEFAULT NULL COMMENT '公交',
  `map` varchar(1500) DEFAULT NULL COMMENT '地图',
  `order_id` mediumint(8) unsigned DEFAULT NULL COMMENT '排序号',
  `admin_id` smallint(5) unsigned NOT NULL COMMENT '添加者ID',
  `create_time` int(10) unsigned NOT NULL COMMENT '添加日期',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新日期',
  PRIMARY KEY (`goods_id`),
  KEY `goods_name` (`goods_name`),
  KEY `cid_a` (`cid_a`),
  KEY `cid_b` (`cid_b`),
  KEY `area_id` (`area_id`),
  KEY `score` (`score`)
) ENGINE=MyISAM AUTO_INCREMENT=225 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of lm_goods
-- ----------------------------
INSERT INTO `lm_goods` VALUES ('147', '雅薇时尚酒店', '10', '315a83244ad18d335ced8fecfa3c815a.jpg', '2988', '0', '26', '213', '7', '87', '147', '普陀区金沙江路', '雅薇 时尚 酒店 普陀区', '雅薇时尚酒店为您全程打造个性化唯美主题婚礼，为新人提供一套奢华而又完善的婚礼策划服务。', '<p>&nbsp;</p>\r\n<p>雅薇时尚酒店是雅薇酒店管理有限公司旗下创建的沪上精品高档酒店。酒店坐落于普陀区新兴崛起的现代发展区域中，濒临中环、贯穿虹桥，轨道交通及多条公交线路可达，为您的婚宴保证了方便快捷的出行选择。</p>\r\n<p>雅薇时尚酒店&ldquo;La Vie&rdquo;一个赋有神秘、浪漫、传奇色彩的欧式名词 &mdash; 法语&ldquo;人生&rdquo;之意，它蕴含着金色的华贵、紫色的浪漫，是梦想与活力的释放。&ldquo;Shanghai La Vie Hotel&rdquo;不只是一家酒店，更是一个将婚宴体验完美呈现的绝佳场所。</p>\r\n<p>酒店的婚宴A厅，层高4.2米，呈长方形，可容纳14桌婚宴宾客同时就餐。装饰风格带着时尚魔力般，令人炫目，却也有小清新的风潮可寻。明媚的光好似让你置身于法国南部某一集市的下午，悠然的心情，充溢着甜蜜的幸福。如若在这里举办一场以花卉为主题的婚宴，就好像是普罗旺斯神奇地从法国漂移而来，纯粹罗曼蒂克的感觉，为您的婚宴编织一段法式梦。</p>\r\n<p>婚宴B厅层高4.2米，呈规整的正方形，可容纳26桌婚宴宾客同时尽享美食。装饰风格延续A厅与酒店的整体风格，时尚而变化多端，富有层次感，给予您层层递进的幸福感受。身置其中，梦想中的婚宴得以实现。</p>\r\n<p>酒店的婚宴菜肴，拥有众多独家特色菜品，如龙井虾仁，每位宾客的面前都会被呈上一小杯龙井茶，配着虾仁一起吃，这份独特而优雅的用餐感受，怎不令您的婚宴档次感升至顶峰，更不用提那对于味蕾的美妙冲击，对于一场婚宴有着多么强大的增彩之用。</p>\r\n<p>值得一提的是，酒店的客房也同样出色，拥有绝鼎沪上的超大浴缸与贴心的按摩设施，在婚宴后选择入住酒店，给您一种前所未有的新颖生活体验。Shanghai La Vie Hotel &mdash; 你的婚宴因此绚丽。&nbsp;</p>\r\n<h2><span style=\"color: #ff0000\">婚宴预订即可获得以下超值优惠</span></h2>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #ff00ff\">满15桌<br />\r\n1婚礼蛋糕（三层可食用）<br />\r\n2香槟酒一瓶<br />\r\n3香槟塔5层<br />\r\n4免费停车券&nbsp;<br />\r\n5婚礼豪华化妆间一间<br />\r\n6婚礼指示牌<br />\r\n7婚礼迎宾背景墙一块（限指定婚庆）<br />\r\n8婚礼红地毯，主桌鲜花（限指定婚庆）<br />\r\n9当天婚房一间（豪华大床房）<br />\r\n10免费奉送次日双人自助早餐<br />\r\n11免费使用舞台<br />\r\n12免费使用音响，无线话筒1婚礼蛋糕（三层可食用）<br />\r\n13空调券<br />\r\n14钻戒券<br />\r\n15赴韩美容券</span></p>\r\n<p><span style=\"color: #ff00ff\">16个性化请帖定制（20张）<br />\r\n17金条一根（一克）<br />\r\n18免费提供投影仪和幕布7婚礼迎宾背景墙一块（限指定婚庆）<br />\r\n19火热密月游（三选一，港澳游，海南游，泰国游）</span></p>\r\n<p><span style=\"color: #ff00ff\">&nbsp;</span></p>', '', '1', '地铁3、4号线', '807路、64路', '', '0', '1', '1346043949', '1354178175');
INSERT INTO `lm_goods` VALUES ('148', '蓝天宾馆·南粤春', '10', '0515b8425f04168b56bdb3438d358bc1.jpg', '3999', '0', '45', '215', '7', '85', '140', '杨浦区黄兴路', '蓝天 宾馆 南粤春 杨浦区', '蓝天南粤春在上海餐饮市场打造的是高规格、高档次的酒楼。酒店特聘资深名厨，主营精品粤菜，萃取珍馐百味及各大菜系之精华，尽享美食新感觉。', '', '', '1', '10号线', '', '', '0', '1', '1346122372', '1354177905');
INSERT INTO `lm_goods` VALUES ('149', '四季礼堂', '10', '6cb12f3211328c32cfb8cbd167e760ab.jpg', '3088', '0', '65', '214', '7', '92', '163', '杨浦区淞沪路', '四季 礼堂 杨浦区', '海派菜的大型宴会餐厅，装修一新之后，更显时尚、豪华、大气，成为杨浦地区宴会的首选场地。', '<div class=\"con hotel_info_txt\">\r\n<p>酒店位于繁华的杨浦区淞沪路，主营上海本帮菜及台菜，海派菜的大型宴会餐厅，装修一新之后，更显时尚、豪华、大气，成为杨浦地区宴会、聚餐和婚宴的首选场地。</p>\r\n<p>&nbsp;</p>\r\n<p>餐厅的布局独具匠心，格调颇为典雅古朴，细节考究，品位卓越，厅挑高9米，1300平方米的营业面积，可同时容纳近千人就餐，能满足举办大中型婚宴、商务宴会及私人聚会的要求。</p>\r\n<p>&nbsp;</p>\r\n<p>餐厅配备一流视频音响系统及活动舞台，使来宾充分享受味觉、视觉和听觉的感官盛宴，是举行婚宴庆典、公司宴请的理想场所，融合现代奢华与欧式精致优雅，为新人倾情打造一生难忘的「欧式梦幻豪华婚礼」。</p>\r\n</div>', '', '1', '10号线', '8、55、59、90、99、102、139、168、538、559、713、74', '', '0', '1', '1346125973', '1354178190');
INSERT INTO `lm_goods` VALUES ('156', '今唐大酒店', '10', '64fac1616c22100a5e659f535d4e72d7.jpg', '3288', '0', '48', '216', '7', '87', '147', '上海虹口区广粤路', '今唐 大酒店 虹口区', '上海今唐大酒店位于虹口区广元四路，始终将亚洲式的优雅、殷勤与贴心作为其经营特色及服务宗旨。', '<div class=\"con hotel_info_txt\">\r\n<p>优雅的就餐环境，格调高端的整体风格，金碧辉煌的大堂大气庄重，大理石的地面彰显高端品质，金黄色调是酒店的主角，运用暖色调呈现出尊贵之感，随处可见的各式绿色植物，妆点了优雅的就餐环境，格调高端的整体风格，金碧辉煌的大堂大气庄重，大理石的地面彰显高端品质。</p>\r\n<p> </p>\r\n<p>金黄色调是酒店的主角，运用暖色调呈现出尊贵之感，随处可见的各式绿色植物，妆点了每一个微小的角落。挑高六米的大厅，全场无柱，抬头仰望星空，夜空的星星不再沉寂，仿佛坠入人间同享美酒佳宴。</p>\r\n<p> </p>\r\n<p>烹调方法有红烧、炸、炒、爆、生煎、生煸、蒸、糟、煨、油焖等，全体嘉宾坐拥整片星空，繁星点点途径玫瑰的盛开，从此幸福便深注我们的心底。浓油赤酱风情万种中煨熟了上海人。细细品味，道出几分“柔情蜜意”来。</p>\r\n<p> </p>\r\n<p>想必在参加美酒宴会时候的我们，已穿越时空隧道，置身于十里洋场，赏风月无边，赞花好月圆。</p>\r\n</div>', '', '1', '3号线', '134、100、751、848、875路', '', '0', '1', '1346136749', '1503998479');
INSERT INTO `lm_goods` VALUES ('219', '濠苑金阁', '10', null, '2588', '0', '50', '214', '7', '86', '144', '宝山区', '濠苑 金阁 宝山区', '濠苑金阁是一家新开的酒店，位于宝山区罗店镇美兰湖罗芬路689弄88号，周边环境优雅，清水河畔。', '<p>濠苑金阁是一家新开的酒店，坐落于宝山区，酒店装修大气、精美，菜式丰富，以粤菜、本帮菜为主。</p>', '', '1', '7号线美兰湖站', '963、北罗线、北华线', '', '0', '1', '1353479925', '1355972713');
INSERT INTO `lm_goods` VALUES ('220', '君顶华悦俱乐部', '10', null, '3888', '0', '11', '5', '7', '96', '172', '闵行区', '君顶 华悦 俱乐部', '', '', '', '1', '10号线（龙溪路）', '757、548', '', '0', '1', '1353484103', '1353999756');
INSERT INTO `lm_goods` VALUES ('224', 'gg', '10', null, '0', '0', '33', '214', '7', '85', '140', 'dd', '', '', '', '', '1', '', '', '', '0', '1', '1357806146', '1357806443');

-- ----------------------------
-- Table structure for `lm_images`
-- ----------------------------
DROP TABLE IF EXISTS `lm_images`;
CREATE TABLE `lm_images` (
  `img_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img_path` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `img_name` varchar(255) DEFAULT NULL COMMENT '场景名称',
  `img_height` smallint(2) unsigned DEFAULT '1' COMMENT '场景层高',
  `img_tables` smallint(5) unsigned DEFAULT '1' COMMENT '场景桌数',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品ID',
  `img_hall` char(1) NOT NULL DEFAULT '0' COMMENT '是否大厅展示',
  `img_hot` char(1) NOT NULL DEFAULT '0' COMMENT '推荐图片',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`img_id`)
) ENGINE=MyISAM AUTO_INCREMENT=738 DEFAULT CHARSET=utf8 COMMENT='图片表';

-- ----------------------------
-- Records of lm_images
-- ----------------------------
INSERT INTO `lm_images` VALUES ('86', 'f37d953b13e013581785049155225130.jpg', 'h7', '5', '25', '127', '1', '1', '1333783465');
INSERT INTO `lm_images` VALUES ('87', '7b174a8ea9d30716c085ebb214ca7e24.jpg', 'h6', '5', '25', '127', '1', '0', '1333783465');
INSERT INTO `lm_images` VALUES ('88', '3d7194e74c15eb131e802bce63cb6390.jpg', 'h5', '5', '0', '127', '1', '0', '1333783465');
INSERT INTO `lm_images` VALUES ('89', '0e5ca8d58f862370aa8736427e04b7df.jpg', 'h4', '5', '25', '127', '0', '0', '1333783465');
INSERT INTO `lm_images` VALUES ('90', 'f940cd92c4a1c2cf81f67350859887e6.jpg', 'h3', '0', '25', '127', '0', '0', '1333783465');
INSERT INTO `lm_images` VALUES ('91', 'f54b12b8d1a9ca7a047c3c41af3fa51b.jpg', 'h2', '5', '25', '127', '0', '0', '1333783465');
INSERT INTO `lm_images` VALUES ('92', 'c1d12e58e5e8b666982dc2f68ae45396.jpg', 'h1', '5', '25', '127', '0', '0', '1333783465');
INSERT INTO `lm_images` VALUES ('93', '7be7f6507d62cf9d7361886ebaca3875.jpg', 'j8', '6', '32', '128', '0', '0', '1333786660');
INSERT INTO `lm_images` VALUES ('94', '087d92c98dde6d8ac84bbd27aa1cce91.jpg', 'j7', '6', '32', '128', '1', '0', '1333786660');
INSERT INTO `lm_images` VALUES ('95', 'f01a293a9c18a0155ef6ff918e93f5e8.jpg', 'j6', '6', '32', '128', '1', '0', '1333786660');
INSERT INTO `lm_images` VALUES ('96', 'ac66964940256ef9d36e735f0397713e.jpg', 'j5', '6', '32', '128', '1', '0', '1333786660');
INSERT INTO `lm_images` VALUES ('97', '719d777963d5a566ee340c6c1d0a4ff8.jpg', 'j4', '6', '32', '128', '0', '0', '1333786660');
INSERT INTO `lm_images` VALUES ('98', '8fef3d7d3d0ea7cb9017679efc39d391.jpg', 'j3', '6', '32', '128', '1', '0', '1333786660');
INSERT INTO `lm_images` VALUES ('99', '6129b796fe76c33643f284deec84c8ff.jpg', 'j2', '6', '32', '128', '0', '0', '1333786660');
INSERT INTO `lm_images` VALUES ('100', 'e2938fc0aa72d25ff90bde9171d4a7f1.jpg', 'j1', '6', '32', '128', '0', '1', '1333786660');
INSERT INTO `lm_images` VALUES ('101', 'a3bba29277dbbb88db5446cbf9a3474e.jpg', 'm7F', '4', '10', '129', '1', '1', '1333787354');
INSERT INTO `lm_images` VALUES ('102', 'db70812a509f9037b02401cf13993032.jpg', 'm6F', '5', '30', '129', '1', '0', '1333787354');
INSERT INTO `lm_images` VALUES ('103', '873ac6e3cbb6c4b5bff6f3c11eb457e6.jpg', 'm5F', '5', '30', '129', '0', '0', '1333787354');
INSERT INTO `lm_images` VALUES ('104', 'ac1baf332910a9ea87d5c178327fbfd6.jpg', 'm4F', '5', '30', '129', '0', '0', '1333787354');
INSERT INTO `lm_images` VALUES ('105', 'a3abfd5864d87bde82afbd2bbb682fc4.jpg', 'm3F', '5', '30', '129', '0', '0', '1333787354');
INSERT INTO `lm_images` VALUES ('106', '196053fa85b9bc6422c0b5411c6cfb2f.jpg', 'm2F', '5', '30', '129', '0', '0', '1333787354');
INSERT INTO `lm_images` VALUES ('107', '2c29bd185402fc7f92ed30cca3b5781f.jpg', 'm1F', '5', '32', '129', '0', '0', '1333787354');
INSERT INTO `lm_images` VALUES ('108', 'f37d953b13e013581785049155225130.jpg', 'h7', '5', '25', '130', '1', '1', '1333783465');
INSERT INTO `lm_images` VALUES ('109', '7b174a8ea9d30716c085ebb214ca7e24.jpg', 'h6', '5', '25', '130', '1', '0', '1333783465');
INSERT INTO `lm_images` VALUES ('110', '0e5ca8d58f862370aa8736427e04b7df.jpg', 'h4', '5', '25', '130', '0', '0', '1333783465');
INSERT INTO `lm_images` VALUES ('111', 'f940cd92c4a1c2cf81f67350859887e6.jpg', 'h3', '0', '25', '130', '0', '0', '1333783465');
INSERT INTO `lm_images` VALUES ('422', '508f07035081fe52f0b512c9f7071686.jpg', '4', '0', '0', '147', '0', '0', '1351572977');
INSERT INTO `lm_images` VALUES ('417', '4adf9e150aec62adf6d9a77f8def4867.jpg', '9', '0', '0', '147', '0', '0', '1351572977');
INSERT INTO `lm_images` VALUES ('419', 'd8589258c16a8ac5e5b4c7150251d643.jpg', '7', '0', '0', '147', '0', '0', '1351572977');
INSERT INTO `lm_images` VALUES ('420', '496a3486970c15fe47d2e37a2c64b5bf.jpg', '6', '0', '0', '147', '0', '0', '1351572977');
INSERT INTO `lm_images` VALUES ('421', 'f354b12d23e713c3f96eef59f0253c17.jpg', '5', '0', '0', '147', '0', '0', '1351572977');
INSERT INTO `lm_images` VALUES ('439', '0515b8425f04168b56bdb3438d358bc1.jpg', '华夏厅', '6', '46', '148', '1', '1', '1351575518');
INSERT INTO `lm_images` VALUES ('153', '6cb12f3211328c32cfb8cbd167e760ab.jpg', '一楼大厅', '11', '65', '149', '1', '1', '1346223362');
INSERT INTO `lm_images` VALUES ('441', '1f41a65538335d598314903b3ee11774.jpg', '7', '0', '0', '149', '0', '0', '1351577205');
INSERT INTO `lm_images` VALUES ('442', '81a7b2b2120fbbef22b73de42d7ebe3e.jpg', '6', '0', '0', '149', '0', '0', '1351577205');
INSERT INTO `lm_images` VALUES ('443', '4d0e19f71e6f1b739fb54dbe29f31da1.jpg', '5', '0', '0', '149', '0', '0', '1351577205');
INSERT INTO `lm_images` VALUES ('444', '492efc2e1959714fabbc4b95d51c5c36.jpg', '4', '0', '0', '149', '0', '0', '1351577205');
INSERT INTO `lm_images` VALUES ('499', 'b7ebeb803eacc77ad5eb0690a1519f43.jpg', '6', '0', '0', '156', '0', '0', '1351663151');
INSERT INTO `lm_images` VALUES ('219', '2f1e3d7006142e1a8af880ee33f68288.jpg', '5', '0', '0', '159', '0', '0', '1346835520');
INSERT INTO `lm_images` VALUES ('220', '6c2eed92d50d767bcf23e898ae77a1db.jpg', '4', '0', '0', '159', '0', '1', '1346835520');
INSERT INTO `lm_images` VALUES ('221', '2252f7738b6ad9a42329ee9ae2c03c31.jpg', '3', '0', '0', '159', '0', '0', '1346835520');
INSERT INTO `lm_images` VALUES ('222', 'f3826c79e5cc02ca030313775176946e.jpg', '2', '0', '0', '159', '0', '0', '1346835520');
INSERT INTO `lm_images` VALUES ('223', '4f972c4db82f246980b038b71abea1d8.jpg', '1', '0', '0', '159', '0', '0', '1346835520');
INSERT INTO `lm_images` VALUES ('224', '1f19e246defeffe720793432ee5aa15c.jpg', '玫瑰厅', '5', '30', '159', '1', '0', '1346835520');
INSERT INTO `lm_images` VALUES ('423', '39bdb61a758a44fa6090f2b1e9e59f04.jpg', '3', '0', '0', '147', '0', '0', '1351572977');
INSERT INTO `lm_images` VALUES ('424', 'd73510f094e280836d36daedcde65366.jpg', '2', '0', '0', '147', '0', '0', '1351572977');
INSERT INTO `lm_images` VALUES ('425', '1187b355089debddbe01ba4551980701.jpg', '1', '0', '0', '147', '0', '0', '1351572977');
INSERT INTO `lm_images` VALUES ('440', '315a83244ad18d335ced8fecfa3c815a.jpg', '一楼宴会厅', '0', '0', '147', '1', '1', '1351575550');
INSERT INTO `lm_images` VALUES ('445', 'b1eea6779c567763f4fbdb7d3f3ea237.jpg', '3', '0', '0', '149', '0', '0', '1351577205');
INSERT INTO `lm_images` VALUES ('446', '95eefb390c66d35532d752aecc3524e0.jpg', '2', '0', '0', '149', '0', '0', '1351577205');
INSERT INTO `lm_images` VALUES ('447', 'd7721c320f652597da3d9dcbeeac8f9f.jpg', '1', '0', '0', '149', '0', '0', '1351577205');
INSERT INTO `lm_images` VALUES ('500', 'a7a486aabb82ebca6965189d8457f22a.jpg', '5', '0', '0', '156', '0', '0', '1351663151');
INSERT INTO `lm_images` VALUES ('501', 'a07cf0fcc6f0561e8f93340a3c850c90.jpg', '4', '0', '0', '156', '0', '0', '1351663151');
INSERT INTO `lm_images` VALUES ('502', '357277e076b2c5ac6c29b6d48dc6385a.jpg', '3', '0', '0', '156', '0', '0', '1351663151');
INSERT INTO `lm_images` VALUES ('503', '98264e85508d80d424f17dabe51ab3f1.jpg', '2', '0', '0', '156', '0', '0', '1351663151');
INSERT INTO `lm_images` VALUES ('504', '65b73d495a93a3cf98b4bc603af1ba2e.jpg', '1', '0', '0', '156', '0', '0', '1351663151');
INSERT INTO `lm_images` VALUES ('506', '64fac1616c22100a5e659f535d4e72d7.jpg', '欣月厅', '0', '0', '156', '1', '1', '1351663339');

-- ----------------------------
-- Table structure for `lm_index`
-- ----------------------------
DROP TABLE IF EXISTS `lm_index`;
CREATE TABLE `lm_index` (
  `index_id` smallint(4) NOT NULL AUTO_INCREMENT,
  `index_value` varchar(1000) DEFAULT NULL COMMENT '值',
  `index_content` varchar(255) DEFAULT NULL COMMENT '备注',
  `index_sort` smallint(6) NOT NULL COMMENT '排序号',
  PRIMARY KEY (`index_id`),
  KEY `index_value` (`index_value`(255))
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='键值设置-首页';

-- ----------------------------
-- Records of lm_index
-- ----------------------------
INSERT INTO `lm_index` VALUES ('1', 'http://localhost/club/index.php/user/reg,http://localhost/club/lm_uploads/1354695856.jpg', '首页-顶部广告', '0');
INSERT INTO `lm_index` VALUES ('2', '#,\r\nhttp://www.a.com/lm_uploads/1351054519.jpg|\r\n#,\r\nhttp://www.a.com/lm_uploads/1351054599.jpg|\r\n#,\r\nhttp://www.a.com/lm_uploads/1346216705.jpg', '首页-广告切换BANNER', '1');
INSERT INTO `lm_index` VALUES ('3', '148,147,148,147,148,147,148,147,', '首页-热门酒店预订', '2');
INSERT INTO `lm_index` VALUES ('4', '148,147,148,147,148,147,148,147,', '首页-精选酒店', '4');
INSERT INTO `lm_index` VALUES ('5', '154,156,203,202,158,199,155,149', '首页-每周酒店', '5');
INSERT INTO `lm_index` VALUES ('6', '77,81', '首页-会议知识', '12');
INSERT INTO `lm_index` VALUES ('7', 'http://www.baidu.com,会务通网|\r\nhttp://www.baidu.com,会务通网|\r\nhttp://www.baidu.com,到哪儿网|\r\nhttp://www.baidu.com,会务通网|\r\nhttp://www.baidu.com,会务通网|\r\nhttp://www.baidu.com,会务通网|', '友情链接', '14');
INSERT INTO `lm_index` VALUES ('8', '70,71,72,73,74,75,76', '底部导航', '15');
INSERT INTO `lm_index` VALUES ('9', '192,189,184,151,153,154,197,152,209,157,160,206', '首页-特价酒店预订', '3');
INSERT INTO `lm_index` VALUES ('10', '4,5', '首页-会议需求', '9');
INSERT INTO `lm_index` VALUES ('11', '#,http://www.a.com/lm_uploads/1346042123.jpg', '首页-广告GD1', '6');
INSERT INTO `lm_index` VALUES ('12', '#,http://localhost/hhx305/x/lm_uploads/1333845840.jpg', '首页-广告GD2', '7');
INSERT INTO `lm_index` VALUES ('13', 'http://www.a.com/lmgoods/detail/156,http://www.a.com/lm_uploads/1346208469.jpg', '首页-广告GD3', '8');
INSERT INTO `lm_index` VALUES ('14', '148,147,150,161,156,152,192,157,160,153', '酒店列表-左侧-Top10', '13');
INSERT INTO `lm_index` VALUES ('15', '80', '首页-优惠活动', '10');
INSERT INTO `lm_index` VALUES ('16', '79', '首页-会议资讯', '11');

-- ----------------------------
-- Table structure for `lm_menu`
-- ----------------------------
DROP TABLE IF EXISTS `lm_menu`;
CREATE TABLE `lm_menu` (
  `menu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(255) DEFAULT NULL COMMENT '宴名',
  `menu_price` smallint(5) unsigned DEFAULT NULL COMMENT '宴价',
  `menu_l_price` smallint(5) NOT NULL DEFAULT '1',
  `menu_table` smallint(5) NOT NULL DEFAULT '1',
  `menu_name` text COMMENT '菜单',
  `menu_content` varchar(255) DEFAULT NULL COMMENT '会议备注',
  `menu_contents` text COMMENT '会议室信息',
  `put_id` varchar(255) NOT NULL DEFAULT '0' COMMENT '摆放形式',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品ID',
  `menu_time` int(10) DEFAULT NULL,
  `pricea` smallint(5) DEFAULT '0' COMMENT '小时',
  `priceb` smallint(5) DEFAULT '0' COMMENT '半天',
  `pricec` smallint(5) DEFAULT '0' COMMENT '全天',
  `priced` smallint(5) DEFAULT '0' COMMENT '晚上',
  `pricee` smallint(5) DEFAULT '0' COMMENT '全天搭建',
  `pricef` smallint(5) DEFAULT '0' COMMENT '晚上搭建',
  PRIMARY KEY (`menu_id`),
  KEY `put_id` (`put_id`),
  KEY `menu_table` (`menu_table`),
  KEY `menu_l_price` (`menu_l_price`),
  KEY `pricea` (`pricea`),
  KEY `priceb` (`priceb`),
  KEY `pricec` (`pricec`),
  KEY `priced` (`priced`),
  KEY `pricee` (`pricee`),
  KEY `pricef` (`pricef`)
) ENGINE=MyISAM AUTO_INCREMENT=365 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lm_menu
-- ----------------------------
INSERT INTO `lm_menu` VALUES ('359', '今唐会议1', '0', '5', '7', null, '0', '', 'a:2:{i:0;s:3:\"200\";i:1;s:3:\"206\";}', '156', '1354075242', '200', '500', '900', '300', '2000', '1500');
INSERT INTO `lm_menu` VALUES ('360', 'as', '0', '6', '7', null, 'dasfad', '<p>&nbsp;这里是简介。。。。。。。。。。。。。。</p>', '206', '219', '1354081717', '1', '23', '3', '4', '5', '6');
INSERT INTO `lm_menu` VALUES ('361', '会议室111', '0', '301', '20', null, 'oo', '', '201', '147', '1354178414', '100', '500', '800', '600', '1200', '700');
INSERT INTO `lm_menu` VALUES ('362', 'fda', '0', '0', '0', null, '', '', '0', '147', '1355901236', '0', '0', '0', '0', '0', '0');
INSERT INTO `lm_menu` VALUES ('363', 'h1h1', '0', '0', '0', null, '', '', 'a:6:{i:0;s:3:\"200\";i:1;s:3:\"201\";i:2;s:3:\"202\";i:3;s:3:\"207\";i:4;s:3:\"209\";i:5;s:3:\"210\";}', '147', '1355903038', '0', '0', '0', '0', '0', '0');
INSERT INTO `lm_menu` VALUES ('364', '1,3,4', '0', '0', '0', null, '', '', 'a:2:{i:0;s:3:\"200\";i:1;s:3:\"210\";}', '147', '1355971503', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `lm_menu_att`
-- ----------------------------
DROP TABLE IF EXISTS `lm_menu_att`;
CREATE TABLE `lm_menu_att` (
  `menu_id` int(10) unsigned NOT NULL,
  `att_id` smallint(5) unsigned NOT NULL,
  KEY `menu_id` (`menu_id`),
  KEY `att_id` (`att_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lm_menu_att
-- ----------------------------
INSERT INTO `lm_menu_att` VALUES ('363', '200');
INSERT INTO `lm_menu_att` VALUES ('363', '201');
INSERT INTO `lm_menu_att` VALUES ('363', '202');
INSERT INTO `lm_menu_att` VALUES ('363', '209');
INSERT INTO `lm_menu_att` VALUES ('363', '210');
INSERT INTO `lm_menu_att` VALUES ('359', '200');
INSERT INTO `lm_menu_att` VALUES ('359', '206');
INSERT INTO `lm_menu_att` VALUES ('363', '207');
INSERT INTO `lm_menu_att` VALUES ('364', '210');
INSERT INTO `lm_menu_att` VALUES ('364', '200');

-- ----------------------------
-- Table structure for `lm_news`
-- ----------------------------
DROP TABLE IF EXISTS `lm_news`;
CREATE TABLE `lm_news` (
  `news_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `newstitle` varchar(255) NOT NULL,
  `newscontent` text,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `newsimg` varchar(255) DEFAULT NULL COMMENT '图片',
  `admin_id` smallint(5) unsigned DEFAULT NULL,
  `newstime` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL COMMENT '更新日期',
  `news_class_id` smallint(5) NOT NULL COMMENT '分类 ID',
  PRIMARY KEY (`news_id`),
  KEY `newstitle` (`newstitle`),
  KEY `news_class_id` (`news_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lm_news
-- ----------------------------
INSERT INTO `lm_news` VALUES ('70', '关于我们', '<p>&nbsp;关于我们关于我们关于我们关于我们</p>', '', '', '0', '1', '1354603292', null, '36');
INSERT INTO `lm_news` VALUES ('71', '联系我们', '<p>&nbsp;联系我们联系我们</p>', '', '', '0', '1', '1354603518', null, '36');
INSERT INTO `lm_news` VALUES ('72', '广告服务', '<p>&nbsp;广告服务广告服务</p>', '', '', '0', '1', '1354603566', null, '36');
INSERT INTO `lm_news` VALUES ('73', '人才招聘', '<p>&nbsp;人才招聘人才招聘</p>', '', '', '0', '1', '1354603630', null, '36');
INSERT INTO `lm_news` VALUES ('74', '隐私条款', '<p>&nbsp;隐私条款隐私条款隐私条款</p>', '', '', '0', '1', '1354603723', null, '36');
INSERT INTO `lm_news` VALUES ('75', '使用条款', '<p>&nbsp;使用条款使用条款使用条款</p>', '', '', '0', '1', '1354603733', null, '36');
INSERT INTO `lm_news` VALUES ('76', '网站地图', '<p>&nbsp;网站地图网站地图</p>', '', '', '0', '1', '1354603740', null, '36');
INSERT INTO `lm_news` VALUES ('77', '会议知识113', '<p>&nbsp;会议知识11会议知识115</p>', '', '', '0', '1', '1354603751', '1354604049', '32');
INSERT INTO `lm_news` VALUES ('78', '会议需求1', '<p>&nbsp;会议需求1会议需求1</p>', '', '', '0', '1', '1354674966', null, '39');
INSERT INTO `lm_news` VALUES ('79', '会议资讯1', '<p>&nbsp;会议资讯1会议资讯1</p>', '', '', '0', '1', '1354763185', null, '37');
INSERT INTO `lm_news` VALUES ('80', '优惠活动1', '<p>&nbsp;优惠活动1优惠活动1</p>', '', '', '0', '1', '1354763195', null, '38');
INSERT INTO `lm_news` VALUES ('81', '会议知识1', '<p>&nbsp;会议知识1会议知识1会议知识1</p>', '', '', '0', '1', '1354763217', null, '32');
INSERT INTO `lm_news` VALUES ('82', '会议策划11', '<p>&nbsp;会议策划11会议策划11会议策划11</p>', '', '', '0', '1', '1354772114', null, '19');
INSERT INTO `lm_news` VALUES ('83', '场地布置11', '<p>&nbsp;场地布置11场地布置11</p>', '', '', '0', '1', '1354772126', null, '20');
INSERT INTO `lm_news` VALUES ('84', '会议笄22', '<p>&nbsp;会议笄22会议笄22会议笄22</p>', '', '', '0', '1', '1354775413', null, '19');

-- ----------------------------
-- Table structure for `lm_news_class`
-- ----------------------------
DROP TABLE IF EXISTS `lm_news_class`;
CREATE TABLE `lm_news_class` (
  `news_class_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `news_class_title` varchar(255) NOT NULL COMMENT '标题',
  `news_cla_id` smallint(4) DEFAULT '0' COMMENT '父类ID',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `news_class_content` text,
  PRIMARY KEY (`news_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='新闻分类';

-- ----------------------------
-- Records of lm_news_class
-- ----------------------------
INSERT INTO `lm_news_class` VALUES ('1', '会务通', '0', '', '', '');
INSERT INTO `lm_news_class` VALUES ('18', '会议服务', '0', '', '会务通是领先的通过网络平台为客户提供商务，旅游和会议服务的机构。会务通除了会议室预订服务以外，我们还为您提供翻译、票务代理、设备租赁、租车、场地布置、商务考察、庆典策划、灯光音响设计、礼仪接待、摄影摄像等服务。', '');
INSERT INTO `lm_news_class` VALUES ('19', '会议策划', '18', '', '', '');
INSERT INTO `lm_news_class` VALUES ('20', '场地布置', '18', '', '', '');
INSERT INTO `lm_news_class` VALUES ('21', '翻译服务', '18', '', '', '');
INSERT INTO `lm_news_class` VALUES ('22', '票务代理', '18', '', '', '');
INSERT INTO `lm_news_class` VALUES ('23', '庆典策划', '18', '', '', '');
INSERT INTO `lm_news_class` VALUES ('24', '灯光音响', '18', '', '', '');
INSERT INTO `lm_news_class` VALUES ('25', '礼品奖品', '18', '', '', '');
INSERT INTO `lm_news_class` VALUES ('26', '摄影摄像', '18', '', '', '');
INSERT INTO `lm_news_class` VALUES ('27', '接待服务', '18', '', '', '');
INSERT INTO `lm_news_class` VALUES ('28', '设备租赁', '18', '', '', '');
INSERT INTO `lm_news_class` VALUES ('29', '拓展训练', '18', '', '', '');
INSERT INTO `lm_news_class` VALUES ('30', '会议旅游', '18', '', '', '');
INSERT INTO `lm_news_class` VALUES ('31', '会议指南', '0', '', '', '');
INSERT INTO `lm_news_class` VALUES ('32', '会议知识', '31', '', '', '');
INSERT INTO `lm_news_class` VALUES ('33', '会议技巧', '31', '', '', '');
INSERT INTO `lm_news_class` VALUES ('34', '会议工具', '31', '', '', '');
INSERT INTO `lm_news_class` VALUES ('35', '会议计划', '31', '', '', '');
INSERT INTO `lm_news_class` VALUES ('36', '关于会务通', '1', '', '', '');
INSERT INTO `lm_news_class` VALUES ('37', '会议资讯', '1', '', '', '');
INSERT INTO `lm_news_class` VALUES ('38', '优惠活动', '1', '', '', '');
INSERT INTO `lm_news_class` VALUES ('39', '会议需求', '1', '', '', '');

-- ----------------------------
-- Table structure for `lm_order`
-- ----------------------------
DROP TABLE IF EXISTS `lm_order`;
CREATE TABLE `lm_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '酒店ID',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '订单状态(0-处理中，1-已处理，2-订单无效)',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名称 ',
  `cat_id` smallint(5) unsigned NOT NULL COMMENT '区域（搜索）',
  `l_price` smallint(5) unsigned DEFAULT NULL COMMENT '价格',
  `h_price` smallint(5) DEFAULT NULL COMMENT '最高价格',
  `create_time` int(10) unsigned NOT NULL COMMENT '下单日期',
  `update_time` int(10) unsigned NOT NULL COMMENT '处理日期',
  `user_id` smallint(8) unsigned NOT NULL COMMENT '会员ID',
  `admin_id` smallint(5) unsigned DEFAULT NULL COMMENT '操作员ID',
  `order_phone` varchar(11) DEFAULT NULL COMMENT '订单电话',
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='会员订单表';

-- ----------------------------
-- Records of lm_order
-- ----------------------------
INSERT INTO `lm_order` VALUES ('1', '58', '2', 'xxx3', '8', '55', '66', '1333523705', '0', '7', '19', '13817666166');
INSERT INTO `lm_order` VALUES ('2', '133', '1', '汉唐大酒店4', '8', '2200', '3900', '1345692684', '1345692684', '1', '16', '13817999199');
INSERT INTO `lm_order` VALUES ('3', '150', '1', '碧莱仕私人婚礼会所', '8', '6888', '9888', '1353482678', '1353482678', '8', '16', '13621869086');

-- ----------------------------
-- Table structure for `lm_user`
-- ----------------------------
DROP TABLE IF EXISTS `lm_user`;
CREATE TABLE `lm_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_mail` varchar(50) NOT NULL COMMENT '注册邮箱',
  `user_phone` char(11) DEFAULT NULL COMMENT '手机',
  `user_password` varchar(32) NOT NULL COMMENT '会员密码',
  `user_name` varchar(8) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `sex` char(1) DEFAULT '0' COMMENT '性别',
  `cat_id` smallint(5) unsigned DEFAULT NULL COMMENT '城市ID',
  `address` varchar(50) DEFAULT NULL,
  `zip` int(6) unsigned DEFAULT NULL COMMENT '邮编',
  `tel` varchar(50) DEFAULT NULL,
  `qq` varchar(18) DEFAULT NULL,
  `msn` varchar(50) DEFAULT NULL,
  `ip` varchar(15) NOT NULL COMMENT '登陆IP',
  `token` varchar(32) NOT NULL COMMENT '令牌',
  `create_time` int(10) unsigned NOT NULL COMMENT '注册日期',
  `update_time` int(10) unsigned NOT NULL COMMENT '最后登陆时间',
  PRIMARY KEY (`user_id`),
  KEY `user_mail` (`user_mail`),
  KEY `mphone` (`user_phone`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lm_user
-- ----------------------------
INSERT INTO `lm_user` VALUES ('8', '674525449@qq.com', '13621869086', 'e10adc3949ba59abbe56e057f20f883e', '李家', '咚咚', '0', '8', '', '0', '', '', '', '180.173.124.181', 'a327fb17bae03a6bb442047da99c1072', '1353482608', '1353482712');
INSERT INTO `lm_user` VALUES ('9', '5015199@qq.com', '13817999199', '25f9e794323b453885f5181f1b624d0b', '阿猛', '阿呆', '0', '6', 'fda', '220066', '021-56777771', '0', '0', '127.0.0.1', 'b4ea0f8b1cfa0b263a3374b468a90666', '1354782854', '1354786006');
INSERT INTO `lm_user` VALUES ('10', '5015144@qq.com', '15800530355', 'fab6190569eda71a474a141917b80b4b', '糜作荣', '小糜', '1', '6', '江苏省射阳县', '223036', '0515-5655652', '339605222', 'msn@gmail.com', '127.0.0.1', '20ddbb6e32f87be981bbe063f9cb2cde', '1355726971', '1356321394');
