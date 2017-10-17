/*
Navicat MySQL Data Transfer

Source Server         : ekey
Source Server Version : 50156
Source Host           : dg1ujsih0x.gotoftp5.com:3306
Source Database       : dg1ujsih0x

Target Server Type    : MYSQL
Target Server Version : 50156
File Encoding         : 65001

Date: 2017-10-17 18:06:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dede_addonarticle`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_addonarticle
-- ----------------------------
INSERT INTO `dede_addonarticle` VALUES ('1', '1', '<p style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); font-family: Verdana, Arial, Tahoma, 宋体; line-height: 27.6px;\">\r\n	金字塔（上海）&nbsp;<strong style=\"padding: 0px; margin: 0px;\"><a href=\"http://www.jzt-e.com/\" style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); text-decoration: none;\">展厅设计</a></strong>工程有限公司是一家从事国内外大型展厅设计、施工，<a href=\"http://www.jzt-e.com/\" style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); text-decoration: none;\" title=\"校史馆设计\">校史馆设计</a>、沙盘模型设计、施工的专业设计工程公司, 是一支具有超前理念、创新及团队精神、有着先进的国际服务理念和以人为本企业文化的现代化公司。为客户提供与展览有关的全面服务，主要有：<br style=\"padding: 0px; margin: 0px;\" />\r\n	展厅设计、施工；多媒体设计、制作；活动与策划，沙盘模型设计、施工。<br style=\"padding: 0px; margin: 0px;\" />\r\n	　　<br style=\"padding: 0px; margin: 0px;\" />\r\n	金字塔<strong style=\"padding: 0px; margin: 0px;\"><a href=\"http://www.jzt-e.com/\" style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); text-decoration: none;\">展厅设计</a></strong>汇集了专精的设计团队，为各类客户量身定做具有各自企业特色及内涵的设计方案。在创意设计上，吸引了一批敬业乐业、才华横溢的设计人师；在文案策划上，拥有成功实战经验的专业人才，共同构架出公司智慧型的人才体系。</p>\r\n<p style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); font-family: Verdana, Arial, Tahoma, 宋体; line-height: 27.6px;\">\r\n	金字塔拥有一支技术力量先进,专业经验丰富的工程施工队伍,并与相应的承包商建立密切的伙伴合作关系.<br style=\"padding: 0px; margin: 0px;\" />\r\n	精通项目流程的专业项目人员,资深的专业设计师,熟练的专业技术工人,完善的专业制作工厂,严谨的专业质量管理系统, 为客户提供全程专业服务的同时,也提供最可靠的质量保证.<br style=\"padding: 0px; margin: 0px;\" />\r\n	金字塔<strong style=\"padding: 0px; margin: 0px;\">展厅设计</strong>正通过自身的努力为中国展览业作贡献，他将永攀高峰、引领行业潮流......</p>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('2', '1', '<div style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); font-family: Verdana, Arial, Tahoma, 宋体; line-height: 27.6px;\">\r\n	国际顶尖的展厅设计</div>\r\n<div style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); font-family: Verdana, Arial, Tahoma, 宋体; line-height: 27.6px;\">\r\n	由创意引导、整体策划、整体设计、深化设计、陈展指导等方面的专业人员，完成展馆展厅设计从无到有，<span class=\"Apple-tab-span\" style=\"padding: 0px; margin: 0px; white-space: pre;\"> </span>&nbsp;使展览馆设计从概念到深化的设计流程。</div>\r\n<div style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); font-family: Verdana, Arial, Tahoma, 宋体; line-height: 27.6px;\">\r\n	&nbsp;</div>\r\n<div style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); font-family: Verdana, Arial, Tahoma, 宋体; line-height: 27.6px;\">\r\n	成熟的多媒体制作技术</div>\r\n<div style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); font-family: Verdana, Arial, Tahoma, 宋体; line-height: 27.6px;\">\r\n	人机交互、多媒体制作系统集成、软硬件互动，突出以参与者为中心的技术理念，让参与者在多媒体制作技术帮助下多角度地了解观展内容，更加印象深刻地记忆观展过程。</div>\r\n<div style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); font-family: Verdana, Arial, Tahoma, 宋体; line-height: 27.6px;\">\r\n	&nbsp;</div>\r\n<div style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); font-family: Verdana, Arial, Tahoma, 宋体; line-height: 27.6px;\">\r\n	迅捷优质的施工</div>\r\n<div style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); font-family: Verdana, Arial, Tahoma, 宋体; line-height: 27.6px;\">\r\n	金字塔拥有百余个展厅设计、展馆设计项目经验。实行项目经理负责制度，项目施工的整体把控与细节的自验收是金字塔展厅设计的特色，对客户要求做到零等待，全响应的程度。</div>\r\n<div style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); font-family: Verdana, Arial, Tahoma, 宋体; line-height: 27.6px;\">\r\n	&nbsp;</div>\r\n<div style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); font-family: Verdana, Arial, Tahoma, 宋体; line-height: 27.6px;\">\r\n	长期到位的服务</div>\r\n<div style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); font-family: Verdana, Arial, Tahoma, 宋体; line-height: 27.6px;\">\r\n	从售前商务与技术的咨询，到项目实施过程中的反馈和项目维护阶段的服务，金字塔始终坚持服务第一，立项终身化服务的观念。</div>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('3', '1', '<span style=\"color: rgb(100, 100, 100); font-family: Verdana, Arial, Tahoma, 宋体; line-height: 27.6px; text-align: center;\">&nbsp;</span><strong style=\"padding: 0px; margin: 0px; color: rgb(100, 100, 100); font-family: Verdana, Arial, Tahoma, 宋体; line-height: 27.6px; text-align: center;\">咨询电话：021-62109005<br style=\"padding: 0px; margin: 0px;\" />\r\nEmail：jin.zt@foxmail.com<br style=\"padding: 0px; margin: 0px;\" />\r\n地址：上海市闸北区延长中路801号A座8楼8010室</strong>', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('10', '1', '西码文化西码文化', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('9', '1', '西码介绍西码介绍', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('11', '1', '西码荣誉西码荣誉', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('12', '1', '组织架构组织架构', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('13', '1', '营销网络营销网络', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('14', '1', '联系西码联系西码', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('15', '1', '招贤纳士招贤纳士', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('37', '1', '<img alt=\"\" src=\"/uploads/allimg/160817/1-160QH02639D9.jpg\" style=\"width: 947px; height: 140px;\" />\r\n<div class=\"H20\">\r\n	&nbsp;</div>\r\n<h3 style=\"font-size:36px; border-bottom:dotted 1px #ccc;width:60%; margin:auto;color:#000;line-height:60px;text-align:center;\">\r\n	诚信、创新、执行、共赢</h3>\r\n<p style=\"font-size:18px; line-height:40px; margin-top:20px; text-align:center;\">\r\n	诚信：诚信为本、服务至上<br />\r\n	创新：顺应时代、积极进取<br />\r\n	执行：数据说话、结果导向<br />\r\n	共赢：互惠互利、持续发展</p>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('23', '22', '<a href=\"http://m.jzt.com/#\" style=\"box-sizing: border-box; color: rgb(102, 102, 102); margin: 0px 0px 10px; font-family: 微软雅黑; font-size: 14px; line-height: 20px; text-decoration: none !important; cursor: pointer !important;\">重庆企业软件正版化普及提速，六企业获奖</a><a href=\"http://m.jzt.com/#\" style=\"box-sizing: border-box; color: rgb(102, 102, 102); margin: 0px 0px 10px; font-family: 微软雅黑; font-size: 14px; line-height: 20px; text-decoration: none !important; cursor: pointer !important;\">重庆企业软件正版化普及提速，六企业获奖</a><a href=\"http://m.jzt.com/#\" style=\"box-sizing: border-box; color: rgb(102, 102, 102); margin: 0px 0px 10px; font-family: 微软雅黑; font-size: 14px; line-height: 20px; text-decoration: none !important; cursor: pointer !important;\">重庆企业软件正版化普及提速，六企业获奖</a><a href=\"http://m.jzt.com/#\" style=\"box-sizing: border-box; color: rgb(102, 102, 102); margin: 0px 0px 10px; font-family: 微软雅黑; font-size: 14px; line-height: 20px; text-decoration: none !important; cursor: pointer !important;\">重庆企业软件正版化普及提速，六企业获奖</a>', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('24', '22', '重庆企业软件正版化普及提速，六企业获奖重庆企业软件正版化普及提速，六企业获奖重庆企业软件正版化普及提速，六企业获奖', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('25', '21', '杭州G20峰会期间调休放假安排公布杭州G20峰会期间调休放假安排公布杭州G20峰会期间调休放假安排公布杭州G20峰会期间调休放假安排公布杭州G20峰会期间调休放假安排公布', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('47', '28', '贤能自动充值端午节9折优惠充值贤能自动充值端午节9折优惠充值贤能自动充值端午节9折优惠充值', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('48', '28', '贤能自动充值端午节9折优惠充值2', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('49', '28', '服务活动1贤能自动充值端午节9折优惠充值', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('36', '1', '<p style=\"font-size: 14px;color: #333;\">\r\n	&nbsp;</p>\r\n<div class=\"H40\">\r\n	上海齐卡信息科技有限公司是国内最早从事支付增值业务领域POS机代理平台，主要产品:POS机办理、POS机申请、上海银联POS机安装，为用户提供特惠、团购、账单分期等多种增值服务，为用户创造消费价值。</div>\r\n', '', '', '116.226.248.94');
INSERT INTO `dede_addonarticle` VALUES ('62', '31', '<div>\r\n	<a href=\"http://www.jfbpal.net/\">办理POS机</a>这块可能需要资质证明（例如工商，法人身份证，开户等，LS已经说得很全了），我只是想说下，这块中国银联本身是没有收单资质的，所以直接找银联是不可行的，应该是去找对应的收单机构（银联系内是银联商务【市场pos占有率90%以上】、宁波银商、数字王府井、深圳好易联，各家银行有收单资质【不过只能受理本家银行】，还有其他具有收单资质的第三方【在去年发的支付牌照下有详细说明是否有线下收单资质】</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	不过要资质。第三方也蛮多，要选择正规一清机，开机了带有正规银联标志。有的只是在机子上贴个银联标骗人，还有手刷不太安全。我做过这个工作，表达不清楚，请担待。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	招商银行零售信贷经理助理第三方pos机是要收费的，而银行的机器是免费且不需要押金的。至于扣点，得根据你的经营范围以及经营地址，如果你位于批发商圈内，且营业执照上有批发字样，申请银行的机器吧，一来与银行频繁业务往来，对以后贷款，办信用卡之类的有好处；二来在批发商圈银行针对商户有不少优惠减免政策，还能做到封顶，例如招行，首月无门槛减免1000手续费，次月根据上月月日均决定减免额度，最多减免1万。如果你是零售类的，那么建议办通联这些大公司的机具，一来收款有保障，二来售后服务有专人。</div>\r\n', '', '', '116.226.248.94');
INSERT INTO `dede_addonarticle` VALUES ('34', '27', '水费缴费水费缴费', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('35', '27', '电费缴费电费缴费电费缴费', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('28', '25', '', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('29', '25', '', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('33', '27', '天然气充值天然气充值', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('32', '27', '公交卡充值公交卡充值', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('38', '1', '<img alt=\"\" src=\"/uploads/allimg/160817/1-160QH02639D9.jpg\" />\r\n<div class=\"H50\">\r\n	&nbsp;</div>\r\n<img alt=\"\" src=\"/uploads/allimg/160817/160817/1-160QH029194b.png\" />', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('39', '1', '<img alt=\"\" src=\"/uploads/allimg/160817/1-160QH02639D9.jpg\" />\r\n<div class=\"H20\">\r\n	&nbsp;</div>\r\n<ul class=\"xn_honer\">\r\n	<li>\r\n		<img alt=\"\" src=\"/uploads/allimg/160817/1-160QH0303XI.png\" /> <span>实用新型专利证书</span></li>\r\n	<li>\r\n		<img alt=\"\" src=\"/uploads/allimg/160817/1-160QH03049444.png\" /> <span>计算机软件著作权</span></li>\r\n</ul>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('40', '1', '<img alt=\"\" src=\"/uploads/allimg/160817/1-160QH02639D9.jpg\" style=\"width: 947px; height: 140px;\" />\r\n<div class=\"H20\">\r\n	&nbsp;</div>\r\n<h3 style=\"font-size: 18px;color:#000;line-height: 40px;text-align: left;\">\r\n	上海贤能信息科技有限公司</h3>\r\n<span style=\"display: block;font-size: 14px;color:#666;line-height: 25px;text-align: left;\">地址：上海市闵行区联航路1588号863软件园7栋</span> <span style=\"display: block;font-size: 14px;color:#666;line-height: 25px;text-align: left;margin-bottom: 20px;\">E-mail：xianneng@sh-xianneng.cn</span> <img alt=\"\" src=\"/uploads/allimg/160817/1-160QH03215413.png\" />', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('41', '25', '便民惠民便民惠民', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('42', '25', '操作简单&nbsp;操作简单&nbsp;', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('43', '25', '布点方便布点方便', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('44', '25', '安全可靠安全可靠', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('45', '25', '运行经济运行经济', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('46', '25', '功能强大功能强大', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('50', '28', '服务活动1贤能自动充值端午节9折优惠充值', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('51', '22', '上海贤能信息行业新闻1上海贤能信息行业新闻1上海贤能信息行业新闻1', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('52', '22', '上海贤能信息行业新闻2上海贤能信息行业新闻2上海贤能信息行业新闻2', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('53', '22', '上海贤能信息行业新闻3上海贤能信息行业新闻3上海贤能信息行业新闻3', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('54', '22', '上海贤能信息行业新闻4', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('55', '21', '上海贤能信息公司新闻1', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('56', '21', '上海贤能信息公司新闻1', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('57', '21', '上海贤能信息公司新闻1上海贤能信息公司新闻1', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('58', '21', '上海贤能信息公司新闻1上海贤能信息公司新闻1上海贤能信息公司新闻1', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('59', '29', '帮助中心帮助中心帮助中心', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('60', '26', '<h3>\r\n	资金管理</h3>\r\n<h5>\r\n	工作职责</h5>\r\n<p>\r\n	（1）项目开拓，协助团队寻找潜在的投资项目；<br />\r\n	（2）参与对拟投资项目的行业调研和分析，撰写行业分析报告、尽调报告、投资备忘录等文件；<br />\r\n	（3）协助完成对拟投资项目的尽职调查，为投资决策提供准确的数据分析，并为交易结构的设计提供支持；<br />\r\n	（4）协助合伙人或副总裁开展投资工作。</p>\r\n职位要求：<br />\r\n（1）国内外重点大学医学、药学、生物或类似专业本科以上学历；<br />\r\n（2）具有3年以上在医院、医疗集团、医疗器械公司、生物医药企业工作经验，或者在投资银行、基金、证<br />\r\n券公司、咨询公司中专注于生物医疗行业的相关工作经验；<br />\r\n（3）人品正派，有事业心、责任感和职业道德，可适应较大的工作压力和较长的工作时间；<br />\r\n（4）具备较强的表达能力和优秀的团队合作精神；<br />\r\n（5）有企业管理、财务、金融等复合专业或经验者优先。<br />\r\n<br />\r\n<br />\r\n薪酬待遇：<br />\r\n基本工资：25-40万/年<br />\r\n年终分红：3-24月工资（参考绩效考评）<br />\r\n股票红利：有（工作满一年后）<br />\r\n<br />\r\n<br />\r\n请发送简历至：hr@51zccz.com &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('61', '26', '<h3>\r\n	资金管理</h3>\r\n<h5>\r\n	工作职责</h5>\r\n<p>\r\n	（1）项目开拓，协助团队寻找潜在的投资项目；<br />\r\n	（2）参与对拟投资项目的行业调研和分析，撰写行业分析报告、尽调报告、投资备忘录等文件；<br />\r\n	（3）协助完成对拟投资项目的尽职调查，为投资决策提供准确的数据分析，并为交易结构的设计提供支持；<br />\r\n	（4）协助合伙人或副总裁开展投资工作。</p>\r\n职位要求：<br />\r\n（1）国内外重点大学医学、药学、生物或类似专业本科以上学历；<br />\r\n（2）具有3年以上在医院、医疗集团、医疗器械公司、生物医药企业工作经验，或者在投资银行、基金、证<br />\r\n券公司、咨询公司中专注于生物医疗行业的相关工作经验；<br />\r\n（3）人品正派，有事业心、责任感和职业道德，可适应较大的工作压力和较长的工作时间；<br />\r\n（4）具备较强的表达能力和优秀的团队合作精神；<br />\r\n（5）有企业管理、财务、金融等复合专业或经验者优先。<br />\r\n<br />\r\n<br />\r\n薪酬待遇：<br />\r\n基本工资：25-40万/年<br />\r\n年终分红：3-24月工资（参考绩效考评）<br />\r\n股票红利：有（工作满一年后）<br />\r\n<br />\r\n<br />\r\n请发送简历至：hr@51zccz.com &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('63', '32', '<div>\r\n	中国银联旗下pos机业务相当难办，银联是成员性机构（中国国内的银行机构），只为银行间提供清算业务，不为其它单位和个人提供其它业务。银行提供pos机主要的赢利是靠手续费分成，银行并不在意这一点点分成。各个银行做pos机业务，只是为了给银行吸收更多的存款。如果你的企业不是很大，交易流水不是很大，那么建议你用其它第三方支付机构的pos机。银行pos机虽然很安全，但是申请周期比长，而且pos机费用和流量卡费用都会比较高。而第三方机构的pos机会很便宜，有时候还会免费送你流量卡，而且你可以要求他们给你一个合理的手续费。而事实上银行和第三方支付机构的pos机都是差不多的。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<a href=\"http://www.jfbpal.net/\">银联POS办理</a>渠道很多，找银行，或者第三方支付公司，最安全可靠，还有如果是有证件可以办理真实的。费率是和营业执照有关的。建议找一下一清办理，因为银行也是和支付公司合作的。畅捷支付就不错，推荐</div>\r\n<div>\r\n	&nbsp;</div>\r\n', '', '', '116.226.248.94');
INSERT INTO `dede_addonarticle` VALUES ('64', '33', '<div>\r\n	<a href=\"http://www.jfbpal.net/\">个人pos机办理</a>用途种类有很多，通常用的有消费贷款和装修等贷款。贷款途径也有很多，微信，支付宝等电商小额贷款是个人贷款比较青睐的贷款产品，对于贷款产品的了解也是个人贷款过程中必须要掌握，这样才能不会在贷款过程中上当受骗。&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	虽然部分持卡人在个人POS机套现后能确保及时全额还款，但利用信用卡进行资金周转的行为其实极易被银行监测到，届时会采取降额或停卡处理，对个人信用记录造成不良影响。 ......&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	虽然部分持卡人在个人POS机套现后能确保及时全额还款，但利用信用卡进行资金周转的行为其实极易被银行监测到，届时会采取降额或停卡处理，对个人信用记录造成不良影响。 第三方支付机构所像信用卡持卡者推广的POS机，在为广大用户提供方便。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	日益激增的信用卡套现风险，导致信用卡申请的难度直线上升。近日多位广州市民反映，自己信用记录良好，每月收入也在信用卡限额之上，但再申请信用卡却每每遭到拒绝，甚至还有人的信用卡额度突然被降低。对此业内人士表示，虽然部分持卡人在套现后能确保及时全额还款，但利用信用卡进行资金周转的行为其实极易被银行监测到，届时会采取降额或停卡处理，对个人信用记录造成不良影响。持卡人应当谨慎使用信用卡提取现金并按时归还，以免产生不良信用记录。&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	一名国有大行信用卡中心经理表示，最近&ldquo;流行&rdquo;的这种信用卡套现行为，导致信用卡不良率飙涨。《中国信用卡报告》指出，根据2013年银行年报显示，有9家银行公布了去年的信用卡不良率，其平均不良率为1.44%，较2012年上升0.16个百分点，远高于去年末商业银行1%的不良率。&nbsp;</div>\r\n', '', '', '116.226.248.94');
INSERT INTO `dede_addonarticle` VALUES ('65', '34', '<div>\r\n	<a href=\"http://www.jfbpal.net/\">pos机申请</a>需要什么手续？申请pos机全流程。小编为大家介绍详情。 银行申请POS机：营业执照，税务登记证，组织机构代码，法人身份证，开户行许可证，五证缺一不可。办pos机可......&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	申请pos机需要什么手续？申请pos机全流程。小编为大家介绍详情。 银行申请POS机：营业执照，税务登记证，组织机构代码，法人身份证，开户行许可证，五证缺一不可。办pos机可携带营业执照、法人身份证、税务登记证到银行网点申请一个&ldquo;基本结算账户&rdquo;，申请成功后，携带上述证件填写POS机商户信息调查表，经客户经理核实后可上门安装。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	第三方申请POS机：营业执照，税务登记证，组织机构代码，法人身份证，开户行许可证，有些第三方可以对私账户，相对灵活点。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	POS机走完一个流程1-3天，刷卡到账时间有俩种，T+0和T+1。<span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span></div>\r\n', '', '', '116.226.248.94');

-- ----------------------------
-- Table structure for `dede_addonimages`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_addonimages
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_addoninfos`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_addoninfos
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_addonshop`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_addonshop
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_addonsoft`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_addonsoft
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_addonspec`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_addonspec
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_admin`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_admin
-- ----------------------------
INSERT INTO `dede_admin` VALUES ('1', '10', 'admin', 'f297a57a5a743894a0e4', 'admin', '', '', '0', '1503971597', '101.81.129.167');

-- ----------------------------
-- Table structure for `dede_admintype`
-- ----------------------------
DROP TABLE IF EXISTS `dede_admintype`;
CREATE TABLE `dede_admintype` (
  `rank` float NOT NULL DEFAULT '1',
  `typename` varchar(30) NOT NULL DEFAULT '',
  `system` smallint(6) NOT NULL DEFAULT '0',
  `purviews` text,
  PRIMARY KEY (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_admintype
-- ----------------------------
INSERT INTO `dede_admintype` VALUES ('1', '信息发布员', '1', 't_AccList a_AccNew a_AccList a_MyList a_MyEdit a_MyDel sys_MdPwd sys_Feedback sys_MyUpload plus_留言簿模块 ');
INSERT INTO `dede_admintype` VALUES ('5', '频道管理员', '1', 't_AccList t_AccNew t_AccEdit t_AccDel a_AccNew a_AccList a_AccEdit a_AccDel a_AccCheck a_MyList a_MyEdit a_MyDel a_MyCheck co_AddNote co_EditNote co_PlayNote co_ListNote co_ViewNote spec_New spec_List spec_Edit sys_MdPwd sys_Log sys_ArcTj sys_Source sys_Writer sys_Keyword sys_MakeHtml sys_Feedback sys_Upload sys_MyUpload member_List member_Edit plus_站内新闻发布 plus_友情链接模块 plus_留言簿模块 plus_投票模块 plus_广告管理 ');
INSERT INTO `dede_admintype` VALUES ('10', '超级管理员', '1', 'admin_AllowAll ');

-- ----------------------------
-- Table structure for `dede_advancedsearch`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_advancedsearch
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_arcatt`
-- ----------------------------
DROP TABLE IF EXISTS `dede_arcatt`;
CREATE TABLE `dede_arcatt` (
  `sortid` smallint(6) NOT NULL DEFAULT '0',
  `att` char(10) NOT NULL DEFAULT '',
  `attname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`att`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_arcatt
-- ----------------------------
INSERT INTO `dede_arcatt` VALUES ('5', 's', '滚动');
INSERT INTO `dede_arcatt` VALUES ('1', 'h', '头条');
INSERT INTO `dede_arcatt` VALUES ('3', 'f', '幻灯');
INSERT INTO `dede_arcatt` VALUES ('2', 'c', '推荐');
INSERT INTO `dede_arcatt` VALUES ('7', 'p', '图片');
INSERT INTO `dede_arcatt` VALUES ('8', 'j', '跳转');
INSERT INTO `dede_arcatt` VALUES ('4', 'a', '特荐');
INSERT INTO `dede_arcatt` VALUES ('6', 'b', '加粗');

-- ----------------------------
-- Table structure for `dede_arccache`
-- ----------------------------
DROP TABLE IF EXISTS `dede_arccache`;
CREATE TABLE `dede_arccache` (
  `md5hash` char(32) NOT NULL DEFAULT '',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `cachedata` mediumtext,
  PRIMARY KEY (`md5hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_arccache
-- ----------------------------
INSERT INTO `dede_arccache` VALUES ('9250df71a0f1a7e1136c9948b893d5e0', '1508178927', '62');
INSERT INTO `dede_arccache` VALUES ('7da20bddfc439f2d1987dd9301d67f97', '1508178927', '63');
INSERT INTO `dede_arccache` VALUES ('8fe8d3c4fabccc93281ed588574d9f5b', '1508178928', '64');
INSERT INTO `dede_arccache` VALUES ('8db9087155c5674388b046424b1d0a82', '1508178928', '65');
INSERT INTO `dede_arccache` VALUES ('123bef214e89d400bc8655ed08459fb4', '1503971717', '0');
INSERT INTO `dede_arccache` VALUES ('fbe323be63fe052944c5bbbc47916fdd', '1503971717', '0');
INSERT INTO `dede_arccache` VALUES ('748aeff8539c273fcf11099694dc7d0d', '1503971719', '62');
INSERT INTO `dede_arccache` VALUES ('f976d52dce7c18b6ab171388741d0666', '1503971719', '63');
INSERT INTO `dede_arccache` VALUES ('7273f3c3b0bc1c06822bf2d95d590b75', '1503971719', '64');
INSERT INTO `dede_arccache` VALUES ('9c14f1e4a543180ab3624c6ca080fc6d', '1503971719', '65');

-- ----------------------------
-- Table structure for `dede_archives`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_archives
-- ----------------------------
INSERT INTO `dede_archives` VALUES ('1', '1', '0', '1467966832', 'p', '1', '1', '-2', '121', '0', '公司介绍', '', '', 'admin', '未知', '/uploads/allimg/160708/1-160FQ53043210.jpg', '1467966832', '1467796151', '1', '公司,介绍,公司,介绍,', '0', '0', '0', '0', '0', '0', '公司介绍 公司介绍 公司介绍 公司介绍 公司介绍 公司介绍', '', '1', '0', '0', '0');
INSERT INTO `dede_archives` VALUES ('2', '1', '0', '1467966851', '', '1', '1', '-2', '173', '0', '服务优势', '', '', 'admin', '未知', '', '1467966851', '1467796161', '1', '服务,优势,服务,优势,', '0', '0', '0', '0', '0', '0', '服务优势 服务优势 服务优势 服务优势 服务优势', '', '1', '0', '0', '1');
INSERT INTO `dede_archives` VALUES ('3', '1', '0', '1467967327', '', '1', '1', '-2', '167', '0', '联系我们', '', '', 'admin', '未知', '', '1467967327', '1467796322', '1', '联系,我们,联系,我们,', '0', '0', '0', '0', '0', '0', '联系我们 联系我们 联系我们', '', '1', '0', '0', '2');
INSERT INTO `dede_archives` VALUES ('13', '1', '0', '1469526321', '', '1', '1', '-2', '79', '0', '营销网络', '', '', 'admin', '未知', '', '1469526321', '1469526325', '1', '营销网络,营销网络,', '0', '0', '0', '0', '0', '0', '营销网络营销网络', '', '1', '0', '0', '7');
INSERT INTO `dede_archives` VALUES ('9', '1', '0', '1469526281', '', '1', '1', '-2', '87', '0', '西码介绍', '', '', 'admin', '未知', '', '1469526281', '1469526286', '1', '西码,介绍,西码,介绍,', '0', '0', '0', '0', '0', '0', '西码介绍西码介绍', '', '1', '0', '0', '3');
INSERT INTO `dede_archives` VALUES ('10', '1', '0', '1469526287', '', '1', '1', '-2', '181', '0', '西码文化', '', '', 'admin', '未知', '', '1469526287', '1469526296', '1', '西码,文化,西码,文化,', '0', '0', '0', '0', '0', '0', '西码文化西码文化', '', '1', '0', '0', '4');
INSERT INTO `dede_archives` VALUES ('11', '1', '0', '1469526305', '', '1', '1', '-2', '63', '0', '西码荣誉', '', '', 'admin', '未知', '', '1469526305', '1469526309', '1', '西码,荣誉,西码,荣誉,', '0', '0', '0', '0', '0', '0', '西码荣誉西码荣誉', '', '1', '0', '0', '5');
INSERT INTO `dede_archives` VALUES ('12', '1', '0', '1469526313', '', '1', '1', '-2', '174', '0', '组织架构', '', '', 'admin', '未知', '', '1469526313', '1469526317', '1', '组织架构,组织架构,', '0', '0', '0', '0', '0', '0', '组织架构组织架构', '', '1', '0', '0', '6');
INSERT INTO `dede_archives` VALUES ('14', '1', '0', '1469526328', '', '1', '1', '-2', '139', '0', '联系西码', '', '', 'admin', '未知', '', '1469526328', '1469526332', '1', '联系,西码,联系,西码,', '0', '0', '0', '0', '0', '0', '联系西码联系西码', '', '1', '0', '0', '8');
INSERT INTO `dede_archives` VALUES ('15', '1', '0', '1469535311', '', '1', '1', '-2', '176', '0', '招贤纳士', '', '', 'admin', '未知', '', '1469535311', '1469526360', '1', '招贤纳士,招贤纳士,', '0', '0', '0', '0', '0', '0', '招贤纳士招贤纳士', '', '1', '0', '0', '9');
INSERT INTO `dede_archives` VALUES ('40', '1', '0', '1471437062', 'p', '1', '1', '0', '144', '0', '联系我们', 'CONTACT US', '', 'admin', '未知', '/uploads/allimg/160817/1-160QH02639D9-lp.jpg', '1471437062', '1471437138', '1', '联系,我们,上海,贤能,信息,科技,有限公司,', '0', '0', '0', '0', '0', '0', '上海贤能信息科技有限公司 地址：上海市闵行区联航路1588号863软件园7栋 E-mail：xianneng@sh-xianneng.cn', '', '1', '0', '0', '23');
INSERT INTO `dede_archives` VALUES ('39', '1', '0', '1471436966', 'p', '1', '1', '0', '71', '0', '公司荣誉', 'COMPANY HONOR', '', 'admin', '未知', '/uploads/allimg/160817/1-160QH02639D9-lp.jpg', '1471436966', '1471437052', '1', '公司,荣誉,实用,新型,专利,证书,计算机,软件,', '0', '0', '0', '0', '0', '0', '实用新型专利证书 计算机软件著作权', '', '1', '0', '0', '22');
INSERT INTO `dede_archives` VALUES ('38', '1', '0', '1471436883', 'p', '1', '1', '0', '121', '0', '组织架构', '  组织架构 ORGANIZATIONAL STRUCTU', '', 'admin', '未知', '/uploads/allimg/160817/1-160QH02639D9-lp.jpg', '1471436883', '1471436964', '1', '组织架构,', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '0', '21');
INSERT INTO `dede_archives` VALUES ('37', '1', '0', '1471436786', 'p', '1', '1', '0', '117', '0', '企业文化', 'CORPORATE CULTURE', '', 'admin', '未知', '/uploads/allimg/160817/1-160QH0240ML-lp.jpg', '1471436786', '1471436760', '1', '企业文化,诚信,、,创新,执行,共赢,诚信为本,', '0', '0', '0', '0', '0', '0', '诚信、创新、执行、共赢 诚信：诚信为本、服务至上 创新：顺应时代、积极进取 执行：数据说话、结果导向 共赢：互惠互利、持续发展', '', '1', '0', '0', '20');
INSERT INTO `dede_archives` VALUES ('23', '22', '0', '1469534052', 'p', '1', '1', '-2', '91', '0', '数控机床成为经济发展战略物资', '', '', 'admin', '未知', '/uploads/allimg/160726/1-160H61954350-L.jpg', '1469534052', '1469534098', '1', '数控机床,成为,经济发展,战略物资,重庆,企业,', '0', '0', '0', '0', '0', '0', '机床工业是一个国家发展国民经济和国防工业的基础工业，尤其是数控机床更是', '', '1', '0', '0', '17');
INSERT INTO `dede_archives` VALUES ('24', '22', '0', '1469534099', '', '1', '1', '-2', '140', '0', '重庆企业软件正版化普及提速，六企业获奖', '', '', 'admin', '未知', '', '1469534099', '1469534105', '1', '重庆,企业,软件,正版,化,普及,提速,六,获奖,', '0', '0', '0', '0', '0', '0', '重庆企业软件正版化普及提速，六企业获奖', '', '1', '0', '0', '18');
INSERT INTO `dede_archives` VALUES ('25', '21', '0', '1471438041', '', '1', '1', '0', '105', '0', '杭州G20峰会期间调休放假安排公布', '', '', 'admin', '未知', '', '1471438041', '1469534132', '1', '杭州,G20,峰会,期间,调休,放假,安排,公布,杭州,', '0', '0', '0', '0', '0', '0', 'G20峰会将于9月4日至5日在杭召开，为确保与会各国代表团顺利抵达和离杭返程，尽量减少对全市交通和市民出行的影响，日前，经国务院和省政府批准，杭州市政府办公厅发布G20峰会期间调休', '', '1', '0', '0', '19');
INSERT INTO `dede_archives` VALUES ('36', '1', '0', '1502678446', 'p', '1', '1', '0', '115', '0', '企业简介', 'COMPANY PROFILE', '', 'admin', '未知', '/uploads/allimg/160817/1-160QH0240ML-lp.jpg', '1502678446', '1471436651', '1', '企业简介,上海,贤能,信息技术,有限公司,是,', '0', '0', '0', '0', '0', '0', '上海贤能信息技术有限公司，是一家专业从事信息安全产品研发、销售、服务的高科技企业。公司致力于为用户提供最新安全咨询、全方位的安全管理咨询，为用户量身定制专业的网络', '', '1', '0', '0', '19');
INSERT INTO `dede_archives` VALUES ('28', '25', '0', '1469534607', '', '1', '1', '-2', '92', '0', '西码机床科技', '', '', 'admin', '未知', '', '1469534607', '1469534629', '1', '西码,机床,科技,西码,机床,科技,', '0', '0', '0', '0', '0', '0', 'https://www.baidu.com/', '', '1', '0', '0', '22');
INSERT INTO `dede_archives` VALUES ('29', '25', '0', '1469534632', '', '1', '1', '-2', '93', '0', '友情链接2', '', '', 'admin', '未知', '', '1469534632', '1469534638', '1', '友情链接,友情链接,', '0', '0', '0', '0', '0', '0', 'https://www.baidu.com/', '', '1', '0', '0', '23');
INSERT INTO `dede_archives` VALUES ('34', '27', '0', '1471436543', '', '1', '1', '0', '186', '0', '水费缴费', '', '', 'admin', '未知', '', '1471436543', '1471436546', '1', '水费,缴费,水费,缴费,', '0', '0', '0', '0', '0', '0', '水费缴费水费缴费', '', '1', '0', '0', '17');
INSERT INTO `dede_archives` VALUES ('35', '27', '0', '1471436550', '', '1', '1', '0', '121', '0', '电费缴费', '', '', 'admin', '未知', '', '1471436550', '1471436555', '1', '电费,缴费,电费,缴费,', '0', '0', '0', '0', '0', '0', '电费缴费电费缴费电费缴费', '', '1', '0', '0', '18');
INSERT INTO `dede_archives` VALUES ('32', '27', '0', '1471515320', '', '1', '1', '0', '68', '0', '公交卡充值', '', '', 'admin', '未知', '', '1471515320', '1471436529', '1', '公交,卡,充值,公交,卡,充值,', '0', '0', '0', '0', '0', '0', '公交卡充值公交卡充值', '', '1', '0', '0', '15');
INSERT INTO `dede_archives` VALUES ('33', '27', '0', '1471436531', '', '1', '1', '0', '55', '0', '天然气充值', '', '', 'admin', '未知', '', '1471436531', '1471436539', '1', '天然气,充值,天然气,充值,', '0', '0', '0', '0', '0', '0', '天然气充值天然气充值', '', '1', '0', '0', '16');
INSERT INTO `dede_archives` VALUES ('41', '25', '0', '1471437704', '', '1', '1', '0', '178', '0', '便民惠民', '', '', 'admin', '未知', '', '1471437704', '1471437358', '1', '便民,惠民,便民,惠民,', '0', '0', '0', '0', '0', '0', '便民惠民便民惠民', '', '1', '0', '0', '24');
INSERT INTO `dede_archives` VALUES ('42', '25', '0', '1471437360', '', '1', '1', '0', '141', '0', '操作简单', '', '', 'admin', '未知', '', '1471437360', '1471437372', '1', '操作简单,操作简单,', '0', '0', '0', '0', '0', '0', '操作简单操作简单', '', '1', '0', '0', '25');
INSERT INTO `dede_archives` VALUES ('43', '25', '0', '1471437373', '', '1', '1', '0', '164', '0', '布点方便', '', '', 'admin', '未知', '', '1471437373', '1471437381', '1', '布点,方便,布点,方便,', '0', '0', '0', '0', '0', '0', '布点方便布点方便', '', '1', '0', '0', '26');
INSERT INTO `dede_archives` VALUES ('44', '25', '0', '1471437387', '', '1', '1', '0', '149', '0', '安全可靠', '', '', 'admin', '未知', '', '1471437387', '1471437390', '1', '安全,可靠,安全,可靠,', '0', '0', '0', '0', '0', '0', '安全可靠安全可靠', '', '1', '0', '0', '27');
INSERT INTO `dede_archives` VALUES ('45', '25', '0', '1471437396', '', '1', '1', '0', '162', '0', '运行经济', '', '', 'admin', '未知', '', '1471437396', '1471437399', '1', '运行,经济,运行,经济运行,经济,', '0', '0', '0', '0', '0', '0', '运行经济运行经济', '', '1', '0', '0', '28');
INSERT INTO `dede_archives` VALUES ('46', '25', '0', '1471437401', '', '1', '1', '0', '163', '0', '功能强大', '', '', 'admin', '未知', '', '1471437401', '1471437409', '1', '功能强大,功能强大,', '0', '0', '0', '0', '0', '0', '功能强大功能强大', '', '1', '0', '0', '29');
INSERT INTO `dede_archives` VALUES ('47', '28', '0', '1471438081', 'h', '1', '1', '0', '191', '0', '贤能自动充值端午节9折优惠充值', '', '', 'admin', '未知', '', '1471438081', '1471438134', '1', '贤能,自动,充值,端午节,折优惠,贤能,自动,', '0', '0', '0', '0', '0', '0', '贤能自动充值端午节9折优惠充值贤能自动充值端午节9折优惠充值贤能自动充值端午节9折优惠充值', '', '1', '0', '0', '30');
INSERT INTO `dede_archives` VALUES ('48', '28', '0', '1471438148', 'h', '1', '1', '0', '113', '0', '贤能自动充值端午节9折优惠充值2', '', '', 'admin', '未知', '', '1471438148', '1471438144', '1', '贤能,自动,充值,端午节,折优惠,贤能,自动,', '0', '0', '0', '0', '0', '0', '贤能自动充值端午节9折优惠充值2', '', '1', '0', '0', '31');
INSERT INTO `dede_archives` VALUES ('49', '28', '0', '1471438152', 'c', '1', '1', '0', '92', '0', '服务活动1贤能自动充值端午节9折优惠充值', '', '', 'admin', '未知', '', '1471438152', '1471438169', '1', '服务,活动,贤能,自动,充值,端午节,折优惠,', '0', '0', '0', '0', '0', '0', '服务活动1贤能自动充值端午节9折优惠充值', '', '1', '0', '0', '32');
INSERT INTO `dede_archives` VALUES ('50', '28', '0', '1471438170', 'c', '1', '1', '0', '154', '0', '服务活动2贤能自动充值端午节9折优惠充值', '', '', 'admin', '未知', '', '1471438170', '1471438177', '1', '服务,活动,贤能,自动,充值,端午节,折优惠,', '0', '0', '0', '0', '0', '0', '服务活动1贤能自动充值端午节9折优惠充值', '', '1', '0', '0', '33');
INSERT INTO `dede_archives` VALUES ('51', '22', '0', '1471438382', 'p', '1', '1', '0', '147', '0', '上海贤能信息行业新闻1', '', '', 'admin', '未知', '/uploads/allimg/160817/160817/1-160QH05315403.jpg', '1471438382', '1471438311', '1', '上海,贤能,信息,行业,新闻,上海,贤能,信息,', '0', '0', '0', '0', '0', '0', '上海贤能信息行业新闻1上海贤能信息行业新闻1上海贤能信息行业新闻1', '', '1', '0', '0', '34');
INSERT INTO `dede_archives` VALUES ('52', '22', '0', '1471438312', 'p', '1', '1', '0', '139', '0', '上海贤能信息行业新闻2', '', '', 'admin', '未知', '/uploads/allimg/160817/160817/1-160QH05215921.jpg', '1471438312', '1471438340', '1', '上海,贤能,信息,行业,新闻,上海,贤能,信息,', '0', '0', '0', '0', '0', '0', '上海贤能信息行业新闻2上海贤能信息行业新闻2上海贤能信息行业新闻2', '', '1', '0', '0', '35');
INSERT INTO `dede_archives` VALUES ('53', '22', '0', '1471438341', 'p', '1', '1', '0', '63', '0', '上海贤能信息行业新闻3', '', '', 'admin', '未知', '/uploads/allimg/160817/160817/1-160QH052342a.jpg', '1471438341', '1471438358', '1', '上海,贤能,信息,行业,新闻,上海,贤能,信息,', '0', '0', '0', '0', '0', '0', '上海贤能信息行业新闻3上海贤能信息行业新闻3上海贤能信息行业新闻3上海贤能信息行业新闻3', '', '1', '0', '0', '36');
INSERT INTO `dede_archives` VALUES ('54', '22', '0', '1471438360', 'p', '1', '1', '0', '180', '0', '上海贤能信息行业新闻4', '', '', 'admin', '未知', '/uploads/allimg/160817/160817/1-160QH05254932.jpg', '1471438360', '1471438378', '1', '上海,贤能,信息,行业,新闻,上海,贤能,信息,', '0', '0', '0', '0', '0', '0', '上海贤能信息行业新闻4上海贤能信息行业新闻4上海贤能信息行业新闻4', '', '1', '0', '0', '37');
INSERT INTO `dede_archives` VALUES ('55', '21', '0', '1471438401', 'p', '1', '1', '0', '97', '0', '上海贤能信息公司新闻1', '', '', 'admin', '未知', '/uploads/allimg/160817/160817/1-160QH05353933.jpg', '1471438401', '1471438437', '1', '上海,贤能,信息,公司,新闻,上海,贤能,信息,', '0', '0', '0', '0', '0', '0', '上海贤能信息公司新闻1上海贤能信息公司新闻1上海贤能信息公司新闻1', '', '1', '0', '0', '38');
INSERT INTO `dede_archives` VALUES ('56', '21', '0', '1471438438', 'p', '1', '1', '0', '199', '0', '上海贤能信息公司新闻2', '', '', 'admin', '未知', '/uploads/allimg/160817/160817/1-160QH05412209.jpg', '1471438438', '1471438456', '1', '上海,贤能,信息,公司,新闻,上海,贤能,信息,', '0', '0', '0', '0', '0', '0', '上海贤能信息公司新闻1上海贤能信息公司新闻1上海贤能信息公司新闻1', '', '1', '0', '0', '39');
INSERT INTO `dede_archives` VALUES ('57', '21', '0', '1471438457', 'p', '1', '1', '0', '126', '0', '上海贤能信息公司新闻3', '', '', 'admin', '未知', '/uploads/allimg/160817/160817/1-160QH05436191.jpg', '1471438457', '1471438481', '1', '上海,贤能,信息,公司,新闻,上海,贤能,信息,', '0', '0', '0', '0', '0', '0', '上海贤能信息公司新闻1上海贤能信息公司新闻1上海贤能信息公司新闻1', '', '1', '0', '0', '40');
INSERT INTO `dede_archives` VALUES ('58', '21', '0', '1471438483', 'p', '1', '1', '0', '108', '0', '上海贤能信息公司新闻4', '', '', 'admin', '未知', '/uploads/allimg/160817/160817/1-160QH05454K0.jpg', '1471438483', '1471438499', '1', '上海,贤能,信息,公司,新闻,上海,贤能,信息,', '0', '0', '0', '0', '0', '0', '上海贤能信息公司新闻1上海贤能信息公司新闻1上海贤能信息公司新闻1上海贤能信息公司新闻1', '', '1', '0', '0', '41');
INSERT INTO `dede_archives` VALUES ('59', '29', '0', '1471520950', '', '1', '1', '0', '58', '0', '帮助中心', '', '', 'admin', '未知', '', '1471520950', '1471515397', '1', '帮助,中心,帮助,中心,', '0', '0', '0', '0', '0', '0', '帮助中心帮助中心帮助中心', '', '1', '0', '0', '42');
INSERT INTO `dede_archives` VALUES ('60', '26', '0', '1471520751', '', '1', '1', '0', '72', '0', '行政助理', '1', '', '电子工程', '未知', '', '1471520751', '1471519416', '1', '2', '0', '0', '0', '0', '0', '0', '3', '', '1', '0', '0', '43');
INSERT INTO `dede_archives` VALUES ('61', '26', '0', '1471520378', '', '1', '1', '0', '77', '0', '产品经理', '12', '', '电子工程', '未知', '', '1471520378', '1471519685', '1', '产品,经理,产品,经理,', '0', '0', '0', '0', '0', '0', '产品经理产品经理', '', '1', '0', '0', '44');
INSERT INTO `dede_archives` VALUES ('62', '31', '0', '1502683171', '', '1', '1', '0', '120', '0', '办理POS机这块可能需要资质证明', '', '', 'admin', '未知', '', '1502683171', '1502683314', '1', 'pos机办理,银联pos机办理', '0', '0', '0', '0', '0', '0', '办理POS机这块可能需要资质证明（例如工商，法人身份证，开户等，LS已经说得很全了），我只是想说下，这块中国银联本身是没有收单资质的，所以直接找银联是不可行的，应该是去找', '', '1', '0', '0', '45');
INSERT INTO `dede_archives` VALUES ('63', '32', '0', '1502683394', '', '1', '1', '0', '112', '0', '银联pos机申请办理', '', '', 'admin', '未知', '', '1502683394', '1502683467', '1', '银联pos机申请,银联pos机办理', '0', '0', '0', '0', '0', '0', '银联POS办理渠道很多，找银行，或者第三方支付公司，最安全可靠，还有如果是有证件可以办理真实的。费率是和营业执照有关的。建议找一下一清办理，因为银行也是和支付公司合作', '', '1', '0', '0', '46');
INSERT INTO `dede_archives` VALUES ('64', '33', '0', '1502683644', '', '1', '1', '0', '57', '0', '个人pos机办理流程', '', '', 'admin', '未知', '', '1502683644', '1502683638', '1', '个人pos机办理', '0', '0', '0', '0', '0', '0', '个人pos机办理 用途种类有很多，通常用的有消费贷款和装修等贷款。贷款途径也有很多，微信，支付宝等电商小额贷款是个人贷款比较青睐的贷款产品，对于贷款产品的了解也是个人贷', '', '1', '0', '0', '47');
INSERT INTO `dede_archives` VALUES ('65', '34', '0', '1502683654', '', '1', '1', '0', '103', '0', '个人pos机申请流程－攻略', '', '', 'admin', '未知', '', '1502683654', '1502683733', '1', 'pos机申请,个人pos机申请', '0', '0', '0', '0', '0', '0', 'pos机申请 需要什么手续？申请pos机全流程。小编为大家介绍详情。 银行申请POS机：营业执照，税务登记证，组织机构代码，法人身份证，开户行许可证，五证缺一不可。办pos机可....', '', '1', '0', '0', '48');

-- ----------------------------
-- Table structure for `dede_arcmulti`
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_arcmulti
-- ----------------------------
INSERT INTO `dede_arcmulti` VALUES ('1', 'dedecms', '1467795728', '<li class=\'dotline\'><a href=\"[field:arcurl/]\">[field:title/]</a></li>', '8', '', ' ORDER BY arc.sortrank desc', '', '', 'a:16:{s:3:\"row\";s:2:\"16\";s:8:\"titlelen\";s:2:\"42\";s:7:\"infolen\";i:160;s:8:\"imgwidth\";i:120;s:9:\"imgheight\";i:120;s:8:\"listtype\";s:3:\"all\";s:5:\"arcid\";i:0;s:9:\"channelid\";i:0;s:7:\"orderby\";s:7:\"default\";s:8:\"orderWay\";s:4:\"desc\";s:6:\"subday\";i:0;s:8:\"pagesize\";s:1:\"8\";s:7:\"keyword\";s:0:\"\";s:10:\"tablewidth\";s:4:\"100%\";s:3:\"col\";i:1;s:8:\"colWidth\";s:4:\"100%\";}');

-- ----------------------------
-- Table structure for `dede_arcrank`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_arcrank
-- ----------------------------
INSERT INTO `dede_arcrank` VALUES ('1', '0', '开放浏览', '5', '0', '0', '');
INSERT INTO `dede_arcrank` VALUES ('2', '-1', '待审核稿件', '0', '0', '0', '');
INSERT INTO `dede_arcrank` VALUES ('3', '10', '注册会员', '5', '0', '100', '');
INSERT INTO `dede_arcrank` VALUES ('4', '50', '中级会员', '5', '300', '200', '');
INSERT INTO `dede_arcrank` VALUES ('5', '100', '高级会员', '5', '800', '500', '');
INSERT INTO `dede_arcrank` VALUES ('6', '20', '低级会员', '5', '0', '500', '');
INSERT INTO `dede_arcrank` VALUES ('7', '150', '给力会员', '5', '1000', '500', '');
INSERT INTO `dede_arcrank` VALUES ('8', '180', '超能会员', '5', '1100', '500', '');

-- ----------------------------
-- Table structure for `dede_arctiny`
-- ----------------------------
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
  KEY `sortrank` (`sortrank`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_arctiny
-- ----------------------------
INSERT INTO `dede_arctiny` VALUES ('1', '1', '0', '-2', '1', '1467796151', '1467966832', '1');
INSERT INTO `dede_arctiny` VALUES ('2', '1', '0', '-2', '1', '1467796161', '1467966851', '1');
INSERT INTO `dede_arctiny` VALUES ('3', '1', '0', '-2', '1', '1467796322', '1467967327', '1');
INSERT INTO `dede_arctiny` VALUES ('9', '1', '0', '-2', '1', '1469526286', '1469526281', '1');
INSERT INTO `dede_arctiny` VALUES ('10', '1', '0', '-2', '1', '1469526296', '1469526287', '1');
INSERT INTO `dede_arctiny` VALUES ('11', '1', '0', '-2', '1', '1469526309', '1469526305', '1');
INSERT INTO `dede_arctiny` VALUES ('12', '1', '0', '-2', '1', '1469526317', '1469526313', '1');
INSERT INTO `dede_arctiny` VALUES ('13', '1', '0', '-2', '1', '1469526325', '1469526321', '1');
INSERT INTO `dede_arctiny` VALUES ('14', '1', '0', '-2', '1', '1469526332', '1469526328', '1');
INSERT INTO `dede_arctiny` VALUES ('15', '1', '0', '-2', '1', '1469526360', '1469535311', '1');
INSERT INTO `dede_arctiny` VALUES ('37', '1', '0', '0', '1', '1471436760', '1471436786', '1');
INSERT INTO `dede_arctiny` VALUES ('36', '1', '0', '0', '1', '1471436651', '1502678446', '1');
INSERT INTO `dede_arctiny` VALUES ('23', '22', '0', '-2', '1', '1469534098', '1469534052', '1');
INSERT INTO `dede_arctiny` VALUES ('24', '22', '0', '-2', '1', '1469534105', '1469534099', '1');
INSERT INTO `dede_arctiny` VALUES ('25', '21', '0', '0', '1', '1469534132', '1471438041', '1');
INSERT INTO `dede_arctiny` VALUES ('35', '27', '0', '0', '1', '1471436555', '1471436550', '1');
INSERT INTO `dede_arctiny` VALUES ('34', '27', '0', '0', '1', '1471436546', '1471436543', '1');
INSERT INTO `dede_arctiny` VALUES ('28', '25', '0', '-2', '1', '1469534629', '1469534607', '1');
INSERT INTO `dede_arctiny` VALUES ('29', '25', '0', '-2', '1', '1469534638', '1469534632', '1');
INSERT INTO `dede_arctiny` VALUES ('33', '27', '0', '0', '1', '1471436539', '1471436531', '1');
INSERT INTO `dede_arctiny` VALUES ('32', '27', '0', '0', '1', '1471436529', '1471515320', '1');
INSERT INTO `dede_arctiny` VALUES ('38', '1', '0', '0', '1', '1471436964', '1471436883', '1');
INSERT INTO `dede_arctiny` VALUES ('39', '1', '0', '0', '1', '1471437052', '1471436966', '1');
INSERT INTO `dede_arctiny` VALUES ('40', '1', '0', '0', '1', '1471437138', '1471437062', '1');
INSERT INTO `dede_arctiny` VALUES ('41', '25', '0', '0', '1', '1471437358', '1471437704', '1');
INSERT INTO `dede_arctiny` VALUES ('42', '25', '0', '0', '1', '1471437372', '1471437360', '1');
INSERT INTO `dede_arctiny` VALUES ('43', '25', '0', '0', '1', '1471437381', '1471437373', '1');
INSERT INTO `dede_arctiny` VALUES ('44', '25', '0', '0', '1', '1471437390', '1471437387', '1');
INSERT INTO `dede_arctiny` VALUES ('45', '25', '0', '0', '1', '1471437399', '1471437396', '1');
INSERT INTO `dede_arctiny` VALUES ('46', '25', '0', '0', '1', '1471437409', '1471437401', '1');
INSERT INTO `dede_arctiny` VALUES ('47', '28', '0', '0', '1', '1471438134', '1471438081', '1');
INSERT INTO `dede_arctiny` VALUES ('48', '28', '0', '0', '1', '1471438144', '1471438148', '1');
INSERT INTO `dede_arctiny` VALUES ('49', '28', '0', '0', '1', '1471438169', '1471438152', '1');
INSERT INTO `dede_arctiny` VALUES ('50', '28', '0', '0', '1', '1471438177', '1471438170', '1');
INSERT INTO `dede_arctiny` VALUES ('51', '22', '0', '0', '1', '1471438311', '1471438382', '1');
INSERT INTO `dede_arctiny` VALUES ('52', '22', '0', '0', '1', '1471438340', '1471438312', '1');
INSERT INTO `dede_arctiny` VALUES ('53', '22', '0', '0', '1', '1471438358', '1471438341', '1');
INSERT INTO `dede_arctiny` VALUES ('54', '22', '0', '0', '1', '1471438378', '1471438360', '1');
INSERT INTO `dede_arctiny` VALUES ('55', '21', '0', '0', '1', '1471438437', '1471438401', '1');
INSERT INTO `dede_arctiny` VALUES ('56', '21', '0', '0', '1', '1471438456', '1471438438', '1');
INSERT INTO `dede_arctiny` VALUES ('57', '21', '0', '0', '1', '1471438481', '1471438457', '1');
INSERT INTO `dede_arctiny` VALUES ('58', '21', '0', '0', '1', '1471438499', '1471438483', '1');
INSERT INTO `dede_arctiny` VALUES ('59', '29', '0', '0', '1', '1471515397', '1471520950', '1');
INSERT INTO `dede_arctiny` VALUES ('60', '26', '0', '0', '1', '1471519416', '1471520751', '1');
INSERT INTO `dede_arctiny` VALUES ('61', '26', '0', '0', '1', '1471519685', '1471520378', '1');
INSERT INTO `dede_arctiny` VALUES ('62', '31', '0', '0', '1', '1502683314', '1502683171', '1');
INSERT INTO `dede_arctiny` VALUES ('63', '32', '0', '0', '1', '1502683467', '1502683394', '1');
INSERT INTO `dede_arctiny` VALUES ('64', '33', '0', '0', '1', '1502683638', '1502683644', '1');
INSERT INTO `dede_arctiny` VALUES ('65', '34', '0', '0', '1', '1502683733', '1502683654', '1');

-- ----------------------------
-- Table structure for `dede_arctype`
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_arctype
-- ----------------------------
INSERT INTO `dede_arctype` VALUES ('1', '0', '0', '50', '关于我们', '{cmspath}/a/gongsijieshao', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/article_article_about.htm', '{style}/article_article_about.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/gongsijieshao', '', '0', '0', '', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('16', '0', '0', '50', '银行合作', '{cmspath}/a/kehuanli', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/article_article_anli.htm', '{style}/article_article_anli.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/kehuanli', '', '0', '0', '', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('26', '0', '0', '50', '联系我们', '{cmspath}/a/rencaizhaopin', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/1.htm', '{style}/article_article_lx.htm', '{style}/article_article_zp.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/rencaizhaopin', '', '0', '0', '', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('27', '0', '0', '50', '产品中心', '{cmspath}/a/chanpinzhongxin', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '', '', '0', '0', '', '', '');
INSERT INTO `dede_arctype` VALUES ('28', '0', '0', '50', '申请', '{cmspath}/a/huodong', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/article_article_sq.htm', '{style}/article_article_news.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/huodong', '', '0', '0', '', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('29', '0', '0', '50', '其他', '{cmspath}/a/qita', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', 'default/article_article_qt.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/qita', '', '0', '0', '', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('20', '0', '0', '50', '新闻中心', '{cmspath}/a/jishufuwu', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/jishufuwu', '', '0', '0', '', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('21', '20', '20', '50', '企业动态', '{cmspath}/a/jishufuwu/ximadongtai', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/e.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/jishufuwu', '', '0', '0', '', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('22', '20', '20', '50', '行业新闻', '{cmspath}/a/jishufuwu/xingyezixun', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article_news.htm', '{style}/article_article_news.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/jishufuwu', '', '0', '0', '', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('25', '0', '0', '50', '产品优势', '{cmspath}/a/youqinglianjie', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', 'default/article_article_about.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/youqinglianjie', '', '0', '0', '', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('30', '0', '0', '50', '在线客服', '{cmspath}/a/zaixiankefu', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article_kf.htm', '{style}/article_article_kf.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '', '', '0', '0', '', '', '');
INSERT INTO `dede_arctype` VALUES ('31', '27', '27', '50', 'POS机办理', '{cmspath}/posbanli', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article1.htm', '{style}/article_article.htm', '{typedir}/{py}.html', '{typedir}/list_{tid}_{page}.html', 'default', '上海齐卡专业提供POS机办理服务', 'POS机办理', 'POS机办理,上海POS机办理,办理POS机哪家好', '0', '', '', '0', '0', '', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('32', '27', '27', '50', '银联pos机申请', '{cmspath}/yinglian', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article1.htm', '{style}/article_article.htm', '{typedir}/{py}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '', '', '0', '0', '', '', '');
INSERT INTO `dede_arctype` VALUES ('33', '27', '27', '50', '个人pos机办理安装', '{cmspath}/gerenpos', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article1.htm', '{style}/article_article.htm', '{typedir}/{py}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '', '', '0', '0', '', '', '');
INSERT INTO `dede_arctype` VALUES ('34', '27', '27', '50', 'POS机申请', '{cmspath}/posanzhuang', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article1.htm', '{style}/article_article.htm', '{typedir}/{py}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '', '', '0', '0', '', '', '');

-- ----------------------------
-- Table structure for `dede_area`
-- ----------------------------
DROP TABLE IF EXISTS `dede_area`;
CREATE TABLE `dede_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `reid` int(10) unsigned NOT NULL DEFAULT '0',
  `disorder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_area
-- ----------------------------
INSERT INTO `dede_area` VALUES ('1', '北京市', '0', '0');
INSERT INTO `dede_area` VALUES ('102', '西城区', '1', '2');
INSERT INTO `dede_area` VALUES ('126', '崇文区', '1', '0');
INSERT INTO `dede_area` VALUES ('104', '宣武区', '1', '0');
INSERT INTO `dede_area` VALUES ('105', '朝阳区', '1', '0');
INSERT INTO `dede_area` VALUES ('106', '海淀区', '1', '0');
INSERT INTO `dede_area` VALUES ('107', '丰台区', '1', '0');
INSERT INTO `dede_area` VALUES ('108', '石景山区', '1', '0');
INSERT INTO `dede_area` VALUES ('109', '门头沟区', '1', '0');
INSERT INTO `dede_area` VALUES ('110', '房山区', '1', '0');
INSERT INTO `dede_area` VALUES ('111', '通州区', '1', '0');
INSERT INTO `dede_area` VALUES ('112', '顺义区', '1', '0');
INSERT INTO `dede_area` VALUES ('113', '昌平区', '1', '0');
INSERT INTO `dede_area` VALUES ('114', '大兴区', '1', '0');
INSERT INTO `dede_area` VALUES ('115', '平谷县', '1', '0');
INSERT INTO `dede_area` VALUES ('116', '怀柔县', '1', '0');
INSERT INTO `dede_area` VALUES ('117', '密云县', '1', '0');
INSERT INTO `dede_area` VALUES ('118', '延庆县', '1', '0');
INSERT INTO `dede_area` VALUES ('2', '上海市', '0', '0');
INSERT INTO `dede_area` VALUES ('201', '黄浦区', '2', '0');
INSERT INTO `dede_area` VALUES ('202', '卢湾区', '2', '0');
INSERT INTO `dede_area` VALUES ('203', '徐汇区', '2', '0');
INSERT INTO `dede_area` VALUES ('204', '长宁区', '2', '0');
INSERT INTO `dede_area` VALUES ('205', '静安区', '2', '0');
INSERT INTO `dede_area` VALUES ('206', '普陀区', '2', '0');
INSERT INTO `dede_area` VALUES ('207', '闸北区', '2', '0');
INSERT INTO `dede_area` VALUES ('208', '虹口区', '2', '0');
INSERT INTO `dede_area` VALUES ('209', '杨浦区', '2', '0');
INSERT INTO `dede_area` VALUES ('210', '宝山区', '2', '0');
INSERT INTO `dede_area` VALUES ('211', '闵行区', '2', '0');
INSERT INTO `dede_area` VALUES ('212', '嘉定区', '2', '0');
INSERT INTO `dede_area` VALUES ('213', '浦东新区', '2', '0');
INSERT INTO `dede_area` VALUES ('214', '松江区', '2', '0');
INSERT INTO `dede_area` VALUES ('215', '金山区', '2', '0');
INSERT INTO `dede_area` VALUES ('216', '青浦区', '2', '0');
INSERT INTO `dede_area` VALUES ('217', '南汇区', '2', '0');
INSERT INTO `dede_area` VALUES ('218', '奉贤区', '2', '0');
INSERT INTO `dede_area` VALUES ('219', '崇明县', '2', '0');
INSERT INTO `dede_area` VALUES ('3', '天津市', '0', '0');
INSERT INTO `dede_area` VALUES ('301', '和平区', '3', '0');
INSERT INTO `dede_area` VALUES ('302', '河东区', '3', '0');
INSERT INTO `dede_area` VALUES ('303', '河西区', '3', '0');
INSERT INTO `dede_area` VALUES ('304', '南开区', '3', '0');
INSERT INTO `dede_area` VALUES ('305', '河北区', '3', '0');
INSERT INTO `dede_area` VALUES ('306', '红桥区', '3', '0');
INSERT INTO `dede_area` VALUES ('307', '塘沽区', '3', '0');
INSERT INTO `dede_area` VALUES ('308', '汉沽区', '3', '0');
INSERT INTO `dede_area` VALUES ('309', '大港区', '3', '0');
INSERT INTO `dede_area` VALUES ('310', '东丽区', '3', '0');
INSERT INTO `dede_area` VALUES ('311', '西青区', '3', '0');
INSERT INTO `dede_area` VALUES ('312', '北辰区', '3', '0');
INSERT INTO `dede_area` VALUES ('313', '津南区', '3', '0');
INSERT INTO `dede_area` VALUES ('314', '武清区', '3', '0');
INSERT INTO `dede_area` VALUES ('315', '宝坻区', '3', '0');
INSERT INTO `dede_area` VALUES ('316', '静海县', '3', '0');
INSERT INTO `dede_area` VALUES ('317', '宁河县', '3', '0');
INSERT INTO `dede_area` VALUES ('318', '蓟县', '3', '0');
INSERT INTO `dede_area` VALUES ('4', '重庆市', '0', '0');
INSERT INTO `dede_area` VALUES ('401', '渝中区', '4', '0');
INSERT INTO `dede_area` VALUES ('402', '大渡口区', '4', '0');
INSERT INTO `dede_area` VALUES ('403', '江北区', '4', '0');
INSERT INTO `dede_area` VALUES ('404', '沙坪坝区', '4', '0');
INSERT INTO `dede_area` VALUES ('405', '九龙坡区', '4', '0');
INSERT INTO `dede_area` VALUES ('406', '南岸区', '4', '0');
INSERT INTO `dede_area` VALUES ('407', '北碚区', '4', '0');
INSERT INTO `dede_area` VALUES ('408', '万盛区', '4', '0');
INSERT INTO `dede_area` VALUES ('409', '双桥区', '4', '0');
INSERT INTO `dede_area` VALUES ('410', '渝北区', '4', '0');
INSERT INTO `dede_area` VALUES ('411', '巴南区', '4', '0');
INSERT INTO `dede_area` VALUES ('412', '万州区', '4', '0');
INSERT INTO `dede_area` VALUES ('413', '涪陵区', '4', '0');
INSERT INTO `dede_area` VALUES ('414', '黔江区', '4', '0');
INSERT INTO `dede_area` VALUES ('415', '永川市', '4', '0');
INSERT INTO `dede_area` VALUES ('416', '合川市', '4', '0');
INSERT INTO `dede_area` VALUES ('417', '江津市', '4', '0');
INSERT INTO `dede_area` VALUES ('418', '南川市', '4', '0');
INSERT INTO `dede_area` VALUES ('419', '长寿县', '4', '0');
INSERT INTO `dede_area` VALUES ('420', '綦江县', '4', '0');
INSERT INTO `dede_area` VALUES ('421', '潼南县', '4', '0');
INSERT INTO `dede_area` VALUES ('422', '荣昌县', '4', '0');
INSERT INTO `dede_area` VALUES ('423', '璧山县', '4', '0');
INSERT INTO `dede_area` VALUES ('424', '大足县', '4', '0');
INSERT INTO `dede_area` VALUES ('425', '铜梁县', '4', '0');
INSERT INTO `dede_area` VALUES ('426', '梁平县', '4', '0');
INSERT INTO `dede_area` VALUES ('427', '城口县', '4', '0');
INSERT INTO `dede_area` VALUES ('428', '垫江县', '4', '0');
INSERT INTO `dede_area` VALUES ('429', '武隆县', '4', '0');
INSERT INTO `dede_area` VALUES ('430', '丰都县', '4', '0');
INSERT INTO `dede_area` VALUES ('431', '奉节县', '4', '0');
INSERT INTO `dede_area` VALUES ('432', '开县', '4', '0');
INSERT INTO `dede_area` VALUES ('433', '云阳县', '4', '0');
INSERT INTO `dede_area` VALUES ('434', '忠县', '4', '0');
INSERT INTO `dede_area` VALUES ('435', '巫溪县', '4', '0');
INSERT INTO `dede_area` VALUES ('436', '巫山县', '4', '0');
INSERT INTO `dede_area` VALUES ('437', '石柱县', '4', '0');
INSERT INTO `dede_area` VALUES ('438', '秀山县', '4', '0');
INSERT INTO `dede_area` VALUES ('439', '酉阳县', '4', '0');
INSERT INTO `dede_area` VALUES ('440', '彭水县', '4', '0');
INSERT INTO `dede_area` VALUES ('5', '广东省', '0', '0');
INSERT INTO `dede_area` VALUES ('501', '广州市', '5', '0');
INSERT INTO `dede_area` VALUES ('502', '深圳市', '5', '0');
INSERT INTO `dede_area` VALUES ('503', '珠海市', '5', '0');
INSERT INTO `dede_area` VALUES ('504', '汕头市', '5', '0');
INSERT INTO `dede_area` VALUES ('505', '韶关市', '5', '0');
INSERT INTO `dede_area` VALUES ('506', '河源市', '5', '0');
INSERT INTO `dede_area` VALUES ('507', '梅州市', '5', '0');
INSERT INTO `dede_area` VALUES ('508', '惠州市', '5', '0');
INSERT INTO `dede_area` VALUES ('509', '汕尾市', '5', '0');
INSERT INTO `dede_area` VALUES ('510', '东莞市', '5', '0');
INSERT INTO `dede_area` VALUES ('511', '中山市', '5', '0');
INSERT INTO `dede_area` VALUES ('512', '江门市', '5', '0');
INSERT INTO `dede_area` VALUES ('513', '佛山市', '5', '0');
INSERT INTO `dede_area` VALUES ('514', '阳江市', '5', '0');
INSERT INTO `dede_area` VALUES ('515', '湛江市', '5', '0');
INSERT INTO `dede_area` VALUES ('516', '茂名市', '5', '0');
INSERT INTO `dede_area` VALUES ('517', '肇庆市', '5', '0');
INSERT INTO `dede_area` VALUES ('518', '清远市', '5', '0');
INSERT INTO `dede_area` VALUES ('519', '潮州市', '5', '0');
INSERT INTO `dede_area` VALUES ('520', '揭阳市', '5', '0');
INSERT INTO `dede_area` VALUES ('521', '云浮市', '5', '0');
INSERT INTO `dede_area` VALUES ('6', '福建省', '0', '0');
INSERT INTO `dede_area` VALUES ('601', '福州市', '6', '0');
INSERT INTO `dede_area` VALUES ('602', '厦门市', '6', '0');
INSERT INTO `dede_area` VALUES ('603', '三明市', '6', '0');
INSERT INTO `dede_area` VALUES ('604', '莆田市', '6', '0');
INSERT INTO `dede_area` VALUES ('605', '泉州市', '6', '0');
INSERT INTO `dede_area` VALUES ('606', '漳州市', '6', '0');
INSERT INTO `dede_area` VALUES ('607', '南平市', '6', '0');
INSERT INTO `dede_area` VALUES ('608', '龙岩市', '6', '0');
INSERT INTO `dede_area` VALUES ('609', '宁德市', '6', '0');
INSERT INTO `dede_area` VALUES ('7', '浙江省', '0', '0');
INSERT INTO `dede_area` VALUES ('701', '杭州市', '7', '0');
INSERT INTO `dede_area` VALUES ('702', '宁波市', '7', '0');
INSERT INTO `dede_area` VALUES ('703', '温州市', '7', '0');
INSERT INTO `dede_area` VALUES ('704', '嘉兴市', '7', '0');
INSERT INTO `dede_area` VALUES ('705', '湖州市', '7', '0');
INSERT INTO `dede_area` VALUES ('706', '绍兴市', '7', '0');
INSERT INTO `dede_area` VALUES ('707', '金华市', '7', '0');
INSERT INTO `dede_area` VALUES ('708', '衢州市', '7', '0');
INSERT INTO `dede_area` VALUES ('709', '舟山市', '7', '0');
INSERT INTO `dede_area` VALUES ('710', '台州市', '7', '0');
INSERT INTO `dede_area` VALUES ('711', '丽水市', '7', '0');
INSERT INTO `dede_area` VALUES ('8', '江苏省', '0', '0');
INSERT INTO `dede_area` VALUES ('801', '南京市', '8', '0');
INSERT INTO `dede_area` VALUES ('802', '徐州市', '8', '0');
INSERT INTO `dede_area` VALUES ('803', '连云港市', '8', '0');
INSERT INTO `dede_area` VALUES ('804', '淮安市', '8', '0');
INSERT INTO `dede_area` VALUES ('805', '宿迁市', '8', '0');
INSERT INTO `dede_area` VALUES ('806', '盐城市', '8', '0');
INSERT INTO `dede_area` VALUES ('807', '扬州市', '8', '0');
INSERT INTO `dede_area` VALUES ('808', '泰州市', '8', '0');
INSERT INTO `dede_area` VALUES ('809', '南通市', '8', '0');
INSERT INTO `dede_area` VALUES ('810', '镇江市', '8', '0');
INSERT INTO `dede_area` VALUES ('811', '常州市', '8', '0');
INSERT INTO `dede_area` VALUES ('812', '无锡市', '8', '0');
INSERT INTO `dede_area` VALUES ('813', '苏州市', '8', '0');
INSERT INTO `dede_area` VALUES ('9', '山东省', '0', '0');
INSERT INTO `dede_area` VALUES ('901', '济南市', '9', '0');
INSERT INTO `dede_area` VALUES ('902', '青岛市', '9', '0');
INSERT INTO `dede_area` VALUES ('903', '淄博市', '9', '0');
INSERT INTO `dede_area` VALUES ('904', '枣庄市', '9', '0');
INSERT INTO `dede_area` VALUES ('905', '东营市', '9', '0');
INSERT INTO `dede_area` VALUES ('906', '潍坊市', '9', '0');
INSERT INTO `dede_area` VALUES ('907', '烟台市', '9', '0');
INSERT INTO `dede_area` VALUES ('908', '威海市', '9', '0');
INSERT INTO `dede_area` VALUES ('909', '济宁市', '9', '0');
INSERT INTO `dede_area` VALUES ('910', '泰安市', '9', '0');
INSERT INTO `dede_area` VALUES ('911', '日照市', '9', '0');
INSERT INTO `dede_area` VALUES ('912', '莱芜市', '9', '0');
INSERT INTO `dede_area` VALUES ('913', '德州市', '9', '0');
INSERT INTO `dede_area` VALUES ('914', '临沂市', '9', '0');
INSERT INTO `dede_area` VALUES ('915', '聊城市', '9', '0');
INSERT INTO `dede_area` VALUES ('916', '滨州市', '9', '0');
INSERT INTO `dede_area` VALUES ('917', '菏泽市', '9', '0');
INSERT INTO `dede_area` VALUES ('10', '辽宁省', '0', '0');
INSERT INTO `dede_area` VALUES ('1001', '沈阳市', '10', '0');
INSERT INTO `dede_area` VALUES ('1002', '大连市', '10', '0');
INSERT INTO `dede_area` VALUES ('1003', '鞍山市', '10', '0');
INSERT INTO `dede_area` VALUES ('1004', '抚顺市', '10', '0');
INSERT INTO `dede_area` VALUES ('1005', '本溪市', '10', '0');
INSERT INTO `dede_area` VALUES ('1006', '丹东市', '10', '0');
INSERT INTO `dede_area` VALUES ('1007', '锦州市', '10', '0');
INSERT INTO `dede_area` VALUES ('1008', '葫芦岛市', '10', '0');
INSERT INTO `dede_area` VALUES ('1009', '营口市', '10', '0');
INSERT INTO `dede_area` VALUES ('1010', '盘锦市', '10', '0');
INSERT INTO `dede_area` VALUES ('1011', '阜新市', '10', '0');
INSERT INTO `dede_area` VALUES ('1012', '辽阳市', '10', '0');
INSERT INTO `dede_area` VALUES ('1013', '铁岭市', '10', '0');
INSERT INTO `dede_area` VALUES ('1014', '朝阳市', '10', '0');
INSERT INTO `dede_area` VALUES ('11', '江西省', '0', '0');
INSERT INTO `dede_area` VALUES ('1101', '南昌市', '11', '0');
INSERT INTO `dede_area` VALUES ('1102', '景德镇市', '11', '0');
INSERT INTO `dede_area` VALUES ('1103', '萍乡市', '11', '0');
INSERT INTO `dede_area` VALUES ('1104', '新余市', '11', '0');
INSERT INTO `dede_area` VALUES ('1105', '九江市', '11', '0');
INSERT INTO `dede_area` VALUES ('1106', '鹰潭市', '11', '0');
INSERT INTO `dede_area` VALUES ('1107', '赣州市', '11', '0');
INSERT INTO `dede_area` VALUES ('1108', '吉安市', '11', '0');
INSERT INTO `dede_area` VALUES ('1109', '宜春市', '11', '0');
INSERT INTO `dede_area` VALUES ('1110', '抚州市', '11', '0');
INSERT INTO `dede_area` VALUES ('1111', '上饶市', '11', '0');
INSERT INTO `dede_area` VALUES ('12', '四川省', '0', '0');
INSERT INTO `dede_area` VALUES ('1201', '成都市', '12', '0');
INSERT INTO `dede_area` VALUES ('1202', '自贡市', '12', '0');
INSERT INTO `dede_area` VALUES ('1203', '攀枝花市', '12', '0');
INSERT INTO `dede_area` VALUES ('1204', '泸州市', '12', '0');
INSERT INTO `dede_area` VALUES ('1205', '德阳市', '12', '0');
INSERT INTO `dede_area` VALUES ('1206', '绵阳市', '12', '0');
INSERT INTO `dede_area` VALUES ('1207', '广元市', '12', '0');
INSERT INTO `dede_area` VALUES ('1208', '遂宁市', '12', '0');
INSERT INTO `dede_area` VALUES ('1209', '内江市', '12', '0');
INSERT INTO `dede_area` VALUES ('1210', '乐山市', '12', '0');
INSERT INTO `dede_area` VALUES ('1211', '南充市', '12', '0');
INSERT INTO `dede_area` VALUES ('1212', '宜宾市', '12', '0');
INSERT INTO `dede_area` VALUES ('1213', '广安市', '12', '0');
INSERT INTO `dede_area` VALUES ('1214', '达州市', '12', '0');
INSERT INTO `dede_area` VALUES ('1215', '巴中市', '12', '0');
INSERT INTO `dede_area` VALUES ('1216', '雅安市', '12', '0');
INSERT INTO `dede_area` VALUES ('1217', '眉山市', '12', '0');
INSERT INTO `dede_area` VALUES ('1218', '资阳市', '12', '0');
INSERT INTO `dede_area` VALUES ('1219', '阿坝州', '12', '0');
INSERT INTO `dede_area` VALUES ('1220', '甘孜州', '12', '0');
INSERT INTO `dede_area` VALUES ('1221', '凉山州', '12', '0');
INSERT INTO `dede_area` VALUES ('13', '陕西省', '0', '0');
INSERT INTO `dede_area` VALUES ('3114', '西安市', '13', '0');
INSERT INTO `dede_area` VALUES ('1302', '铜川市', '13', '0');
INSERT INTO `dede_area` VALUES ('1303', '宝鸡市', '13', '0');
INSERT INTO `dede_area` VALUES ('1304', '咸阳市', '13', '0');
INSERT INTO `dede_area` VALUES ('1305', '渭南市', '13', '0');
INSERT INTO `dede_area` VALUES ('1306', '延安市', '13', '0');
INSERT INTO `dede_area` VALUES ('1307', '汉中市', '13', '0');
INSERT INTO `dede_area` VALUES ('1308', '榆林市', '13', '0');
INSERT INTO `dede_area` VALUES ('1309', '安康市', '13', '0');
INSERT INTO `dede_area` VALUES ('1310', '商洛地区', '13', '0');
INSERT INTO `dede_area` VALUES ('14', '湖北省', '0', '0');
INSERT INTO `dede_area` VALUES ('1401', '武汉市', '14', '0');
INSERT INTO `dede_area` VALUES ('1402', '黄石市', '14', '0');
INSERT INTO `dede_area` VALUES ('1403', '襄樊市', '14', '0');
INSERT INTO `dede_area` VALUES ('1404', '十堰市', '14', '0');
INSERT INTO `dede_area` VALUES ('1405', '荆州市', '14', '0');
INSERT INTO `dede_area` VALUES ('1406', '宜昌市', '14', '0');
INSERT INTO `dede_area` VALUES ('1407', '荆门市', '14', '0');
INSERT INTO `dede_area` VALUES ('1408', '鄂州市', '14', '0');
INSERT INTO `dede_area` VALUES ('1409', '孝感市', '14', '0');
INSERT INTO `dede_area` VALUES ('1410', '黄冈市', '14', '0');
INSERT INTO `dede_area` VALUES ('1411', '咸宁市', '14', '0');
INSERT INTO `dede_area` VALUES ('1412', '随州市', '14', '0');
INSERT INTO `dede_area` VALUES ('1413', '仙桃市', '14', '0');
INSERT INTO `dede_area` VALUES ('1414', '天门市', '14', '0');
INSERT INTO `dede_area` VALUES ('1415', '潜江市', '14', '0');
INSERT INTO `dede_area` VALUES ('1416', '神农架', '14', '0');
INSERT INTO `dede_area` VALUES ('1417', '恩施州', '14', '0');
INSERT INTO `dede_area` VALUES ('15', '河南省', '0', '0');
INSERT INTO `dede_area` VALUES ('1501', '郑州市', '15', '0');
INSERT INTO `dede_area` VALUES ('1502', '开封市', '15', '0');
INSERT INTO `dede_area` VALUES ('1503', '洛阳市', '15', '0');
INSERT INTO `dede_area` VALUES ('1504', '平顶山市', '15', '0');
INSERT INTO `dede_area` VALUES ('1505', '焦作市', '15', '0');
INSERT INTO `dede_area` VALUES ('1506', '鹤壁市', '15', '0');
INSERT INTO `dede_area` VALUES ('1507', '新乡市', '15', '0');
INSERT INTO `dede_area` VALUES ('1508', '安阳市', '15', '0');
INSERT INTO `dede_area` VALUES ('1509', '濮阳市', '15', '0');
INSERT INTO `dede_area` VALUES ('1510', '许昌市', '15', '0');
INSERT INTO `dede_area` VALUES ('1511', '漯河市', '15', '0');
INSERT INTO `dede_area` VALUES ('1512', '三门峡市', '15', '0');
INSERT INTO `dede_area` VALUES ('1513', '南阳市', '15', '0');
INSERT INTO `dede_area` VALUES ('1514', '商丘市', '15', '0');
INSERT INTO `dede_area` VALUES ('1515', '信阳市', '15', '0');
INSERT INTO `dede_area` VALUES ('1516', '周口市', '15', '0');
INSERT INTO `dede_area` VALUES ('1517', '驻马店市', '15', '0');
INSERT INTO `dede_area` VALUES ('1518', '济源市', '15', '0');
INSERT INTO `dede_area` VALUES ('16', '河北省', '0', '0');
INSERT INTO `dede_area` VALUES ('1601', '石家庄市', '16', '0');
INSERT INTO `dede_area` VALUES ('1602', '唐山市', '16', '0');
INSERT INTO `dede_area` VALUES ('1603', '秦皇岛市', '16', '0');
INSERT INTO `dede_area` VALUES ('1604', '邯郸市', '16', '0');
INSERT INTO `dede_area` VALUES ('1605', '邢台市', '16', '0');
INSERT INTO `dede_area` VALUES ('1606', '保定市', '16', '0');
INSERT INTO `dede_area` VALUES ('1607', '张家口市', '16', '0');
INSERT INTO `dede_area` VALUES ('1608', '承德市', '16', '0');
INSERT INTO `dede_area` VALUES ('1609', '沧州市', '16', '0');
INSERT INTO `dede_area` VALUES ('1610', '廊坊市', '16', '0');
INSERT INTO `dede_area` VALUES ('1611', '衡水市', '16', '0');
INSERT INTO `dede_area` VALUES ('17', '山西省', '0', '0');
INSERT INTO `dede_area` VALUES ('1701', '太原市', '17', '0');
INSERT INTO `dede_area` VALUES ('1702', '大同市', '17', '0');
INSERT INTO `dede_area` VALUES ('1703', '阳泉市', '17', '0');
INSERT INTO `dede_area` VALUES ('1704', '长治市', '17', '0');
INSERT INTO `dede_area` VALUES ('1705', '晋城市', '17', '0');
INSERT INTO `dede_area` VALUES ('1706', '朔州市', '17', '0');
INSERT INTO `dede_area` VALUES ('1707', '晋中市', '17', '0');
INSERT INTO `dede_area` VALUES ('1708', '忻州市', '17', '0');
INSERT INTO `dede_area` VALUES ('1709', '临汾市', '17', '0');
INSERT INTO `dede_area` VALUES ('1710', '运城市', '17', '0');
INSERT INTO `dede_area` VALUES ('1711', '吕梁地区', '17', '0');
INSERT INTO `dede_area` VALUES ('18', '内蒙古', '0', '0');
INSERT INTO `dede_area` VALUES ('1801', '呼和浩特', '18', '0');
INSERT INTO `dede_area` VALUES ('1802', '包头市', '18', '0');
INSERT INTO `dede_area` VALUES ('1803', '乌海市', '18', '0');
INSERT INTO `dede_area` VALUES ('1804', '赤峰市', '18', '0');
INSERT INTO `dede_area` VALUES ('1805', '通辽市', '18', '0');
INSERT INTO `dede_area` VALUES ('1806', '鄂尔多斯', '18', '0');
INSERT INTO `dede_area` VALUES ('1807', '乌兰察布', '18', '0');
INSERT INTO `dede_area` VALUES ('1808', '锡林郭勒', '18', '0');
INSERT INTO `dede_area` VALUES ('1809', '呼伦贝尔', '18', '0');
INSERT INTO `dede_area` VALUES ('1810', '巴彦淖尔', '18', '0');
INSERT INTO `dede_area` VALUES ('1811', '阿拉善盟', '18', '0');
INSERT INTO `dede_area` VALUES ('1812', '兴安盟', '18', '0');
INSERT INTO `dede_area` VALUES ('19', '吉林省', '0', '0');
INSERT INTO `dede_area` VALUES ('1901', '长春市', '19', '0');
INSERT INTO `dede_area` VALUES ('1902', '吉林市', '19', '0');
INSERT INTO `dede_area` VALUES ('1903', '四平市', '19', '0');
INSERT INTO `dede_area` VALUES ('1904', '辽源市', '19', '0');
INSERT INTO `dede_area` VALUES ('1905', '通化市', '19', '0');
INSERT INTO `dede_area` VALUES ('1906', '白山市', '19', '0');
INSERT INTO `dede_area` VALUES ('1907', '松原市', '19', '0');
INSERT INTO `dede_area` VALUES ('1908', '白城市', '19', '0');
INSERT INTO `dede_area` VALUES ('1909', '延边州', '19', '0');
INSERT INTO `dede_area` VALUES ('20', '黑龙江', '0', '0');
INSERT INTO `dede_area` VALUES ('2001', '哈尔滨市', '20', '0');
INSERT INTO `dede_area` VALUES ('2002', '齐齐哈尔', '20', '0');
INSERT INTO `dede_area` VALUES ('2003', '鹤岗市', '20', '0');
INSERT INTO `dede_area` VALUES ('2004', '双鸭山市', '20', '0');
INSERT INTO `dede_area` VALUES ('2005', '鸡西市', '20', '0');
INSERT INTO `dede_area` VALUES ('2006', '大庆市', '20', '0');
INSERT INTO `dede_area` VALUES ('2007', '伊春市', '20', '0');
INSERT INTO `dede_area` VALUES ('2008', '牡丹江市', '20', '0');
INSERT INTO `dede_area` VALUES ('2009', '佳木斯市', '20', '0');
INSERT INTO `dede_area` VALUES ('2010', '七台河市', '20', '0');
INSERT INTO `dede_area` VALUES ('2011', '黑河市', '20', '0');
INSERT INTO `dede_area` VALUES ('2012', '绥化市', '20', '0');
INSERT INTO `dede_area` VALUES ('2013', '大兴安岭', '20', '0');
INSERT INTO `dede_area` VALUES ('21', '安徽省', '0', '0');
INSERT INTO `dede_area` VALUES ('2101', '合肥市', '21', '0');
INSERT INTO `dede_area` VALUES ('2102', '芜湖市', '21', '0');
INSERT INTO `dede_area` VALUES ('2103', '蚌埠市', '21', '0');
INSERT INTO `dede_area` VALUES ('2104', '淮南市', '21', '0');
INSERT INTO `dede_area` VALUES ('2105', '马鞍山市', '21', '0');
INSERT INTO `dede_area` VALUES ('2106', '淮北市', '21', '0');
INSERT INTO `dede_area` VALUES ('2107', '铜陵市', '21', '0');
INSERT INTO `dede_area` VALUES ('2108', '安庆市', '21', '0');
INSERT INTO `dede_area` VALUES ('2109', '黄山市', '21', '0');
INSERT INTO `dede_area` VALUES ('2110', '滁州市', '21', '0');
INSERT INTO `dede_area` VALUES ('2111', '阜阳市', '21', '0');
INSERT INTO `dede_area` VALUES ('2112', '宿州市', '21', '0');
INSERT INTO `dede_area` VALUES ('2113', '巢湖市', '21', '0');
INSERT INTO `dede_area` VALUES ('2114', '六安市', '21', '0');
INSERT INTO `dede_area` VALUES ('2115', '亳州市', '21', '0');
INSERT INTO `dede_area` VALUES ('2116', '宣城市', '21', '0');
INSERT INTO `dede_area` VALUES ('2117', '池州市', '21', '0');
INSERT INTO `dede_area` VALUES ('22', '湖南省', '0', '0');
INSERT INTO `dede_area` VALUES ('2201', '长沙市', '22', '0');
INSERT INTO `dede_area` VALUES ('2202', '株州市', '22', '0');
INSERT INTO `dede_area` VALUES ('2203', '湘潭市', '22', '0');
INSERT INTO `dede_area` VALUES ('2204', '衡阳市', '22', '0');
INSERT INTO `dede_area` VALUES ('2205', '邵阳市', '22', '0');
INSERT INTO `dede_area` VALUES ('2206', '岳阳市', '22', '0');
INSERT INTO `dede_area` VALUES ('2207', '常德市', '22', '0');
INSERT INTO `dede_area` VALUES ('2208', '张家界市', '22', '0');
INSERT INTO `dede_area` VALUES ('2209', '益阳市', '22', '0');
INSERT INTO `dede_area` VALUES ('2210', '郴州市', '22', '0');
INSERT INTO `dede_area` VALUES ('2211', '永州市', '22', '0');
INSERT INTO `dede_area` VALUES ('2212', '怀化市', '22', '0');
INSERT INTO `dede_area` VALUES ('2213', '娄底市', '22', '0');
INSERT INTO `dede_area` VALUES ('2214', '湘西州', '22', '0');
INSERT INTO `dede_area` VALUES ('23', '广西区', '0', '0');
INSERT INTO `dede_area` VALUES ('2301', '南宁市', '23', '0');
INSERT INTO `dede_area` VALUES ('2302', '柳州市', '23', '0');
INSERT INTO `dede_area` VALUES ('2303', '桂林市', '23', '0');
INSERT INTO `dede_area` VALUES ('2304', '梧州市', '23', '0');
INSERT INTO `dede_area` VALUES ('2305', '北海市', '23', '0');
INSERT INTO `dede_area` VALUES ('2306', '防城港市', '23', '0');
INSERT INTO `dede_area` VALUES ('2307', '钦州市', '23', '0');
INSERT INTO `dede_area` VALUES ('2308', '贵港市', '23', '0');
INSERT INTO `dede_area` VALUES ('2309', '玉林市', '23', '0');
INSERT INTO `dede_area` VALUES ('2310', '南宁地区', '23', '0');
INSERT INTO `dede_area` VALUES ('2311', '柳州地区', '23', '0');
INSERT INTO `dede_area` VALUES ('2312', '贺州地区', '23', '0');
INSERT INTO `dede_area` VALUES ('2313', '百色地区', '23', '0');
INSERT INTO `dede_area` VALUES ('2314', '河池地区', '23', '0');
INSERT INTO `dede_area` VALUES ('24', '海南省', '0', '0');
INSERT INTO `dede_area` VALUES ('2401', '海口市', '24', '0');
INSERT INTO `dede_area` VALUES ('2402', '三亚市', '24', '0');
INSERT INTO `dede_area` VALUES ('2403', '五指山市', '24', '0');
INSERT INTO `dede_area` VALUES ('2404', '琼海市', '24', '0');
INSERT INTO `dede_area` VALUES ('2405', '儋州市', '24', '0');
INSERT INTO `dede_area` VALUES ('2406', '琼山市', '24', '0');
INSERT INTO `dede_area` VALUES ('2407', '文昌市', '24', '0');
INSERT INTO `dede_area` VALUES ('2408', '万宁市', '24', '0');
INSERT INTO `dede_area` VALUES ('2409', '东方市', '24', '0');
INSERT INTO `dede_area` VALUES ('2410', '澄迈县', '24', '0');
INSERT INTO `dede_area` VALUES ('2411', '定安县', '24', '0');
INSERT INTO `dede_area` VALUES ('2412', '屯昌县', '24', '0');
INSERT INTO `dede_area` VALUES ('2413', '临高县', '24', '0');
INSERT INTO `dede_area` VALUES ('2414', '白沙县', '24', '0');
INSERT INTO `dede_area` VALUES ('2415', '昌江县', '24', '0');
INSERT INTO `dede_area` VALUES ('2416', '乐东县', '24', '0');
INSERT INTO `dede_area` VALUES ('2417', '陵水县', '24', '0');
INSERT INTO `dede_area` VALUES ('2418', '保亭县', '24', '0');
INSERT INTO `dede_area` VALUES ('2419', '琼中县', '24', '0');
INSERT INTO `dede_area` VALUES ('25', '云南省', '0', '0');
INSERT INTO `dede_area` VALUES ('2501', '昆明市', '25', '0');
INSERT INTO `dede_area` VALUES ('2502', '曲靖市', '25', '0');
INSERT INTO `dede_area` VALUES ('2503', '玉溪市', '25', '0');
INSERT INTO `dede_area` VALUES ('2504', '保山市', '25', '0');
INSERT INTO `dede_area` VALUES ('2505', '昭通市', '25', '0');
INSERT INTO `dede_area` VALUES ('2506', '思茅地区', '25', '0');
INSERT INTO `dede_area` VALUES ('2507', '临沧地区', '25', '0');
INSERT INTO `dede_area` VALUES ('2508', '丽江地区', '25', '0');
INSERT INTO `dede_area` VALUES ('2509', '文山州', '25', '0');
INSERT INTO `dede_area` VALUES ('2510', '红河州', '25', '0');
INSERT INTO `dede_area` VALUES ('2511', '西双版纳', '25', '0');
INSERT INTO `dede_area` VALUES ('2512', '楚雄州', '25', '0');
INSERT INTO `dede_area` VALUES ('2513', '大理州', '25', '0');
INSERT INTO `dede_area` VALUES ('2514', '德宏州', '25', '0');
INSERT INTO `dede_area` VALUES ('2515', '怒江州', '25', '0');
INSERT INTO `dede_area` VALUES ('2516', '迪庆州', '25', '0');
INSERT INTO `dede_area` VALUES ('26', '贵州省', '0', '0');
INSERT INTO `dede_area` VALUES ('2601', '贵阳市', '26', '0');
INSERT INTO `dede_area` VALUES ('2602', '六盘水市', '26', '0');
INSERT INTO `dede_area` VALUES ('2603', '遵义市', '26', '0');
INSERT INTO `dede_area` VALUES ('2604', '安顺市', '26', '0');
INSERT INTO `dede_area` VALUES ('2605', '铜仁地区', '26', '0');
INSERT INTO `dede_area` VALUES ('2606', '毕节地区', '26', '0');
INSERT INTO `dede_area` VALUES ('2607', '黔西南州', '26', '0');
INSERT INTO `dede_area` VALUES ('2608', '黔东南州', '26', '0');
INSERT INTO `dede_area` VALUES ('2609', '黔南州', '26', '0');
INSERT INTO `dede_area` VALUES ('27', '西藏区', '0', '0');
INSERT INTO `dede_area` VALUES ('2701', '拉萨市', '27', '0');
INSERT INTO `dede_area` VALUES ('2702', '那曲地区', '27', '0');
INSERT INTO `dede_area` VALUES ('2703', '昌都地区', '27', '0');
INSERT INTO `dede_area` VALUES ('2704', '山南地区', '27', '0');
INSERT INTO `dede_area` VALUES ('2705', '日喀则', '27', '0');
INSERT INTO `dede_area` VALUES ('2706', '阿里地区', '27', '0');
INSERT INTO `dede_area` VALUES ('2707', '林芝地区', '27', '0');
INSERT INTO `dede_area` VALUES ('28', '甘肃省', '0', '0');
INSERT INTO `dede_area` VALUES ('2801', '兰州市', '28', '0');
INSERT INTO `dede_area` VALUES ('2802', '金昌市', '28', '0');
INSERT INTO `dede_area` VALUES ('2803', '白银市', '28', '0');
INSERT INTO `dede_area` VALUES ('2804', '天水市', '28', '0');
INSERT INTO `dede_area` VALUES ('2805', '嘉峪关市', '28', '0');
INSERT INTO `dede_area` VALUES ('2806', '武威市', '28', '0');
INSERT INTO `dede_area` VALUES ('2807', '定西地区', '28', '0');
INSERT INTO `dede_area` VALUES ('2808', '平凉地区', '28', '0');
INSERT INTO `dede_area` VALUES ('2809', '庆阳地区', '28', '0');
INSERT INTO `dede_area` VALUES ('2810', '陇南地区', '28', '0');
INSERT INTO `dede_area` VALUES ('2811', '张掖地区', '28', '0');
INSERT INTO `dede_area` VALUES ('2812', '酒泉地区', '28', '0');
INSERT INTO `dede_area` VALUES ('2813', '甘南州', '28', '0');
INSERT INTO `dede_area` VALUES ('2814', '临夏州', '28', '0');
INSERT INTO `dede_area` VALUES ('29', '宁夏区', '0', '0');
INSERT INTO `dede_area` VALUES ('2901', '银川市', '29', '0');
INSERT INTO `dede_area` VALUES ('2902', '石嘴山市', '29', '0');
INSERT INTO `dede_area` VALUES ('2903', '吴忠市', '29', '0');
INSERT INTO `dede_area` VALUES ('2904', '固原市', '29', '0');
INSERT INTO `dede_area` VALUES ('30', '青海省', '0', '0');
INSERT INTO `dede_area` VALUES ('3001', '西宁市', '30', '0');
INSERT INTO `dede_area` VALUES ('3002', '海东地区', '30', '0');
INSERT INTO `dede_area` VALUES ('3003', '海北州', '30', '0');
INSERT INTO `dede_area` VALUES ('3004', '黄南州', '30', '0');
INSERT INTO `dede_area` VALUES ('3005', '海南州', '30', '0');
INSERT INTO `dede_area` VALUES ('3006', '果洛州', '30', '0');
INSERT INTO `dede_area` VALUES ('3007', '玉树州', '30', '0');
INSERT INTO `dede_area` VALUES ('3008', '海西州', '30', '0');
INSERT INTO `dede_area` VALUES ('31', '新疆区', '0', '0');
INSERT INTO `dede_area` VALUES ('3101', '乌鲁木齐', '31', '0');
INSERT INTO `dede_area` VALUES ('3102', '克拉玛依', '31', '0');
INSERT INTO `dede_area` VALUES ('3103', '石河子市', '31', '0');
INSERT INTO `dede_area` VALUES ('3104', '吐鲁番', '31', '0');
INSERT INTO `dede_area` VALUES ('3105', '哈密地区', '31', '0');
INSERT INTO `dede_area` VALUES ('3106', '和田地区', '31', '0');
INSERT INTO `dede_area` VALUES ('3107', '阿克苏', '31', '0');
INSERT INTO `dede_area` VALUES ('3108', '喀什地区', '31', '0');
INSERT INTO `dede_area` VALUES ('3109', '克孜勒苏', '31', '0');
INSERT INTO `dede_area` VALUES ('3110', '巴音郭楞', '31', '0');
INSERT INTO `dede_area` VALUES ('3111', '昌吉州', '31', '0');
INSERT INTO `dede_area` VALUES ('3112', '博尔塔拉', '31', '0');
INSERT INTO `dede_area` VALUES ('3113', '伊犁州', '31', '0');
INSERT INTO `dede_area` VALUES ('3117', '东城区', '1', '0');
INSERT INTO `dede_area` VALUES ('32', '香港区', '0', '0');
INSERT INTO `dede_area` VALUES ('33', '澳门区', '0', '0');
INSERT INTO `dede_area` VALUES ('35', '台湾省', '0', '0');

-- ----------------------------
-- Table structure for `dede_channeltype`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_channeltype
-- ----------------------------
INSERT INTO `dede_channeltype` VALUES ('1', 'article', '普通文章', 'dede_archives', 'dede_addonarticle', 'article_add.php', 'content_list.php', 'article_edit.php', 'article_add.php', 'content_list.php', 'article_edit.php', '<field:body itemname=\"文章内容\" autofield=\"0\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"split\">	\n</field:body>	\n', '', '', '1', '1', '1', '-1', '', '10', '0', '1', '1', '标题', '0', '0');
INSERT INTO `dede_channeltype` VALUES ('2', 'image', '图片集', 'dede_archives', 'dede_addonimages', 'album_add.php', 'content_i_list.php', 'album_edit.php', 'album_add.php', 'content_list.php', 'album_edit.php', '<field:pagestyle itemname=\"页面风格\" type=\"number\" isnull=\"true\" default=\"2\" rename=\"\" notsend=\"1\" />	\n<field:imgurls itemname=\"图片集合\" type=\"img\" isnull=\"true\" default=\"\" rename=\"\" page=\"split\"/>	\n<field:body itemname=\"图集内容\" autofield=\"0\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\"></field:body>', '', '', '1', '1', '1', '-1', '', '10', '0', '1', '1', '标题', '0', '0');
INSERT INTO `dede_channeltype` VALUES ('3', 'soft', '软件', 'dede_archives', 'dede_addonsoft', 'soft_add.php', 'content_i_list.php', 'soft_edit.php', '', '', '', '<field:filetype islist=\"1\" itemname=\"文件类型\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:language islist=\"1\" itemname=\"语言\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:softtype islist=\"1\" itemname=\"软件类型\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:accredit islist=\"1\" itemname=\"授权方式\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:os islist=\"1\" itemname=\"操作系统\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:softrank  islist=\"1\" itemname=\"软件等级\" type=\"int\" isnull=\"true\" default=\"3\" rename=\"\" function=\"GetRankStar(@me)\" notsend=\"1\"/>	\n<field:officialUrl  itemname=\"官方网址\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:officialDemo itemname=\"演示网址\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:softsize  itemname=\"软件大小\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:softlinks  itemname=\"软件地址\" type=\"softlinks\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:introduce  itemname=\"详细介绍\" type=\"htmltext\" isnull=\"trnue\" default=\"\" rename=\"\" />	\n<field:daccess islist=\"1\" itemname=\"下载级别\" type=\"int\" isnull=\"true\" default=\"0\" rename=\"\" function=\"\" notsend=\"1\"/>	\n<field:needmoney islist=\"1\" itemname=\"需要金币\" type=\"int\" isnull=\"true\" default=\"0\" rename=\"\" function=\"\" notsend=\"1\" />', 'filetype,language,softtype,os,accredit,softrank', '', '1', '1', '1', '-1', '', '10', '0', '1', '1', '标题', '0', '0');
INSERT INTO `dede_channeltype` VALUES ('-1', 'spec', '专题', 'dede_archives', 'dede_addonspec', 'spec_add.php', 'content_s_list.php', 'spec_edit.php', '', '', '', '<field:note type=\"specialtopic\" isnull=\"true\" default=\"\" rename=\"\"/>', '', '', '1', '1', '0', '-1', '', '10', '0', '1', '1', '标题', '0', '0');
INSERT INTO `dede_channeltype` VALUES ('6', 'shop', '商品', 'dede_archives', 'dede_addonshop', 'archives_add.php', 'content_list.php', 'archives_edit.php', 'archives_add.php', 'content_list.php', 'archives_edit.php', '<field:body itemname=\"详细介绍\" autofield=\"1\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"\" page=\"split\">	\n</field:body>	\n<field:price itemname=\"市场价\" autofield=\"1\" notsend=\"0\" type=\"float\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"\">	\n</field:price>	\n<field:trueprice itemname=\"优惠价\" autofield=\"1\" notsend=\"0\" type=\"float\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"\">	\n</field:trueprice>	\n<field:brand itemname=\"品牌\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:brand>	\n<field:units itemname=\"计量单位\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:units>	\n\n	\n\n<field:vocation itemname=\"行业\" autofield=\"1\" notsend=\"0\"type=\"stepselect\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:vocation>	\n\n<field:infotype itemname=\"信息类型\" autofield=\"1\" notsend=\"0\" type=\"stepselect\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:infotype>	\n\n<field:uptime itemname=\"上架时间\" autofield=\"1\" notsend=\"0\" type=\"datetime\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:uptime>	\n', 'price,trueprice,brand,units', '', '0', '1', '1', '-1', '', '10', '0', '1', '1', '商品名称', '0', '0');
INSERT INTO `dede_channeltype` VALUES ('-8', 'infos', '分类信息', 'dede_archives', 'dede_addoninfos', 'archives_sg_add.php', 'content_sg_list.php', 'archives_sg_edit.php', 'archives_sg_add.php', 'content_sg_list.php', 'archives_sg_edit.php', '<field:channel itemname=\"频道id\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:channel>	\n<field:arcrank itemname=\"浏览权限\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"5\" page=\"\"></field:arcrank>	\n<field:mid itemname=\"会员id\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:mid>	\n<field:click itemname=\"点击\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:click>	\n<field:title itemname=\"标题\" autofield=\"0\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"60\" page=\"\"></field:title>	\n<field:senddate itemname=\"发布时间\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:senddate>	\n<field:flag itemname=\"推荐属性\" autofield=\"0\" notsend=\"0\" type=\"checkbox\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:flag>	\n<field:litpic itemname=\"缩略图\" autofield=\"0\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"60\" page=\"\"></field:litpic>	\n<field:userip itemname=\"会员IP\" autofield=\"0\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"0\"  maxlength=\"15\" page=\"\"></field:userip>	\n<field:lastpost itemname=\"最后评论时间\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:lastpost>	\n<field:scores itemname=\"评论积分\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:scores>	\n<field:goodpost itemname=\"好评数\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:goodpost>	\n<field:badpost itemname=\"差评数\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:badpost>	\n<field:nativeplace itemname=\"地区\" autofield=\"1\" notsend=\"0\" type=\"stepselect\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"250\" page=\"\">	\n</field:nativeplace>	\n<field:infotype itemname=\"信息类型\" autofield=\"1\" notsend=\"0\" type=\"stepselect\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"250\" page=\"\">	\n</field:infotype>	\n<field:body itemname=\"信息内容\" autofield=\"1\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:body>	\n<field:endtime itemname=\"截止日期\" autofield=\"1\" notsend=\"0\" type=\"datetime\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:endtime>	\n<field:linkman itemname=\"联系人\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"50\" page=\"\">	\n</field:linkman>	\n<field:tel itemname=\"联系电话\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\" maxlength=\"50\" page=\"\">	\n</field:tel>	\n<field:email itemname=\"电子邮箱\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"50\" page=\"\">	\n</field:email>	\n<field:address itemname=\"地址\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"100\" page=\"\">	\n</field:address>	\n', 'channel,arcrank,mid,click,title,senddate,flag,litpic,lastpost,scores,goodpost,badpost,nativeplace,infotype,endtime', '', '-1', '1', '1', '-1', '', '0', '0', '0', '1', '信息标题', '0', '0');

-- ----------------------------
-- Table structure for `dede_co_htmls`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_co_htmls
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_co_mediaurls`
-- ----------------------------
DROP TABLE IF EXISTS `dede_co_mediaurls`;
CREATE TABLE `dede_co_mediaurls` (
  `nid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hash` char(32) NOT NULL DEFAULT '',
  `tofile` char(60) NOT NULL DEFAULT '',
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_co_mediaurls
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_co_note`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_co_note
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_co_onepage`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_co_onepage
-- ----------------------------
INSERT INTO `dede_co_onepage` VALUES ('5', 'www.dedecms.com', '织梦网络', '1', 'gb2312', '<div class=\"content\">{@body}<div class=\"cupage\">');
INSERT INTO `dede_co_onepage` VALUES ('4', 'www.techweb.com.cn', 'Techweb', '1', 'gb2312', '<div class=\"content_txt\">{@body}</div>	\n');
INSERT INTO `dede_co_onepage` VALUES ('6', 'tw.news.yahoo.com', '台湾雅虎', '1', 'big5', '<div id=\"ynwsartcontent\">{@body}</div>	\n');

-- ----------------------------
-- Table structure for `dede_co_urls`
-- ----------------------------
DROP TABLE IF EXISTS `dede_co_urls`;
CREATE TABLE `dede_co_urls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `nid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_co_urls
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_diyform1`
-- ----------------------------
DROP TABLE IF EXISTS `dede_diyform1`;
CREATE TABLE `dede_diyform1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ifcheck` tinyint(1) NOT NULL DEFAULT '0',
  `咨询标题` varchar(250) NOT NULL DEFAULT '',
  `咨询内容` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_diyform1
-- ----------------------------
INSERT INTO `dede_diyform1` VALUES ('1', '0', '1', '2');

-- ----------------------------
-- Table structure for `dede_diyforms`
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_diyforms
-- ----------------------------
INSERT INTO `dede_diyforms` VALUES ('1', '自定义表单1', 'post_diyform1.htm', 'view_diyform1.htm', 'list_diyform1.htm', 'dede_diyform1', '\n<field:咨询标题 itemname=\"title1\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:咨询标题>\r\n\n<field:咨询内容 itemname=\"title2\" autofield=\"1\" type=\"multitext\" isnull=\"true\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:咨询内容>\r\n\r\n', '0');

-- ----------------------------
-- Table structure for `dede_dl_log`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_dl_log
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_downloads`
-- ----------------------------
DROP TABLE IF EXISTS `dede_downloads`;
CREATE TABLE `dede_downloads` (
  `hash` char(32) NOT NULL,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `downloads` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_downloads
-- ----------------------------
INSERT INTO `dede_downloads` VALUES ('d41d8cd98f00b204e9800998ecf8427e', '0', '5');

-- ----------------------------
-- Table structure for `dede_erradd`
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_erradd
-- ----------------------------
INSERT INTO `dede_erradd` VALUES ('1', '0', '0', '', '0', '', '', '1503366484');
INSERT INTO `dede_erradd` VALUES ('2', '0', '0', '', '0', '', '', '1507629117');
INSERT INTO `dede_erradd` VALUES ('3', '0', '0', '', '0', '', '', '1507629121');
INSERT INTO `dede_erradd` VALUES ('4', '0', '0', '', '0', '', '', '1507629122');

-- ----------------------------
-- Table structure for `dede_feedback`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_flink`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_flink
-- ----------------------------
INSERT INTO `dede_flink` VALUES ('2', '1', 'http://www.dedecms.com', '织梦CMS官方', '', '', '', '1226375403', '1', '2');
INSERT INTO `dede_flink` VALUES ('9', '1', 'http://docs.dedecms.com/', 'DedeCMS维基手册', '', '', '', '1227772717', '1', '2');
INSERT INTO `dede_flink` VALUES ('8', '1', 'http://bbs.dedecms.com', '织梦技术论坛', '', '', '', '1227772703', '1', '2');

-- ----------------------------
-- Table structure for `dede_flinktype`
-- ----------------------------
DROP TABLE IF EXISTS `dede_flinktype`;
CREATE TABLE `dede_flinktype` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_flinktype
-- ----------------------------
INSERT INTO `dede_flinktype` VALUES ('1', '综合网站');
INSERT INTO `dede_flinktype` VALUES ('2', '娱乐类');
INSERT INTO `dede_flinktype` VALUES ('3', '教育类');
INSERT INTO `dede_flinktype` VALUES ('4', '计算机类');
INSERT INTO `dede_flinktype` VALUES ('5', '电子商务');
INSERT INTO `dede_flinktype` VALUES ('6', '网上信息');
INSERT INTO `dede_flinktype` VALUES ('7', '论坛类');
INSERT INTO `dede_flinktype` VALUES ('8', '其它类型');

-- ----------------------------
-- Table structure for `dede_freelist`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_freelist
-- ----------------------------
INSERT INTO `dede_freelist` VALUES ('1', '测试内容', '{listdir}/index_{listid}_{page}.html', '{cmspath}/freelist/', 'index.html', '1', '{style}/list_free.htm', '1473398680', '100', '0', '{dede:list  pagesize=\'30\' col=\'1\' titlelen=\'60\' orderby=\'pubdate\' orderway=\'desc\' \r\n}<li>[field:imglink/] [field:textlink/] <span class=info><small>日期：</small>[field:pubdate function=\"getdatemk(@me)\"/] <small>点击：</small>[field:click/] <small>好评：</small>[field:scores/] </span>	\r\n<p class=intro>[field:description/]...</p></li>{/dede:list}', '阿三大厦大大', '阿三大厦大厦大撒');
INSERT INTO `dede_freelist` VALUES ('10', 'Google SiteMap 生成器', '{listdir}googlemap_{page}.xml', '{cmspath}', 'index.html', '1', '{style}/googlemap.htm', '1226884666', '100', '0', '{dede:list  pagesize=\"500\" col=\"1\" titlelen=\"60\" orderby=\"pubdate\" orderway=\"desc\" 	\n channel=\"1\"  keyword=\"\" }<url>	\n   <loc>[field:arcurl function=\"Gmapurl(@me)\"/]</loc> 	\n   <title>[field:title function=\"HtmlReplace(@me)\"/]</title>	\n   <news:news>	\n  <news:keywords>[field:keywords/]</news:keywords>	\n <news:publication_date>[field:senddate function=\"strftime(\"%Y-%m-%d\",@me)\"/]</news:publication_date>	\n </news:news>	\n</url>{/dede:list}', '', '');

-- ----------------------------
-- Table structure for `dede_homepageset`
-- ----------------------------
DROP TABLE IF EXISTS `dede_homepageset`;
CREATE TABLE `dede_homepageset` (
  `templet` char(50) NOT NULL DEFAULT '',
  `position` char(30) NOT NULL DEFAULT '',
  `showmod` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_homepageset
-- ----------------------------
INSERT INTO `dede_homepageset` VALUES ('htm/index.htm', '../index.html', '0');

-- ----------------------------
-- Table structure for `dede_keywords`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_keywords
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_log`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_log
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_member`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_member
-- ----------------------------
INSERT INTO `dede_member` VALUES ('1', '个人', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '男', '100', '0', '0', '0', '', '10000', '10', '0', '', '0', '', '1467795687', '', '1503971597', '101.81.129.167', '-1');

-- ----------------------------
-- Table structure for `dede_member_company`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_member_company
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_member_feed`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_member_feed
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_member_flink`
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_flink`;
CREATE TABLE `dede_member_flink` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_flink
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_member_friends`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_member_friends
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_member_group`
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_group`;
CREATE TABLE `dede_member_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL,
  `mid` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_group
-- ----------------------------
INSERT INTO `dede_member_group` VALUES ('1', '朋友', '0');

-- ----------------------------
-- Table structure for `dede_member_guestbook`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_member_guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_member_model`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_member_model
-- ----------------------------
INSERT INTO `dede_member_model` VALUES ('1', '个人', 'dede_member_person', '个人会员模型', '1', '1', '	\n<field:onlynet itemname=\"联系方式限制\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"1\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:onlynet>	\n	\n<field:sex itemname=\"性别\" autofield=\"1\" type=\"radio\" isnull=\"true\" default=\"男,女,保密\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:sex>	\n	\n<field:uname itemname=\"昵称/公司名称\" autofield=\"1\" type=\"textchar\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:uname>	\n	\n<field:qq itemname=\"QQ\" autofield=\"1\" type=\"textchar\" isnull=\"true\" default=\"\"  maxlength=\"12\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:qq>	\n	\n<field:msn itemname=\"MSN\" autofield=\"1\" type=\"textchar\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:msn>	\n	\n<field:tel itemname=\"电话号码\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"15\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:tel>	\n	\n<field:mobile itemname=\"手机\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"15\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:mobile>	\n	\n<field:place itemname=\"目前所在地\" autofield=\"1\" type=\"int\" default=\"0\"  maxlength=\"5\" issearch=\"0\" isshow=\"0\" state=\"1\">	\n</field:place>	\n	\n	\n<field:oldplace itemname=\"家乡所在地\" autofield=\"1\" type=\"int\" default=\"0\"  maxlength=\"5\" issearch=\"0\" isshow=\"0\" state=\"1\">	\n</field:oldplace>	\n	\n	\n<field:birthday itemname=\"生日\" autofield=\"1\" type=\"datetime\" isnull=\"true\" default=\"\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:birthday>	\n	\n<field:star itemname=\"星座\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"1\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:star>	\n	\n<field:income itemname=\"收入\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:income>	\n	\n<field:education itemname=\"学历\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:education>	\n	\n<field:height itemname=\"身高\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"160\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:height>	\n	\n<field:bodytype itemname=\"体重\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:bodytype>	\n	\n<field:blood itemname=\"血型\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:blood>	\n	\n<field:vocation itemname=\"职业\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:vocation>	\n	\n<field:smoke itemname=\"吸烟\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:smoke>	\n	\n<field:marital itemname=\"婚姻状况\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:marital>	\n	\n<field:house itemname=\"住房\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:house>	\n	\n<field:drink itemname=\"饮酒\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:drink>	\n	\n<field:datingtype itemname=\"交友\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:datingtype>	\n	\n<field:language itemname=\"语言\" autofield=\"1\" type=\"checkbox\" isnull=\"true\" default=\"普通话,上海话,广东话,英语,日语,韩语,法语,意大利语,德语,西班牙语,俄语,阿拉伯语\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:language>	\n	\n	\n<field:nature itemname=\"性格\" autofield=\"1\" type=\"checkbox\" isnull=\"true\" default=\"性格外向,性格内向,活泼开朗,豪放不羁,患得患失,冲动,幽默,稳重,轻浮,沉默寡言,多愁善感,时喜时悲,附庸风雅,能说会道,坚强,脆弱,幼稚,成熟,快言快语,损人利己,狡猾善变,交际广泛,优柔寡断,自私,真诚,独立,依赖,难以琢磨,悲观消极,郁郁寡欢,胆小怕事,乐观向上,任性,自负,自卑,拜金,温柔体贴,小心翼翼,暴力倾向,逆来顺受,不拘小节,暴躁,倔强,豪爽,害羞,婆婆妈妈,敢做敢当,助人为乐,耿直,虚伪,孤僻,老实,守旧,敏感,迟钝,婆婆妈妈,武断,果断,刻薄\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:nature>	\n	\n<field:lovemsg itemname=\"人生格言\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"100\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:lovemsg>	\n	\n<field:address itemname=\"家庭住址\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:address>	\n	\n<field:uptime itemname=\"更新时间\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"\"  maxlength=\"10\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:uptime>	\n');
INSERT INTO `dede_member_model` VALUES ('2', '企业', 'dede_member_company', '公司企业会员模型', '1', '1', '	\n<field:company itemname=\"公司名称\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"36\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:company>	\n	\n<field:product itemname=\"公司产品\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:product>	\n	\n<field:place itemname=\"所在地址\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:place>	\n	\n<field:vocation itemname=\"所属行业\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:vocation>	\n	\n<field:cosize itemname=\"公司规模\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:cosize>	\n	\n<field:tel itemname=\"电话号码\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:tel>	\n	\n<field:fax itemname=\"传真\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:fax>	\n	\n<field:linkman itemname=\"联系人\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"20\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:linkman>	\n	\n<field:address itemname=\"详细地址\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:address>	\n	\n<field:mobile itemname=\"手机\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:mobile>	\n	\n<field:email itemname=\"邮箱\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:email>	\n	\n<field:url itemname=\"地址\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:url>	\n	\n<field:uptime itemname=\"更新时间\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"10\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:uptime>	\n	\n<field:checked itemname=\"是否审核\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"1\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:checked>	\n	\n<field:introduce itemname=\"公司简介\" autofield=\"1\" type=\"multitext\" isnull=\"true\" default=\"\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:introduce>	\n	\n<field:comface itemname=\"公司标志\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"255\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:comface>	\n');

-- ----------------------------
-- Table structure for `dede_member_msg`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_member_msg
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_member_operation`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_member_operation
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_member_person`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_member_person
-- ----------------------------
INSERT INTO `dede_member_person` VALUES ('1', '1', '男', 'admin', '', '', '', '', '0', '0', '1980-01-01', '1', '0', '0', '160', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '0');

-- ----------------------------
-- Table structure for `dede_member_pms`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_member_pms
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_member_snsmsg`
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_snsmsg`;
CREATE TABLE `dede_member_snsmsg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` varchar(20) NOT NULL,
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_snsmsg
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_member_space`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_member_space
-- ----------------------------
INSERT INTO `dede_member_space` VALUES ('1', '10', '0', 'admin的空间', '', 'person', '', '');

-- ----------------------------
-- Table structure for `dede_member_stow`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_member_stow
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_member_stowtype`
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_stowtype`;
CREATE TABLE `dede_member_stowtype` (
  `stowname` varchar(30) NOT NULL,
  `indexname` varchar(30) NOT NULL,
  `indexurl` varchar(50) NOT NULL,
  PRIMARY KEY (`stowname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_stowtype
-- ----------------------------
INSERT INTO `dede_member_stowtype` VALUES ('sys', '系统收藏', 'archives_do.php');
INSERT INTO `dede_member_stowtype` VALUES ('book', '小说收藏', '/book/book.php?bid');

-- ----------------------------
-- Table structure for `dede_member_tj`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_member_tj
-- ----------------------------
INSERT INTO `dede_member_tj` VALUES ('1', '0', '0', '0', '0', '9', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `dede_member_type`
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_type`;
CREATE TABLE `dede_member_type` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL DEFAULT '0',
  `pname` varchar(50) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT '0',
  `exptime` int(11) NOT NULL DEFAULT '30',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_type
-- ----------------------------
INSERT INTO `dede_member_type` VALUES ('1', '50', '中级会员半年', '100', '7');

-- ----------------------------
-- Table structure for `dede_member_vhistory`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_member_vhistory
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_moneycard_record`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_moneycard_record
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_moneycard_type`
-- ----------------------------
DROP TABLE IF EXISTS `dede_moneycard_type`;
CREATE TABLE `dede_moneycard_type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL DEFAULT '500',
  `money` int(11) NOT NULL DEFAULT '50',
  `pname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_moneycard_type
-- ----------------------------
INSERT INTO `dede_moneycard_type` VALUES ('1', '100', '30', '100点卡');
INSERT INTO `dede_moneycard_type` VALUES ('2', '200', '55', '200点卡');
INSERT INTO `dede_moneycard_type` VALUES ('3', '300', '75', '300点卡');

-- ----------------------------
-- Table structure for `dede_mtypes`
-- ----------------------------
DROP TABLE IF EXISTS `dede_mtypes`;
CREATE TABLE `dede_mtypes` (
  `mtypeid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mtypename` char(40) NOT NULL,
  `channelid` smallint(6) NOT NULL DEFAULT '1',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mtypeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_mtypes
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_multiserv_config`
-- ----------------------------
DROP TABLE IF EXISTS `dede_multiserv_config`;
CREATE TABLE `dede_multiserv_config` (
  `remoteuploads` smallint(6) NOT NULL DEFAULT '0',
  `remoteupUrl` text NOT NULL,
  `rminfo` text,
  `servinfo` mediumtext,
  PRIMARY KEY (`remoteuploads`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_multiserv_config
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_myad`
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_myad
-- ----------------------------
INSERT INTO `dede_myad` VALUES ('1', '0', '0', 'indexTopBanner1', '首页顶部导航大图-500*60', '0', '1297933028', '1300525028', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=fronttopbanner&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('2', '0', '0', 'indexTopBanner2', '首页顶部导航小图-200*60', '0', '1297933605', '1300525605', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=fronttopbanner2&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('3', '0', '0', 'innerTopBanner1', '(频道/列表)顶部导航大图-500*60', '0', '1297934052', '1300526052', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=innertopbanner1&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('4', '0', '0', 'innerTopBanner2', '(频道/列表)顶部导航小图-200*60', '0', '1297934104', '1300526104', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=innertopbanner2&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('5', '0', '0', 'indexLeftBanner', '首页左侧大图广告-712*75', '0', '1297934791', '1300526791', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=indexleftbanner&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('6', '0', '0', 'indexRightLitpic1', '首页右侧小块图1-240*65', '0', '1297936106', '1300528106', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=indexrtlitpic1&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('7', '0', '0', 'indexRightLitpic2', '首页右侧小块图2-240*65', '0', '1297936768', '1300528768', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=indexrtlitpic2&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('8', '0', '0', 'indexfooterAD', '首页底部图片广告-726*91', '0', '1297937814', '1300529814', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=indexfooterad&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('9', '0', '0', 'innerfooterAD', '(频道/列表)底部图片广告-726*91', '0', '1297991183', '1300583183', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=innerfooterad&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('10', '0', '0', 'innerfooterAD2', '内容底部图片广告-726*91', '0', '1297991709', '1300583709', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=innerfooterad2&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('11', '0', '0', 'listRtPicAD', '(频道/列表)右侧图片广告-240*200', '0', '1297992254', '1300584254', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=listrtpicad&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('12', '0', '0', 'contentRtPicAD', '内容右侧图片广告-240*200', '0', '1297995082', '1300587082', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=contentrtpicad&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('13', '0', '0', 'listRtPicAD2', '(频道/列表)右侧图片广告2-240*200', '0', '1297996543', '1300588543', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=listrtpicad2&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('14', '0', '0', 'contentRtPicAD2', '内容右侧图片广告2-240*200', '0', '1297997106', '1300589106', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=contentrtpicad2&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('15', '0', '0', 'contentMidPicAD', '内容页内容中广告-300*250', '0', '1297997971', '1300589971', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=contentmidpicad&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('16', '0', '0', 'searchPicAD', '搜索页右侧广告-300*268', '0', '1297999720', '1300591720', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=searchpicad&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('17', '0', '0', 'indexRtpicAd3', '首页右侧图片广告-240*200', '0', '1298000077', '1300592077', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=indexrtpicad3&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('18', '0', '0', 'searchTopBanner', '搜索页面顶部banner广告-300*40', '0', '1298012954', '1300604954', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=searchtopbanner&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('19', '0', '0', 'contentTopBanner1', '内容顶部导航大图-500*60', '0', '1298017655', '1300609655', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=ctenttpbanner1&charset=gbk\"></script>', '');
INSERT INTO `dede_myad` VALUES ('20', '0', '0', 'contentTopBanner2', '内容顶部导航小图-200*60', '0', '1298017688', '1300609688', '<script type=\"text/javascript\" src=\"http://ad.dedecms.com/adsview/?action=single&key=ctenttpbanner2&charset=gbk\"></script>', '');

-- ----------------------------
-- Table structure for `dede_myadtype`
-- ----------------------------
DROP TABLE IF EXISTS `dede_myadtype`;
CREATE TABLE `dede_myadtype` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_myadtype
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_mytag`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_mytag
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_payment`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_payment
-- ----------------------------
INSERT INTO `dede_payment` VALUES ('3', 'alipay', '支付宝', '2', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/>DedeCMS联合支付宝推出支付宝接口。<br/><a href=\"https://www.alipay.com/himalayas/practicality_customer.htm?customer_external_id=C4335994340215837114&market_type=from_agent_contract&pro_codes=6ACD133C5F350958F7F62F29651356BB \" target=\"_blank\"><font color=\"red\">立即在线申请</font></a>', '1', 'a:4:{s:14:\"alipay_account\";a:4:{s:5:\"title\";s:14:\"支付宝用户账号\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:20:\"yuan12345xin@163.com\";}s:10:\"alipay_key\";a:4:{s:5:\"title\";s:14:\"交易安全校验码\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:6:\"dsfsdf\";}s:14:\"alipay_partner\";a:4:{s:5:\"title\";s:12:\"合作者身份ID\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:1:\"1\";}s:17:\"alipay_pay_method\";a:5:{s:5:\"title\";s:14:\"支付宝账号类型\";s:11:\"description\";s:52:\"请选择您最后一次跟支付宝签订的协议里面说明的接口类型\";s:4:\"type\";s:6:\"select\";s:5:\"iterm\";s:58:\"0:使用标准双接口,1:使用担保交易接口,2:使用即时到帐交易接口\";s:5:\"value\";s:1:\"1\";}}', '1', '0', '1');
INSERT INTO `dede_payment` VALUES ('2', 'bank', '银行汇款/转帐', '0', '银行名称	\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。	\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。', '4', 'a:0:{}', '1', '1', '0');
INSERT INTO `dede_payment` VALUES ('1', 'cod', '货到付款', '0', '开通城市：×××	\n货到付款区域：×××', '3', 'a:0:{}', '1', '1', '0');
INSERT INTO `dede_payment` VALUES ('6', 'yeepay', 'YeePay易宝', '12', 'YeePay易宝（北京通融通信息技术有限公司）是专业从事多元化电子支付业务一站式服务的领跑者。在立足于网上支付的同时，YeePay易宝不断创新，将互联网、手机、固定电话整合在一个平台上，继短信支付、手机充值之后，首家推出了YeePay易宝电话支付业务，真正实现了离线支付，为更多传统行业搭建了电子支付的高速公路。YeePay易宝融合世界先进的电子支付文化，聚合众多金融、电信、IT、互联网等领域内的巨擘，旨在通过创新的支付机制，推动中国电子商务新进程。YeePay易宝致力于成为世界一流的电子支付应用和服务提供商，专注于金融增值服务和移动增值服务两大领域，创新并推广多元化、低成本的、安全有效的支付服务。<input type=\"button\" name=\"Submit\" value=\"立即注册\" onclick=\"window.open(\"https://www.yeepay.com/selfservice/requestRegister.action\")\" />', '2', 'a:2:{s:10:\"yp_account\";a:4:{s:5:\"title\";s:8:\"商户编号\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:2:\"aa\";}s:6:\"yp_key\";a:4:{s:5:\"title\";s:8:\"商户密钥\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:3:\"dsa\";}}', '1', '0', '1');

-- ----------------------------
-- Table structure for `dede_plus`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_plus
-- ----------------------------
INSERT INTO `dede_plus` VALUES ('27', '友情链接模块', '<m:item name=\'友情链接\' link=\'friendlink_main.php\' rank=\'plus_友情链接\' target=\'main\' />', '', '织梦团队', '1', '');
INSERT INTO `dede_plus` VALUES ('24', '文件管理器', '<m:item name=\'文件管理器\' link=\'file_manage_main.php\' rank=\'plus_文件管理器\' target=\'main\' />', '', '织梦团队', '1', '');
INSERT INTO `dede_plus` VALUES ('23', '百度新闻', '<m:item name=\'百度新闻\' link=\'baidunews.php\' rank=\'plus_百度新闻\' target=\'main\' />', '', '织梦团队', '1', 'baidunews.php');
INSERT INTO `dede_plus` VALUES ('28', '投票模块', '<m:item name=\'投票模块\' link=\'vote_main.php\' rank=\'plus_投票模块\' target=\'main\' />', '', '织梦团队', '1', '');
INSERT INTO `dede_plus` VALUES ('25', '广告管理', '<m:item name=\'广告管理\' link=\'ad_main.php\' rank=\'plus_广告管理\' target=\'main\' />', '', '织梦官方', '1', '');
INSERT INTO `dede_plus` VALUES ('10', '挑错管理', '<m:item name=\'挑错管理\' link=\'erraddsave.php\' rank=\'plus_挑错管理\' target=\'main\' />', '', '织梦团队', '1', '<m:item name=\'挑错管理\' link=\'catalog_do.php?dopost=erraddsave.php\' rank=\'plus_挑错管理\' target=\'main\' />');

-- ----------------------------
-- Table structure for `dede_plus_seoinfo`
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_plus_seoinfo
-- ----------------------------
INSERT INTO `dede_plus_seoinfo` VALUES ('1', '1467800689', '0', '0', '0', '0', '0');
INSERT INTO `dede_plus_seoinfo` VALUES ('2', '1467886050', '0', '0', '0', '0', '0');
INSERT INTO `dede_plus_seoinfo` VALUES ('3', '1469524530', '0', '0', '0', '0', '0');
INSERT INTO `dede_plus_seoinfo` VALUES ('4', '1469608015', '0', '0', '0', '0', '0');
INSERT INTO `dede_plus_seoinfo` VALUES ('5', '1471434132', '0', '0', '0', '0', '0');
INSERT INTO `dede_plus_seoinfo` VALUES ('6', '1471662584', '1,910,478', '0', '0', '0', '0');
INSERT INTO `dede_plus_seoinfo` VALUES ('7', '1473253003', '1,910,478', '0', '0', '0', '0');
INSERT INTO `dede_plus_seoinfo` VALUES ('8', '1473398639', '1,910,478', '0', '0', '0', '0');
INSERT INTO `dede_plus_seoinfo` VALUES ('9', '1481262763', '1,910,478', '0', '0', '108,038', '0');
INSERT INTO `dede_plus_seoinfo` VALUES ('10', '1481526845', '1,910,478', '0', '0', '108,038', '0');
INSERT INTO `dede_plus_seoinfo` VALUES ('11', '1498721595', '1,520,350', '0', '0', '108,038', '0');
INSERT INTO `dede_plus_seoinfo` VALUES ('12', '1498799662', '1,520,350', '0', '0', '108,038', '0');
INSERT INTO `dede_plus_seoinfo` VALUES ('13', '1502678421', '1,520,350', '0', '4', '108,038', '0');
INSERT INTO `dede_plus_seoinfo` VALUES ('14', '1503971601', '1,520,350', '0', '2', '108,038', '0');

-- ----------------------------
-- Table structure for `dede_purview`
-- ----------------------------
DROP TABLE IF EXISTS `dede_purview`;
CREATE TABLE `dede_purview` (
  `mid` mediumint(8) DEFAULT '0',
  `typeid` smallint(5) DEFAULT '0',
  `rank` smallint(6) DEFAULT NULL,
  `pkey` varchar(30) CHARACTER SET latin1 NOT NULL,
  `pvalue` text NOT NULL,
  KEY `pkey` (`pkey`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_purview
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_pwd_tmp`
-- ----------------------------
DROP TABLE IF EXISTS `dede_pwd_tmp`;
CREATE TABLE `dede_pwd_tmp` (
  `mid` mediumint(8) NOT NULL,
  `membername` char(16) NOT NULL DEFAULT '',
  `pwd` char(32) NOT NULL DEFAULT '',
  `mailtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_pwd_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_ratings`
-- ----------------------------
DROP TABLE IF EXISTS `dede_ratings`;
CREATE TABLE `dede_ratings` (
  `id` varchar(11) NOT NULL,
  `total_votes` int(11) NOT NULL DEFAULT '0',
  `total_value` int(11) NOT NULL DEFAULT '0',
  `used_ips` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_ratings
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_scores`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_scores
-- ----------------------------
INSERT INTO `dede_scores` VALUES ('2', '列兵', '1', '0', '1');
INSERT INTO `dede_scores` VALUES ('3', '班长', '2', '1000', '1');
INSERT INTO `dede_scores` VALUES ('4', '少尉', '3', '2000', '1');
INSERT INTO `dede_scores` VALUES ('5', '中尉', '4', '3000', '1');
INSERT INTO `dede_scores` VALUES ('6', '上尉', '5', '4000', '1');
INSERT INTO `dede_scores` VALUES ('7', '少校', '6', '5000', '1');
INSERT INTO `dede_scores` VALUES ('8', '中校', '7', '6000', '1');
INSERT INTO `dede_scores` VALUES ('9', '上校', '8', '9000', '1');
INSERT INTO `dede_scores` VALUES ('10', '少将', '9', '14000', '1');
INSERT INTO `dede_scores` VALUES ('11', '中将', '10', '19000', '1');
INSERT INTO `dede_scores` VALUES ('12', '上将', '11', '24000', '1');
INSERT INTO `dede_scores` VALUES ('15', '大将', '12', '29000', '1');

-- ----------------------------
-- Table structure for `dede_search_cache`
-- ----------------------------
DROP TABLE IF EXISTS `dede_search_cache`;
CREATE TABLE `dede_search_cache` (
  `hash` char(32) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `rsnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ids` mediumtext,
  PRIMARY KEY (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_search_cache
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_search_keywords`
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_search_keywords
-- ----------------------------
INSERT INTO `dede_search_keywords` VALUES ('1', '上海', '上海', '1', '10', '1473251868', '0', '0');
INSERT INTO `dede_search_keywords` VALUES ('2', '闻4', '闻4', '1', '2', '1473251881', '0', '0');
INSERT INTO `dede_search_keywords` VALUES ('3', 'search', 'search', '13', '0', '1473252502', '0', '0');
INSERT INTO `dede_search_keywords` VALUES ('4', '新闻', '新闻', '7', '8', '1473252723', '0', '0');
INSERT INTO `dede_search_keywords` VALUES ('5', '555', '555', '8', '0', '1473304057', '0', '0');
INSERT INTO `dede_search_keywords` VALUES ('6', 'as', 'as', '1', '0', '1507629127', '0', '0');

-- ----------------------------
-- Table structure for `dede_sgpage`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_sgpage
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_shops_delivery`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_shops_delivery
-- ----------------------------
INSERT INTO `dede_shops_delivery` VALUES ('1', '送货上门', '10.21', '送货上门,领取商品时付费.', '0');
INSERT INTO `dede_shops_delivery` VALUES ('2', '特快专递（EMS）', '25.00', '特快专递（EMS）,要另收手续费.', '0');
INSERT INTO `dede_shops_delivery` VALUES ('3', '普通邮递', '5.00', '普通邮递', '0');
INSERT INTO `dede_shops_delivery` VALUES ('4', '邮局快邮', '12.00', '邮局快邮', '0');

-- ----------------------------
-- Table structure for `dede_shops_orders`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_shops_orders
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_shops_products`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_shops_products
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_shops_userinfo`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_shops_userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_softconfig`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_softconfig
-- ----------------------------
INSERT INTO `dede_softconfig` VALUES ('0', '1', '1', '1', 'http://www.aaa.com | 镜像地址一	\nhttp://www.bbb.com | 镜像地址二	\nhttp://www.ccc.com | 镜像地址三	\n', '<p>?推荐使用第三方专业下载工具下载本站软件，使用 WinRAR v3.10 以上版本解压本站软件。<br />	\n?如果这个软件总是不能下载的请点击报告错误,谢谢合作!!<br />	\n?下载本站资源，如果服务器暂不能下载请过一段时间重试！<br />	\n?如果遇到什么问题，请到本站论坛去咨寻，我们将在那里提供更多 、更好的资源！<br />	\n?本站提供的一些商业软件是供学习研究之用，如用于商业用途，请购买正版。</p>', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `dede_sphinx`
-- ----------------------------
DROP TABLE IF EXISTS `dede_sphinx`;
CREATE TABLE `dede_sphinx` (
  `countid` int(11) unsigned NOT NULL,
  `maxaid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`countid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_sphinx
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_stepselect`
-- ----------------------------
DROP TABLE IF EXISTS `dede_stepselect`;
CREATE TABLE `dede_stepselect` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `itemname` char(30) DEFAULT NULL,
  `egroup` char(20) DEFAULT NULL,
  `issign` tinyint(1) unsigned DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_stepselect
-- ----------------------------
INSERT INTO `dede_stepselect` VALUES ('1', '血型', 'blood', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('2', '体型', 'bodytype', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('3', '公司规模', 'cosize', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('4', '交友', 'datingtype', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('5', '是否饮酒', 'drink', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('6', '教育程度', 'education', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('7', '住房', 'house', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('8', '收入', 'income', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('9', '婚姻', 'marital', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('10', '是否抽烟', 'smoke', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('11', '星座', 'star', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('12', '系统缓存标识', 'system', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('13', '行业', 'vocation', '2', '0');
INSERT INTO `dede_stepselect` VALUES ('14', '地区', 'nativeplace', '2', '0');
INSERT INTO `dede_stepselect` VALUES ('15', '信息类型', 'infotype', '2', '0');

-- ----------------------------
-- Table structure for `dede_sysconfig`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_sysconfig
-- ----------------------------
INSERT INTO `dede_sysconfig` VALUES ('1', 'cfg_basehost', '站点根网址', '1', 'string', 'http://www.jfbpal.net');
INSERT INTO `dede_sysconfig` VALUES ('2', 'cfg_cmspath', 'DedeCMS安装目录', '2', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('3', 'cfg_cookie_encode', 'cookie加密码', '2', 'string', 'tAtwhpUNnMW6O9NRkvO5DR6nxm6XhpE');
INSERT INTO `dede_sysconfig` VALUES ('4', 'cfg_indexurl', '网页主页链接', '1', 'string', '/');
INSERT INTO `dede_sysconfig` VALUES ('5', 'cfg_backup_dir', '数据备份目录（在data目录内）', '2', 'string', 'backupdata');
INSERT INTO `dede_sysconfig` VALUES ('6', 'cfg_indexname', '主页链接名', '1', 'string', '主页');
INSERT INTO `dede_sysconfig` VALUES ('7', 'cfg_webname', '网站名称', '1', 'string', '【上海齐卡】');
INSERT INTO `dede_sysconfig` VALUES ('8', 'cfg_adminemail', '网站发信EMAIL', '2', 'string', 'admin@dedecms.com');
INSERT INTO `dede_sysconfig` VALUES ('9', 'cfg_html_editor', 'Html编辑器（ckeditor,需要fck的用户可以去官网下载）', '2', 'string', 'ckeditor');
INSERT INTO `dede_sysconfig` VALUES ('10', 'cfg_arcdir', '文档HTML默认保存路径', '1', 'string', '/a');
INSERT INTO `dede_sysconfig` VALUES ('11', 'cfg_medias_dir', '图片/上传文件默认路径', '1', 'string', '/uploads');
INSERT INTO `dede_sysconfig` VALUES ('12', 'cfg_ddimg_width', '缩略图默认宽度', '3', 'number', '240');
INSERT INTO `dede_sysconfig` VALUES ('13', 'cfg_ddimg_height', '缩略图默认高度', '3', 'number', '180');
INSERT INTO `dede_sysconfig` VALUES ('63', 'cfg_album_width', '图集默认显示图片的大小', '3', 'number', '800');
INSERT INTO `dede_sysconfig` VALUES ('15', 'cfg_imgtype', '图片浏览器文件类型', '3', 'string', 'jpg|gif|png');
INSERT INTO `dede_sysconfig` VALUES ('16', 'cfg_softtype', '允许上传的软件类型', '3', 'bstring', 'zip|gz|rar|iso|doc|xsl|ppt|wps');
INSERT INTO `dede_sysconfig` VALUES ('17', 'cfg_mediatype', '允许的多媒体文件类型', '3', 'bstring', 'swf|mpg|mp3|rm|rmvb|wmv|wma|wav|mid|mov');
INSERT INTO `dede_sysconfig` VALUES ('18', 'cfg_specnote', '专题的最大节点数', '2', 'number', '6');
INSERT INTO `dede_sysconfig` VALUES ('19', 'cfg_list_symbol', '栏目位置的间隔符号', '2', 'string', ' > ');
INSERT INTO `dede_sysconfig` VALUES ('20', 'cfg_notallowstr', '禁用词语（系统将直接停止用户动作）<br/>用|分开，但不要在结尾加|', '5', 'bstring', '非典|艾滋病|阳痿');
INSERT INTO `dede_sysconfig` VALUES ('21', 'cfg_feedbackcheck', '评论及留言(是/否)需审核', '5', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('22', 'cfg_keyword_replace', '关键字替换(是/否)使用本功能会影响HTML生成速度', '2', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('23', 'cfg_fck_xhtml', '编辑器(是/否)使用XHTML', '1', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('24', 'cfg_df_style', '模板默认风格', '1', 'string', 'htm');
INSERT INTO `dede_sysconfig` VALUES ('25', 'cfg_multi_site', '(是/否)支持多站点，开启此项后附件、栏目连接、arclist内容启用绝对网址', '2', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('58', 'cfg_rm_remote', '远程图片本地化', '7', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('27', 'cfg_dede_log', '(是/否)开启管理日志', '2', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('28', 'cfg_powerby', '网站版权信息', '1', 'bstring', 'Copyright &copy; 2002-2011 pos机办理安装-专业代理商');
INSERT INTO `dede_sysconfig` VALUES ('722', 'cfg_jump_once', '跳转网址是否直接跳转？（否则显示中转页）', '7', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('723', 'cfg_task_pwd', '系统计划任务客户端许可密码<br/>(需要客户端，通常不会太重要)', '7', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('29', 'cfg_arcsptitle', '(是/否)开启分页标题，开启会影响HTML生成速度', '6', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('30', 'cfg_arcautosp', '(是/否)开启长文章自动分页', '6', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('31', 'cfg_arcautosp_size', '文章自动分页大小（单位: K）', '6', 'number', '5');
INSERT INTO `dede_sysconfig` VALUES ('32', 'cfg_auot_description', '自动摘要长度（0-250，0表示不启用）', '7', 'number', '240');
INSERT INTO `dede_sysconfig` VALUES ('33', 'cfg_ftp_host', 'FTP主机', '2', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('34', 'cfg_ftp_port', 'FTP端口', '2', 'number', '21');
INSERT INTO `dede_sysconfig` VALUES ('35', 'cfg_ftp_user', 'FTP用户名', '2', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('36', 'cfg_ftp_pwd', 'FTP密码', '2', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('37', 'cfg_ftp_root', '网站根在FTP中的目录', '2', 'string', '/');
INSERT INTO `dede_sysconfig` VALUES ('38', 'cfg_ftp_mkdir', '是否强制用FTP创建目录', '2', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('39', 'cfg_feedback_ck', '评论加验证码重确认', '5', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('40', 'cfg_list_son', '上级列表是否包含子类内容', '6', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('41', 'cfg_mb_open', '是否开启会员功能', '4', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('42', 'cfg_mb_album', '是否开启会员图集功能', '4', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('43', 'cfg_mb_upload', '是否允许会员上传非图片附件', '4', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('44', 'cfg_mb_upload_size', '会员上传文件大小(K)', '4', 'number', '1024');
INSERT INTO `dede_sysconfig` VALUES ('45', 'cfg_mb_sendall', '是否开放会员对自定义模型投稿', '4', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('46', 'cfg_mb_rmdown', '是否把会员指定的远程文档下载到本地', '4', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('47', 'cfg_cli_time', '服务器时区设置', '2', 'number', '8');
INSERT INTO `dede_sysconfig` VALUES ('48', 'cfg_mb_addontype', '会员附件许可的类型', '4', 'bstring', 'swf|mpg|mp3|rm|rmvb|wmv|wma|wav|mid|mov|zip|rar|doc|xsl|ppt|wps');
INSERT INTO `dede_sysconfig` VALUES ('49', 'cfg_mb_max', '会员附件总大小限制(MB)', '4', 'number', '500');
INSERT INTO `dede_sysconfig` VALUES ('20', 'cfg_replacestr', '替换词语（词语会被替换成***）<br/>用|分开，但不要在结尾加|', '5', 'bstring', '她妈|它妈|他妈|你妈|去死|贱人');
INSERT INTO `dede_sysconfig` VALUES ('719', 'cfg_makeindex', '发布文章后马上更新网站主页', '6', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('51', 'cfg_keyword_like', '使用关键词关连文章', '6', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('52', 'cfg_index_max', '网站主页调用函数最大索引文档数<br>不适用于经常单栏目采集过多内容的网站<br>不启用本项此值设置为0即可', '6', 'number', '10000');
INSERT INTO `dede_sysconfig` VALUES ('53', 'cfg_index_cache', 'arclist标签调用缓存<br />(0 不启用，大于0值为多少秒)', '6', 'number', '86400');
INSERT INTO `dede_sysconfig` VALUES ('54', 'cfg_tplcache', '是否启用模板缓存', '6', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('55', 'cfg_tplcache_dir', '模板缓存目录', '6', 'string', '/data/tplcache');
INSERT INTO `dede_sysconfig` VALUES ('56', 'cfg_makesign_cache', '发布/修改单个文档是否使用调用缓存', '6', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('59', 'cfg_arc_dellink', '删除非站内链接', '7', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('60', 'cfg_arc_autopic', '提取第一张图片作为缩略图', '7', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('61', 'cfg_arc_autokeyword', '自动提取关键字', '7', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('62', 'cfg_title_maxlen', '文档标题最大长度<br>改此参数后需要手工修改数据表', '7', 'number', '60');
INSERT INTO `dede_sysconfig` VALUES ('64', 'cfg_check_title', '发布文档时是否检测重复标题', '7', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('65', 'cfg_album_row', '图集多行多列样式默认行数', '3', 'number', '3');
INSERT INTO `dede_sysconfig` VALUES ('66', 'cfg_album_col', '图集多行多列样式默认列数', '3', 'number', '4');
INSERT INTO `dede_sysconfig` VALUES ('67', 'cfg_album_pagesize', '图集多页多图每页显示最大数', '3', 'number', '12');
INSERT INTO `dede_sysconfig` VALUES ('68', 'cfg_album_style', '图集默认样式<br />1为多页多图,2为多页单图,3为缩略图列表', '3', 'number', '2');
INSERT INTO `dede_sysconfig` VALUES ('69', 'cfg_album_ddwidth', '图集默认缩略图大小', '3', 'number', '200');
INSERT INTO `dede_sysconfig` VALUES ('70', 'cfg_mb_notallow', '不允许注册的会员id', '4', 'bstring', 'www,bbs,ftp,mail,user,users,admin,administrator');
INSERT INTO `dede_sysconfig` VALUES ('71', 'cfg_mb_idmin', '用户id最小长度', '4', 'number', '3');
INSERT INTO `dede_sysconfig` VALUES ('72', 'cfg_mb_pwdmin', '用户密码最小长度', '4', 'number', '3');
INSERT INTO `dede_sysconfig` VALUES ('73', 'cfg_md_idurl', '是否严格限定会员登录id<br>允许会员使用二级域名必须设置此项', '4', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('74', 'cfg_mb_rank', '注册会员默认级别<br>[会员权限管理中]查看级别代表的数字', '4', 'number', '10');
INSERT INTO `dede_sysconfig` VALUES ('76', 'cfg_feedback_time', '两次评论至少间隔时间(秒钟)', '5', 'number', '30');
INSERT INTO `dede_sysconfig` VALUES ('77', 'cfg_feedback_numip', '每个IP一小时内最大评论数', '5', 'number', '30');
INSERT INTO `dede_sysconfig` VALUES ('78', 'cfg_md_mailtest', '是否限制Email只能注册一个帐号', '4', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('79', 'cfg_mb_spacesta', '会员使用权限开通状态<br>(-10 邮件验证 -1 手工审核, 0 没限制)', '4', 'number', '-10');
INSERT INTO `dede_sysconfig` VALUES ('728', 'cfg_mb_allowreg', '是否允许新会员注册', '4', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('729', 'cfg_mb_adminlock', '是否禁止访问管理员帐号的空间', '4', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('81', 'cfg_vdcode_member', '会员投稿是否使用验证码', '5', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('83', 'cfg_mb_cktitle', '会员投稿是否检测重复标题', '5', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('84', 'cfg_mb_editday', '投稿多长时间后不能再修改[天]', '5', 'number', '7');
INSERT INTO `dede_sysconfig` VALUES ('729', 'cfg_sendarc_scores', '投稿可获取积分', '5', 'number', '10');
INSERT INTO `dede_sysconfig` VALUES ('88', 'cfg_caicai_sub', '被踩扣除文章好评度', '5', 'number', '2');
INSERT INTO `dede_sysconfig` VALUES ('89', 'cfg_caicai_add', '被顶扣除文章好评度', '5', 'number', '2');
INSERT INTO `dede_sysconfig` VALUES ('90', 'cfg_feedback_add', '详细好评可获好评度', '5', 'number', '5');
INSERT INTO `dede_sysconfig` VALUES ('91', 'cfg_feedback_sub', '详细恶评扣除好评度', '5', 'number', '5');
INSERT INTO `dede_sysconfig` VALUES ('730', 'cfg_sendfb_scores', '参与评论可获积分', '5', 'number', '3');
INSERT INTO `dede_sysconfig` VALUES ('92', 'cfg_search_max', '最大搜索检查文档数', '6', 'number', '50000');
INSERT INTO `dede_sysconfig` VALUES ('93', 'cfg_search_maxrc', '最大返回搜索结果数', '6', 'number', '300');
INSERT INTO `dede_sysconfig` VALUES ('94', 'cfg_search_time', '搜索间隔时间(秒/对网站所有用户)', '6', 'number', '3');
INSERT INTO `dede_sysconfig` VALUES ('95', 'cfg_baidunews_limit', '百度新闻xml更新新闻数量 最大100', '8', 'string', '100');
INSERT INTO `dede_sysconfig` VALUES ('223', 'cfg_smtp_port', 'smtp服务器端口', '2', 'string', '25');
INSERT INTO `dede_sysconfig` VALUES ('221', 'cfg_sendmail_bysmtp', '是否启用smtp方式发送邮件', '2', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('222', 'cfg_smtp_server', 'smtp服务器', '2', 'string', 'smtp.qq.com');
INSERT INTO `dede_sysconfig` VALUES ('224', 'cfg_smtp_usermail', 'SMTP服务器的用户邮箱', '2', 'string', 'desdev@vip.qq.com');
INSERT INTO `dede_sysconfig` VALUES ('225', 'cfg_smtp_user', 'SMTP服务器的用户帐号', '2', 'string', 'desdev');
INSERT INTO `dede_sysconfig` VALUES ('226', 'cfg_smtp_password', 'SMTP服务器的用户密码', '2', 'string', '7260444huxiao');
INSERT INTO `dede_sysconfig` VALUES ('96', 'cfg_updateperi', '百度新闻xml更新时间 （单位：分钟）', '8', 'string', '15');
INSERT INTO `dede_sysconfig` VALUES ('227', 'cfg_online_type', '在线支付网关类型', '2', 'string', 'nps');
INSERT INTO `dede_sysconfig` VALUES ('706', 'cfg_upload_switch', '删除文章文件同时删除相关附件文件', '2', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('708', 'cfg_rewrite', '是否使用伪静态', '2', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('707', 'cfg_allsearch_limit', '网站全局搜索时间限制', '2', 'string', '1');
INSERT INTO `dede_sysconfig` VALUES ('709', 'cfg_delete', '文章回收站(是/否)开启', '2', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('710', 'cfg_keywords', '站点默认关键字', '1', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('711', 'cfg_description', '站点描述', '1', 'bstring', '');
INSERT INTO `dede_sysconfig` VALUES ('712', 'cfg_beian', '网站备案号', '1', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('713', 'cfg_need_typeid2', '是否启用副栏目', '6', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('72', 'cfg_mb_pwdtype', '前台密码验证类型：默认32 — 32位md5，可选：<br />l16 — 前16位， r16 — 后16位， m16 — 中间16位', '4', 'string', '32');
INSERT INTO `dede_sysconfig` VALUES ('716', 'cfg_cache_type', 'id 文档ID，content 标签最终内容<br />(修改此变量后必须更新系统缓存)', '6', 'string', 'id');
INSERT INTO `dede_sysconfig` VALUES ('717', 'cfg_max_face', '会员上传头像大小限制(单位：KB)', '3', 'number', '50');
INSERT INTO `dede_sysconfig` VALUES ('718', 'cfg_typedir_df', '栏目网址使用目录名（不显示默认页，即是 /a/abc/ 形式）', '2', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('719', 'cfg_make_andcat', '发表文章后马上更新相关栏目', '6', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('720', 'cfg_make_prenext', '发表文章后马上更新上下篇', '6', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('721', 'cfg_feedback_forbid', '是否禁止所有评论(将包括禁止顶踩等)', '5', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('724', 'cfg_addon_domainbind', '附件目录是否绑定为指定的二级域名', '7', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('725', 'cfg_addon_domain', '附件目录的二级域名', '7', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('726', 'cfg_df_dutyadmin', '默认责任编辑(dutyadmin)', '7', 'string', 'admin');
INSERT INTO `dede_sysconfig` VALUES ('727', 'cfg_mb_allowncarc', '是否允许用户空间显示未审核文章', '4', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('730', 'cfg_mb_spaceallarc', '会员空间中所有文档的频道ID(不限为0)', '4', 'number', '0');
INSERT INTO `dede_sysconfig` VALUES ('731', 'cfg_face_adds', '上传头像增加积分', '5', 'number', '10');
INSERT INTO `dede_sysconfig` VALUES ('732', 'cfg_moreinfo_adds', '填写详细资料增加积分', '5', 'number', '20');
INSERT INTO `dede_sysconfig` VALUES ('733', 'cfg_money_scores', '多少积分可以兑换一个金币', '5', 'number', '50');
INSERT INTO `dede_sysconfig` VALUES ('734', 'cfg_mb_wnameone', '是否允许用户笔名/昵称重复', '4', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('735', 'cfg_arc_dirname', '是否允许用目录作为文档文件名<br />文档命名规则需改为：{typedir}/{aid}/index.html', '7', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('736', 'cfg_puccache_time', '需缓存内容全局缓存时间(秒)', '6', 'number', '36000');
INSERT INTO `dede_sysconfig` VALUES ('737', 'cfg_arc_click', '文档默认点击数(-1表示随机50-200)', '7', 'number', '-1');
INSERT INTO `dede_sysconfig` VALUES ('738', 'cfg_addon_savetype', '附件保存形式(按data函数日期参数)', '3', 'string', 'ymd');
INSERT INTO `dede_sysconfig` VALUES ('739', 'cfg_qk_uploadlit', '异步上传缩略图(空间太不稳定的用户关闭此项)', '3', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('740', 'cfg_login_adds', '登录会员中心获积分', '5', 'number', '2');
INSERT INTO `dede_sysconfig` VALUES ('741', 'cfg_userad_adds', '会员推广获积分', '5', 'number', '10');
INSERT INTO `dede_sysconfig` VALUES ('742', 'cfg_ddimg_full', '缩略图是否使用强制大小(对背景填充)', '3', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('743', 'cfg_ddimg_bgcolor', '缩略图空白背景填充颜色(0-白,1-黑)', '3', 'number', '0');
INSERT INTO `dede_sysconfig` VALUES ('744', 'cfg_replace_num', '文档内容同一关键词替换次数(0为全部替换)', '7', 'number', '2');
INSERT INTO `dede_sysconfig` VALUES ('745', 'cfg_uplitpic_cut', '上传缩略图后是否马上弹出裁剪框', '3', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('746', 'cfg_album_mark', '图集是否使用水印(小图也会受影响)', '3', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('747', 'cfg_mb_feedcheck', '会员动态是否需要审核', '4', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('748', 'cfg_mb_msgischeck', '会员状态是否需要审核', '4', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('749', 'cfg_mb_reginfo', '注册是否需要完成详细资料的填写', '4', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('750', 'cfg_remote_site', '是否启用远程站点', '2', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('751', 'cfg_title_site', '是否发布和编辑文档时远程发布(启用远程站点的前提下)', '2', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('752', 'cfg_mysql_type', '数据库类型（支持mysql和mysqli）', '2', 'string', 'mysql');
INSERT INTO `dede_sysconfig` VALUES ('753', 'cfg_sphinx_article', '是否启用文章全文检索功能（需配置sphinx服务器）', '7', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('754', 'cfg_sphinx_host', 'Sphinx服务器主机地址', '7', 'string', 'localhost');
INSERT INTO `dede_sysconfig` VALUES ('755', 'cfg_sphinx_port', 'Sphinx服务器端口号', '7', 'number', '9312');
INSERT INTO `dede_sysconfig` VALUES ('14', 'cfg_domain_cookie', '跨域共享cookie的域名(例如: .dedecms.com)', '2', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('756', 'cfg_memcache_enable', '是否启用memcache缓存，如果为否(N)，默认使用文件缓存', '6', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('757', 'cfg_memcache_mc_defa', '默认memcache缓存服务器地址', '6', 'string', 'memcache://127.0.0.1:11211/default127');
INSERT INTO `dede_sysconfig` VALUES ('758', 'cfg_memcache_mc_oth', '附加memcache缓存服务器地址', '6', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('759', 'cfg_cross_sectypeid', '支持交叉栏目显示副栏目内容', '7', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('760', 'cfg_digg_update', '顶踩缓存异步更新间隔（0为不缓存）', '6', 'number', '0');
INSERT INTO `dede_sysconfig` VALUES ('761', 'cfg_feedback_guest', '是否允许匿名评论', '5', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('0', 'cfg_disable_funs', '模板引擎禁用PHP函数', '7', 'bstring', 'phpinfo,eval,exec,passthru,shell_exec,system,proc_open,popen,curl_exec,curl_multi_exec,parse_ini_file,show_source,file_put_contents');
INSERT INTO `dede_sysconfig` VALUES ('0', 'cfg_disable_tags', '模板引擎禁用标签', '7', 'bstring', '');

-- ----------------------------
-- Table structure for `dede_sys_enum`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_sys_enum
-- ----------------------------
INSERT INTO `dede_sys_enum` VALUES ('139', 'cms制作', '503', 'vocation', '503', '0');
INSERT INTO `dede_sys_enum` VALUES ('39', '租房', '1', 'house', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('40', '一房以上', '2', 'house', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('41', '两房以上', '3', 'house', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('42', '大户/别墅', '4', 'house', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('43', '低于1000元', '1', 'income', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('44', '1000元以上', '2', 'income', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('45', '2000元以上', '3', 'income', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('46', '4000元以上', '4', 'income', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('47', '8000元以上', '5', 'income', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('48', '15000以上', '6', 'income', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('49', '初中以上', '1', 'education', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('50', '高中/中专', '2', 'education', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('51', '大学专科', '3', 'education', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('52', '大学本科', '4', 'education', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('53', '硕士', '5', 'education', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('54', '博士以上', '6', 'education', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('55', '仅用于判断缓存是否存在', '0', 'system', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('56', '白羊座', '1', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('57', '金牛座', '2', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('58', '双子座', '3', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('59', '巨蟹座', '4', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('60', '狮子座', '5', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('61', '处女座', '6', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('62', '天枰座', '7', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('63', '天蝎座', '8', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('64', '射手座', '9', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('65', '摩羯座', '10', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('66', '水瓶座', '11', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('67', '双鱼座', '12', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('68', '不吸烟', '1', 'smoke', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('69', '偶尔吸一点', '2', 'smoke', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('70', '抽得很凶', '3', 'smoke', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('71', '不喝酒', '1', 'drink', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('72', '偶尔喝一点', '2', 'drink', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('73', '喝得很凶', '3', 'drink', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('74', 'A', '1', 'blood', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('75', 'B', '2', 'blood', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('76', 'AB', '3', 'blood', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('77', 'O', '4', 'blood', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('78', '未婚', '1', 'marital', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('79', '已婚', '2', 'marital', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('80', '离异', '3', 'marital', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('81', '丧偶', '4', 'marital', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('82', '匀称', '1', 'bodytype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('83', '苗条', '2', 'bodytype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('84', '健壮', '3', 'bodytype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('85', '略胖', '4', 'bodytype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('86', '丰满', '5', 'bodytype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('87', '瘦小', '6', 'bodytype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('88', '高瘦', '7', 'bodytype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('89', '网友', '1', 'datingtype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('90', '恋人', '2', 'datingtype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('91', '玩伴', '3', 'datingtype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('92', '共同兴趣', '4', 'datingtype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('93', '男性朋友', '5', 'datingtype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('94', '女性朋友', '6', 'datingtype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('95', '50人以下', '1', 'cosize', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('96', '50-200人', '2', 'cosize', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('97', '200-500人', '3', 'cosize', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('98', '500-2000人', '4', 'cosize', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('99', '2000-5000人', '5', 'cosize', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('100', '5000人以上', '6', 'cosize', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('20019', '澳门特别行政区', '17500', 'nativeplace', '17500', '0');
INSERT INTO `dede_sys_enum` VALUES ('20018', '香港特别行政区', '17000', 'nativeplace', '17000', '0');
INSERT INTO `dede_sys_enum` VALUES ('20017', '台湾省', '16500', 'nativeplace', '16500', '0');
INSERT INTO `dede_sys_enum` VALUES ('20016', '图木舒克市', '16015.3', 'nativeplace', '16015', '2');
INSERT INTO `dede_sys_enum` VALUES ('20015', '阿拉尔市', '16015.2', 'nativeplace', '16015', '2');
INSERT INTO `dede_sys_enum` VALUES ('20014', '石河子市', '16015.1', 'nativeplace', '16015', '2');
INSERT INTO `dede_sys_enum` VALUES ('20013', '省直辖行政单位', '16015', 'nativeplace', '16015', '1');
INSERT INTO `dede_sys_enum` VALUES ('20012', '吉木乃县', '16014.7', 'nativeplace', '16015', '2');
INSERT INTO `dede_sys_enum` VALUES ('20011', '青河县', '16014.6', 'nativeplace', '16015', '2');
INSERT INTO `dede_sys_enum` VALUES ('111', '商品', '500', 'infotype', '500', '0');
INSERT INTO `dede_sys_enum` VALUES ('112', '租房', '1000', 'infotype', '1000', '0');
INSERT INTO `dede_sys_enum` VALUES ('113', '交友', '1500', 'infotype', '1500', '0');
INSERT INTO `dede_sys_enum` VALUES ('114', '招聘', '2000', 'infotype', '2000', '0');
INSERT INTO `dede_sys_enum` VALUES ('115', '求职', '2500', 'infotype', '2500', '0');
INSERT INTO `dede_sys_enum` VALUES ('116', '票务', '3000', 'infotype', '3000', '0');
INSERT INTO `dede_sys_enum` VALUES ('117', '服务', '3500', 'infotype', '3500', '0');
INSERT INTO `dede_sys_enum` VALUES ('118', '培训', '4000', 'infotype', '4000', '0');
INSERT INTO `dede_sys_enum` VALUES ('119', '出售', '501', 'infotype', '501', '1');
INSERT INTO `dede_sys_enum` VALUES ('121', '求购', '502', 'infotype', '502', '1');
INSERT INTO `dede_sys_enum` VALUES ('122', '交换', '503', 'infotype', '503', '1');
INSERT INTO `dede_sys_enum` VALUES ('123', '合作', '504', 'infotype', '504', '1');
INSERT INTO `dede_sys_enum` VALUES ('124', '出租', '1001', 'infotype', '1001', '1');
INSERT INTO `dede_sys_enum` VALUES ('125', '求租', '1002', 'infotype', '1002', '1');
INSERT INTO `dede_sys_enum` VALUES ('126', '合租', '1003', 'infotype', '1003', '1');
INSERT INTO `dede_sys_enum` VALUES ('127', '找帅哥', '1501', 'infotype', '1501', '1');
INSERT INTO `dede_sys_enum` VALUES ('128', '找美女', '1502', 'infotype', '1502', '1');
INSERT INTO `dede_sys_enum` VALUES ('129', '纯友谊', '1503', 'infotype', '1503', '1');
INSERT INTO `dede_sys_enum` VALUES ('130', '玩伴', '1504', 'infotype', '1504', '1');
INSERT INTO `dede_sys_enum` VALUES ('131', '互联网', '500', 'vocation', '500', '0');
INSERT INTO `dede_sys_enum` VALUES ('132', '网站制作', '501', 'vocation', '501', '0');
INSERT INTO `dede_sys_enum` VALUES ('133', '机械', '1000', 'vocation', '1000', '0');
INSERT INTO `dede_sys_enum` VALUES ('134', '农业机械', '1001', 'vocation', '1001', '1');
INSERT INTO `dede_sys_enum` VALUES ('135', '机床', '1002', 'vocation', '1002', '1');
INSERT INTO `dede_sys_enum` VALUES ('136', '纺织设备和器材', '1003', 'vocation', '1003', '1');
INSERT INTO `dede_sys_enum` VALUES ('137', '风机/排风设备', '1004', 'vocation', '1004', '1');
INSERT INTO `dede_sys_enum` VALUES ('138', '虚心', '502', 'vocation', '502', '0');
INSERT INTO `dede_sys_enum` VALUES ('140', '模板制作', '503.001', 'vocation', '503', '2');
INSERT INTO `dede_sys_enum` VALUES ('141', '模块开发', '503.002', 'vocation', '503', '2');
INSERT INTO `dede_sys_enum` VALUES ('142', '企业网站', '501.001', 'vocation', '501', '2');
INSERT INTO `dede_sys_enum` VALUES ('143', '门户开发', '501.002', 'vocation', '501', '2');
INSERT INTO `dede_sys_enum` VALUES ('144', '商业网站', '501.003', 'vocation', '501', '2');
INSERT INTO `dede_sys_enum` VALUES ('145', '个人博客', '501.004', 'vocation', '501', '2');
INSERT INTO `dede_sys_enum` VALUES ('166', '化工', '1500', 'vocation', '1500', '0');
INSERT INTO `dede_sys_enum` VALUES ('147', '松松散散', '502.001', 'vocation', '502', '2');
INSERT INTO `dede_sys_enum` VALUES ('148', '测试分类', '502.002', 'vocation', '502', '2');
INSERT INTO `dede_sys_enum` VALUES ('150', '塑料切割机', '1002.001', 'vocation', '1002', '2');
INSERT INTO `dede_sys_enum` VALUES ('151', '打磨机', '1002.002', 'vocation', '1002', '2');
INSERT INTO `dede_sys_enum` VALUES ('152', '水货机器', '1002.003', 'vocation', '1002', '2');
INSERT INTO `dede_sys_enum` VALUES ('153', '自动收割机', '1001.001', 'vocation', '1001', '2');
INSERT INTO `dede_sys_enum` VALUES ('154', '运输机', '1001.002', 'vocation', '1001', '2');
INSERT INTO `dede_sys_enum` VALUES ('159', '水货', '2501', 'infotype', '2501', '0');
INSERT INTO `dede_sys_enum` VALUES ('160', '水111', '2501.001', 'infotype', '2501', '2');
INSERT INTO `dede_sys_enum` VALUES ('161', '水222', '2501.002', 'infotype', '2501', '2');
INSERT INTO `dede_sys_enum` VALUES ('162', '有才', '2502', 'infotype', '2502', '0');
INSERT INTO `dede_sys_enum` VALUES ('163', '有才啊啊啊', '2502.001', 'infotype', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('167', '塑料化工', '1501', 'vocation', '1501', '0');
INSERT INTO `dede_sys_enum` VALUES ('168', '加工', '1501.001', 'vocation', '1501', '2');
INSERT INTO `dede_sys_enum` VALUES ('169', '生产', '1501.002', 'vocation', '1501', '2');
INSERT INTO `dede_sys_enum` VALUES ('170', '物流', '1501.003', 'vocation', '1501', '2');
INSERT INTO `dede_sys_enum` VALUES ('171', '挨踢工作者', '2000', 'vocation', '2000', '0');
INSERT INTO `dede_sys_enum` VALUES ('172', '程序员', '2001', 'vocation', '2001', '0');
INSERT INTO `dede_sys_enum` VALUES ('173', '美工设计', '2002', 'vocation', '2002', '0');
INSERT INTO `dede_sys_enum` VALUES ('174', '前端开发', '2003', 'vocation', '2003', '0');
INSERT INTO `dede_sys_enum` VALUES ('175', '配色', '2002.001', 'vocation', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('176', '美学设计', '2002.002', 'vocation', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('178', 'ddddd', '502.003', 'vocation', '502', '2');
INSERT INTO `dede_sys_enum` VALUES ('179', '学习下', '502.004', 'vocation', '502', '2');
INSERT INTO `dede_sys_enum` VALUES ('20010', '哈巴河县', '16014.5', 'nativeplace', '16015', '2');
INSERT INTO `dede_sys_enum` VALUES ('20009', '福海县', '16014.4', 'nativeplace', '16014', '2');
INSERT INTO `dede_sys_enum` VALUES ('20008', '富蕴县', '16014.3', 'nativeplace', '16014', '2');
INSERT INTO `dede_sys_enum` VALUES ('20007', '布尔津县', '16014.2', 'nativeplace', '16014', '2');
INSERT INTO `dede_sys_enum` VALUES ('20006', '阿勒泰市', '16014.1', 'nativeplace', '16014', '2');
INSERT INTO `dede_sys_enum` VALUES ('20005', '阿勒泰地区', '16014', 'nativeplace', '16014', '1');
INSERT INTO `dede_sys_enum` VALUES ('20004', '和布克赛尔蒙古自治县', '16013.7', 'nativeplace', '16014', '2');
INSERT INTO `dede_sys_enum` VALUES ('20003', '裕民县', '16013.6', 'nativeplace', '16014', '2');
INSERT INTO `dede_sys_enum` VALUES ('20002', '托里县', '16013.5', 'nativeplace', '16014', '2');
INSERT INTO `dede_sys_enum` VALUES ('20001', '沙湾县', '16013.4', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('20000', '额敏县', '16013.3', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19999', '乌苏市', '16013.2', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19998', '塔城市', '16013.1', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19997', '塔城地区', '16013', 'nativeplace', '16013', '1');
INSERT INTO `dede_sys_enum` VALUES ('19996', '尼勒克县', '16012.10', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19995', '特克斯县', '16012.9', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19994', '昭苏县', '16012.8', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19993', '新源县', '16012.7', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19992', '巩留县', '16012.6', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19991', '霍城县', '16012.5', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19990', '察布查尔锡伯自治县', '16012.4', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19989', '伊宁县', '16012.3', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19988', '奎屯市', '16012.2', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19987', '伊宁市', '16012.1', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19986', '伊犁哈萨克自治州', '16012', 'nativeplace', '16012', '1');
INSERT INTO `dede_sys_enum` VALUES ('19985', '民丰县', '16011.8', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19984', '于田县', '16011.7', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19983', '策勒县', '16011.6', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19982', '洛浦县', '16011.5', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19981', '皮山县', '16011.4', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19980', '墨玉县', '16011.3', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19979', '和田县', '16011.2', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19978', '和田市', '16011.1', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19977', '和田地区', '16011', 'nativeplace', '16011', '1');
INSERT INTO `dede_sys_enum` VALUES ('19976', '塔什库尔干塔吉克自治县', '16010.12', 'nativeplace', '16010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19975', '巴楚县', '16010.11', 'nativeplace', '16010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19974', '伽师县', '16010.10', 'nativeplace', '16010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19973', '岳普湖县', '16010.9', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19972', '麦盖提县', '16010.8', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19971', '叶城县', '16010.7', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19970', '莎车县', '16010.6', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19969', '泽普县', '16010.5', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19968', '英吉沙县', '16010.4', 'nativeplace', '16010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19967', '疏勒县', '16010.3', 'nativeplace', '16010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19966', '疏附县', '16010.2', 'nativeplace', '16010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19965', '喀什市', '16010.1', 'nativeplace', '16010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19964', '喀什地区', '16010', 'nativeplace', '16010', '1');
INSERT INTO `dede_sys_enum` VALUES ('19963', '乌恰县', '16009.4', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19962', '阿合奇县', '16009.3', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19961', '阿克陶县', '16009.2', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19960', '阿图什市', '16009.1', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19959', '克孜勒苏柯尔克孜自治州', '16009', 'nativeplace', '16009', '1');
INSERT INTO `dede_sys_enum` VALUES ('19958', '柯坪县', '16008.9', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19957', '阿瓦提县', '16008.8', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19956', '乌什县', '16008.7', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19955', '拜城县', '16008.6', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19954', '新和县', '16008.5', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19953', '沙雅县', '16008.4', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19952', '库车县', '16008.3', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19951', '温宿县', '16008.2', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19950', '阿克苏市', '16008.1', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19949', '阿克苏地区', '16008', 'nativeplace', '16008', '1');
INSERT INTO `dede_sys_enum` VALUES ('19948', '博湖县', '16007.9', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19947', '和硕县', '16007.8', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19946', '和静县', '16007.7', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19945', '焉耆回族自治县', '16007.6', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19944', '且末县', '16007.5', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19943', '若羌县', '16007.4', 'nativeplace', '16007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19942', '尉犁县', '16007.3', 'nativeplace', '16007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19941', '轮台县', '16007.2', 'nativeplace', '16007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19940', '库尔勒市', '16007.1', 'nativeplace', '16007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19939', '巴音郭楞蒙古自治州', '16007', 'nativeplace', '16007', '1');
INSERT INTO `dede_sys_enum` VALUES ('19938', '温泉县', '16006.3', 'nativeplace', '16006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19937', '精河县', '16006.2', 'nativeplace', '16006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19936', '博乐市', '16006.1', 'nativeplace', '16006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19935', '博尔塔拉蒙古自治州', '16006', 'nativeplace', '16006', '1');
INSERT INTO `dede_sys_enum` VALUES ('19934', '木垒哈萨克自治县', '16005.8', 'nativeplace', '16006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19933', '吉木萨尔县', '16005.7', 'nativeplace', '16006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19932', '奇台县', '16005.6', 'nativeplace', '16006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19931', '玛纳斯县', '16005.5', 'nativeplace', '16006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19930', '呼图壁县', '16005.4', 'nativeplace', '16005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19929', '米泉市', '16005.3', 'nativeplace', '16005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19928', '阜康市', '16005.2', 'nativeplace', '16005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19927', '昌吉市', '16005.1', 'nativeplace', '16005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19926', '昌吉回族自治州', '16005', 'nativeplace', '16005', '1');
INSERT INTO `dede_sys_enum` VALUES ('19925', '伊吾县', '16004.3', 'nativeplace', '16004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19924', '巴里坤哈萨克自治县', '16004.2', 'nativeplace', '16004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19923', '哈密市', '16004.1', 'nativeplace', '16004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19922', '哈密地区', '16004', 'nativeplace', '16004', '1');
INSERT INTO `dede_sys_enum` VALUES ('19921', '托克逊县', '16003.3', 'nativeplace', '16003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19920', '鄯善县', '16003.2', 'nativeplace', '16003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19919', '吐鲁番市', '16003.1', 'nativeplace', '16003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19918', '吐鲁番地区', '16003', 'nativeplace', '16003', '1');
INSERT INTO `dede_sys_enum` VALUES ('19917', '乌尔禾区', '16002.4', 'nativeplace', '16002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19916', '白碱滩区', '16002.3', 'nativeplace', '16002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19915', '克拉玛依区', '16002.2', 'nativeplace', '16002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19914', '独山子区', '16002.1', 'nativeplace', '16002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19913', '克拉玛依市', '16002', 'nativeplace', '16002', '1');
INSERT INTO `dede_sys_enum` VALUES ('19912', '乌鲁木齐县', '16001.8', 'nativeplace', '16002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19911', '东山区', '16001.7', 'nativeplace', '16002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19910', '达坂城区', '16001.6', 'nativeplace', '16002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19909', '头屯河区', '16001.5', 'nativeplace', '16002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19908', '水磨沟区', '16001.4', 'nativeplace', '16001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19907', '新市区', '16001.3', 'nativeplace', '16001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19906', '沙依巴克区', '16001.2', 'nativeplace', '16001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19905', '天山区', '16001.1', 'nativeplace', '16001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19904', '乌鲁木齐市', '16001', 'nativeplace', '16001', '1');
INSERT INTO `dede_sys_enum` VALUES ('19903', '新疆维吾尔自治区', '16000', 'nativeplace', '16000', '0');
INSERT INTO `dede_sys_enum` VALUES ('19902', '海原县', '15505.3', 'nativeplace', '15505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19901', '中宁县', '15505.2', 'nativeplace', '15505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19900', '沙坡头区', '15505.1', 'nativeplace', '15505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19899', '中卫市', '15505', 'nativeplace', '15505', '1');
INSERT INTO `dede_sys_enum` VALUES ('19898', '彭阳县', '15504.5', 'nativeplace', '15505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19897', '泾源县', '15504.4', 'nativeplace', '15504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19896', '隆德县', '15504.3', 'nativeplace', '15504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19895', '西吉县', '15504.2', 'nativeplace', '15504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19894', '原州区', '15504.1', 'nativeplace', '15504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19893', '固原市', '15504', 'nativeplace', '15504', '1');
INSERT INTO `dede_sys_enum` VALUES ('19892', '青铜峡市', '15503.4', 'nativeplace', '15503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19891', '同心县', '15503.3', 'nativeplace', '15503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19890', '盐池县', '15503.2', 'nativeplace', '15503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19889', '利通区', '15503.1', 'nativeplace', '15503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19888', '吴忠市', '15503', 'nativeplace', '15503', '1');
INSERT INTO `dede_sys_enum` VALUES ('19887', '平罗县', '15502.3', 'nativeplace', '15502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19886', '惠农区', '15502.2', 'nativeplace', '15502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19885', '大武口区', '15502.1', 'nativeplace', '15502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19884', '石嘴山市', '15502', 'nativeplace', '15502', '1');
INSERT INTO `dede_sys_enum` VALUES ('19883', '灵武市', '15501.6', 'nativeplace', '15502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19882', '贺兰县', '15501.5', 'nativeplace', '15502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19881', '永宁县', '15501.4', 'nativeplace', '15501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19880', '金凤区', '15501.3', 'nativeplace', '15501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19879', '西夏区', '15501.2', 'nativeplace', '15501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19878', '兴庆区', '15501.1', 'nativeplace', '15501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19877', '银川市', '15501', 'nativeplace', '15501', '1');
INSERT INTO `dede_sys_enum` VALUES ('19876', '宁夏回族自治区', '15500', 'nativeplace', '15500', '0');
INSERT INTO `dede_sys_enum` VALUES ('19875', '天峻县', '15008.5', 'nativeplace', '15009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19874', '都兰县', '15008.4', 'nativeplace', '15008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19873', '乌兰县', '15008.3', 'nativeplace', '15008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19872', '德令哈市', '15008.2', 'nativeplace', '15008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19871', '格尔木市', '15008.1', 'nativeplace', '15008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19870', '海西蒙古族藏族自治州', '15008', 'nativeplace', '15008', '1');
INSERT INTO `dede_sys_enum` VALUES ('19869', '曲麻莱县', '15007.6', 'nativeplace', '15008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19868', '囊谦县', '15007.5', 'nativeplace', '15008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19867', '治多县', '15007.4', 'nativeplace', '15007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19866', '称多县', '15007.3', 'nativeplace', '15007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19865', '杂多县', '15007.2', 'nativeplace', '15007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19864', '玉树县', '15007.1', 'nativeplace', '15007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19863', '玉树藏族自治州', '15007', 'nativeplace', '15007', '1');
INSERT INTO `dede_sys_enum` VALUES ('19862', '玛多县', '15006.6', 'nativeplace', '15007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19861', '久治县', '15006.5', 'nativeplace', '15007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19860', '达日县', '15006.4', 'nativeplace', '15006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19859', '甘德县', '15006.3', 'nativeplace', '15006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19858', '班玛县', '15006.2', 'nativeplace', '15006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19857', '玛沁县', '15006.1', 'nativeplace', '15006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19856', '果洛藏族自治州', '15006', 'nativeplace', '15006', '1');
INSERT INTO `dede_sys_enum` VALUES ('19855', '贵南县', '15005.5', 'nativeplace', '15006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19854', '兴海县', '15005.4', 'nativeplace', '15005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19853', '贵德县', '15005.3', 'nativeplace', '15005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19852', '同德县', '15005.2', 'nativeplace', '15005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19851', '共和县', '15005.1', 'nativeplace', '15005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19850', '海南藏族自治州', '15005', 'nativeplace', '15005', '1');
INSERT INTO `dede_sys_enum` VALUES ('19849', '河南蒙古族自治县', '15004.4', 'nativeplace', '15004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19848', '泽库县', '15004.3', 'nativeplace', '15004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19847', '尖扎县', '15004.2', 'nativeplace', '15004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19846', '同仁县', '15004.1', 'nativeplace', '15004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19845', '黄南藏族自治州', '15004', 'nativeplace', '15004', '1');
INSERT INTO `dede_sys_enum` VALUES ('19844', '刚察县', '15003.4', 'nativeplace', '15003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19843', '海晏县', '15003.3', 'nativeplace', '15003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19842', '祁连县', '15003.2', 'nativeplace', '15003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19841', '门源回族自治县', '15003.1', 'nativeplace', '15003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19840', '海北藏族自治州', '15003', 'nativeplace', '15003', '1');
INSERT INTO `dede_sys_enum` VALUES ('19839', '循化撒拉族自治县', '15002.6', 'nativeplace', '15003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19838', '化隆回族自治县', '15002.5', 'nativeplace', '15003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19837', '互助土族自治县', '15002.4', 'nativeplace', '15002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19836', '乐都县', '15002.3', 'nativeplace', '15002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19835', '民和回族土族自治县', '15002.2', 'nativeplace', '15002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19834', '平安县', '15002.1', 'nativeplace', '15002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19833', '海东地区', '15002', 'nativeplace', '15002', '1');
INSERT INTO `dede_sys_enum` VALUES ('19832', '湟源县', '15001.7', 'nativeplace', '15002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19831', '湟中县', '15001.6', 'nativeplace', '15002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19830', '大通回族土族自治县', '15001.5', 'nativeplace', '15002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19829', '城北区', '15001.4', 'nativeplace', '15001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19828', '城西区', '15001.3', 'nativeplace', '15001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19827', '城中区', '15001.2', 'nativeplace', '15001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19826', '城东区', '15001.1', 'nativeplace', '15001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19825', '西宁市', '15001', 'nativeplace', '15001', '1');
INSERT INTO `dede_sys_enum` VALUES ('19824', '青海省', '15000', 'nativeplace', '15000', '0');
INSERT INTO `dede_sys_enum` VALUES ('19823', '夏河县', '14514.8', 'nativeplace', '14515', '2');
INSERT INTO `dede_sys_enum` VALUES ('19822', '碌曲县', '14514.7', 'nativeplace', '14515', '2');
INSERT INTO `dede_sys_enum` VALUES ('19821', '玛曲县', '14514.6', 'nativeplace', '14515', '2');
INSERT INTO `dede_sys_enum` VALUES ('19820', '迭部县', '14514.5', 'nativeplace', '14515', '2');
INSERT INTO `dede_sys_enum` VALUES ('19819', '舟曲县', '14514.4', 'nativeplace', '14514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19818', '卓尼县', '14514.3', 'nativeplace', '14514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19817', '临潭县', '14514.2', 'nativeplace', '14514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19816', '合作市', '14514.1', 'nativeplace', '14514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19815', '甘南藏族自治州', '14514', 'nativeplace', '14514', '1');
INSERT INTO `dede_sys_enum` VALUES ('19814', '积石山保安族东乡族撒拉族自治县', '14513.8', 'nativeplace', '14514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19813', '东乡族自治县', '14513.7', 'nativeplace', '14514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19812', '和政县', '14513.6', 'nativeplace', '14514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19811', '广河县', '14513.5', 'nativeplace', '14514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19810', '永靖县', '14513.4', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19809', '康乐县', '14513.3', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19808', '临夏县', '14513.2', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19807', '临夏市', '14513.1', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19806', '临夏回族自治州', '14513', 'nativeplace', '14513', '1');
INSERT INTO `dede_sys_enum` VALUES ('19805', '两当县', '14512.9', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19804', '徽　县', '14512.8', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19803', '礼　县', '14512.7', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19802', '西和县', '14512.6', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19801', '康　县', '14512.5', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19800', '宕昌县', '14512.4', 'nativeplace', '14512', '2');
INSERT INTO `dede_sys_enum` VALUES ('19799', '文　县', '14512.3', 'nativeplace', '14512', '2');
INSERT INTO `dede_sys_enum` VALUES ('19798', '成　县', '14512.2', 'nativeplace', '14512', '2');
INSERT INTO `dede_sys_enum` VALUES ('19797', '武都区', '14512.1', 'nativeplace', '14512', '2');
INSERT INTO `dede_sys_enum` VALUES ('19796', '陇南市', '14512', 'nativeplace', '14512', '1');
INSERT INTO `dede_sys_enum` VALUES ('19795', '岷　县', '14511.7', 'nativeplace', '14512', '2');
INSERT INTO `dede_sys_enum` VALUES ('19794', '漳　县', '14511.6', 'nativeplace', '14512', '2');
INSERT INTO `dede_sys_enum` VALUES ('19793', '临洮县', '14511.5', 'nativeplace', '14512', '2');
INSERT INTO `dede_sys_enum` VALUES ('19792', '渭源县', '14511.4', 'nativeplace', '14511', '2');
INSERT INTO `dede_sys_enum` VALUES ('19791', '陇西县', '14511.3', 'nativeplace', '14511', '2');
INSERT INTO `dede_sys_enum` VALUES ('19790', '通渭县', '14511.2', 'nativeplace', '14511', '2');
INSERT INTO `dede_sys_enum` VALUES ('19789', '安定区', '14511.1', 'nativeplace', '14511', '2');
INSERT INTO `dede_sys_enum` VALUES ('19788', '定西市', '14511', 'nativeplace', '14511', '1');
INSERT INTO `dede_sys_enum` VALUES ('19787', '镇原县', '14510.8', 'nativeplace', '14511', '2');
INSERT INTO `dede_sys_enum` VALUES ('19786', '宁　县', '14510.7', 'nativeplace', '14511', '2');
INSERT INTO `dede_sys_enum` VALUES ('19785', '正宁县', '14510.6', 'nativeplace', '14511', '2');
INSERT INTO `dede_sys_enum` VALUES ('19784', '合水县', '14510.5', 'nativeplace', '14511', '2');
INSERT INTO `dede_sys_enum` VALUES ('19783', '华池县', '14510.4', 'nativeplace', '14510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19782', '环　县', '14510.3', 'nativeplace', '14510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19781', '庆城县', '14510.2', 'nativeplace', '14510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19780', '西峰区', '14510.1', 'nativeplace', '14510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19779', '庆阳市', '14510', 'nativeplace', '14510', '1');
INSERT INTO `dede_sys_enum` VALUES ('19778', '敦煌市', '14509.7', 'nativeplace', '14510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19777', '玉门市', '14509.6', 'nativeplace', '14510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19776', '阿克塞哈萨克族自治县', '14509.5', 'nativeplace', '14510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19775', '肃北蒙古族自治县', '14509.4', 'nativeplace', '14509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19774', '安西县', '14509.3', 'nativeplace', '14509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19773', '金塔县', '14509.2', 'nativeplace', '14509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19772', '肃州区', '14509.1', 'nativeplace', '14509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19771', '酒泉市', '14509', 'nativeplace', '14509', '1');
INSERT INTO `dede_sys_enum` VALUES ('19770', '静宁县', '14508.7', 'nativeplace', '14509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19769', '庄浪县', '14508.6', 'nativeplace', '14509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19768', '华亭县', '14508.5', 'nativeplace', '14509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19767', '崇信县', '14508.4', 'nativeplace', '14508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19766', '灵台县', '14508.3', 'nativeplace', '14508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19765', '泾川县', '14508.2', 'nativeplace', '14508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19764', '崆峒区', '14508.1', 'nativeplace', '14508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19763', '平凉市', '14508', 'nativeplace', '14508', '1');
INSERT INTO `dede_sys_enum` VALUES ('19762', '山丹县', '14507.6', 'nativeplace', '14508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19761', '高台县', '14507.5', 'nativeplace', '14508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19760', '临泽县', '14507.4', 'nativeplace', '14507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19759', '民乐县', '14507.3', 'nativeplace', '14507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19758', '肃南裕固族自治县', '14507.2', 'nativeplace', '14507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19757', '甘州区', '14507.1', 'nativeplace', '14507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19756', '张掖市', '14507', 'nativeplace', '14507', '1');
INSERT INTO `dede_sys_enum` VALUES ('19755', '天祝藏族自治县', '14506.4', 'nativeplace', '14506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19754', '古浪县', '14506.3', 'nativeplace', '14506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19753', '民勤县', '14506.2', 'nativeplace', '14506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19752', '凉州区', '14506.1', 'nativeplace', '14506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19751', '武威市', '14506', 'nativeplace', '14506', '1');
INSERT INTO `dede_sys_enum` VALUES ('19750', '张家川回族自治县', '14505.7', 'nativeplace', '14506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19749', '武山县', '14505.6', 'nativeplace', '14506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19748', '甘谷县', '14505.5', 'nativeplace', '14506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19747', '秦安县', '14505.4', 'nativeplace', '14505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19746', '清水县', '14505.3', 'nativeplace', '14505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19745', '北道区', '14505.2', 'nativeplace', '14505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19744', '秦城区', '14505.1', 'nativeplace', '14505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19743', '天水市', '14505', 'nativeplace', '14505', '1');
INSERT INTO `dede_sys_enum` VALUES ('19742', '景泰县', '14504.5', 'nativeplace', '14505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19741', '会宁县', '14504.4', 'nativeplace', '14504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19740', '靖远县', '14504.3', 'nativeplace', '14504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19739', '平川区', '14504.2', 'nativeplace', '14504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19738', '白银区', '14504.1', 'nativeplace', '14504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19737', '白银市', '14504', 'nativeplace', '14504', '1');
INSERT INTO `dede_sys_enum` VALUES ('19736', '永昌县', '14503.2', 'nativeplace', '14503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19735', '金川区', '14503.1', 'nativeplace', '14503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19734', '金昌市', '14503', 'nativeplace', '14503', '1');
INSERT INTO `dede_sys_enum` VALUES ('19733', '嘉峪关市', '14502', 'nativeplace', '14502', '1');
INSERT INTO `dede_sys_enum` VALUES ('19732', '榆中县', '14501.8', 'nativeplace', '14502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19731', '皋兰县', '14501.7', 'nativeplace', '14502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19730', '永登县', '14501.6', 'nativeplace', '14502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19729', '红古区', '14501.5', 'nativeplace', '14502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19728', '安宁区', '14501.4', 'nativeplace', '14501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19727', '西固区', '14501.3', 'nativeplace', '14501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19726', '七里河区', '14501.2', 'nativeplace', '14501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19725', '城关区', '14501.1', 'nativeplace', '14501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19724', '兰州市', '14501', 'nativeplace', '14501', '1');
INSERT INTO `dede_sys_enum` VALUES ('19723', '甘肃省', '14500', 'nativeplace', '14500', '0');
INSERT INTO `dede_sys_enum` VALUES ('19722', '柞水县', '14010.7', 'nativeplace', '14011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19721', '镇安县', '14010.6', 'nativeplace', '14011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19720', '山阳县', '14010.5', 'nativeplace', '14011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19719', '商南县', '14010.4', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19718', '丹凤县', '14010.3', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19717', '洛南县', '14010.2', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19716', '商州区', '14010.1', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19715', '商洛市', '14010', 'nativeplace', '14010', '1');
INSERT INTO `dede_sys_enum` VALUES ('19714', '白河县', '14009.10', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19713', '旬阳县', '14009.9', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19712', '镇坪县', '14009.8', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19711', '平利县', '14009.7', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19710', '岚皋县', '14009.6', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19709', '紫阳县', '14009.5', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19708', '宁陕县', '14009.4', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19707', '石泉县', '14009.3', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19706', '汉阴县', '14009.2', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19705', '汉滨区', '14009.1', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19704', '安康市', '14009', 'nativeplace', '14009', '1');
INSERT INTO `dede_sys_enum` VALUES ('19703', '子洲县', '14008.12', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19702', '清涧县', '14008.11', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19701', '吴堡县', '14008.10', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19700', '佳　县', '14008.9', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19699', '米脂县', '14008.8', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19698', '绥德县', '14008.7', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19697', '定边县', '14008.6', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19696', '靖边县', '14008.5', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19695', '横山县', '14008.4', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19694', '府谷县', '14008.3', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19693', '神木县', '14008.2', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19692', '榆阳区', '14008.1', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19691', '榆林市', '14008', 'nativeplace', '14008', '1');
INSERT INTO `dede_sys_enum` VALUES ('19690', '佛坪县', '14007.11', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19689', '留坝县', '14007.10', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19688', '镇巴县', '14007.9', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19687', '略阳县', '14007.8', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19686', '宁强县', '14007.7', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19685', '勉　县', '14007.6', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19684', '西乡县', '14007.5', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19683', '洋　县', '14007.4', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19682', '城固县', '14007.3', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19681', '南郑县', '14007.2', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19680', '汉台区', '14007.1', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19679', '汉中市', '14007', 'nativeplace', '14007', '1');
INSERT INTO `dede_sys_enum` VALUES ('19678', '黄陵县', '14006.13', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19677', '黄龙县', '14006.12', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19676', '宜川县', '14006.11', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19675', '洛川县', '14006.10', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19674', '富　县', '14006.9', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19673', '甘泉县', '14006.8', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19672', '吴旗县', '14006.7', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19671', '志丹县', '14006.6', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19670', '安塞县', '14006.5', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19669', '子长县', '14006.4', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19668', '延川县', '14006.3', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19667', '延长县', '14006.2', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19666', '宝塔区', '14006.1', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19665', '延安市', '14006', 'nativeplace', '14006', '1');
INSERT INTO `dede_sys_enum` VALUES ('19664', '华阴市', '14005.11', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19663', '韩城市', '14005.10', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19662', '富平县', '14005.9', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19661', '白水县', '14005.8', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19660', '蒲城县', '14005.7', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19659', '澄城县', '14005.6', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19658', '合阳县', '14005.5', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19657', '大荔县', '14005.4', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19656', '潼关县', '14005.3', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19655', '华　县', '14005.2', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19654', '临渭区', '14005.1', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19653', '渭南市', '14005', 'nativeplace', '14005', '1');
INSERT INTO `dede_sys_enum` VALUES ('19652', '兴平市', '14004.14', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19651', '武功县', '14004.13', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19650', '淳化县', '14004.12', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19649', '旬邑县', '14004.11', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19648', '长武县', '14004.10', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19647', '彬　县', '14004.9', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19646', '永寿县', '14004.8', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19645', '礼泉县', '14004.7', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19644', '乾　县', '14004.6', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19643', '泾阳县', '14004.5', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19642', '三原县', '14004.4', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19641', '渭城区', '14004.3', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19640', '杨凌区', '14004.2', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19639', '秦都区', '14004.1', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19638', '咸阳市', '14004', 'nativeplace', '14004', '1');
INSERT INTO `dede_sys_enum` VALUES ('19637', '太白县', '14003.12', 'nativeplace', '14003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19636', '凤　县', '14003.11', 'nativeplace', '14003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19635', '麟游县', '14003.10', 'nativeplace', '14003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19634', '千阳县', '14003.9', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19633', '陇　县', '14003.8', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19632', '眉　县', '14003.7', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19631', '扶风县', '14003.6', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19630', '岐山县', '14003.5', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19629', '凤翔县', '14003.4', 'nativeplace', '14003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19628', '陈仓区', '14003.3', 'nativeplace', '14003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19627', '金台区', '14003.2', 'nativeplace', '14003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19626', '滨区', '14003.1', 'nativeplace', '14003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19625', '宝鸡市', '14003', 'nativeplace', '14003', '1');
INSERT INTO `dede_sys_enum` VALUES ('19624', '宜君县', '14002.4', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19623', '耀州区', '14002.3', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19622', '印台区', '14002.2', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19621', '王益区', '14002.1', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19620', '铜川市', '14002', 'nativeplace', '14002', '1');
INSERT INTO `dede_sys_enum` VALUES ('19619', '高陵县', '14001.13', 'nativeplace', '14001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19618', '户　县', '14001.12', 'nativeplace', '14001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19617', '周至县', '14001.11', 'nativeplace', '14001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19616', '蓝田县', '14001.10', 'nativeplace', '14001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19615', '长安区', '14001.9', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19614', '临潼区', '14001.8', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19613', '阎良区', '14001.7', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19612', '雁塔区', '14001.6', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19611', '未央区', '14001.5', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19610', '灞桥区', '14001.4', 'nativeplace', '14001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19609', '莲湖区', '14001.3', 'nativeplace', '14001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19608', '碑林区', '14001.2', 'nativeplace', '14001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19607', '新城区', '14001.1', 'nativeplace', '14001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19606', '西安市', '14001', 'nativeplace', '14001', '1');
INSERT INTO `dede_sys_enum` VALUES ('19605', '陕西省', '14000', 'nativeplace', '14000', '0');
INSERT INTO `dede_sys_enum` VALUES ('19604', '朗　县', '13507.7', 'nativeplace', '13508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19603', '察隅县', '13507.6', 'nativeplace', '13508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19602', '波密县', '13507.5', 'nativeplace', '13508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19601', '墨脱县', '13507.4', 'nativeplace', '13507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19600', '米林县', '13507.3', 'nativeplace', '13507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19599', '工布江达县', '13507.2', 'nativeplace', '13507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19598', '林芝县', '13507.1', 'nativeplace', '13507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19597', '林芝地区', '13507', 'nativeplace', '13507', '1');
INSERT INTO `dede_sys_enum` VALUES ('19596', '措勤县', '13506.7', 'nativeplace', '13507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19595', '改则县', '13506.6', 'nativeplace', '13507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19594', '革吉县', '13506.5', 'nativeplace', '13507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19593', '日土县', '13506.4', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19592', '噶尔县', '13506.3', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19591', '札达县', '13506.2', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19590', '普兰县', '13506.1', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19589', '阿里地区', '13506', 'nativeplace', '13506', '1');
INSERT INTO `dede_sys_enum` VALUES ('19588', '尼玛县', '13505.10', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19587', '巴青县', '13505.9', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19586', '班戈县', '13505.8', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19585', '索　县', '13505.7', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19584', '申扎县', '13505.6', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19583', '安多县', '13505.5', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19582', '聂荣县', '13505.4', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19581', '比如县', '13505.3', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19580', '嘉黎县', '13505.2', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19579', '那曲县', '13505.1', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19578', '那曲地区', '13505', 'nativeplace', '13505', '1');
INSERT INTO `dede_sys_enum` VALUES ('19577', '岗巴县', '13504.18', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19576', '萨嘎县', '13504.17', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19575', '聂拉木县', '13504.16', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19574', '吉隆县', '13504.15', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19573', '亚东县', '13504.14', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19572', '仲巴县', '13504.13', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19571', '定结县', '13504.12', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19570', '康马县', '13504.11', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19569', '仁布县', '13504.10', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19568', '白朗县', '13504.9', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19567', '谢通门县', '13504.8', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19566', '昂仁县', '13504.7', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19565', '拉孜县', '13504.6', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19564', '萨迦县', '13504.5', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19563', '定日县', '13504.4', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19562', '江孜县', '13504.3', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19561', '南木林县', '13504.2', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19560', '日喀则市', '13504.1', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19559', '日喀则地区', '13504', 'nativeplace', '13504', '1');
INSERT INTO `dede_sys_enum` VALUES ('19558', '浪卡子县', '13503.12', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19557', '错那县', '13503.11', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19556', '隆子县', '13503.10', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19555', '加查县', '13503.9', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19554', '洛扎县', '13503.8', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19553', '措美县', '13503.7', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19552', '曲松县', '13503.6', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19551', '琼结县', '13503.5', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19550', '桑日县', '13503.4', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19549', '贡嘎县', '13503.3', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19548', '扎囊县', '13503.2', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19547', '乃东县', '13503.1', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19546', '山南地区', '13503', 'nativeplace', '13503', '1');
INSERT INTO `dede_sys_enum` VALUES ('19545', '边坝县', '13502.11', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19544', '洛隆县', '13502.10', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19543', '芒康县', '13502.9', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19542', '左贡县', '13502.8', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19541', '八宿县', '13502.7', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19540', '察雅县', '13502.6', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19539', '丁青县', '13502.5', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19538', '类乌齐县', '13502.4', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19537', '贡觉县', '13502.3', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19536', '江达县', '13502.2', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19535', '昌都县', '13502.1', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19534', '昌都地区', '13502', 'nativeplace', '13502', '1');
INSERT INTO `dede_sys_enum` VALUES ('19533', '墨竹工卡县', '13501.8', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19532', '达孜县', '13501.7', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19531', '堆龙德庆县', '13501.6', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19530', '曲水县', '13501.5', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19529', '尼木县', '13501.4', 'nativeplace', '13501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19528', '当雄县', '13501.3', 'nativeplace', '13501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19527', '林周县', '13501.2', 'nativeplace', '13501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19526', '城关区', '13501.1', 'nativeplace', '13501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19525', '拉萨市', '13501', 'nativeplace', '13501', '1');
INSERT INTO `dede_sys_enum` VALUES ('19524', '西藏自治区', '13500', 'nativeplace', '13500', '0');
INSERT INTO `dede_sys_enum` VALUES ('19523', '维西傈僳族自治县', '13016.3', 'nativeplace', '13016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19522', '德钦县', '13016.2', 'nativeplace', '13016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19521', '香格里拉县', '13016.1', 'nativeplace', '13016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19520', '迪庆藏族自治州', '13016', 'nativeplace', '13016', '1');
INSERT INTO `dede_sys_enum` VALUES ('19519', '兰坪白族普米族自治县', '13015.4', 'nativeplace', '13015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19518', '贡山独龙族怒族自治县', '13015.3', 'nativeplace', '13015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19517', '福贡县', '13015.2', 'nativeplace', '13015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19516', '泸水县', '13015.1', 'nativeplace', '13015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19515', '怒江傈僳族自治州', '13015', 'nativeplace', '13015', '1');
INSERT INTO `dede_sys_enum` VALUES ('19514', '陇川县', '13014.5', 'nativeplace', '13015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19513', '盈江县', '13014.4', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19512', '梁河县', '13014.3', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19511', '潞西市', '13014.2', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19510', '瑞丽市', '13014.1', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19509', '德宏傣族景颇族自治州', '13014', 'nativeplace', '13014', '1');
INSERT INTO `dede_sys_enum` VALUES ('19508', '鹤庆县', '13013.12', 'nativeplace', '13013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19507', '剑川县', '13013.11', 'nativeplace', '13013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19506', '洱源县', '13013.10', 'nativeplace', '13013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19505', '云龙县', '13013.9', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19504', '永平县', '13013.8', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19503', '巍山彝族回族自治县', '13013.7', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19502', '南涧彝族自治县', '13013.6', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19501', '弥渡县', '13013.5', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19500', '宾川县', '13013.4', 'nativeplace', '13013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19499', '祥云县', '13013.3', 'nativeplace', '13013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19498', '漾濞彝族自治县', '13013.2', 'nativeplace', '13013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19497', '大理市', '13013.1', 'nativeplace', '13013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19496', '大理白族自治州', '13013', 'nativeplace', '13013', '1');
INSERT INTO `dede_sys_enum` VALUES ('19495', '勐腊县', '13012.3', 'nativeplace', '13012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19494', '勐海县', '13012.2', 'nativeplace', '13012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19493', '景洪市', '13012.1', 'nativeplace', '13012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19492', '西双版纳傣族自治州', '13012', 'nativeplace', '13012', '1');
INSERT INTO `dede_sys_enum` VALUES ('19491', '富宁县', '13011.8', 'nativeplace', '13012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19490', '广南县', '13011.7', 'nativeplace', '13012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19489', '丘北县', '13011.6', 'nativeplace', '13012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19488', '马关县', '13011.5', 'nativeplace', '13012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19487', '麻栗坡县', '13011.4', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19486', '西畴县', '13011.3', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19485', '砚山县', '13011.2', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19484', '文山县', '13011.1', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19483', '文山壮族苗族自治州', '13011', 'nativeplace', '13011', '1');
INSERT INTO `dede_sys_enum` VALUES ('19482', '河口瑶族自治县', '13010.12', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19481', '绿春县', '13010.11', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19480', '金平苗族瑶族傣族自治县', '13010.10', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19479', '元阳县', '13010.9', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19478', '泸西县', '13010.8', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19477', '弥勒县', '13010.7', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19476', '石屏县', '13010.6', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19475', '建水县', '13010.5', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19474', '屏边苗族自治县', '13010.4', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19473', '蒙自县', '13010.3', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19472', '开远市', '13010.2', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19471', '个旧市', '13010.1', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19470', '红河哈尼族彝族自治州', '13010', 'nativeplace', '13010', '1');
INSERT INTO `dede_sys_enum` VALUES ('19469', '禄丰县', '13009.10', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19468', '武定县', '13009.9', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19467', '元谋县', '13009.8', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19466', '永仁县', '13009.7', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19465', '大姚县', '13009.6', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19464', '姚安县', '13009.5', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19463', '南华县', '13009.4', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19462', '牟定县', '13009.3', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19461', '双柏县', '13009.2', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19460', '楚雄市', '13009.1', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19459', '楚雄彝族自治州', '13009', 'nativeplace', '13009', '1');
INSERT INTO `dede_sys_enum` VALUES ('19458', '沧源佤族自治县', '13008.8', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19457', '耿马傣族佤族自治县', '13008.7', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19456', '双江拉祜族佤族布朗族傣族自治县', '13008.6', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19455', '镇康县', '13008.5', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19454', '永德县', '13008.4', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19453', '云　县', '13008.3', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19452', '凤庆县', '13008.2', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19451', '临翔区', '13008.1', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19450', '临沧市', '13008', 'nativeplace', '13008', '1');
INSERT INTO `dede_sys_enum` VALUES ('19449', '西盟佤族自治县', '13007.10', 'nativeplace', '13007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19448', '澜沧拉祜族自治县', '13007.9', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19447', '孟连傣族拉祜族佤族自治县', '13007.8', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19446', '江城哈尼族彝族自治县', '13007.7', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19445', '镇沅彝族哈尼族拉祜族自治县', '13007.6', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19444', '景谷傣族彝族自治县', '13007.5', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19443', '景东彝族自治县', '13007.4', 'nativeplace', '13007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19442', '墨江哈尼族自治县', '13007.3', 'nativeplace', '13007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19441', '普洱哈尼族彝族自治县', '13007.2', 'nativeplace', '13007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19440', '翠云区', '13007.1', 'nativeplace', '13007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19439', '思茅市', '13007', 'nativeplace', '13007', '1');
INSERT INTO `dede_sys_enum` VALUES ('19438', '宁蒗彝族自治县', '13006.5', 'nativeplace', '13007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19437', '华坪县', '13006.4', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19436', '永胜县', '13006.3', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19435', '玉龙纳西族自治县', '13006.2', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19434', '古城区', '13006.1', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19433', '丽江市', '13006', 'nativeplace', '13006', '1');
INSERT INTO `dede_sys_enum` VALUES ('19432', '水富县', '13005.11', 'nativeplace', '13005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19431', '威信县', '13005.10', 'nativeplace', '13005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19430', '彝良县', '13005.9', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19429', '镇雄县', '13005.8', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19428', '绥江县', '13005.7', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19427', '永善县', '13005.6', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19426', '大关县', '13005.5', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19425', '盐津县', '13005.4', 'nativeplace', '13005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19424', '巧家县', '13005.3', 'nativeplace', '13005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19423', '鲁甸县', '13005.2', 'nativeplace', '13005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19422', '昭阳区', '13005.1', 'nativeplace', '13005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19421', '昭通市', '13005', 'nativeplace', '13005', '1');
INSERT INTO `dede_sys_enum` VALUES ('19420', '昌宁县', '13004.5', 'nativeplace', '13005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19419', '龙陵县', '13004.4', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19418', '腾冲县', '13004.3', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19417', '施甸县', '13004.2', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19416', '隆阳区', '13004.1', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19415', '保山市', '13004', 'nativeplace', '13004', '1');
INSERT INTO `dede_sys_enum` VALUES ('19414', '元江哈尼族彝族傣族自治县', '13003.9', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19413', '新平彝族傣族自治县', '13003.8', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19412', '峨山彝族自治县', '13003.7', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19411', '易门县', '13003.6', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19410', '华宁县', '13003.5', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19409', '通海县', '13003.4', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19408', '澄江县', '13003.3', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19407', '江川县', '13003.2', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19406', '红塔区', '13003.1', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19405', '玉溪市', '13003', 'nativeplace', '13003', '1');
INSERT INTO `dede_sys_enum` VALUES ('19404', '宣威市', '13002.9', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19403', '沾益县', '13002.8', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19402', '会泽县', '13002.7', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19401', '富源县', '13002.6', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19400', '罗平县', '13002.5', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19399', '师宗县', '13002.4', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19398', '陆良县', '13002.3', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19397', '马龙县', '13002.2', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19396', '麒麟区', '13002.1', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19395', '曲靖市', '13002', 'nativeplace', '13002', '1');
INSERT INTO `dede_sys_enum` VALUES ('19394', '安宁市', '13001.14', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19393', '寻甸回族彝族自治县', '13001.13', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19392', '禄劝彝族苗族自治县', '13001.12', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19391', '嵩明县', '13001.11', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19390', '石林彝族自治县', '13001.10', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19389', '宜良县', '13001.9', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19388', '富民县', '13001.8', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19387', '晋宁县', '13001.7', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19386', '呈贡县', '13001.6', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19385', '东川区', '13001.5', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19384', '西山区', '13001.4', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19383', '官渡区', '13001.3', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19382', '盘龙区', '13001.2', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19381', '五华区', '13001.1', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19380', '昆明市', '13001', 'nativeplace', '13001', '1');
INSERT INTO `dede_sys_enum` VALUES ('19379', '云南省', '13000', 'nativeplace', '13000', '0');
INSERT INTO `dede_sys_enum` VALUES ('19378', '三都水族自治县', '12509.12', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19377', '惠水县', '12509.11', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19376', '龙里县', '12509.10', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19375', '长顺县', '12509.9', 'nativeplace', '12510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19374', '罗甸县', '12509.8', 'nativeplace', '12510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19373', '平塘县', '12509.7', 'nativeplace', '12510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19372', '独山县', '12509.6', 'nativeplace', '12510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19371', '瓮安县', '12509.5', 'nativeplace', '12510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19370', '贵定县', '12509.4', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19369', '荔波县', '12509.3', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19368', '福泉市', '12509.2', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19367', '都匀市', '12509.1', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19366', '黔南布依族苗族自治州', '12509', 'nativeplace', '12509', '1');
INSERT INTO `dede_sys_enum` VALUES ('19365', '麻江县', '12508.15', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19364', '雷山县', '12508.14', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19363', '从江县', '12508.13', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19362', '榕江县', '12508.12', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19361', '黎平县', '12508.11', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19360', '台江县', '12508.10', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19359', '剑河县', '12508.9', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19358', '锦屏县', '12508.8', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19357', '天柱县', '12508.7', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19356', '岑巩县', '12508.6', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19355', '镇远县', '12508.5', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19354', '三穗县', '12508.4', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19353', '施秉县', '12508.3', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19352', '黄平县', '12508.2', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19351', '凯里市', '12508.1', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19350', '黔东南苗族侗族自治州', '12508', 'nativeplace', '12508', '1');
INSERT INTO `dede_sys_enum` VALUES ('19349', '赫章县', '12507.8', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19348', '威宁彝族回族苗族自治县', '12507.7', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19347', '纳雍县', '12507.6', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19346', '织金县', '12507.5', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19345', '金沙县', '12507.4', 'nativeplace', '12507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19344', '黔西县', '12507.3', 'nativeplace', '12507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19343', '大方县', '12507.2', 'nativeplace', '12507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19342', '毕节市', '12507.1', 'nativeplace', '12507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19341', '毕节地区', '12507', 'nativeplace', '12507', '1');
INSERT INTO `dede_sys_enum` VALUES ('19340', '安龙县', '12506.8', 'nativeplace', '12507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19339', '册亨县', '12506.7', 'nativeplace', '12507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19338', '望谟县', '12506.6', 'nativeplace', '12507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19337', '贞丰县', '12506.5', 'nativeplace', '12507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19336', '晴隆县', '12506.4', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19335', '普安县', '12506.3', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19334', '兴仁县', '12506.2', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19333', '兴义市', '12506.1', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19332', '黔西南布依族苗族自治州', '12506', 'nativeplace', '12506', '1');
INSERT INTO `dede_sys_enum` VALUES ('19331', '万山特区', '12505.10', 'nativeplace', '12505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19330', '松桃苗族自治县', '12505.9', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19329', '沿河土家族自治县', '12505.8', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19328', '德江县', '12505.7', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19327', '印江土家族苗族自治县', '12505.6', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19326', '思南县', '12505.5', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19325', '石阡县', '12505.4', 'nativeplace', '12505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19324', '玉屏侗族自治县', '12505.3', 'nativeplace', '12505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19323', '江口县', '12505.2', 'nativeplace', '12505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19322', '铜仁市', '12505.1', 'nativeplace', '12505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19321', '铜仁地区', '12505', 'nativeplace', '12505', '1');
INSERT INTO `dede_sys_enum` VALUES ('19320', '紫云苗族布依族自治县', '12504.6', 'nativeplace', '12505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19319', '关岭布依族苗族自治县', '12504.5', 'nativeplace', '12505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19318', '镇宁布依族苗族自治县', '12504.4', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19317', '普定县', '12504.3', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19316', '平坝县', '12504.2', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19315', '西秀区', '12504.1', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19314', '安顺市', '12504', 'nativeplace', '12504', '1');
INSERT INTO `dede_sys_enum` VALUES ('19313', '仁怀市', '12503.14', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19312', '赤水市', '12503.13', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19311', '习水县', '12503.12', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19310', '余庆县', '12503.11', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19309', '湄潭县', '12503.10', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19308', '凤冈县', '12503.9', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19307', '务川仡佬族苗族自治县', '12503.8', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19306', '道真仡佬族苗族自治县', '12503.7', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19305', '正安县', '12503.6', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19304', '绥阳县', '12503.5', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19303', '桐梓县', '12503.4', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19302', '遵义县', '12503.3', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19301', '汇川区', '12503.2', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19300', '红花岗区', '12503.1', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19299', '遵义市', '12503', 'nativeplace', '12503', '1');
INSERT INTO `dede_sys_enum` VALUES ('19298', '盘　县', '12502.4', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19297', '水城县', '12502.3', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19296', '六枝特区', '12502.2', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19295', '钟山区', '12502.1', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19294', '六盘水市', '12502', 'nativeplace', '12502', '1');
INSERT INTO `dede_sys_enum` VALUES ('19293', '清镇市', '12501.10', 'nativeplace', '12501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19292', '修文县', '12501.9', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19291', '息烽县', '12501.8', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19290', '开阳县', '12501.7', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19289', '小河区', '12501.6', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19288', '白云区', '12501.5', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19287', '乌当区', '12501.4', 'nativeplace', '12501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19286', '花溪区', '12501.3', 'nativeplace', '12501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19285', '云岩区', '12501.2', 'nativeplace', '12501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19284', '南明区', '12501.1', 'nativeplace', '12501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19283', '贵阳市', '12501', 'nativeplace', '12501', '1');
INSERT INTO `dede_sys_enum` VALUES ('19282', '贵州省', '12500', 'nativeplace', '12500', '0');
INSERT INTO `dede_sys_enum` VALUES ('19281', '雷波县', '12021.17', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19280', '美姑县', '12021.16', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19279', '甘洛县', '12021.15', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19278', '越西县', '12021.14', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19277', '冕宁县', '12021.13', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19276', '喜德县', '12021.12', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19275', '昭觉县', '12021.11', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19274', '金阳县', '12021.10', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19273', '布拖县', '12021.9', 'nativeplace', '12022', '2');
INSERT INTO `dede_sys_enum` VALUES ('19272', '普格县', '12021.8', 'nativeplace', '12022', '2');
INSERT INTO `dede_sys_enum` VALUES ('19271', '宁南县', '12021.7', 'nativeplace', '12022', '2');
INSERT INTO `dede_sys_enum` VALUES ('19270', '会东县', '12021.6', 'nativeplace', '12022', '2');
INSERT INTO `dede_sys_enum` VALUES ('19269', '会理县', '12021.5', 'nativeplace', '12022', '2');
INSERT INTO `dede_sys_enum` VALUES ('19268', '德昌县', '12021.4', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19267', '盐源县', '12021.3', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19266', '木里藏族自治县', '12021.2', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19265', '西昌市', '12021.1', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19264', '凉山彝族自治州', '12021', 'nativeplace', '12021', '1');
INSERT INTO `dede_sys_enum` VALUES ('19263', '得荣县', '12020.18', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19262', '稻城县', '12020.17', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19261', '乡城县', '12020.16', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19260', '巴塘县', '12020.15', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19259', '理塘县', '12020.14', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19258', '色达县', '12020.13', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19257', '石渠县', '12020.12', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19256', '白玉县', '12020.11', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19255', '德格县', '12020.10', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19254', '新龙县', '12020.9', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19253', '甘孜县', '12020.8', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19252', '炉霍县', '12020.7', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19251', '道孚县', '12020.6', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19250', '雅江县', '12020.5', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19249', '九龙县', '12020.4', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19248', '丹巴县', '12020.3', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19247', '泸定县', '12020.2', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19246', '康定县', '12020.1', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19245', '甘孜藏族自治州', '12020', 'nativeplace', '12020', '1');
INSERT INTO `dede_sys_enum` VALUES ('19244', '红原县', '12019.13', 'nativeplace', '12019', '2');
INSERT INTO `dede_sys_enum` VALUES ('19243', '若尔盖县', '12019.12', 'nativeplace', '12019', '2');
INSERT INTO `dede_sys_enum` VALUES ('19242', '阿坝县', '12019.11', 'nativeplace', '12019', '2');
INSERT INTO `dede_sys_enum` VALUES ('19241', '壤塘县', '12019.10', 'nativeplace', '12019', '2');
INSERT INTO `dede_sys_enum` VALUES ('19240', '马尔康县', '12019.9', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19239', '黑水县', '12019.8', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19238', '小金县', '12019.7', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19237', '金川县', '12019.6', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19236', '九寨沟县', '12019.5', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19235', '松潘县', '12019.4', 'nativeplace', '12019', '2');
INSERT INTO `dede_sys_enum` VALUES ('19234', '茂　县', '12019.3', 'nativeplace', '12019', '2');
INSERT INTO `dede_sys_enum` VALUES ('19233', '理　县', '12019.2', 'nativeplace', '12019', '2');
INSERT INTO `dede_sys_enum` VALUES ('19232', '汶川县', '12019.1', 'nativeplace', '12019', '2');
INSERT INTO `dede_sys_enum` VALUES ('19231', '阿坝藏族羌族自治州', '12019', 'nativeplace', '12019', '1');
INSERT INTO `dede_sys_enum` VALUES ('19230', '简阳市', '12018.4', 'nativeplace', '12018', '2');
INSERT INTO `dede_sys_enum` VALUES ('19229', '乐至县', '12018.3', 'nativeplace', '12018', '2');
INSERT INTO `dede_sys_enum` VALUES ('19228', '安岳县', '12018.2', 'nativeplace', '12018', '2');
INSERT INTO `dede_sys_enum` VALUES ('19227', '雁江区', '12018.1', 'nativeplace', '12018', '2');
INSERT INTO `dede_sys_enum` VALUES ('19226', '资阳市', '12018', 'nativeplace', '12018', '1');
INSERT INTO `dede_sys_enum` VALUES ('19225', '平昌县', '12017.4', 'nativeplace', '12017', '2');
INSERT INTO `dede_sys_enum` VALUES ('19224', '南江县', '12017.3', 'nativeplace', '12017', '2');
INSERT INTO `dede_sys_enum` VALUES ('19223', '通江县', '12017.2', 'nativeplace', '12017', '2');
INSERT INTO `dede_sys_enum` VALUES ('19222', '巴州区', '12017.1', 'nativeplace', '12017', '2');
INSERT INTO `dede_sys_enum` VALUES ('19221', '巴中市', '12017', 'nativeplace', '12017', '1');
INSERT INTO `dede_sys_enum` VALUES ('19220', '宝兴县', '12016.8', 'nativeplace', '12017', '2');
INSERT INTO `dede_sys_enum` VALUES ('19219', '芦山县', '12016.7', 'nativeplace', '12017', '2');
INSERT INTO `dede_sys_enum` VALUES ('19218', '天全县', '12016.6', 'nativeplace', '12017', '2');
INSERT INTO `dede_sys_enum` VALUES ('19217', '石棉县', '12016.5', 'nativeplace', '12017', '2');
INSERT INTO `dede_sys_enum` VALUES ('19216', '汉源县', '12016.4', 'nativeplace', '12016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19215', '荥经县', '12016.3', 'nativeplace', '12016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19214', '名山县', '12016.2', 'nativeplace', '12016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19213', '雨城区', '12016.1', 'nativeplace', '12016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19212', '雅安市', '12016', 'nativeplace', '12016', '1');
INSERT INTO `dede_sys_enum` VALUES ('19211', '万源市', '12015.7', 'nativeplace', '12016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19210', '渠　县', '12015.6', 'nativeplace', '12016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19209', '大竹县', '12015.5', 'nativeplace', '12016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19208', '开江县', '12015.4', 'nativeplace', '12015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19207', '宣汉县', '12015.3', 'nativeplace', '12015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19206', '达　县', '12015.2', 'nativeplace', '12015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19205', '通川区', '12015.1', 'nativeplace', '12015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19204', '达州市', '12015', 'nativeplace', '12015', '1');
INSERT INTO `dede_sys_enum` VALUES ('19203', '华莹市', '12014.5', 'nativeplace', '12015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19202', '邻水县', '12014.4', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19201', '武胜县', '12014.3', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19200', '岳池县', '12014.2', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19199', '广安区', '12014.1', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19198', '广安市', '12014', 'nativeplace', '12014', '1');
INSERT INTO `dede_sys_enum` VALUES ('19197', '屏山县', '12013.10', 'nativeplace', '12013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19196', '兴文县', '12013.9', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19195', '筠连县', '12013.8', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19194', '珙　县', '12013.7', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19193', '高　县', '12013.6', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19192', '长宁县', '12013.5', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19191', '江安县', '12013.4', 'nativeplace', '12013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19190', '南溪县', '12013.3', 'nativeplace', '12013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19189', '宜宾县', '12013.2', 'nativeplace', '12013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19188', '翠屏区', '12013.1', 'nativeplace', '12013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19187', '宜宾市', '12013', 'nativeplace', '12013', '1');
INSERT INTO `dede_sys_enum` VALUES ('19186', '青神县', '12012.6', 'nativeplace', '12013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19185', '丹棱县', '12012.5', 'nativeplace', '12013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19184', '洪雅县', '12012.4', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19183', '彭山县', '12012.3', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19182', '仁寿县', '12012.2', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19181', '东坡区', '12012.1', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19180', '眉山市', '12012', 'nativeplace', '12012', '1');
INSERT INTO `dede_sys_enum` VALUES ('19179', '阆中市', '12011.9', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19178', '西充县', '12011.8', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19177', '仪陇县', '12011.7', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19176', '蓬安县', '12011.6', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19175', '营山县', '12011.5', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19174', '南部县', '12011.4', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19173', '嘉陵区', '12011.3', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19172', '高坪区', '12011.2', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19171', '顺庆区', '12011.1', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19170', '南充市', '12011', 'nativeplace', '12011', '1');
INSERT INTO `dede_sys_enum` VALUES ('19169', '峨眉山市', '12010.11', 'nativeplace', '12010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19168', '马边彝族自治县', '12010.10', 'nativeplace', '12010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19167', '峨边彝族自治县', '12010.9', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19166', '沐川县', '12010.8', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19165', '夹江县', '12010.7', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19164', '井研县', '12010.6', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19163', '犍为县', '12010.5', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19162', '金口河区', '12010.4', 'nativeplace', '12010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19161', '五通桥区', '12010.3', 'nativeplace', '12010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19160', '沙湾区', '12010.2', 'nativeplace', '12010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19159', '市中区', '12010.1', 'nativeplace', '12010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19158', '乐山市', '12010', 'nativeplace', '12010', '1');
INSERT INTO `dede_sys_enum` VALUES ('19157', '隆昌县', '12009.5', 'nativeplace', '12010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19156', '资中县', '12009.4', 'nativeplace', '12009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19155', '威远县', '12009.3', 'nativeplace', '12009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19154', '东兴区', '12009.2', 'nativeplace', '12009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19153', '市中区', '12009.1', 'nativeplace', '12009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19152', '内江市', '12009', 'nativeplace', '12009', '1');
INSERT INTO `dede_sys_enum` VALUES ('19151', '大英县', '12008.5', 'nativeplace', '12009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19150', '射洪县', '12008.4', 'nativeplace', '12008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19149', '蓬溪县', '12008.3', 'nativeplace', '12008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19148', '安居区', '12008.2', 'nativeplace', '12008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19147', '船山区', '12008.1', 'nativeplace', '12008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19146', '遂宁市', '12008', 'nativeplace', '12008', '1');
INSERT INTO `dede_sys_enum` VALUES ('19145', '苍溪县', '12007.7', 'nativeplace', '12008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19144', '剑阁县', '12007.6', 'nativeplace', '12008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19143', '青川县', '12007.5', 'nativeplace', '12008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19142', '旺苍县', '12007.4', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19141', '朝天区', '12007.3', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19140', '元坝区', '12007.2', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19139', '市中区', '12007.1', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19138', '广元市', '12007', 'nativeplace', '12007', '1');
INSERT INTO `dede_sys_enum` VALUES ('19137', '江油市', '12006.9', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19136', '平武县', '12006.8', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19135', '北川羌族自治县', '12006.7', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19134', '梓潼县', '12006.6', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19133', '安　县', '12006.5', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19132', '盐亭县', '12006.4', 'nativeplace', '12006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19131', '三台县', '12006.3', 'nativeplace', '12006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19130', '游仙区', '12006.2', 'nativeplace', '12006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19129', '涪城区', '12006.1', 'nativeplace', '12006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19128', '绵阳市', '12006', 'nativeplace', '12006', '1');
INSERT INTO `dede_sys_enum` VALUES ('19127', '绵竹市', '12005.6', 'nativeplace', '12006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19126', '什邡市', '12005.5', 'nativeplace', '12006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19125', '广汉市', '12005.4', 'nativeplace', '12005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19124', '罗江县', '12005.3', 'nativeplace', '12005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19123', '中江县', '12005.2', 'nativeplace', '12005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19122', '旌阳区', '12005.1', 'nativeplace', '12005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19121', '德阳市', '12005', 'nativeplace', '12005', '1');
INSERT INTO `dede_sys_enum` VALUES ('19120', '古蔺县', '12004.7', 'nativeplace', '12005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19119', '叙永县', '12004.6', 'nativeplace', '12005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19118', '合江县', '12004.5', 'nativeplace', '12005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19117', '泸　县', '12004.4', 'nativeplace', '12004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19116', '龙马潭区', '12004.3', 'nativeplace', '12004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19115', '纳溪区', '12004.2', 'nativeplace', '12004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19114', '江阳区', '12004.1', 'nativeplace', '12004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19113', '泸州市', '12004', 'nativeplace', '12004', '1');
INSERT INTO `dede_sys_enum` VALUES ('19112', '盐边县', '12003.5', 'nativeplace', '12004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19111', '米易县', '12003.4', 'nativeplace', '12003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19110', '仁和区', '12003.3', 'nativeplace', '12003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19109', '西　区', '12003.2', 'nativeplace', '12003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19108', '东　区', '12003.1', 'nativeplace', '12003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19107', '攀枝花市', '12003', 'nativeplace', '12003', '1');
INSERT INTO `dede_sys_enum` VALUES ('19106', '富顺县', '12002.6', 'nativeplace', '12003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19105', '荣　县', '12002.5', 'nativeplace', '12003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19104', '沿滩区', '12002.4', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19103', '大安区', '12002.3', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19102', '贡井区', '12002.2', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19101', '自流井区', '12002.1', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19100', '自贡市', '12002', 'nativeplace', '12002', '1');
INSERT INTO `dede_sys_enum` VALUES ('19099', '崇州市', '12001.19', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19098', '邛崃市', '12001.18', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19097', '彭州市', '12001.17', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19096', '都江堰市', '12001.16', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19095', '新津县', '12001.15', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19094', '蒲江县', '12001.14', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19093', '大邑县', '12001.13', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19092', '郫　县', '12001.12', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19091', '双流县', '12001.11', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19090', '金堂县', '12001.10', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19089', '温江区', '12001.9', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19088', '新都区', '12001.8', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19087', '青白江区', '12001.7', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19086', '龙泉驿区', '12001.6', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19085', '成华区', '12001.5', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19084', '武侯区', '12001.4', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19083', '金牛区', '12001.3', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19082', '青羊区', '12001.2', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19081', '锦江区', '12001.1', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19080', '成都市', '12001', 'nativeplace', '12001', '1');
INSERT INTO `dede_sys_enum` VALUES ('19079', '四川省', '12000', 'nativeplace', '12000', '0');
INSERT INTO `dede_sys_enum` VALUES ('19078', '南川市', '11540', 'nativeplace', '11540', '1');
INSERT INTO `dede_sys_enum` VALUES ('19077', '永川市', '11539', 'nativeplace', '11539', '1');
INSERT INTO `dede_sys_enum` VALUES ('19076', '合川市', '11538', 'nativeplace', '11538', '1');
INSERT INTO `dede_sys_enum` VALUES ('19075', '江津市', '11537', 'nativeplace', '11537', '1');
INSERT INTO `dede_sys_enum` VALUES ('19074', '彭水苗族土家族自治县', '11536', 'nativeplace', '11536', '1');
INSERT INTO `dede_sys_enum` VALUES ('19073', '酉阳土家族苗族自治县', '11535', 'nativeplace', '11535', '1');
INSERT INTO `dede_sys_enum` VALUES ('19072', '秀山土家族苗族自治县', '11534', 'nativeplace', '11534', '1');
INSERT INTO `dede_sys_enum` VALUES ('19071', '石柱土家族自治县', '11533', 'nativeplace', '11533', '1');
INSERT INTO `dede_sys_enum` VALUES ('19070', '巫溪县', '11532', 'nativeplace', '11532', '1');
INSERT INTO `dede_sys_enum` VALUES ('19069', '巫山县', '11531', 'nativeplace', '11531', '1');
INSERT INTO `dede_sys_enum` VALUES ('19068', '奉节县', '11530', 'nativeplace', '11530', '1');
INSERT INTO `dede_sys_enum` VALUES ('19067', '云阳县', '11529', 'nativeplace', '11529', '1');
INSERT INTO `dede_sys_enum` VALUES ('19066', '开　县', '11528', 'nativeplace', '11528', '1');
INSERT INTO `dede_sys_enum` VALUES ('19065', '忠　县', '11527', 'nativeplace', '11527', '1');
INSERT INTO `dede_sys_enum` VALUES ('19064', '武隆县', '11526', 'nativeplace', '11526', '1');
INSERT INTO `dede_sys_enum` VALUES ('19063', '垫江县', '11525', 'nativeplace', '11525', '1');
INSERT INTO `dede_sys_enum` VALUES ('19062', '丰都县', '11524', 'nativeplace', '11524', '1');
INSERT INTO `dede_sys_enum` VALUES ('19061', '城口县', '11523', 'nativeplace', '11523', '1');
INSERT INTO `dede_sys_enum` VALUES ('19060', '梁平县', '11522', 'nativeplace', '11522', '1');
INSERT INTO `dede_sys_enum` VALUES ('19059', '璧山县', '11521', 'nativeplace', '11521', '1');
INSERT INTO `dede_sys_enum` VALUES ('19058', '荣昌县', '11520', 'nativeplace', '11520', '1');
INSERT INTO `dede_sys_enum` VALUES ('19057', '大足县', '11519', 'nativeplace', '11519', '1');
INSERT INTO `dede_sys_enum` VALUES ('19056', '铜梁县', '11518', 'nativeplace', '11518', '1');
INSERT INTO `dede_sys_enum` VALUES ('19055', '潼南县', '11517', 'nativeplace', '11517', '1');
INSERT INTO `dede_sys_enum` VALUES ('19054', '綦江县', '11516', 'nativeplace', '11516', '1');
INSERT INTO `dede_sys_enum` VALUES ('19053', '长寿区', '11515', 'nativeplace', '11515', '1');
INSERT INTO `dede_sys_enum` VALUES ('19052', '黔江区', '11514', 'nativeplace', '11514', '1');
INSERT INTO `dede_sys_enum` VALUES ('19051', '巴南区', '11513', 'nativeplace', '11513', '1');
INSERT INTO `dede_sys_enum` VALUES ('19050', '渝北区', '11512', 'nativeplace', '11512', '1');
INSERT INTO `dede_sys_enum` VALUES ('19049', '双桥区', '11511', 'nativeplace', '11511', '1');
INSERT INTO `dede_sys_enum` VALUES ('19048', '万盛区', '11510', 'nativeplace', '11510', '1');
INSERT INTO `dede_sys_enum` VALUES ('19047', '北碚区', '11509', 'nativeplace', '11509', '1');
INSERT INTO `dede_sys_enum` VALUES ('19046', '南岸区', '11508', 'nativeplace', '11508', '1');
INSERT INTO `dede_sys_enum` VALUES ('19045', '九龙坡区', '11507', 'nativeplace', '11507', '1');
INSERT INTO `dede_sys_enum` VALUES ('19044', '沙坪坝区', '11506', 'nativeplace', '11506', '1');
INSERT INTO `dede_sys_enum` VALUES ('19043', '江北区', '11505', 'nativeplace', '11505', '1');
INSERT INTO `dede_sys_enum` VALUES ('19042', '大渡口区', '11504', 'nativeplace', '11504', '1');
INSERT INTO `dede_sys_enum` VALUES ('19041', '渝中区', '11503', 'nativeplace', '11503', '1');
INSERT INTO `dede_sys_enum` VALUES ('19040', '涪陵区', '11502', 'nativeplace', '11502', '1');
INSERT INTO `dede_sys_enum` VALUES ('19039', '万州区', '11501', 'nativeplace', '11501', '1');
INSERT INTO `dede_sys_enum` VALUES ('19038', '重庆市', '11500', 'nativeplace', '11500', '0');
INSERT INTO `dede_sys_enum` VALUES ('19037', '中沙群岛的岛礁及其海域', '11003.19', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19036', '南沙群岛', '11003.18', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19035', '西沙群岛', '11003.17', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19034', '琼中黎族苗族自治县', '11003.16', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19033', '保亭黎族苗族自治县', '11003.15', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19032', '陵水黎族自治县', '11003.14', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19031', '乐东黎族自治县', '11003.13', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19030', '昌江黎族自治县', '11003.12', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19029', '白沙黎族自治县', '11003.11', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19028', '临高县', '11003.10', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19027', '澄迈县', '11003.9', 'nativeplace', '11004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19026', '屯昌县', '11003.8', 'nativeplace', '11004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19025', '定安县', '11003.7', 'nativeplace', '11004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19024', '东方市', '11003.6', 'nativeplace', '11004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19023', '万宁市', '11003.5', 'nativeplace', '11004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19022', '文昌市', '11003.4', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19021', '儋州市', '11003.3', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19020', '琼海市', '11003.2', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19019', '五指山市', '11003.1', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19018', '省直辖县级行政单位', '11003', 'nativeplace', '11003', '1');
INSERT INTO `dede_sys_enum` VALUES ('19017', '三亚市', '11002', 'nativeplace', '11002', '1');
INSERT INTO `dede_sys_enum` VALUES ('19016', '美兰区', '11001.4', 'nativeplace', '11001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19015', '琼山区', '11001.3', 'nativeplace', '11001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19014', '龙华区', '11001.2', 'nativeplace', '11001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19013', '秀英区', '11001.1', 'nativeplace', '11001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19012', '海口市', '11001', 'nativeplace', '11001', '1');
INSERT INTO `dede_sys_enum` VALUES ('19011', '海南省', '11000', 'nativeplace', '11000', '0');
INSERT INTO `dede_sys_enum` VALUES ('19010', '凭祥市', '10514.7', 'nativeplace', '10515', '2');
INSERT INTO `dede_sys_enum` VALUES ('19009', '天等县', '10514.6', 'nativeplace', '10515', '2');
INSERT INTO `dede_sys_enum` VALUES ('19008', '大新县', '10514.5', 'nativeplace', '10515', '2');
INSERT INTO `dede_sys_enum` VALUES ('19007', '龙州县', '10514.4', 'nativeplace', '10514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19006', '宁明县', '10514.3', 'nativeplace', '10514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19005', '扶绥县', '10514.2', 'nativeplace', '10514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19004', '江洲区', '10514.1', 'nativeplace', '10514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19003', '崇左市', '10514', 'nativeplace', '10514', '1');
INSERT INTO `dede_sys_enum` VALUES ('19002', '合山市', '10513.6', 'nativeplace', '10514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19001', '金秀瑶族自治县', '10513.5', 'nativeplace', '10514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19000', '武宣县', '10513.4', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18999', '象州县', '10513.3', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18998', '忻城县', '10513.2', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18997', '兴宾区', '10513.1', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18996', '来宾市', '10513', 'nativeplace', '10513', '1');
INSERT INTO `dede_sys_enum` VALUES ('18995', '宜州市', '10512.11', 'nativeplace', '10512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18994', '大化瑶族自治县', '10512.10', 'nativeplace', '10512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18993', '都安瑶族自治县', '10512.9', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18992', '巴马瑶族自治县', '10512.8', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18991', '环江毛南族自治县', '10512.7', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18990', '罗城仫佬族自治县', '10512.6', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18989', '东兰县', '10512.5', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18988', '凤山县', '10512.4', 'nativeplace', '10512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18987', '天峨县', '10512.3', 'nativeplace', '10512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18986', '南丹县', '10512.2', 'nativeplace', '10512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18985', '金城江区', '10512.1', 'nativeplace', '10512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18984', '河池市', '10512', 'nativeplace', '10512', '1');
INSERT INTO `dede_sys_enum` VALUES ('18983', '富川瑶族自治县', '10511.4', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18982', '钟山县', '10511.3', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18981', '昭平县', '10511.2', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18980', '八步区', '10511.1', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18979', '贺州市', '10511', 'nativeplace', '10511', '1');
INSERT INTO `dede_sys_enum` VALUES ('18978', '隆林各族自治县', '10510.12', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18977', '西林县', '10510.11', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18976', '田林县', '10510.10', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18975', '乐业县', '10510.9', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18974', '凌云县', '10510.8', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18973', '那坡县', '10510.7', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18972', '靖西县', '10510.6', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18971', '德保县', '10510.5', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18970', '平果县', '10510.4', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18969', '田东县', '10510.3', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18968', '田阳县', '10510.2', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18967', '右江区', '10510.1', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18966', '百色市', '10510', 'nativeplace', '10510', '1');
INSERT INTO `dede_sys_enum` VALUES ('18965', '北流市', '10509.6', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18964', '兴业县', '10509.5', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18963', '博白县', '10509.4', 'nativeplace', '10509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18962', '陆川县', '10509.3', 'nativeplace', '10509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18961', '容　县', '10509.2', 'nativeplace', '10509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18960', '玉州区', '10509.1', 'nativeplace', '10509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18959', '玉林市', '10509', 'nativeplace', '10509', '1');
INSERT INTO `dede_sys_enum` VALUES ('18958', '桂平市', '10508.5', 'nativeplace', '10509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18957', '平南县', '10508.4', 'nativeplace', '10508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18956', '覃塘区', '10508.3', 'nativeplace', '10508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18955', '港南区', '10508.2', 'nativeplace', '10508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18954', '港北区', '10508.1', 'nativeplace', '10508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18953', '贵港市', '10508', 'nativeplace', '10508', '1');
INSERT INTO `dede_sys_enum` VALUES ('18952', '浦北县', '10507.4', 'nativeplace', '10507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18951', '灵山县', '10507.3', 'nativeplace', '10507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18950', '钦北区', '10507.2', 'nativeplace', '10507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18949', '钦南区', '10507.1', 'nativeplace', '10507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18948', '钦州市', '10507', 'nativeplace', '10507', '1');
INSERT INTO `dede_sys_enum` VALUES ('18947', '东兴市', '10506.4', 'nativeplace', '10506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18946', '上思县', '10506.3', 'nativeplace', '10506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18945', '防城区', '10506.2', 'nativeplace', '10506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18944', '港口区', '10506.1', 'nativeplace', '10506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18943', '防城港市', '10506', 'nativeplace', '10506', '1');
INSERT INTO `dede_sys_enum` VALUES ('18942', '合浦县', '10505.4', 'nativeplace', '10505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18941', '铁山港区', '10505.3', 'nativeplace', '10505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18940', '银海区', '10505.2', 'nativeplace', '10505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18939', '海城区', '10505.1', 'nativeplace', '10505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18938', '北海市', '10505', 'nativeplace', '10505', '1');
INSERT INTO `dede_sys_enum` VALUES ('18937', '岑溪市', '10504.7', 'nativeplace', '10505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18936', '蒙山县', '10504.6', 'nativeplace', '10505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18935', '藤　县', '10504.5', 'nativeplace', '10505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18934', '苍梧县', '10504.4', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18933', '长洲区', '10504.3', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18932', '蝶山区', '10504.2', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18931', '万秀区', '10504.1', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18930', '梧州市', '10504', 'nativeplace', '10504', '1');
INSERT INTO `dede_sys_enum` VALUES ('18929', '恭城瑶族自治县', '10503.17', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18928', '荔蒲县', '10503.16', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18927', '平乐县', '10503.15', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18926', '资源县', '10503.14', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18925', '龙胜各族自治县', '10503.13', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18924', '灌阳县', '10503.12', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18923', '永福县', '10503.11', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18922', '兴安县', '10503.10', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18921', '全州县', '10503.9', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18920', '灵川县', '10503.8', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18919', '临桂县', '10503.7', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18918', '阳朔县', '10503.6', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18917', '雁山区', '10503.5', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18916', '七星区', '10503.4', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18915', '象山区', '10503.3', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18914', '叠彩区', '10503.2', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18913', '秀峰区', '10503.1', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18912', '桂林市', '10503', 'nativeplace', '10503', '1');
INSERT INTO `dede_sys_enum` VALUES ('18911', '三江侗族自治县', '10502.10', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18910', '融水苗族自治县', '10502.9', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18909', '融安县', '10502.8', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18908', '鹿寨县', '10502.7', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18907', '柳城县', '10502.6', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18906', '柳江县', '10502.5', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18905', '柳北区', '10502.4', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18904', '柳南区', '10502.3', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18903', '鱼峰区', '10502.2', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18902', '城中区', '10502.1', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18901', '柳州市', '10502', 'nativeplace', '10502', '1');
INSERT INTO `dede_sys_enum` VALUES ('18900', '横　县', '10501.12', 'nativeplace', '10501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18899', '宾阳县', '10501.11', 'nativeplace', '10501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18898', '上林县', '10501.10', 'nativeplace', '10501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18897', '马山县', '10501.9', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18896', '隆安县', '10501.8', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18895', '武鸣县', '10501.7', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18894', '邕宁区', '10501.6', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18893', '良庆区', '10501.5', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18892', '西乡塘区', '10501.4', 'nativeplace', '10501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18891', '江南区', '10501.3', 'nativeplace', '10501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18890', '青秀区', '10501.2', 'nativeplace', '10501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18889', '兴宁区', '10501.1', 'nativeplace', '10501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18888', '南宁市', '10501', 'nativeplace', '10501', '1');
INSERT INTO `dede_sys_enum` VALUES ('18887', '广西壮族自治区', '10500', 'nativeplace', '10500', '0');
INSERT INTO `dede_sys_enum` VALUES ('18886', '罗定市', '10021.5', 'nativeplace', '10022', '2');
INSERT INTO `dede_sys_enum` VALUES ('18885', '云安县', '10021.4', 'nativeplace', '10021', '2');
INSERT INTO `dede_sys_enum` VALUES ('18884', '郁南县', '10021.3', 'nativeplace', '10021', '2');
INSERT INTO `dede_sys_enum` VALUES ('18883', '新兴县', '10021.2', 'nativeplace', '10021', '2');
INSERT INTO `dede_sys_enum` VALUES ('18882', '云城区', '10021.1', 'nativeplace', '10021', '2');
INSERT INTO `dede_sys_enum` VALUES ('18881', '云浮市', '10021', 'nativeplace', '10021', '1');
INSERT INTO `dede_sys_enum` VALUES ('18880', '普宁市', '10020.5', 'nativeplace', '10021', '2');
INSERT INTO `dede_sys_enum` VALUES ('18879', '惠来县', '10020.4', 'nativeplace', '10020', '2');
INSERT INTO `dede_sys_enum` VALUES ('18878', '揭西县', '10020.3', 'nativeplace', '10020', '2');
INSERT INTO `dede_sys_enum` VALUES ('18877', '揭东县', '10020.2', 'nativeplace', '10020', '2');
INSERT INTO `dede_sys_enum` VALUES ('18876', '榕城区', '10020.1', 'nativeplace', '10020', '2');
INSERT INTO `dede_sys_enum` VALUES ('18875', '揭阳市', '10020', 'nativeplace', '10020', '1');
INSERT INTO `dede_sys_enum` VALUES ('18874', '饶平县', '10019.2', 'nativeplace', '10019', '2');
INSERT INTO `dede_sys_enum` VALUES ('18873', '潮安县', '10019.1', 'nativeplace', '10019', '2');
INSERT INTO `dede_sys_enum` VALUES ('18872', '潮州市', '10019', 'nativeplace', '10019', '1');
INSERT INTO `dede_sys_enum` VALUES ('18871', '中山市', '10018', 'nativeplace', '10018', '1');
INSERT INTO `dede_sys_enum` VALUES ('18870', '东莞市', '10017', 'nativeplace', '10017', '1');
INSERT INTO `dede_sys_enum` VALUES ('18869', '连州市', '10016.8', 'nativeplace', '10017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18868', '英德市', '10016.7', 'nativeplace', '10017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18867', '清新县', '10016.6', 'nativeplace', '10017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18866', '连南瑶族自治县', '10016.5', 'nativeplace', '10017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18865', '连山壮族瑶族自治县', '10016.4', 'nativeplace', '10016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18864', '阳山县', '10016.3', 'nativeplace', '10016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18863', '佛冈县', '10016.2', 'nativeplace', '10016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18862', '清城区', '10016.1', 'nativeplace', '10016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18861', '清远市', '10016', 'nativeplace', '10016', '1');
INSERT INTO `dede_sys_enum` VALUES ('18860', '阳春市', '10015.4', 'nativeplace', '10015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18859', '阳东县', '10015.3', 'nativeplace', '10015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18858', '阳西县', '10015.2', 'nativeplace', '10015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18857', '江城区', '10015.1', 'nativeplace', '10015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18856', '阳江市', '10015', 'nativeplace', '10015', '1');
INSERT INTO `dede_sys_enum` VALUES ('18855', '东源县', '10014.6', 'nativeplace', '10015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18854', '和平县', '10014.5', 'nativeplace', '10015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18853', '连平县', '10014.4', 'nativeplace', '10014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18852', '龙川县', '10014.3', 'nativeplace', '10014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18851', '紫金县', '10014.2', 'nativeplace', '10014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18850', '源城区', '10014.1', 'nativeplace', '10014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18849', '河源市', '10014', 'nativeplace', '10014', '1');
INSERT INTO `dede_sys_enum` VALUES ('18848', '陆丰市', '10013.4', 'nativeplace', '10013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18847', '陆河县', '10013.3', 'nativeplace', '10013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18846', '海丰县', '10013.2', 'nativeplace', '10013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18845', '城　区', '10013.1', 'nativeplace', '10013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18844', '汕尾市', '10013', 'nativeplace', '10013', '1');
INSERT INTO `dede_sys_enum` VALUES ('18843', '兴宁市', '10012.8', 'nativeplace', '10013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18842', '蕉岭县', '10012.7', 'nativeplace', '10013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18841', '平远县', '10012.6', 'nativeplace', '10013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18840', '五华县', '10012.5', 'nativeplace', '10013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18839', '丰顺县', '10012.4', 'nativeplace', '10012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18838', '大埔县', '10012.3', 'nativeplace', '10012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18837', '梅　县', '10012.2', 'nativeplace', '10012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18836', '梅江区', '10012.1', 'nativeplace', '10012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18835', '梅州市', '10012', 'nativeplace', '10012', '1');
INSERT INTO `dede_sys_enum` VALUES ('18834', '龙门县', '10011.5', 'nativeplace', '10012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18833', '惠东县', '10011.4', 'nativeplace', '10011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18832', '博罗县', '10011.3', 'nativeplace', '10011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18831', '惠阳区', '10011.2', 'nativeplace', '10011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18830', '惠城区', '10011.1', 'nativeplace', '10011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18829', '惠州市', '10011', 'nativeplace', '10011', '1');
INSERT INTO `dede_sys_enum` VALUES ('18828', '四会市', '10010.8', 'nativeplace', '10011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18827', '高要市', '10010.7', 'nativeplace', '10011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18826', '德庆县', '10010.6', 'nativeplace', '10011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18825', '封开县', '10010.5', 'nativeplace', '10011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18824', '怀集县', '10010.4', 'nativeplace', '10010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18823', '广宁县', '10010.3', 'nativeplace', '10010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18822', '鼎湖区', '10010.2', 'nativeplace', '10010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18821', '端州区', '10010.1', 'nativeplace', '10010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18820', '肇庆市', '10010', 'nativeplace', '10010', '1');
INSERT INTO `dede_sys_enum` VALUES ('18819', '信宜市', '10009.6', 'nativeplace', '10010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18818', '化州市', '10009.5', 'nativeplace', '10010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18817', '高州市', '10009.4', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18816', '电白县', '10009.3', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18815', '茂港区', '10009.2', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18814', '茂南区', '10009.1', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18813', '茂名市', '10009', 'nativeplace', '10009', '1');
INSERT INTO `dede_sys_enum` VALUES ('18812', '吴川市', '10008.9', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18811', '雷州市', '10008.8', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18810', '廉江市', '10008.7', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18809', '徐闻县', '10008.6', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18808', '遂溪县', '10008.5', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18807', '麻章区', '10008.4', 'nativeplace', '10008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18806', '坡头区', '10008.3', 'nativeplace', '10008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18805', '霞山区', '10008.2', 'nativeplace', '10008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18804', '赤坎区', '10008.1', 'nativeplace', '10008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18803', '湛江市', '10008', 'nativeplace', '10008', '1');
INSERT INTO `dede_sys_enum` VALUES ('18802', '恩平市', '10007.7', 'nativeplace', '10008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18801', '鹤山市', '10007.6', 'nativeplace', '10008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18800', '开平市', '10007.5', 'nativeplace', '10008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18799', '台山市', '10007.4', 'nativeplace', '10007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18798', '新会区', '10007.3', 'nativeplace', '10007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18797', '江海区', '10007.2', 'nativeplace', '10007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18796', '蓬江区', '10007.1', 'nativeplace', '10007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18795', '江门市', '10007', 'nativeplace', '10007', '1');
INSERT INTO `dede_sys_enum` VALUES ('18794', '高明区', '10006.5', 'nativeplace', '10007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18793', '三水区', '10006.4', 'nativeplace', '10006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18792', '顺德区', '10006.3', 'nativeplace', '10006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18791', '南海区', '10006.2', 'nativeplace', '10006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18790', '禅城区', '10006.1', 'nativeplace', '10006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18789', '佛山市', '10006', 'nativeplace', '10006', '1');
INSERT INTO `dede_sys_enum` VALUES ('18788', '南澳县', '10005.7', 'nativeplace', '10006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18787', '澄海区', '10005.6', 'nativeplace', '10006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18786', '潮南区', '10005.5', 'nativeplace', '10006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18785', '潮阳区', '10005.4', 'nativeplace', '10005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18784', '濠江区', '10005.3', 'nativeplace', '10005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18783', '金平区', '10005.2', 'nativeplace', '10005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18782', '龙湖区', '10005.1', 'nativeplace', '10005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18781', '汕头市', '10005', 'nativeplace', '10005', '1');
INSERT INTO `dede_sys_enum` VALUES ('18780', '金湾区', '10004.3', 'nativeplace', '10004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18779', '斗门区', '10004.2', 'nativeplace', '10004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18778', '洲区', '10004.1', 'nativeplace', '10004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18777', '珠海市', '10004', 'nativeplace', '10004', '1');
INSERT INTO `dede_sys_enum` VALUES ('18776', '盐田区', '10003.6', 'nativeplace', '10004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18775', '龙岗区', '10003.5', 'nativeplace', '10004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18774', '宝安区', '10003.4', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18773', '南山区', '10003.3', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18772', '福田区', '10003.2', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18771', '罗湖区', '10003.1', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18770', '深圳市', '10003', 'nativeplace', '10003', '1');
INSERT INTO `dede_sys_enum` VALUES ('18769', '南雄市', '10002.10', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18768', '乐昌市', '10002.9', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18767', '新丰县', '10002.8', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18766', '乳源瑶族自治县', '10002.7', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18765', '翁源县', '10002.6', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18764', '仁化县', '10002.5', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18763', '始兴县', '10002.4', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18762', '曲江区', '10002.3', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18761', '浈江区', '10002.2', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18760', '武江区', '10002.1', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18759', '韶关市', '10002', 'nativeplace', '10002', '1');
INSERT INTO `dede_sys_enum` VALUES ('18758', '从化市', '10001.12', 'nativeplace', '10001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18757', '增城市', '10001.11', 'nativeplace', '10001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18756', '花都区', '10001.10', 'nativeplace', '10001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18755', '番禺区', '10001.9', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18754', '黄埔区', '10001.8', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18753', '白云区', '10001.7', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18752', '芳村区', '10001.6', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18751', '天河区', '10001.5', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18750', '海珠区', '10001.4', 'nativeplace', '10001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18749', '越秀区', '10001.3', 'nativeplace', '10001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18748', '荔湾区', '10001.2', 'nativeplace', '10001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18747', '东山区', '10001.1', 'nativeplace', '10001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18746', '广州市', '10001', 'nativeplace', '10001', '1');
INSERT INTO `dede_sys_enum` VALUES ('18745', '广东省', '10000', 'nativeplace', '10000', '0');
INSERT INTO `dede_sys_enum` VALUES ('18744', '龙山县', '9514.8', 'nativeplace', '9515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18743', '永顺县', '9514.7', 'nativeplace', '9515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18742', '古丈县', '9514.6', 'nativeplace', '9515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18741', '保靖县', '9514.5', 'nativeplace', '9515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18740', '花垣县', '9514.4', 'nativeplace', '9514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18739', '凤凰县', '9514.3', 'nativeplace', '9514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18738', '泸溪县', '9514.2', 'nativeplace', '9514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18737', '吉首市', '9514.1', 'nativeplace', '9514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18736', '湘西土家族苗族自治州', '9514', 'nativeplace', '9514', '1');
INSERT INTO `dede_sys_enum` VALUES ('18735', '涟源市', '9513.5', 'nativeplace', '9514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18734', '冷水江市', '9513.4', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18733', '新化县', '9513.3', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18732', '双峰县', '9513.2', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18731', '娄星区', '9513.1', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18730', '娄底市', '9513', 'nativeplace', '9513', '1');
INSERT INTO `dede_sys_enum` VALUES ('18729', '洪江市', '9512.12', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18728', '通道侗族自治县', '9512.11', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18727', '靖州苗族侗族自治县', '9512.10', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18726', '芷江侗族自治县', '9512.9', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18725', '新晃侗族自治县', '9512.8', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18724', '麻阳苗族自治县', '9512.7', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18723', '会同县', '9512.6', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18722', '溆浦县', '9512.5', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18721', '辰溪县', '9512.4', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18720', '沅陵县', '9512.3', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18719', '中方县', '9512.2', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18718', '鹤城区', '9512.1', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18717', '怀化市', '9512', 'nativeplace', '9512', '1');
INSERT INTO `dede_sys_enum` VALUES ('18716', '江华瑶族自治县', '9511.11', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18715', '新田县', '9511.10', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18714', '蓝山县', '9511.9', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18713', '宁远县', '9511.8', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18712', '江永县', '9511.7', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18711', '道　县', '9511.6', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18710', '双牌县', '9511.5', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18709', '东安县', '9511.4', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18708', '祁阳县', '9511.3', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18707', '冷水滩区', '9511.2', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18706', '芝山区', '9511.1', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18705', '永州市', '9511', 'nativeplace', '9511', '1');
INSERT INTO `dede_sys_enum` VALUES ('18704', '资兴市', '9510.11', 'nativeplace', '9510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18703', '安仁县', '9510.10', 'nativeplace', '9510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18702', '桂东县', '9510.9', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18701', '汝城县', '9510.8', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18700', '临武县', '9510.7', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18699', '嘉禾县', '9510.6', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18698', '永兴县', '9510.5', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18697', '宜章县', '9510.4', 'nativeplace', '9510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18696', '桂阳县', '9510.3', 'nativeplace', '9510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18695', '苏仙区', '9510.2', 'nativeplace', '9510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18694', '北湖区', '9510.1', 'nativeplace', '9510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18693', '郴州市', '9510', 'nativeplace', '9510', '1');
INSERT INTO `dede_sys_enum` VALUES ('18692', '沅江市', '9509.6', 'nativeplace', '9510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18691', '安化县', '9509.5', 'nativeplace', '9510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18690', '桃江县', '9509.4', 'nativeplace', '9509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18689', '南　县', '9509.3', 'nativeplace', '9509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18688', '赫山区', '9509.2', 'nativeplace', '9509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18687', '资阳区', '9509.1', 'nativeplace', '9509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18686', '益阳市', '9509', 'nativeplace', '9509', '1');
INSERT INTO `dede_sys_enum` VALUES ('18685', '桑植县', '9508.4', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18684', '慈利县', '9508.3', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18683', '武陵源区', '9508.2', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18682', '永定区', '9508.1', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18681', '张家界市', '9508', 'nativeplace', '9508', '1');
INSERT INTO `dede_sys_enum` VALUES ('18680', '津市市', '9507.9', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18679', '石门县', '9507.8', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18678', '桃源县', '9507.7', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18677', '临澧县', '9507.6', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18676', '澧　县', '9507.5', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18675', '汉寿县', '9507.4', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18674', '安乡县', '9507.3', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18673', '鼎城区', '9507.2', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18672', '武陵区', '9507.1', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18671', '常德市', '9507', 'nativeplace', '9507', '1');
INSERT INTO `dede_sys_enum` VALUES ('18670', '临湘市', '9506.9', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18669', '汨罗市', '9506.8', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18668', '平江县', '9506.7', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18667', '湘阴县', '9506.6', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18666', '华容县', '9506.5', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18665', '岳阳县', '9506.4', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18664', '君山区', '9506.3', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18663', '云溪区', '9506.2', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18662', '岳阳楼区', '9506.1', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18661', '岳阳市', '9506', 'nativeplace', '9506', '1');
INSERT INTO `dede_sys_enum` VALUES ('18660', '武冈市', '9505.12', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18659', '城步苗族自治县', '9505.11', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18658', '新宁县', '9505.10', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18657', '绥宁县', '9505.9', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18656', '洞口县', '9505.8', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18655', '隆回县', '9505.7', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18654', '邵阳县', '9505.6', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18653', '新邵县', '9505.5', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18652', '邵东县', '9505.4', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18651', '北塔区', '9505.3', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18650', '大祥区', '9505.2', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18649', '双清区', '9505.1', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18648', '邵阳市', '9505', 'nativeplace', '9505', '1');
INSERT INTO `dede_sys_enum` VALUES ('18647', '常宁市', '9504.12', 'nativeplace', '9504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18646', '耒阳市', '9504.11', 'nativeplace', '9504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18645', '祁东县', '9504.10', 'nativeplace', '9504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18644', '衡东县', '9504.9', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18643', '衡山县', '9504.8', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18642', '衡南县', '9504.7', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18641', '衡阳县', '9504.6', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18640', '南岳区', '9504.5', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18639', '蒸湘区', '9504.4', 'nativeplace', '9504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18638', '石鼓区', '9504.3', 'nativeplace', '9504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18637', '雁峰区', '9504.2', 'nativeplace', '9504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18636', '珠晖区', '9504.1', 'nativeplace', '9504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18635', '衡阳市', '9504', 'nativeplace', '9504', '1');
INSERT INTO `dede_sys_enum` VALUES ('18634', '韶山市', '9503.5', 'nativeplace', '9504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18633', '湘乡市', '9503.4', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18632', '湘潭县', '9503.3', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18631', '岳塘区', '9503.2', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18630', '雨湖区', '9503.1', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18629', '湘潭市', '9503', 'nativeplace', '9503', '1');
INSERT INTO `dede_sys_enum` VALUES ('18628', '醴陵市', '9502.9', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18627', '炎陵县', '9502.8', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18626', '茶陵县', '9502.7', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18625', '攸　县', '9502.6', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18624', '株洲县', '9502.5', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18623', '天元区', '9502.4', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18622', '石峰区', '9502.3', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18621', '芦淞区', '9502.2', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18620', '荷塘区', '9502.1', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18619', '株洲市', '9502', 'nativeplace', '9502', '1');
INSERT INTO `dede_sys_enum` VALUES ('18618', '浏阳市', '9501.9', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18617', '宁乡县', '9501.8', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18616', '望城县', '9501.7', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18615', '长沙县', '9501.6', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18614', '雨花区', '9501.5', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18613', '开福区', '9501.4', 'nativeplace', '9501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18612', '岳麓区', '9501.3', 'nativeplace', '9501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18611', '天心区', '9501.2', 'nativeplace', '9501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18610', '芙蓉区', '9501.1', 'nativeplace', '9501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18609', '长沙市', '9501', 'nativeplace', '9501', '1');
INSERT INTO `dede_sys_enum` VALUES ('18608', '湖南省', '9500', 'nativeplace', '9500', '0');
INSERT INTO `dede_sys_enum` VALUES ('18607', '神农架林区', '9014.4', 'nativeplace', '9014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18606', '天门市', '9014.3', 'nativeplace', '9014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18605', '潜江市', '9014.2', 'nativeplace', '9014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18604', '仙桃市', '9014.1', 'nativeplace', '9014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18603', '省直辖行政单位', '9014', 'nativeplace', '9014', '1');
INSERT INTO `dede_sys_enum` VALUES ('18602', '鹤峰县', '9013.8', 'nativeplace', '9014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18601', '来凤县', '9013.7', 'nativeplace', '9014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18600', '咸丰县', '9013.6', 'nativeplace', '9014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18599', '宣恩县', '9013.5', 'nativeplace', '9014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18598', '巴东县', '9013.4', 'nativeplace', '9013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18597', '建始县', '9013.3', 'nativeplace', '9013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18596', '利川市', '9013.2', 'nativeplace', '9013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18595', '恩施市', '9013.1', 'nativeplace', '9013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18594', '恩施土家族苗族自治州', '9013', 'nativeplace', '9013', '1');
INSERT INTO `dede_sys_enum` VALUES ('18593', '广水市', '9012.2', 'nativeplace', '9012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18592', '曾都区', '9012.1', 'nativeplace', '9012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18591', '随州市', '9012', 'nativeplace', '9012', '1');
INSERT INTO `dede_sys_enum` VALUES ('18590', '赤壁市', '9011.6', 'nativeplace', '9012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18589', '通山县', '9011.5', 'nativeplace', '9012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18588', '崇阳县', '9011.4', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18587', '通城县', '9011.3', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18586', '嘉鱼县', '9011.2', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18585', '咸安区', '9011.1', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18584', '咸宁市', '9011', 'nativeplace', '9011', '1');
INSERT INTO `dede_sys_enum` VALUES ('18583', '武穴市', '9010.10', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18582', '麻城市', '9010.9', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18581', '黄梅县', '9010.8', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18580', '蕲春县', '9010.7', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18579', '浠水县', '9010.6', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18578', '英山县', '9010.5', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18577', '罗田县', '9010.4', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18576', '红安县', '9010.3', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18575', '团风县', '9010.2', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18574', '州区', '9010.1', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18573', '黄冈市', '9010', 'nativeplace', '9010', '1');
INSERT INTO `dede_sys_enum` VALUES ('18572', '松滋市', '9009.8', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18571', '洪湖市', '9009.7', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18570', '石首市', '9009.6', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18569', '江陵县', '9009.5', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18568', '监利县', '9009.4', 'nativeplace', '9009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18567', '公安县', '9009.3', 'nativeplace', '9009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18566', '荆州区', '9009.2', 'nativeplace', '9009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18565', '沙市区', '9009.1', 'nativeplace', '9009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18564', '荆州市', '9009', 'nativeplace', '9009', '1');
INSERT INTO `dede_sys_enum` VALUES ('18563', '汉川市', '9008.7', 'nativeplace', '9009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18562', '孝南区', '9008.6', 'nativeplace', '9009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18561', '孝昌县', '9008.5', 'nativeplace', '9009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18560', '大悟县', '9008.4', 'nativeplace', '9008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18559', '云梦县', '9008.3', 'nativeplace', '9008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18558', '应城市', '9008.2', 'nativeplace', '9008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18557', '安陆市', '9008.1', 'nativeplace', '9008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18556', '孝感市', '9008', 'nativeplace', '9008', '1');
INSERT INTO `dede_sys_enum` VALUES ('18555', '东宝区', '9007.5', 'nativeplace', '9008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18554', '掇刀区', '9007.4', 'nativeplace', '9007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18553', '京山县', '9007.3', 'nativeplace', '9007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18552', '沙洋县', '9007.2', 'nativeplace', '9007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18551', '钟祥市', '9007.1', 'nativeplace', '9007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18550', '荆门市', '9007', 'nativeplace', '9007', '1');
INSERT INTO `dede_sys_enum` VALUES ('18549', '鄂城区', '9006.3', 'nativeplace', '9006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18548', '华容区', '9006.2', 'nativeplace', '9006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18547', '梁子湖区', '9006.1', 'nativeplace', '9006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18546', '鄂州市', '9006', 'nativeplace', '9006', '1');
INSERT INTO `dede_sys_enum` VALUES ('18545', '宜城市', '9005.9', 'nativeplace', '9006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18544', '枣阳市', '9005.8', 'nativeplace', '9006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18543', '老河口市', '9005.7', 'nativeplace', '9006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18542', '保康县', '9005.6', 'nativeplace', '9006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18541', '谷城县', '9005.5', 'nativeplace', '9006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18540', '南漳县', '9005.4', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18539', '襄阳区', '9005.3', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18538', '樊城区', '9005.2', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18537', '襄城区', '9005.1', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18536', '襄樊市', '9005', 'nativeplace', '9005', '1');
INSERT INTO `dede_sys_enum` VALUES ('18535', '枝江市', '9004.13', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18534', '当阳市', '9004.12', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18533', '宜都市', '9004.11', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18532', '五峰土家族自治县', '9004.10', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18531', '长阳土家族自治县', '9004.9', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18530', '秭归县', '9004.8', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18529', '兴山县', '9004.7', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18528', '远安县', '9004.6', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18527', '夷陵区', '9004.5', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18526', '?亭区', '9004.4', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18525', '点军区', '9004.3', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18524', '伍家岗区', '9004.2', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18523', '西陵区', '9004.1', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18522', '宜昌市', '9004', 'nativeplace', '9004', '1');
INSERT INTO `dede_sys_enum` VALUES ('18521', '丹江口市', '9003.8', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18520', '房　县', '9003.7', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18519', '竹溪县', '9003.6', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18518', '竹山县', '9003.5', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18517', '郧西县', '9003.4', 'nativeplace', '9003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18516', '郧　县', '9003.3', 'nativeplace', '9003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18515', '张湾区', '9003.2', 'nativeplace', '9003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18514', '茅箭区', '9003.1', 'nativeplace', '9003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18513', '十堰市', '9003', 'nativeplace', '9003', '1');
INSERT INTO `dede_sys_enum` VALUES ('18512', '大冶市', '9002.6', 'nativeplace', '9003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18511', '阳新县', '9002.5', 'nativeplace', '9003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18510', '铁山区', '9002.4', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18509', '下陆区', '9002.3', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18508', '西塞山区', '9002.2', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18507', '黄石港区', '9002.1', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18506', '黄石市', '9002', 'nativeplace', '9002', '1');
INSERT INTO `dede_sys_enum` VALUES ('18505', '新洲区', '9001.13', 'nativeplace', '9001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18504', '黄陂区', '9001.12', 'nativeplace', '9001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18503', '江夏区', '9001.11', 'nativeplace', '9001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18502', '蔡甸区', '9001.10', 'nativeplace', '9001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18501', '汉南区', '9001.9', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18500', '东西湖区', '9001.8', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18499', '洪山区', '9001.7', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18498', '青山区', '9001.6', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18497', '武昌区', '9001.5', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18496', '汉阳区', '9001.4', 'nativeplace', '9001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18495', '乔口区', '9001.3', 'nativeplace', '9001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18494', '江汉区', '9001.2', 'nativeplace', '9001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18493', '江岸区', '9001.1', 'nativeplace', '9001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18492', '武汉市', '9001', 'nativeplace', '9001', '1');
INSERT INTO `dede_sys_enum` VALUES ('18491', '湖北省', '9000', 'nativeplace', '9000', '0');
INSERT INTO `dede_sys_enum` VALUES ('18490', '新蔡县', '8517.10', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18489', '遂平县', '8517.9', 'nativeplace', '8518', '2');
INSERT INTO `dede_sys_enum` VALUES ('18488', '汝南县', '8517.8', 'nativeplace', '8518', '2');
INSERT INTO `dede_sys_enum` VALUES ('18487', '泌阳县', '8517.7', 'nativeplace', '8518', '2');
INSERT INTO `dede_sys_enum` VALUES ('18486', '确山县', '8517.6', 'nativeplace', '8518', '2');
INSERT INTO `dede_sys_enum` VALUES ('18485', '正阳县', '8517.5', 'nativeplace', '8518', '2');
INSERT INTO `dede_sys_enum` VALUES ('18484', '平舆县', '8517.4', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18483', '上蔡县', '8517.3', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18482', '西平县', '8517.2', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18481', '驿城区', '8517.1', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18480', '驻马店市', '8517', 'nativeplace', '8517', '1');
INSERT INTO `dede_sys_enum` VALUES ('18479', '项城市', '8516.10', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18478', '鹿邑县', '8516.9', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18477', '太康县', '8516.8', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18476', '淮阳县', '8516.7', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18475', '郸城县', '8516.6', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18474', '沈丘县', '8516.5', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18473', '商水县', '8516.4', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18472', '西华县', '8516.3', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18471', '扶沟县', '8516.2', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18470', '川汇区', '8516.1', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18469', '周口市', '8516', 'nativeplace', '8516', '1');
INSERT INTO `dede_sys_enum` VALUES ('18468', '息　县', '8515.10', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18467', '淮滨县', '8515.9', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18466', '潢川县', '8515.8', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18465', '固始县', '8515.7', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18464', '商城县', '8515.6', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18463', '新　县', '8515.5', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18462', '光山县', '8515.4', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18461', '罗山县', '8515.3', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18460', '平桥区', '8515.2', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18459', '师河区', '8515.1', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18458', '信阳市', '8515', 'nativeplace', '8515', '1');
INSERT INTO `dede_sys_enum` VALUES ('18457', '永城市', '8514.9', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18456', '夏邑县', '8514.8', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18455', '虞城县', '8514.7', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18454', '柘城县', '8514.6', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18453', '宁陵县', '8514.5', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18452', '睢　县', '8514.4', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18451', '民权县', '8514.3', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18450', '睢阳区', '8514.2', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18449', '梁园区', '8514.1', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18448', '商丘市', '8514', 'nativeplace', '8514', '1');
INSERT INTO `dede_sys_enum` VALUES ('18447', '邓州市', '8513.13', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18446', '桐柏县', '8513.12', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18445', '新野县', '8513.11', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18444', '唐河县', '8513.10', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18443', '社旗县', '8513.9', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18442', '淅川县', '8513.8', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18441', '内乡县', '8513.7', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18440', '镇平县', '8513.6', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18439', '西峡县', '8513.5', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18438', '方城县', '8513.4', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18437', '南召县', '8513.3', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18436', '卧龙区', '8513.2', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18435', '宛城区', '8513.1', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18434', '南阳市', '8513', 'nativeplace', '8513', '1');
INSERT INTO `dede_sys_enum` VALUES ('18433', '灵宝市', '8512.6', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18432', '义马市', '8512.5', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18431', '卢氏县', '8512.4', 'nativeplace', '8512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18430', '陕　县', '8512.3', 'nativeplace', '8512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18429', '渑池县', '8512.2', 'nativeplace', '8512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18428', '湖滨区', '8512.1', 'nativeplace', '8512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18427', '三门峡市', '8512', 'nativeplace', '8512', '1');
INSERT INTO `dede_sys_enum` VALUES ('18426', '临颍县', '8511.5', 'nativeplace', '8512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18425', '舞阳县', '8511.4', 'nativeplace', '8511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18424', '召陵区', '8511.3', 'nativeplace', '8511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18423', '郾城区', '8511.2', 'nativeplace', '8511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18422', '源汇区', '8511.1', 'nativeplace', '8511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18421', '漯河市', '8511', 'nativeplace', '8511', '1');
INSERT INTO `dede_sys_enum` VALUES ('18420', '长葛市', '8510.6', 'nativeplace', '8511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18419', '禹州市', '8510.5', 'nativeplace', '8511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18418', '襄城县', '8510.4', 'nativeplace', '8510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18417', '鄢陵县', '8510.3', 'nativeplace', '8510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18416', '许昌县', '8510.2', 'nativeplace', '8510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18415', '魏都区', '8510.1', 'nativeplace', '8510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18414', '许昌市', '8510', 'nativeplace', '8510', '1');
INSERT INTO `dede_sys_enum` VALUES ('18413', '濮阳县', '8509.6', 'nativeplace', '8510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18412', '台前县', '8509.5', 'nativeplace', '8510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18411', '范　县', '8509.4', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18410', '南乐县', '8509.3', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18409', '清丰县', '8509.2', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18408', '华龙区', '8509.1', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18407', '濮阳市', '8509', 'nativeplace', '8509', '1');
INSERT INTO `dede_sys_enum` VALUES ('18406', '孟州市', '8508.11', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18405', '沁阳市', '8508.10', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18404', '济源市', '8508.9', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18403', '温　县', '8508.8', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18402', '武陟县', '8508.7', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18401', '博爱县', '8508.6', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18400', '修武县', '8508.5', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18399', '山阳区', '8508.4', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18398', '马村区', '8508.3', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18397', '中站区', '8508.2', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18396', '解放区', '8508.1', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18395', '焦作市', '8508', 'nativeplace', '8508', '1');
INSERT INTO `dede_sys_enum` VALUES ('18394', '辉县市', '8507.12', 'nativeplace', '8507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18393', '卫辉市', '8507.11', 'nativeplace', '8507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18392', '长垣县', '8507.10', 'nativeplace', '8507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18391', '封丘县', '8507.9', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18390', '延津县', '8507.8', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18389', '原阳县', '8507.7', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18388', '获嘉县', '8507.6', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18387', '新乡县', '8507.5', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18386', '牧野区', '8507.4', 'nativeplace', '8507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18385', '凤泉区', '8507.3', 'nativeplace', '8507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18384', '卫滨区', '8507.2', 'nativeplace', '8507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18383', '红旗区', '8507.1', 'nativeplace', '8507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18382', '新乡市', '8507', 'nativeplace', '8507', '1');
INSERT INTO `dede_sys_enum` VALUES ('18381', '淇　县', '8506.5', 'nativeplace', '8507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18380', '浚　县', '8506.4', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18379', '淇滨区', '8506.3', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18378', '山城区', '8506.2', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18377', '鹤山区', '8506.1', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18376', '鹤壁市', '8506', 'nativeplace', '8506', '1');
INSERT INTO `dede_sys_enum` VALUES ('18375', '林州市', '8505.9', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18374', '内黄县', '8505.8', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18373', '滑　县', '8505.7', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18372', '汤阴县', '8505.6', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18371', '安阳县', '8505.5', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18370', '龙安区', '8505.4', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18369', '殷都区', '8505.3', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18368', '北关区', '8505.2', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18367', '文峰区', '8505.1', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18366', '安阳市', '8505', 'nativeplace', '8505', '1');
INSERT INTO `dede_sys_enum` VALUES ('18365', '汝州市', '8504.10', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18364', '舞钢市', '8504.9', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18363', '郏　县', '8504.8', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18362', '鲁山县', '8504.7', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18361', '叶　县', '8504.6', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18360', '宝丰县', '8504.5', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18359', '湛河区', '8504.4', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18358', '石龙区', '8504.3', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18357', '卫东区', '8504.2', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18356', '新华区', '8504.1', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18355', '平顶山市', '8504', 'nativeplace', '8504', '1');
INSERT INTO `dede_sys_enum` VALUES ('18354', '偃师市', '8503.15', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18353', '伊川县', '8503.14', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18352', '洛宁县', '8503.13', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18351', '宜阳县', '8503.12', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18350', '汝阳县', '8503.11', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18349', '嵩　县', '8503.10', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18348', '栾川县', '8503.9', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18347', '新安县', '8503.8', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18346', '孟津县', '8503.7', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18345', '洛龙区', '8503.6', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18344', '吉利区', '8503.5', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18343', '涧西区', '8503.4', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18342', '廛河回族区', '8503.3', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18341', '西工区', '8503.2', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18340', '老城区', '8503.1', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18339', '洛阳市', '8503', 'nativeplace', '8503', '1');
INSERT INTO `dede_sys_enum` VALUES ('18338', '兰考县', '8502.10', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18337', '开封县', '8502.9', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18336', '尉氏县', '8502.8', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18335', '通许县', '8502.7', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18334', '杞　县', '8502.6', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18333', '郊　区', '8502.5', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18332', '南关区', '8502.4', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18331', '鼓楼区', '8502.3', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18330', '顺河回族区', '8502.2', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18329', '龙亭区', '8502.1', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18328', '开封市', '8502', 'nativeplace', '8502', '1');
INSERT INTO `dede_sys_enum` VALUES ('18327', '登封市', '8501.12', 'nativeplace', '8501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18326', '新郑市', '8501.11', 'nativeplace', '8501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18325', '新密市', '8501.10', 'nativeplace', '8501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18324', '荥阳市', '8501.9', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18323', '巩义市', '8501.8', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18322', '中牟县', '8501.7', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18321', '邙山区', '8501.6', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18320', '上街区', '8501.5', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18319', '金水区', '8501.4', 'nativeplace', '8501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18318', '管城回族区', '8501.3', 'nativeplace', '8501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18317', '二七区', '8501.2', 'nativeplace', '8501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18316', '中原区', '8501.1', 'nativeplace', '8501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18315', '郑州市', '8501', 'nativeplace', '8501', '1');
INSERT INTO `dede_sys_enum` VALUES ('18314', '河南省', '8500', 'nativeplace', '8500', '0');
INSERT INTO `dede_sys_enum` VALUES ('18313', '东明县', '8016.9', 'nativeplace', '8017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18312', '定陶县', '8016.8', 'nativeplace', '8017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18311', '鄄城县', '8016.7', 'nativeplace', '8017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18310', '郓城县', '8016.6', 'nativeplace', '8017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18309', '巨野县', '8016.5', 'nativeplace', '8017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18308', '成武县', '8016.4', 'nativeplace', '8016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18307', '单　县', '8016.3', 'nativeplace', '8016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18306', '曹　县', '8016.2', 'nativeplace', '8016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18305', '牡丹区', '8016.1', 'nativeplace', '8016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18304', '荷泽市', '8016', 'nativeplace', '8016', '1');
INSERT INTO `dede_sys_enum` VALUES ('18303', '邹平县', '8015.7', 'nativeplace', '8016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18302', '博兴县', '8015.6', 'nativeplace', '8016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18301', '沾化县', '8015.5', 'nativeplace', '8016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18300', '无棣县', '8015.4', 'nativeplace', '8015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18299', '阳信县', '8015.3', 'nativeplace', '8015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18298', '惠民县', '8015.2', 'nativeplace', '8015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18297', '滨城区', '8015.1', 'nativeplace', '8015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18296', '滨州市', '8015', 'nativeplace', '8015', '1');
INSERT INTO `dede_sys_enum` VALUES ('18295', '临清市', '8014.8', 'nativeplace', '8015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18294', '高唐县', '8014.7', 'nativeplace', '8015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18293', '冠　县', '8014.6', 'nativeplace', '8015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18292', '东阿县', '8014.5', 'nativeplace', '8015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18291', '茌平县', '8014.4', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18290', '莘　县', '8014.3', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18289', '阳谷县', '8014.2', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18288', '东昌府区', '8014.1', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18287', '聊城市', '8014', 'nativeplace', '8014', '1');
INSERT INTO `dede_sys_enum` VALUES ('18286', '禹城市', '8013.11', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18285', '乐陵市', '8013.10', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18284', '武城县', '8013.9', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18283', '夏津县', '8013.8', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18282', '平原县', '8013.7', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18281', '齐河县', '8013.6', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18280', '临邑县', '8013.5', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18279', '庆云县', '8013.4', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18278', '宁津县', '8013.3', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18277', '陵　县', '8013.2', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18276', '德城区', '8013.1', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18275', '德州市', '8013', 'nativeplace', '8013', '1');
INSERT INTO `dede_sys_enum` VALUES ('18274', '临沭县', '8012.12', 'nativeplace', '8012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18273', '蒙阴县', '8012.11', 'nativeplace', '8012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18272', '莒南县', '8012.10', 'nativeplace', '8012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18271', '平邑县', '8012.9', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18270', '费　县', '8012.8', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18269', '苍山县', '8012.7', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18268', '沂水县', '8012.6', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18267', '郯城县', '8012.5', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18266', '沂南县', '8012.4', 'nativeplace', '8012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18265', '河东区', '8012.3', 'nativeplace', '8012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18264', '罗庄区', '8012.2', 'nativeplace', '8012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18263', '兰山区', '8012.1', 'nativeplace', '8012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18262', '临沂市', '8012', 'nativeplace', '8012', '1');
INSERT INTO `dede_sys_enum` VALUES ('18261', '钢城区', '8011.2', 'nativeplace', '8011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18260', '莱城区', '8011.1', 'nativeplace', '8011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18259', '莱芜市', '8011', 'nativeplace', '8011', '1');
INSERT INTO `dede_sys_enum` VALUES ('18258', '莒　县', '8010.4', 'nativeplace', '8010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18257', '五莲县', '8010.3', 'nativeplace', '8010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18256', '岚山区', '8010.2', 'nativeplace', '8010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18255', '东港区', '8010.1', 'nativeplace', '8010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18254', '日照市', '8010', 'nativeplace', '8010', '1');
INSERT INTO `dede_sys_enum` VALUES ('18253', '乳山市', '8009.4', 'nativeplace', '8009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18252', '荣成市', '8009.3', 'nativeplace', '8009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18251', '文登市', '8009.2', 'nativeplace', '8009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18250', '环翠区', '8009.1', 'nativeplace', '8009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18249', '威海市', '8009', 'nativeplace', '8009', '1');
INSERT INTO `dede_sys_enum` VALUES ('18248', '肥城市', '8008.6', 'nativeplace', '8009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18247', '新泰市', '8008.5', 'nativeplace', '8009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18246', '东平县', '8008.4', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18245', '宁阳县', '8008.3', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18244', '岱岳区', '8008.2', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18243', '泰山区', '8008.1', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18242', '泰安市', '8008', 'nativeplace', '8008', '1');
INSERT INTO `dede_sys_enum` VALUES ('18241', '邹城市', '8007.12', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18240', '兖州市', '8007.11', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18239', '曲阜市', '8007.10', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18238', '梁山县', '8007.9', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18237', '泗水县', '8007.8', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18236', '汶上县', '8007.7', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18235', '嘉祥县', '8007.6', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18234', '金乡县', '8007.5', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18233', '鱼台县', '8007.4', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18232', '微山县', '8007.3', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18231', '任城区', '8007.2', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18230', '市中区', '8007.1', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18229', '济宁市', '8007', 'nativeplace', '8007', '1');
INSERT INTO `dede_sys_enum` VALUES ('18228', '昌邑市', '8006.12', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18227', '高密市', '8006.11', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18226', '安丘市', '8006.10', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18225', '寿光市', '8006.9', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18224', '诸城市', '8006.8', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18223', '青州市', '8006.7', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18222', '昌乐县', '8006.6', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18221', '临朐县', '8006.5', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18220', '奎文区', '8006.4', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18219', '坊子区', '8006.3', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18218', '寒亭区', '8006.2', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18217', '潍城区', '8006.1', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18216', '潍坊市', '8006', 'nativeplace', '8006', '1');
INSERT INTO `dede_sys_enum` VALUES ('18215', '海阳市', '8005.12', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18214', '栖霞市', '8005.11', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18213', '招远市', '8005.10', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18212', '蓬莱市', '8005.9', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18211', '莱州市', '8005.8', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18210', '莱阳市', '8005.7', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18209', '龙口市', '8005.6', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18208', '长岛县', '8005.5', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18207', '莱山区', '8005.4', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18206', '牟平区', '8005.3', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18205', '福山区', '8005.2', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18204', '芝罘区', '8005.1', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18203', '烟台市', '8005', 'nativeplace', '8005', '1');
INSERT INTO `dede_sys_enum` VALUES ('18202', '滕州市', '8004.6', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18201', '山亭区', '8004.5', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18200', '台儿庄区', '8004.4', 'nativeplace', '8004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18199', '峄城区', '8004.3', 'nativeplace', '8004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18198', '薛城区', '8004.2', 'nativeplace', '8004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18197', '市中区', '8004.1', 'nativeplace', '8004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18196', '枣庄市', '8004', 'nativeplace', '8004', '1');
INSERT INTO `dede_sys_enum` VALUES ('18195', '沂源县', '8003.8', 'nativeplace', '8004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18194', '高青县', '8003.7', 'nativeplace', '8004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18193', '桓台县', '8003.6', 'nativeplace', '8004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18192', '周村区', '8003.5', 'nativeplace', '8004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18191', '临淄区', '8003.4', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18190', '博山区', '8003.3', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18189', '张店区', '8003.2', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18188', '淄川区', '8003.1', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18187', '淄博市', '8003', 'nativeplace', '8003', '1');
INSERT INTO `dede_sys_enum` VALUES ('18186', '莱西市', '8002.12', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18185', '胶南市', '8002.11', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18184', '平度市', '8002.10', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18183', '即墨市', '8002.9', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18182', '胶州市', '8002.8', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18181', '城阳区', '8002.7', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18180', '李沧区', '8002.6', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18179', '崂山区', '8002.5', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18178', '黄岛区', '8002.4', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18177', '四方区', '8002.3', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18176', '市北区', '8002.2', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18175', '市南区', '8002.1', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18174', '青岛市', '8002', 'nativeplace', '8002', '1');
INSERT INTO `dede_sys_enum` VALUES ('18173', '章丘市', '8001.10', 'nativeplace', '8001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18172', '商河县', '8001.9', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18171', '济阳县', '8001.8', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18170', '平阴县', '8001.7', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18169', '长清区', '8001.6', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18168', '历城区', '8001.5', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18167', '天桥区', '8001.4', 'nativeplace', '8001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18166', '槐荫区', '8001.3', 'nativeplace', '8001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18165', '市中区', '8001.2', 'nativeplace', '8001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18164', '历下区', '8001.1', 'nativeplace', '8001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18163', '济南市', '8001', 'nativeplace', '8001', '1');
INSERT INTO `dede_sys_enum` VALUES ('18162', '山东省', '8000', 'nativeplace', '8000', '0');
INSERT INTO `dede_sys_enum` VALUES ('18161', '德兴市', '7511.12', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18160', '婺源县', '7511.11', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18159', '万年县', '7511.10', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18158', '鄱阳县', '7511.9', 'nativeplace', '7512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18157', '余干县', '7511.8', 'nativeplace', '7512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18156', '弋阳县', '7511.7', 'nativeplace', '7512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18155', '横峰县', '7511.6', 'nativeplace', '7512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18154', '铅山县', '7511.5', 'nativeplace', '7512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18153', '玉山县', '7511.4', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18152', '广丰县', '7511.3', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18151', '上饶县', '7511.2', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18150', '信州区', '7511.1', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18149', '上饶市', '7511', 'nativeplace', '7511', '1');
INSERT INTO `dede_sys_enum` VALUES ('18148', '广昌县', '7510.11', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18147', '东乡县', '7510.10', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18146', '资溪县', '7510.9', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18145', '金溪县', '7510.8', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18144', '宜黄县', '7510.7', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18143', '乐安县', '7510.6', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18142', '崇仁县', '7510.5', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18141', '南丰县', '7510.4', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18140', '黎川县', '7510.3', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18139', '南城县', '7510.2', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18138', '临川区', '7510.1', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18137', '抚州市', '7510', 'nativeplace', '7510', '1');
INSERT INTO `dede_sys_enum` VALUES ('18136', '高安市', '7509.10', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18135', '樟树市', '7509.9', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18134', '丰城市', '7509.8', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18133', '铜鼓县', '7509.7', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18132', '靖安县', '7509.6', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18131', '宜丰县', '7509.5', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18130', '上高县', '7509.4', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18129', '万载县', '7509.3', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18128', '奉新县', '7509.2', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18127', '袁州区', '7509.1', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18126', '宜春市', '7509', 'nativeplace', '7509', '1');
INSERT INTO `dede_sys_enum` VALUES ('18125', '井冈山市', '7508.13', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18124', '永新县', '7508.12', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18123', '安福县', '7508.11', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18122', '万安县', '7508.10', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18121', '遂川县', '7508.9', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18120', '泰和县', '7508.8', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18119', '永丰县', '7508.7', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18118', '新干县', '7508.6', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18117', '峡江县', '7508.5', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18116', '吉水县', '7508.4', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18115', '吉安县', '7508.3', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18114', '青原区', '7508.2', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18113', '吉州区', '7508.1', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18112', '吉安市', '7508', 'nativeplace', '7508', '1');
INSERT INTO `dede_sys_enum` VALUES ('18111', '南康市', '7507.18', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18110', '瑞金市', '7507.17', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18109', '石城县', '7507.16', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18108', '寻乌县', '7507.15', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18107', '会昌县', '7507.14', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18106', '兴国县', '7507.13', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18105', '于都县', '7507.12', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18104', '宁都县', '7507.11', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18103', '全南县', '7507.10', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18102', '定南县', '7507.9', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18101', '龙南县', '7507.8', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18100', '安远县', '7507.7', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18099', '崇义县', '7507.6', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18098', '上犹县', '7507.5', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18097', '大余县', '7507.4', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18096', '信丰县', '7507.3', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18095', '赣　县', '7507.2', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18094', '章贡区', '7507.1', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18093', '赣州市', '7507', 'nativeplace', '7507', '1');
INSERT INTO `dede_sys_enum` VALUES ('18092', '贵溪市', '7506.3', 'nativeplace', '7506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18091', '余江县', '7506.2', 'nativeplace', '7506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18090', '月湖区', '7506.1', 'nativeplace', '7506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18089', '鹰潭市', '7506', 'nativeplace', '7506', '1');
INSERT INTO `dede_sys_enum` VALUES ('18088', '分宜县', '7505.2', 'nativeplace', '7505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18087', '渝水区', '7505.1', 'nativeplace', '7505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18086', '新余市', '7505', 'nativeplace', '7505', '1');
INSERT INTO `dede_sys_enum` VALUES ('18085', '瑞昌市', '7504.12', 'nativeplace', '7504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18084', '彭泽县', '7504.11', 'nativeplace', '7504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18083', '湖口县', '7504.10', 'nativeplace', '7504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18082', '都昌县', '7504.9', 'nativeplace', '7505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18081', '星子县', '7504.8', 'nativeplace', '7505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18080', '德安县', '7504.7', 'nativeplace', '7505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18079', '永修县', '7504.6', 'nativeplace', '7505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18078', '修水县', '7504.5', 'nativeplace', '7505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18077', '武宁县', '7504.4', 'nativeplace', '7504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18076', '九江县', '7504.3', 'nativeplace', '7504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18075', '浔阳区', '7504.2', 'nativeplace', '7504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18074', '庐山区', '7504.1', 'nativeplace', '7504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18073', '九江市', '7504', 'nativeplace', '7504', '1');
INSERT INTO `dede_sys_enum` VALUES ('18072', '芦溪县', '7503.5', 'nativeplace', '7504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18071', '上栗县', '7503.4', 'nativeplace', '7503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18070', '莲花县', '7503.3', 'nativeplace', '7503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18069', '湘东区', '7503.2', 'nativeplace', '7503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18068', '安源区', '7503.1', 'nativeplace', '7503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18067', '萍乡市', '7503', 'nativeplace', '7503', '1');
INSERT INTO `dede_sys_enum` VALUES ('18066', '乐平市', '7502.4', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18065', '浮梁县', '7502.3', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18064', '珠山区', '7502.2', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18063', '昌江区', '7502.1', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18062', '景德镇市', '7502', 'nativeplace', '7502', '1');
INSERT INTO `dede_sys_enum` VALUES ('18061', '进贤县', '7501.9', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18060', '安义县', '7501.8', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18059', '新建县', '7501.7', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18058', '南昌县', '7501.6', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18057', '青山湖区', '7501.5', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18056', '湾里区', '7501.4', 'nativeplace', '7501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18055', '青云谱区', '7501.3', 'nativeplace', '7501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18054', '西湖区', '7501.2', 'nativeplace', '7501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18053', '东湖区', '7501.1', 'nativeplace', '7501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18052', '南昌市', '7501', 'nativeplace', '7501', '1');
INSERT INTO `dede_sys_enum` VALUES ('18051', '江西省', '7500', 'nativeplace', '7500', '0');
INSERT INTO `dede_sys_enum` VALUES ('18050', '福鼎市', '7009.9', 'nativeplace', '7010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18049', '福安市', '7009.8', 'nativeplace', '7010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18048', '柘荣县', '7009.7', 'nativeplace', '7010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18047', '周宁县', '7009.6', 'nativeplace', '7010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18046', '寿宁县', '7009.5', 'nativeplace', '7010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18045', '屏南县', '7009.4', 'nativeplace', '7009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18044', '古田县', '7009.3', 'nativeplace', '7009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18043', '霞浦县', '7009.2', 'nativeplace', '7009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18042', '蕉城区', '7009.1', 'nativeplace', '7009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18041', '宁德市', '7009', 'nativeplace', '7009', '1');
INSERT INTO `dede_sys_enum` VALUES ('18040', '漳平市', '7008.7', 'nativeplace', '7009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18039', '连城县', '7008.6', 'nativeplace', '7009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18038', '武平县', '7008.5', 'nativeplace', '7009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18037', '上杭县', '7008.4', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18036', '永定县', '7008.3', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18035', '长汀县', '7008.2', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18034', '新罗区', '7008.1', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18033', '龙岩市', '7008', 'nativeplace', '7008', '1');
INSERT INTO `dede_sys_enum` VALUES ('18032', '建阳市', '7007.10', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18031', '建瓯市', '7007.9', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18030', '武夷山市', '7007.8', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18029', '邵武市', '7007.7', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18028', '政和县', '7007.6', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18027', '松溪县', '7007.5', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18026', '光泽县', '7007.4', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18025', '浦城县', '7007.3', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18024', '顺昌县', '7007.2', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18023', '延平区', '7007.1', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18022', '南平市', '7007', 'nativeplace', '7007', '1');
INSERT INTO `dede_sys_enum` VALUES ('18021', '龙海市', '7006.11', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18020', '华安县', '7006.10', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18019', '平和县', '7006.9', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18018', '南靖县', '7006.8', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18017', '东山县', '7006.7', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18016', '长泰县', '7006.6', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18015', '诏安县', '7006.5', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18014', '漳浦县', '7006.4', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18013', '云霄县', '7006.3', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18012', '龙文区', '7006.2', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18011', '芗城区', '7006.1', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18010', '漳州市', '7006', 'nativeplace', '7006', '1');
INSERT INTO `dede_sys_enum` VALUES ('18009', '南安市', '7005.12', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18008', '晋江市', '7005.11', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18007', '石狮市', '7005.10', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18006', '金门县', '7005.9', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18005', '德化县', '7005.8', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18004', '永春县', '7005.7', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18003', '安溪县', '7005.6', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18002', '惠安县', '7005.5', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18001', '泉港区', '7005.4', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18000', '洛江区', '7005.3', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17999', '丰泽区', '7005.2', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17998', '鲤城区', '7005.1', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17997', '泉州市', '7005', 'nativeplace', '7005', '1');
INSERT INTO `dede_sys_enum` VALUES ('17996', '永安市', '7004.12', 'nativeplace', '7004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17995', '建宁县', '7004.11', 'nativeplace', '7004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17994', '泰宁县', '7004.10', 'nativeplace', '7004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17993', '将乐县', '7004.9', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17992', '沙　县', '7004.8', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17991', '尤溪县', '7004.7', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17990', '大田县', '7004.6', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17989', '宁化县', '7004.5', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17988', '清流县', '7004.4', 'nativeplace', '7004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17987', '明溪县', '7004.3', 'nativeplace', '7004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17986', '三元区', '7004.2', 'nativeplace', '7004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17985', '梅列区', '7004.1', 'nativeplace', '7004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17984', '三明市', '7004', 'nativeplace', '7004', '1');
INSERT INTO `dede_sys_enum` VALUES ('17983', '仙游县', '7003.5', 'nativeplace', '7004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17982', '秀屿区', '7003.4', 'nativeplace', '7003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17981', '荔城区', '7003.3', 'nativeplace', '7003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17980', '涵江区', '7003.2', 'nativeplace', '7003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17979', '城厢区', '7003.1', 'nativeplace', '7003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17978', '莆田市', '7003', 'nativeplace', '7003', '1');
INSERT INTO `dede_sys_enum` VALUES ('17977', '翔安区', '7002.6', 'nativeplace', '7003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17976', '同安区', '7002.5', 'nativeplace', '7003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17975', '集美区', '7002.4', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17974', '湖里区', '7002.3', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17973', '海沧区', '7002.2', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17972', '思明区', '7002.1', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17971', '厦门市', '7002', 'nativeplace', '7002', '1');
INSERT INTO `dede_sys_enum` VALUES ('17970', '长乐市', '7001.13', 'nativeplace', '7001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17969', '福清市', '7001.12', 'nativeplace', '7001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17968', '平潭县', '7001.11', 'nativeplace', '7001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17967', '永泰县', '7001.10', 'nativeplace', '7001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17966', '闽清县', '7001.9', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17965', '罗源县', '7001.8', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17964', '连江县', '7001.7', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17963', '闽侯县', '7001.6', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17962', '晋安区', '7001.5', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17961', '马尾区', '7001.4', 'nativeplace', '7001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17960', '仓山区', '7001.3', 'nativeplace', '7001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17959', '台江区', '7001.2', 'nativeplace', '7001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17958', '鼓楼区', '7001.1', 'nativeplace', '7001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17957', '福州市', '7001', 'nativeplace', '7001', '1');
INSERT INTO `dede_sys_enum` VALUES ('17956', '福建省', '7000', 'nativeplace', '7000', '0');
INSERT INTO `dede_sys_enum` VALUES ('17955', '宁国市', '6517.7', 'nativeplace', '6518', '2');
INSERT INTO `dede_sys_enum` VALUES ('17954', '旌德县', '6517.6', 'nativeplace', '6518', '2');
INSERT INTO `dede_sys_enum` VALUES ('17953', '绩溪县', '6517.5', 'nativeplace', '6518', '2');
INSERT INTO `dede_sys_enum` VALUES ('17952', '泾　县', '6517.4', 'nativeplace', '6517', '2');
INSERT INTO `dede_sys_enum` VALUES ('17951', '广德县', '6517.3', 'nativeplace', '6517', '2');
INSERT INTO `dede_sys_enum` VALUES ('17950', '郎溪县', '6517.2', 'nativeplace', '6517', '2');
INSERT INTO `dede_sys_enum` VALUES ('17949', '宣州区', '6517.1', 'nativeplace', '6517', '2');
INSERT INTO `dede_sys_enum` VALUES ('17948', '宣城市', '6517', 'nativeplace', '6517', '1');
INSERT INTO `dede_sys_enum` VALUES ('17947', '青阳县', '6516.4', 'nativeplace', '6516', '2');
INSERT INTO `dede_sys_enum` VALUES ('17946', '石台县', '6516.3', 'nativeplace', '6516', '2');
INSERT INTO `dede_sys_enum` VALUES ('17945', '东至县', '6516.2', 'nativeplace', '6516', '2');
INSERT INTO `dede_sys_enum` VALUES ('17944', '贵池区', '6516.1', 'nativeplace', '6516', '2');
INSERT INTO `dede_sys_enum` VALUES ('17943', '池州市', '6516', 'nativeplace', '6516', '1');
INSERT INTO `dede_sys_enum` VALUES ('17942', '利辛县', '6515.4', 'nativeplace', '6515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17941', '蒙城县', '6515.3', 'nativeplace', '6515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17940', '涡阳县', '6515.2', 'nativeplace', '6515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17939', '谯城区', '6515.1', 'nativeplace', '6515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17938', '亳州市', '6515', 'nativeplace', '6515', '1');
INSERT INTO `dede_sys_enum` VALUES ('17937', '霍山县', '6514.7', 'nativeplace', '6515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17936', '金寨县', '6514.6', 'nativeplace', '6515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17935', '舒城县', '6514.5', 'nativeplace', '6515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17934', '霍邱县', '6514.4', 'nativeplace', '6514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17933', '寿　县', '6514.3', 'nativeplace', '6514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17932', '裕安区', '6514.2', 'nativeplace', '6514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17931', '金安区', '6514.1', 'nativeplace', '6514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17930', '六安市', '6514', 'nativeplace', '6514', '1');
INSERT INTO `dede_sys_enum` VALUES ('17929', '和　县', '6513.5', 'nativeplace', '6514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17928', '含山县', '6513.4', 'nativeplace', '6513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17927', '无为县', '6513.3', 'nativeplace', '6513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17926', '庐江县', '6513.2', 'nativeplace', '6513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17925', '居巢区', '6513.1', 'nativeplace', '6513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17924', '巢湖市', '6513', 'nativeplace', '6513', '1');
INSERT INTO `dede_sys_enum` VALUES ('17923', '泗　县', '6512.5', 'nativeplace', '6513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17922', '灵璧县', '6512.4', 'nativeplace', '6512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17921', '萧　县', '6512.3', 'nativeplace', '6512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17920', '砀山县', '6512.2', 'nativeplace', '6512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17919', '墉桥区', '6512.1', 'nativeplace', '6512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17918', '宿州市', '6512', 'nativeplace', '6512', '1');
INSERT INTO `dede_sys_enum` VALUES ('17917', '界首市', '6511.8', 'nativeplace', '6512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17916', '颍上县', '6511.7', 'nativeplace', '6512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17915', '阜南县', '6511.6', 'nativeplace', '6512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17914', '太和县', '6511.5', 'nativeplace', '6512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17913', '临泉县', '6511.4', 'nativeplace', '6511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17912', '颍泉区', '6511.3', 'nativeplace', '6511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17911', '颍东区', '6511.2', 'nativeplace', '6511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17910', '颍州区', '6511.1', 'nativeplace', '6511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17909', '阜阳市', '6511', 'nativeplace', '6511', '1');
INSERT INTO `dede_sys_enum` VALUES ('17908', '明光市', '6510.8', 'nativeplace', '6511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17907', '天长市', '6510.7', 'nativeplace', '6511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17906', '凤阳县', '6510.6', 'nativeplace', '6511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17905', '定远县', '6510.5', 'nativeplace', '6511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17904', '全椒县', '6510.4', 'nativeplace', '6510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17903', '来安县', '6510.3', 'nativeplace', '6510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17902', '南谯区', '6510.2', 'nativeplace', '6510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17901', '琅琊区', '6510.1', 'nativeplace', '6510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17900', '滁州市', '6510', 'nativeplace', '6510', '1');
INSERT INTO `dede_sys_enum` VALUES ('17899', '祁门县', '6509.7', 'nativeplace', '6510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17898', '黟　县', '6509.6', 'nativeplace', '6510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17897', '休宁县', '6509.5', 'nativeplace', '6510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17896', '歙　县', '6509.4', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17895', '徽州区', '6509.3', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17894', '黄山区', '6509.2', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17893', '屯溪区', '6509.1', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17892', '黄山市', '6509', 'nativeplace', '6509', '1');
INSERT INTO `dede_sys_enum` VALUES ('17891', '桐城市', '6508.11', 'nativeplace', '6508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17890', '岳西县', '6508.10', 'nativeplace', '6508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17889', '望江县', '6508.9', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17888', '宿松县', '6508.8', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17887', '太湖县', '6508.7', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17886', '潜山县', '6508.6', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17885', '枞阳县', '6508.5', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17884', '怀宁县', '6508.4', 'nativeplace', '6508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17883', '郊　区', '6508.3', 'nativeplace', '6508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17882', '大观区', '6508.2', 'nativeplace', '6508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17881', '迎江区', '6508.1', 'nativeplace', '6508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17880', '安庆市', '6508', 'nativeplace', '6508', '1');
INSERT INTO `dede_sys_enum` VALUES ('17879', '铜陵县', '6507.4', 'nativeplace', '6507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17878', '郊　区', '6507.3', 'nativeplace', '6507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17877', '狮子山区', '6507.2', 'nativeplace', '6507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17876', '铜官山区', '6507.1', 'nativeplace', '6507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17875', '铜陵市', '6507', 'nativeplace', '6507', '1');
INSERT INTO `dede_sys_enum` VALUES ('17874', '濉溪县', '6506.4', 'nativeplace', '6506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17873', '烈山区', '6506.3', 'nativeplace', '6506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17872', '相山区', '6506.2', 'nativeplace', '6506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17871', '杜集区', '6506.1', 'nativeplace', '6506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17870', '淮北市', '6506', 'nativeplace', '6506', '1');
INSERT INTO `dede_sys_enum` VALUES ('17869', '当涂县', '6505.4', 'nativeplace', '6505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17868', '雨山区', '6505.3', 'nativeplace', '6505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17867', '花山区', '6505.2', 'nativeplace', '6505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17866', '金家庄区', '6505.1', 'nativeplace', '6505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17865', '马鞍山市', '6505', 'nativeplace', '6505', '1');
INSERT INTO `dede_sys_enum` VALUES ('17864', '凤台县', '6504.6', 'nativeplace', '6505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17863', '潘集区', '6504.5', 'nativeplace', '6505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17862', '八公山区', '6504.4', 'nativeplace', '6504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17861', '谢家集区', '6504.3', 'nativeplace', '6504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17860', '田家庵区', '6504.2', 'nativeplace', '6504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17859', '大通区', '6504.1', 'nativeplace', '6504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17858', '淮南市', '6504', 'nativeplace', '6504', '1');
INSERT INTO `dede_sys_enum` VALUES ('17857', '固镇县', '6503.7', 'nativeplace', '6504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17856', '五河县', '6503.6', 'nativeplace', '6504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17855', '怀远县', '6503.5', 'nativeplace', '6504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17854', '淮上区', '6503.4', 'nativeplace', '6503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17853', '禹会区', '6503.3', 'nativeplace', '6503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17852', '蚌山区', '6503.2', 'nativeplace', '6503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17851', '龙子湖区', '6503.1', 'nativeplace', '6503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17850', '蚌埠市', '6503', 'nativeplace', '6503', '1');
INSERT INTO `dede_sys_enum` VALUES ('17849', '南陵县', '6502.7', 'nativeplace', '6503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17848', '繁昌县', '6502.6', 'nativeplace', '6503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17847', '芜湖县', '6502.5', 'nativeplace', '6503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17846', '鸠江区', '6502.4', 'nativeplace', '6502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17845', '新芜区', '6502.3', 'nativeplace', '6502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17844', '马塘区', '6502.2', 'nativeplace', '6502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17843', '镜湖区', '6502.1', 'nativeplace', '6502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17842', '芜湖市', '6502', 'nativeplace', '6502', '1');
INSERT INTO `dede_sys_enum` VALUES ('17841', '肥西县', '6501.7', 'nativeplace', '6502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17840', '肥东县', '6501.6', 'nativeplace', '6502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17839', '长丰县', '6501.5', 'nativeplace', '6502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17838', '包河区', '6501.4', 'nativeplace', '6501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17837', '蜀山区', '6501.3', 'nativeplace', '6501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17836', '庐阳区', '6501.2', 'nativeplace', '6501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17835', '瑶海区', '6501.1', 'nativeplace', '6501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17834', '合肥市', '6501', 'nativeplace', '6501', '1');
INSERT INTO `dede_sys_enum` VALUES ('17833', '安徽省', '6500', 'nativeplace', '6500', '0');
INSERT INTO `dede_sys_enum` VALUES ('17832', '龙泉市', '6011.9', 'nativeplace', '6012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17831', '景宁畲族自治县', '6011.8', 'nativeplace', '6012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17830', '庆元县', '6011.7', 'nativeplace', '6012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17829', '云和县', '6011.6', 'nativeplace', '6012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17828', '松阳县', '6011.5', 'nativeplace', '6012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17827', '遂昌县', '6011.4', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17826', '缙云县', '6011.3', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17825', '青田县', '6011.2', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17824', '莲都区', '6011.1', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17823', '丽水市', '6011', 'nativeplace', '6011', '1');
INSERT INTO `dede_sys_enum` VALUES ('17822', '临海市', '6010.9', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17821', '温岭市', '6010.8', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17820', '仙居县', '6010.7', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17819', '天台县', '6010.6', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17818', '三门县', '6010.5', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17817', '玉环县', '6010.4', 'nativeplace', '6010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17816', '路桥区', '6010.3', 'nativeplace', '6010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17815', '黄岩区', '6010.2', 'nativeplace', '6010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17814', '椒江区', '6010.1', 'nativeplace', '6010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17813', '台州市', '6010', 'nativeplace', '6010', '1');
INSERT INTO `dede_sys_enum` VALUES ('17812', '嵊泗县', '6009.4', 'nativeplace', '6009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17811', '岱山县', '6009.3', 'nativeplace', '6009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17810', '普陀区', '6009.2', 'nativeplace', '6009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17809', '定海区', '6009.1', 'nativeplace', '6009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17808', '舟山市', '6009', 'nativeplace', '6009', '1');
INSERT INTO `dede_sys_enum` VALUES ('17807', '江山市', '6008.6', 'nativeplace', '6009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17806', '龙游县', '6008.5', 'nativeplace', '6009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17805', '开化县', '6008.4', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17804', '常山县', '6008.3', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17803', '衢江区', '6008.2', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17802', '柯城区', '6008.1', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17801', '衢州市', '6008', 'nativeplace', '6008', '1');
INSERT INTO `dede_sys_enum` VALUES ('17800', '永康市', '6007.9', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17799', '东阳市', '6007.8', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17798', '义乌市', '6007.7', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17797', '兰溪市', '6007.6', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17796', '磐安县', '6007.5', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17795', '浦江县', '6007.4', 'nativeplace', '6007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17794', '武义县', '6007.3', 'nativeplace', '6007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17793', '金东区', '6007.2', 'nativeplace', '6007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17792', '婺城区', '6007.1', 'nativeplace', '6007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17791', '金华市', '6007', 'nativeplace', '6007', '1');
INSERT INTO `dede_sys_enum` VALUES ('17790', '嵊州市', '6006.6', 'nativeplace', '6007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17789', '上虞市', '6006.5', 'nativeplace', '6007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17788', '诸暨市', '6006.4', 'nativeplace', '6006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17787', '新昌县', '6006.3', 'nativeplace', '6006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17786', '绍兴县', '6006.2', 'nativeplace', '6006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17785', '越城区', '6006.1', 'nativeplace', '6006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17784', '绍兴市', '6006', 'nativeplace', '6006', '1');
INSERT INTO `dede_sys_enum` VALUES ('17783', '安吉县', '6005.5', 'nativeplace', '6006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17782', '长兴县', '6005.4', 'nativeplace', '6005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17781', '德清县', '6005.3', 'nativeplace', '6005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17780', '南浔区', '6005.2', 'nativeplace', '6005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17779', '吴兴区', '6005.1', 'nativeplace', '6005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17778', '湖州市', '6005', 'nativeplace', '6005', '1');
INSERT INTO `dede_sys_enum` VALUES ('17777', '桐乡市', '6004.7', 'nativeplace', '6005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17776', '平湖市', '6004.6', 'nativeplace', '6005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17775', '海宁市', '6004.5', 'nativeplace', '6005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17774', '海盐县', '6004.4', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17773', '嘉善县', '6004.3', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17772', '秀洲区', '6004.2', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17771', '秀城区', '6004.1', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17770', '嘉兴市', '6004', 'nativeplace', '6004', '1');
INSERT INTO `dede_sys_enum` VALUES ('17769', '乐清市', '6003.11', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17768', '瑞安市', '6003.10', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17767', '泰顺县', '6003.9', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17766', '文成县', '6003.8', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17765', '苍南县', '6003.7', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17764', '平阳县', '6003.6', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17763', '永嘉县', '6003.5', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17762', '洞头县', '6003.4', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17761', '瓯海区', '6003.3', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17760', '龙湾区', '6003.2', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17759', '鹿城区', '6003.1', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17758', '温州市', '6003', 'nativeplace', '6003', '1');
INSERT INTO `dede_sys_enum` VALUES ('17757', '奉化市', '6002.11', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17756', '慈溪市', '6002.10', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17755', '余姚市', '6002.9', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17754', '宁海县', '6002.8', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17753', '象山县', '6002.7', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17752', '鄞州区', '6002.6', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17751', '镇海区', '6002.5', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17750', '北仑区', '6002.4', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17749', '江北区', '6002.3', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17748', '江东区', '6002.2', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17747', '海曙区', '6002.1', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17746', '宁波市', '6002', 'nativeplace', '6002', '1');
INSERT INTO `dede_sys_enum` VALUES ('17745', '临安市', '6001.13', 'nativeplace', '6001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17744', '富阳市', '6001.12', 'nativeplace', '6001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17743', '建德市', '6001.11', 'nativeplace', '6001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17742', '淳安县', '6001.10', 'nativeplace', '6001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17741', '桐庐县', '6001.9', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17740', '余杭区', '6001.8', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17739', '萧山区', '6001.7', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17738', '滨江区', '6001.6', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17737', '西湖区', '6001.5', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17736', '拱墅区', '6001.4', 'nativeplace', '6001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17735', '江干区', '6001.3', 'nativeplace', '6001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17734', '下城区', '6001.2', 'nativeplace', '6001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17733', '上城区', '6001.1', 'nativeplace', '6001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17732', '杭州市', '6001', 'nativeplace', '6001', '1');
INSERT INTO `dede_sys_enum` VALUES ('17731', '浙江省', '6000', 'nativeplace', '6000', '0');
INSERT INTO `dede_sys_enum` VALUES ('17730', '泗洪县', '5513.5', 'nativeplace', '5514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17729', '泗阳县', '5513.4', 'nativeplace', '5513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17728', '沭阳县', '5513.3', 'nativeplace', '5513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17727', '宿豫区', '5513.2', 'nativeplace', '5513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17726', '宿城区', '5513.1', 'nativeplace', '5513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17725', '宿迁市', '5513', 'nativeplace', '5513', '1');
INSERT INTO `dede_sys_enum` VALUES ('17724', '姜堰市', '5512.6', 'nativeplace', '5513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17723', '泰兴市', '5512.5', 'nativeplace', '5513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17722', '靖江市', '5512.4', 'nativeplace', '5512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17721', '兴化市', '5512.3', 'nativeplace', '5512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17720', '高港区', '5512.2', 'nativeplace', '5512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17719', '海陵区', '5512.1', 'nativeplace', '5512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17718', '泰州市', '5512', 'nativeplace', '5512', '1');
INSERT INTO `dede_sys_enum` VALUES ('17717', '句容市', '5511.6', 'nativeplace', '5512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17716', '扬中市', '5511.5', 'nativeplace', '5512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17715', '丹阳市', '5511.4', 'nativeplace', '5511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17714', '丹徒区', '5511.3', 'nativeplace', '5511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17713', '润州区', '5511.2', 'nativeplace', '5511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17712', '京口区', '5511.1', 'nativeplace', '5511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17711', '镇江市', '5511', 'nativeplace', '5511', '1');
INSERT INTO `dede_sys_enum` VALUES ('17710', '江都市', '5510.7', 'nativeplace', '5511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17709', '高邮市', '5510.6', 'nativeplace', '5511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17708', '仪征市', '5510.5', 'nativeplace', '5511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17707', '宝应县', '5510.4', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17706', '郊　区', '5510.3', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17705', '邗江区', '5510.2', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17704', '广陵区', '5510.1', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17703', '扬州市', '5510', 'nativeplace', '5510', '1');
INSERT INTO `dede_sys_enum` VALUES ('17702', '大丰市', '5509.9', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17701', '东台市', '5509.8', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17700', '建湖县', '5509.7', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17699', '射阳县', '5509.6', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17698', '阜宁县', '5509.5', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17697', '滨海县', '5509.4', 'nativeplace', '5509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17696', '响水县', '5509.3', 'nativeplace', '5509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17695', '盐都区', '5509.2', 'nativeplace', '5509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17694', '亭湖区', '5509.1', 'nativeplace', '5509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17693', '盐城市', '5509', 'nativeplace', '5509', '1');
INSERT INTO `dede_sys_enum` VALUES ('17692', '金湖县', '5508.8', 'nativeplace', '5509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17691', '盱眙县', '5508.7', 'nativeplace', '5509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17690', '洪泽县', '5508.6', 'nativeplace', '5509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17689', '涟水县', '5508.5', 'nativeplace', '5509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17688', '清浦区', '5508.4', 'nativeplace', '5508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17687', '淮阴区', '5508.3', 'nativeplace', '5508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17686', '楚州区', '5508.2', 'nativeplace', '5508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17685', '清河区', '5508.1', 'nativeplace', '5508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17684', '淮安市', '5508', 'nativeplace', '5508', '1');
INSERT INTO `dede_sys_enum` VALUES ('17683', '灌南县', '5507.7', 'nativeplace', '5508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17682', '灌云县', '5507.6', 'nativeplace', '5508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17681', '东海县', '5507.5', 'nativeplace', '5508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17680', '赣榆县', '5507.4', 'nativeplace', '5507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17679', '海州区', '5507.3', 'nativeplace', '5507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17678', '新浦区', '5507.2', 'nativeplace', '5507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17677', '连云区', '5507.1', 'nativeplace', '5507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17676', '连云港市', '5507', 'nativeplace', '5507', '1');
INSERT INTO `dede_sys_enum` VALUES ('17675', '海门市', '5506.8', 'nativeplace', '5507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17674', '通州市', '5506.7', 'nativeplace', '5507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17673', '如皋市', '5506.6', 'nativeplace', '5507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17672', '启东市', '5506.5', 'nativeplace', '5507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17671', '如东县', '5506.4', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17670', '海安县', '5506.3', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17669', '港闸区', '5506.2', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17668', '崇川区', '5506.1', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17667', '南通市', '5506', 'nativeplace', '5506', '1');
INSERT INTO `dede_sys_enum` VALUES ('17666', '太仓市', '5505.11', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17665', '吴江市', '5505.10', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17664', '昆山市', '5505.9', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17663', '张家港市', '5505.8', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17662', '常熟市', '5505.7', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17661', '相城区', '5505.6', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17660', '吴中区', '5505.5', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17659', '虎丘区', '5505.4', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17658', '金阊区', '5505.3', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17657', '平江区', '5505.2', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17656', '沧浪区', '5505.1', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17655', '苏州市', '5505', 'nativeplace', '5505', '1');
INSERT INTO `dede_sys_enum` VALUES ('17654', '金坛市', '5504.7', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17653', '溧阳市', '5504.6', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17652', '武进区', '5504.5', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17651', '新北区', '5504.4', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17650', '戚墅堰区', '5504.3', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17649', '钟楼区', '5504.2', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17648', '天宁区', '5504.1', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17647', '常州市', '5504', 'nativeplace', '5504', '1');
INSERT INTO `dede_sys_enum` VALUES ('17646', '邳州市', '5503.11', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17645', '新沂市', '5503.10', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17644', '睢宁县', '5503.9', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17643', '铜山县', '5503.8', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17642', '沛　县', '5503.7', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17641', '丰　县', '5503.6', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17640', '泉山区', '5503.5', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17639', '贾汪区', '5503.4', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17638', '九里区', '5503.3', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17637', '云龙区', '5503.2', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17636', '鼓楼区', '5503.1', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17635', '徐州市', '5503', 'nativeplace', '5503', '1');
INSERT INTO `dede_sys_enum` VALUES ('17634', '宜兴市', '5502.8', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17633', '江阴市', '5502.7', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17632', '滨湖区', '5502.6', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17631', '惠山区', '5502.5', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17630', '锡山区', '5502.4', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17629', '北塘区', '5502.3', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17628', '南长区', '5502.2', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17627', '崇安区', '5502.1', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17626', '无锡市', '5502', 'nativeplace', '5502', '1');
INSERT INTO `dede_sys_enum` VALUES ('17625', '高淳县', '5501.13', 'nativeplace', '5501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17624', '溧水县', '5501.12', 'nativeplace', '5501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17623', '六合区', '5501.11', 'nativeplace', '5501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17622', '江宁区', '5501.10', 'nativeplace', '5501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17621', '雨花台区', '5501.9', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17620', '栖霞区', '5501.8', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17619', '浦口区', '5501.7', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17618', '下关区', '5501.6', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17617', '鼓楼区', '5501.5', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17616', '建邺区', '5501.4', 'nativeplace', '5501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17615', '秦淮区', '5501.3', 'nativeplace', '5501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17614', '白下区', '5501.2', 'nativeplace', '5501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17613', '武区', '5501.1', 'nativeplace', '5501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17612', '南京市', '5501', 'nativeplace', '5501', '1');
INSERT INTO `dede_sys_enum` VALUES ('17611', '江苏省', '5500', 'nativeplace', '5500', '0');
INSERT INTO `dede_sys_enum` VALUES ('17610', '崇明县', '5019', 'nativeplace', '5019', '1');
INSERT INTO `dede_sys_enum` VALUES ('17609', '奉贤区', '5018', 'nativeplace', '5018', '1');
INSERT INTO `dede_sys_enum` VALUES ('17608', '南汇区', '5017', 'nativeplace', '5017', '1');
INSERT INTO `dede_sys_enum` VALUES ('17607', '青浦区', '5016', 'nativeplace', '5016', '1');
INSERT INTO `dede_sys_enum` VALUES ('17606', '松江区', '5015', 'nativeplace', '5015', '1');
INSERT INTO `dede_sys_enum` VALUES ('17605', '金山区', '5014', 'nativeplace', '5014', '1');
INSERT INTO `dede_sys_enum` VALUES ('17604', '浦东新区', '5013', 'nativeplace', '5013', '1');
INSERT INTO `dede_sys_enum` VALUES ('17603', '嘉定区', '5012', 'nativeplace', '5012', '1');
INSERT INTO `dede_sys_enum` VALUES ('17602', '宝山区', '5011', 'nativeplace', '5011', '1');
INSERT INTO `dede_sys_enum` VALUES ('17601', '闵行区', '5010', 'nativeplace', '5010', '1');
INSERT INTO `dede_sys_enum` VALUES ('17600', '杨浦区', '5009', 'nativeplace', '5009', '1');
INSERT INTO `dede_sys_enum` VALUES ('17599', '虹口区', '5008', 'nativeplace', '5008', '1');
INSERT INTO `dede_sys_enum` VALUES ('17598', '闸北区', '5007', 'nativeplace', '5007', '1');
INSERT INTO `dede_sys_enum` VALUES ('17597', '普陀区', '5006', 'nativeplace', '5006', '1');
INSERT INTO `dede_sys_enum` VALUES ('17596', '静安区', '5005', 'nativeplace', '5005', '1');
INSERT INTO `dede_sys_enum` VALUES ('17595', '长宁区', '5004', 'nativeplace', '5004', '1');
INSERT INTO `dede_sys_enum` VALUES ('17594', '徐汇区', '5003', 'nativeplace', '5003', '1');
INSERT INTO `dede_sys_enum` VALUES ('17593', '卢湾区', '5002', 'nativeplace', '5002', '1');
INSERT INTO `dede_sys_enum` VALUES ('17592', '黄浦区', '5001', 'nativeplace', '5001', '1');
INSERT INTO `dede_sys_enum` VALUES ('17591', '上海市', '5000', 'nativeplace', '5000', '0');
INSERT INTO `dede_sys_enum` VALUES ('17590', '漠河县', '4513.3', 'nativeplace', '4513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17589', '塔河县', '4513.2', 'nativeplace', '4513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17588', '呼玛县', '4513.1', 'nativeplace', '4513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17587', '大兴安岭地区', '4513', 'nativeplace', '4513', '1');
INSERT INTO `dede_sys_enum` VALUES ('17586', '海伦市', '4512.10', 'nativeplace', '4512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17585', '肇东市', '4512.9', 'nativeplace', '4513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17584', '安达市', '4512.8', 'nativeplace', '4513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17583', '绥棱县', '4512.7', 'nativeplace', '4513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17582', '明水县', '4512.6', 'nativeplace', '4513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17581', '庆安县', '4512.5', 'nativeplace', '4513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17580', '青冈县', '4512.4', 'nativeplace', '4512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17579', '兰西县', '4512.3', 'nativeplace', '4512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17578', '望奎县', '4512.2', 'nativeplace', '4512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17577', '北林区', '4512.1', 'nativeplace', '4512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17576', '绥化市', '4512', 'nativeplace', '4512', '1');
INSERT INTO `dede_sys_enum` VALUES ('17575', '五大连池市', '4511.6', 'nativeplace', '4512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17574', '北安市', '4511.5', 'nativeplace', '4512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17573', '孙吴县', '4511.4', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17572', '逊克县', '4511.3', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17571', '嫩江县', '4511.2', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17570', '爱辉区', '4511.1', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17569', '黑河市', '4511', 'nativeplace', '4511', '1');
INSERT INTO `dede_sys_enum` VALUES ('17568', '穆棱市', '4510.10', 'nativeplace', '4510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17567', '宁安市', '4510.9', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17566', '海林市', '4510.8', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17565', '绥芬河市', '4510.7', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17564', '林口县', '4510.6', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17563', '东宁县', '4510.5', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17562', '西安区', '4510.4', 'nativeplace', '4510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17561', '爱民区', '4510.3', 'nativeplace', '4510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17560', '阳明区', '4510.2', 'nativeplace', '4510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17559', '东安区', '4510.1', 'nativeplace', '4510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17558', '牡丹江市', '4510', 'nativeplace', '4510', '1');
INSERT INTO `dede_sys_enum` VALUES ('17557', '勃利县', '4509.4', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17556', '茄子河区', '4509.3', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17555', '桃山区', '4509.2', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17554', '新兴区', '4509.1', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17553', '七台河市', '4509', 'nativeplace', '4509', '1');
INSERT INTO `dede_sys_enum` VALUES ('17552', '富锦市', '4508.11', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17551', '同江市', '4508.10', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17550', '抚远县', '4508.9', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17549', '汤原县', '4508.8', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17548', '桦川县', '4508.7', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17547', '桦南县', '4508.6', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17546', '郊　区', '4508.5', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17545', '东风区', '4508.4', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17544', '前进区', '4508.3', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17543', '向阳区', '4508.2', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17542', '永红区', '4508.1', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17541', '佳木斯市', '4508', 'nativeplace', '4508', '1');
INSERT INTO `dede_sys_enum` VALUES ('17540', '铁力市', '4507.17', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17539', '嘉荫县', '4507.16', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17538', '上甘岭区', '4507.15', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17537', '红星区', '4507.14', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17536', '乌伊岭区', '4507.13', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17535', '带岭区', '4507.12', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17534', '汤旺河区', '4507.11', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17533', '乌马河区', '4507.10', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17532', '五营区', '4507.9', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17531', '金山屯区', '4507.8', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17530', '美溪区', '4507.7', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17529', '新青区', '4507.6', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17528', '翠峦区', '4507.5', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17527', '西林区', '4507.4', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17526', '友好区', '4507.3', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17525', '南岔区', '4507.2', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17524', '伊春区', '4507.1', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17523', '伊春市', '4507', 'nativeplace', '4507', '1');
INSERT INTO `dede_sys_enum` VALUES ('17522', '杜尔伯特蒙古族自治县', '4506.9', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17521', '林甸县', '4506.8', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17520', '肇源县', '4506.7', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17519', '肇州县', '4506.6', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17518', '大同区', '4506.5', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17517', '红岗区', '4506.4', 'nativeplace', '4506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17516', '让胡路区', '4506.3', 'nativeplace', '4506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17515', '龙凤区', '4506.2', 'nativeplace', '4506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17514', '萨尔图区', '4506.1', 'nativeplace', '4506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17513', '大庆市', '4506', 'nativeplace', '4506', '1');
INSERT INTO `dede_sys_enum` VALUES ('17512', '饶河县', '4505.8', 'nativeplace', '4506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17511', '宝清县', '4505.7', 'nativeplace', '4506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17510', '友谊县', '4505.6', 'nativeplace', '4506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17509', '集贤县', '4505.5', 'nativeplace', '4506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17508', '宝山区', '4505.4', 'nativeplace', '4505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17507', '四方台区', '4505.3', 'nativeplace', '4505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17506', '岭东区', '4505.2', 'nativeplace', '4505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17505', '尖山区', '4505.1', 'nativeplace', '4505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17504', '双鸭山市', '4505', 'nativeplace', '4505', '1');
INSERT INTO `dede_sys_enum` VALUES ('17503', '绥滨县', '4504.8', 'nativeplace', '4505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17502', '萝北县', '4504.7', 'nativeplace', '4505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17501', '兴山区', '4504.6', 'nativeplace', '4505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17500', '东山区', '4504.5', 'nativeplace', '4505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17499', '兴安区', '4504.4', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17498', '南山区', '4504.3', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17497', '工农区', '4504.2', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17496', '向阳区', '4504.1', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17495', '鹤岗市', '4504', 'nativeplace', '4504', '1');
INSERT INTO `dede_sys_enum` VALUES ('17494', '密山市', '4503.9', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17493', '虎林市', '4503.8', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17492', '鸡东县', '4503.7', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17491', '麻山区', '4503.6', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17490', '城子河区', '4503.5', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17489', '梨树区', '4503.4', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17488', '滴道区', '4503.3', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17487', '恒山区', '4503.2', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17486', '鸡冠区', '4503.1', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17485', '鸡西市', '4503', 'nativeplace', '4503', '1');
INSERT INTO `dede_sys_enum` VALUES ('17484', '讷河市', '4502.15', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17483', '拜泉县', '4502.14', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17482', '克东县', '4502.13', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17481', '克山县', '4502.12', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17480', '富裕县', '4502.11', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17479', '甘南县', '4502.10', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17478', '泰来县', '4502.9', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17477', '龙江县 依安县', '4502.8', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17476', '梅里斯达斡尔族区', '4502.7', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17475', '碾子山区', '4502.6', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17474', '富拉尔基区', '4502.5', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17473', '昂昂溪区', '4502.4', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17472', '铁锋区', '4502.3', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17471', '建华区', '4502.2', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17470', '龙沙区', '4502.1', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17469', '齐齐哈尔市', '4502', 'nativeplace', '4502', '1');
INSERT INTO `dede_sys_enum` VALUES ('17468', '五常市', '4501.19', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17467', '尚志市', '4501.18', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17466', '双城市', '4501.17', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17465', '阿城市', '4501.16', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17464', '延寿县', '4501.15', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17463', '通河县', '4501.14', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17462', '木兰县', '4501.13', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17461', '巴彦县', '4501.12', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17460', '宾　县', '4501.11', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17459', '方正县', '4501.10', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17458', '依兰县', '4501.9', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17457', '呼兰区', '4501.8', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17456', '松北区', '4501.7', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17455', '平房区', '4501.6', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17454', '动力区', '4501.5', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17453', '香坊区', '4501.4', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17452', '道外区', '4501.3', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17451', '南岗区', '4501.2', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17450', '道里区', '4501.1', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17449', '哈尔滨市', '4501', 'nativeplace', '4501', '1');
INSERT INTO `dede_sys_enum` VALUES ('17448', '黑龙江省', '4500', 'nativeplace', '4500', '0');
INSERT INTO `dede_sys_enum` VALUES ('17447', '安图县', '4009.8', 'nativeplace', '4010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17446', '汪清县', '4009.7', 'nativeplace', '4010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17445', '和龙市', '4009.6', 'nativeplace', '4010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17444', '龙井市', '4009.5', 'nativeplace', '4010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17443', '珲春市', '4009.4', 'nativeplace', '4009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17442', '敦化市', '4009.3', 'nativeplace', '4009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17441', '图们市', '4009.2', 'nativeplace', '4009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17440', '延吉市', '4009.1', 'nativeplace', '4009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17439', '延边朝鲜族自治州', '4009', 'nativeplace', '4009', '1');
INSERT INTO `dede_sys_enum` VALUES ('17438', '大安市', '4008.5', 'nativeplace', '4009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17437', '洮南市', '4008.4', 'nativeplace', '4008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17436', '通榆县', '4008.3', 'nativeplace', '4008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17435', '镇赉县', '4008.2', 'nativeplace', '4008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17434', '洮北区', '4008.1', 'nativeplace', '4008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17433', '白城市', '4008', 'nativeplace', '4008', '1');
INSERT INTO `dede_sys_enum` VALUES ('17432', '扶余县', '4007.5', 'nativeplace', '4008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17431', '乾安县', '4007.4', 'nativeplace', '4007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17430', '长岭县', '4007.3', 'nativeplace', '4007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17429', '前郭尔罗斯蒙古族自治县', '4007.2', 'nativeplace', '4007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17428', '宁江区', '4007.1', 'nativeplace', '4007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17427', '松原市', '4007', 'nativeplace', '4007', '1');
INSERT INTO `dede_sys_enum` VALUES ('17426', '临江市', '4006.6', 'nativeplace', '4007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17425', '江源县', '4006.5', 'nativeplace', '4007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17424', '长白朝鲜族自治县', '4006.4', 'nativeplace', '4006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17423', '靖宇县', '4006.3', 'nativeplace', '4006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17422', '抚松县', '4006.2', 'nativeplace', '4006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17421', '八道江区', '4006.1', 'nativeplace', '4006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17420', '白山市', '4006', 'nativeplace', '4006', '1');
INSERT INTO `dede_sys_enum` VALUES ('17419', '集安市', '4005.7', 'nativeplace', '4006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17418', '梅河口市', '4005.6', 'nativeplace', '4006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17417', '柳河县', '4005.5', 'nativeplace', '4006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17416', '辉南县', '4005.4', 'nativeplace', '4005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17415', '通化县', '4005.3', 'nativeplace', '4005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17414', '二道江区', '4005.2', 'nativeplace', '4005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17413', '东昌区', '4005.1', 'nativeplace', '4005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17412', '通化市', '4005', 'nativeplace', '4005', '1');
INSERT INTO `dede_sys_enum` VALUES ('17411', '东辽县', '4004.4', 'nativeplace', '4004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17410', '东丰县', '4004.3', 'nativeplace', '4004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17409', '西安区', '4004.2', 'nativeplace', '4004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17408', '龙山区', '4004.1', 'nativeplace', '4004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17407', '辽源市', '4004', 'nativeplace', '4004', '1');
INSERT INTO `dede_sys_enum` VALUES ('17406', '双辽市', '4003.6', 'nativeplace', '4004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17405', '公主岭市', '4003.5', 'nativeplace', '4004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17404', '伊通满族自治县', '4003.4', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17403', '梨树县', '4003.3', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17402', '铁东区', '4003.2', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17401', '铁西区', '4003.1', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17400', '四平市', '4003', 'nativeplace', '4003', '1');
INSERT INTO `dede_sys_enum` VALUES ('17399', '磐石市', '4002.9', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17398', '舒兰市', '4002.8', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17397', '桦甸市', '4002.7', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17396', '蛟河市', '4002.6', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17395', '永吉县', '4002.5', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17394', '丰满区', '4002.4', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17393', '船营区', '4002.3', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17392', '龙潭区', '4002.2', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17391', '昌邑区', '4002.1', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17390', '吉林市', '4002', 'nativeplace', '4002', '1');
INSERT INTO `dede_sys_enum` VALUES ('17389', '德惠市', '4001.10', 'nativeplace', '4001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17388', '榆树市', '4001.9', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17387', '九台市', '4001.8', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17386', '农安县', '4001.7', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17385', '双阳区', '4001.6', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17384', '绿园区', '4001.5', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17383', '二道区', '4001.4', 'nativeplace', '4001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17382', '朝阳区', '4001.3', 'nativeplace', '4001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17381', '宽城区', '4001.2', 'nativeplace', '4001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17380', '南关区', '4001.1', 'nativeplace', '4001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17379', '长春市', '4001', 'nativeplace', '4001', '1');
INSERT INTO `dede_sys_enum` VALUES ('17378', '吉林省', '4000', 'nativeplace', '4000', '0');
INSERT INTO `dede_sys_enum` VALUES ('17377', '兴城市', '3514.6', 'nativeplace', '3515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17376', '建昌县', '3514.5', 'nativeplace', '3515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17375', '绥中县', '3514.4', 'nativeplace', '3514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17374', '南票区', '3514.3', 'nativeplace', '3514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17373', '龙港区', '3514.2', 'nativeplace', '3514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17372', '连山区', '3514.1', 'nativeplace', '3514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17371', '葫芦岛市', '3514', 'nativeplace', '3514', '1');
INSERT INTO `dede_sys_enum` VALUES ('17370', '凌源市', '3513.7', 'nativeplace', '3514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17369', '北票市', '3513.6', 'nativeplace', '3514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17368', '喀喇沁左翼蒙古族自治县', '3513.5', 'nativeplace', '3514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17367', '建平县', '3513.4', 'nativeplace', '3513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17366', '朝阳县', '3513.3', 'nativeplace', '3513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17365', '龙城区', '3513.2', 'nativeplace', '3513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17364', '双塔区', '3513.1', 'nativeplace', '3513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17363', '朝阳市', '3513', 'nativeplace', '3513', '1');
INSERT INTO `dede_sys_enum` VALUES ('17362', '开原市', '3512.7', 'nativeplace', '3513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17361', '调兵山市', '3512.6', 'nativeplace', '3513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17360', '昌图县', '3512.5', 'nativeplace', '3513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17359', '西丰县', '3512.4', 'nativeplace', '3512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17358', '铁岭县', '3512.3', 'nativeplace', '3512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17357', '清河区', '3512.2', 'nativeplace', '3512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17356', '银州区', '3512.1', 'nativeplace', '3512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17355', '铁岭市', '3512', 'nativeplace', '3512', '1');
INSERT INTO `dede_sys_enum` VALUES ('17354', '盘山县', '3511.4', 'nativeplace', '3511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17353', '大洼县', '3511.3', 'nativeplace', '3511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17352', '兴隆台区', '3511.2', 'nativeplace', '3511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17351', '双台子区', '3511.1', 'nativeplace', '3511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17350', '盘锦市', '3511', 'nativeplace', '3511', '1');
INSERT INTO `dede_sys_enum` VALUES ('17349', '灯塔市', '3510.7', 'nativeplace', '3511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17348', '辽阳县', '3510.6', 'nativeplace', '3511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17347', '太子河区', '3510.5', 'nativeplace', '3511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17346', '弓长岭区', '3510.4', 'nativeplace', '3510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17345', '宏伟区', '3510.3', 'nativeplace', '3510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17344', '文圣区', '3510.2', 'nativeplace', '3510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17343', '白塔区', '3510.1', 'nativeplace', '3510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17342', '辽阳市', '3510', 'nativeplace', '3510', '1');
INSERT INTO `dede_sys_enum` VALUES ('17341', '彰武县', '3509.7', 'nativeplace', '3510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17340', '阜新蒙古族自治县', '3509.6', 'nativeplace', '3510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17339', '细河区', '3509.5', 'nativeplace', '3510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17338', '清河门区', '3509.4', 'nativeplace', '3509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17337', '太平区', '3509.3', 'nativeplace', '3509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17336', '新邱区', '3509.2', 'nativeplace', '3509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17335', '海州区', '3509.1', 'nativeplace', '3509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17334', '阜新市', '3509', 'nativeplace', '3509', '1');
INSERT INTO `dede_sys_enum` VALUES ('17333', '大石桥市', '3508.6', 'nativeplace', '3509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17332', '盖州市', '3508.5', 'nativeplace', '3509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17331', '老边区', '3508.4', 'nativeplace', '3508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17330', '鲅鱼圈区', '3508.3', 'nativeplace', '3508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17329', '西市区', '3508.2', 'nativeplace', '3508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17328', '站前区', '3508.1', 'nativeplace', '3508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17327', '营口市', '3508', 'nativeplace', '3508', '1');
INSERT INTO `dede_sys_enum` VALUES ('17326', '北宁市', '3507.7', 'nativeplace', '3508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17325', '凌海市', '3507.6', 'nativeplace', '3508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17324', '义　县', '3507.5', 'nativeplace', '3508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17323', '黑山县', '3507.4', 'nativeplace', '3507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17322', '太和区', '3507.3', 'nativeplace', '3507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17321', '凌河区', '3507.2', 'nativeplace', '3507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17320', '古塔区', '3507.1', 'nativeplace', '3507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17319', '锦州市', '3507', 'nativeplace', '3507', '1');
INSERT INTO `dede_sys_enum` VALUES ('17318', '凤城市', '3506.6', 'nativeplace', '3507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17317', '东港市', '3506.5', 'nativeplace', '3507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17316', '宽甸满族自治县', '3506.4', 'nativeplace', '3506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17315', '振安区', '3506.3', 'nativeplace', '3506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17314', '振兴区', '3506.2', 'nativeplace', '3506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17313', '元宝区', '3506.1', 'nativeplace', '3506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17312', '丹东市', '3506', 'nativeplace', '3506', '1');
INSERT INTO `dede_sys_enum` VALUES ('17311', '桓仁满族自治县', '3505.6', 'nativeplace', '3506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17310', '本溪满族自治县', '3505.5', 'nativeplace', '3506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17309', '南芬区', '3505.4', 'nativeplace', '3505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17308', '明山区', '3505.3', 'nativeplace', '3505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17307', '溪湖区', '3505.2', 'nativeplace', '3505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17306', '平山区', '3505.1', 'nativeplace', '3505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17305', '本溪市', '3505', 'nativeplace', '3505', '1');
INSERT INTO `dede_sys_enum` VALUES ('17304', '清原满族自治县', '3504.7', 'nativeplace', '3505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17303', '新宾满族自治县', '3504.6', 'nativeplace', '3505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17302', '抚顺县', '3504.5', 'nativeplace', '3505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17301', '顺城区', '3504.4', 'nativeplace', '3504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17300', '望花区', '3504.3', 'nativeplace', '3504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17299', '东洲区', '3504.2', 'nativeplace', '3504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17298', '新抚区', '3504.1', 'nativeplace', '3504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17297', '抚顺市', '3504', 'nativeplace', '3504', '1');
INSERT INTO `dede_sys_enum` VALUES ('17296', '海城市', '3503.7', 'nativeplace', '3504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17295', '岫岩满族自治县', '3503.6', 'nativeplace', '3504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17294', '台安县', '3503.5', 'nativeplace', '3504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17293', '千山区', '3503.4', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17292', '立山区', '3503.3', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17291', '铁西区', '3503.2', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17290', '铁东区', '3503.1', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17289', '鞍山市', '3503', 'nativeplace', '3503', '1');
INSERT INTO `dede_sys_enum` VALUES ('17288', '庄河市', '3502.10', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17287', '普兰店市', '3502.9', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17286', '瓦房店市', '3502.8', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17285', '长海县', '3502.7', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17284', '金州区', '3502.6', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17283', '旅顺口区', '3502.5', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17282', '甘井子区', '3502.4', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17281', '沙河口区', '3502.3', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17280', '西岗区', '3502.2', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17279', '中山区', '3502.1', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17278', '大连市', '3502', 'nativeplace', '3502', '1');
INSERT INTO `dede_sys_enum` VALUES ('17277', '新民市', '3501.13', 'nativeplace', '3501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17276', '法库县', '3501.12', 'nativeplace', '3501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17275', '康平县', '3501.11', 'nativeplace', '3501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17274', '辽中县', '3501.10', 'nativeplace', '3501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17273', '于洪区', '3501.9', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17272', '新城子区', '3501.8', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17271', '东陵区', '3501.7', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17270', '苏家屯区', '3501.6', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17269', '铁西区', '3501.5', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17268', '皇姑区', '3501.4', 'nativeplace', '3501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17267', '大东区', '3501.3', 'nativeplace', '3501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17266', '沈河区', '3501.2', 'nativeplace', '3501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17265', '和平区', '3501.1', 'nativeplace', '3501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17264', '沈阳市', '3501', 'nativeplace', '3501', '1');
INSERT INTO `dede_sys_enum` VALUES ('17263', '辽宁省', '3500', 'nativeplace', '3500', '0');
INSERT INTO `dede_sys_enum` VALUES ('17262', '额济纳旗', '3012.3', 'nativeplace', '3012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17261', '阿拉善右旗', '3012.2', 'nativeplace', '3012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17260', '阿拉善左旗', '3012.1', 'nativeplace', '3012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17259', '阿拉善盟', '3012', 'nativeplace', '3012', '1');
INSERT INTO `dede_sys_enum` VALUES ('17258', '多伦县', '3011.12', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17257', '正蓝旗', '3011.11', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17256', '正镶白旗', '3011.10', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17255', '镶黄旗', '3011.9', 'nativeplace', '3012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17254', '太仆寺旗', '3011.8', 'nativeplace', '3012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17253', '西乌珠穆沁旗', '3011.7', 'nativeplace', '3012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17252', '东乌珠穆沁旗', '3011.6', 'nativeplace', '3012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17251', '苏尼特右旗', '3011.5', 'nativeplace', '3012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17250', '苏尼特左旗', '3011.4', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17249', '阿巴嘎旗', '3011.3', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17248', '锡林浩特市', '3011.2', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17247', '二连浩特市', '3011.1', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17246', '锡林郭勒盟', '3011', 'nativeplace', '3011', '1');
INSERT INTO `dede_sys_enum` VALUES ('17245', '突泉县', '3010.6', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17244', '扎赉特旗', '3010.5', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17243', '科尔沁右翼中旗', '3010.4', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17242', '科尔沁右翼前旗', '3010.3', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17241', '阿尔山市', '3010.2', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17240', '乌兰浩特市', '3010.1', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17239', '兴安盟', '3010', 'nativeplace', '3010', '1');
INSERT INTO `dede_sys_enum` VALUES ('17238', '丰镇市', '3009.11', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17237', '四子王旗', '3009.10', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17236', '察哈尔右翼后旗', '3009.9', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17235', '察哈尔右翼中旗', '3009.8', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17234', '察哈尔右翼前旗', '3009.7', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17233', '凉城县', '3009.6', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17232', '兴和县', '3009.5', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17231', '商都县', '3009.4', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17230', '化德县', '3009.3', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17229', '卓资县', '3009.2', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17228', '集宁区', '3009.1', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17227', '乌兰察布市', '3009', 'nativeplace', '3009', '1');
INSERT INTO `dede_sys_enum` VALUES ('17226', '杭锦后旗', '3008.7', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17225', '乌拉特后旗', '3008.6', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17224', '乌拉特中旗', '3008.5', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17223', '乌拉特前旗', '3008.4', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17222', '磴口县', '3008.3', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17221', '五原县', '3008.2', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17220', '临河区', '3008.1', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17219', '巴彦淖尔市', '3008', 'nativeplace', '3008', '1');
INSERT INTO `dede_sys_enum` VALUES ('17218', '根河市', '3007.13', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17217', '额尔古纳市', '3007.12', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17216', '扎兰屯市', '3007.11', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17215', '牙克石市', '3007.10', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17214', '满洲里市', '3007.9', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17213', '新巴尔虎右旗', '3007.8', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17212', '新巴尔虎左旗', '3007.7', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17211', '陈巴尔虎旗', '3007.6', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17210', '鄂温克族自治旗', '3007.5', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17209', '鄂伦春自治旗', '3007.4', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17208', '莫力达瓦达斡尔族自治旗', '3007.3', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17207', '阿荣旗', '3007.2', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17206', '海拉尔区', '3007.1', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17205', '呼伦贝尔市', '3007', 'nativeplace', '3007', '1');
INSERT INTO `dede_sys_enum` VALUES ('17204', '伊金霍洛旗', '3006.8', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17203', '乌审旗', '3006.7', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17202', '杭锦旗', '3006.6', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17201', '鄂托克旗', '3006.5', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17200', '鄂托克前旗', '3006.4', 'nativeplace', '3006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17199', '准格尔旗', '3006.3', 'nativeplace', '3006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17198', '达拉特旗', '3006.2', 'nativeplace', '3006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17197', '东胜区', '3006.1', 'nativeplace', '3006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17196', '鄂尔多斯市', '3006', 'nativeplace', '3006', '1');
INSERT INTO `dede_sys_enum` VALUES ('17195', '霍林郭勒市', '3005.8', 'nativeplace', '3006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17194', '扎鲁特旗', '3005.7', 'nativeplace', '3006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17193', '奈曼旗', '3005.6', 'nativeplace', '3006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17192', '库伦旗', '3005.5', 'nativeplace', '3006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17191', '开鲁县', '3005.4', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17190', '科尔沁左翼后旗', '3005.3', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17189', '科尔沁左翼中旗', '3005.2', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17188', '科尔沁区', '3005.1', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17187', '通辽市', '3005', 'nativeplace', '3005', '1');
INSERT INTO `dede_sys_enum` VALUES ('17186', '敖汉旗', '3004.12', 'nativeplace', '3004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17185', '宁城县', '3004.11', 'nativeplace', '3004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17184', '喀喇沁旗', '3004.10', 'nativeplace', '3004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17183', '翁牛特旗', '3004.9', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17182', '克什克腾旗', '3004.8', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17181', '林西县', '3004.7', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17180', '巴林右旗', '3004.6', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17179', '巴林左旗', '3004.5', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17178', '阿鲁科尔沁旗', '3004.4', 'nativeplace', '3004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17177', '松山区', '3004.3', 'nativeplace', '3004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17176', '元宝山区', '3004.2', 'nativeplace', '3004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17175', '红山区', '3004.1', 'nativeplace', '3004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17174', '赤峰市', '3004', 'nativeplace', '3004', '1');
INSERT INTO `dede_sys_enum` VALUES ('17173', '乌达区', '3003.3', 'nativeplace', '3003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17172', '海南区', '3003.2', 'nativeplace', '3003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17171', '海勃湾区', '3003.1', 'nativeplace', '3003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17170', '乌海市', '3003', 'nativeplace', '3003', '1');
INSERT INTO `dede_sys_enum` VALUES ('17169', '达尔罕茂明安联合旗', '3002.9', 'nativeplace', '3003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17168', '固阳县', '3002.8', 'nativeplace', '3003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17167', '土默特右旗', '3002.7', 'nativeplace', '3003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17166', '九原区', '3002.6', 'nativeplace', '3003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17165', '白云矿区', '3002.5', 'nativeplace', '3003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17164', '石拐区', '3002.4', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17163', '青山区', '3002.3', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17162', '昆都仑区', '3002.2', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17161', '东河区', '3002.1', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17160', '包头市', '3002', 'nativeplace', '3002', '1');
INSERT INTO `dede_sys_enum` VALUES ('17159', '武川县', '3001.9', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17158', '清水河县', '3001.8', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17157', '和林格尔县', '3001.7', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17156', '托克托县', '3001.6', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17155', '土默特左旗', '3001.5', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17154', '赛罕区', '3001.4', 'nativeplace', '3001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17153', '玉泉区', '3001.3', 'nativeplace', '3001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17152', '回民区', '3001.2', 'nativeplace', '3001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17151', '新城区', '3001.1', 'nativeplace', '3001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17150', '呼和浩特市', '3001', 'nativeplace', '3001', '1');
INSERT INTO `dede_sys_enum` VALUES ('17149', '内蒙古自治区', '3000', 'nativeplace', '3000', '0');
INSERT INTO `dede_sys_enum` VALUES ('17148', '汾阳市', '2511.13', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17147', '孝义市', '2511.12', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17146', '交口县', '2511.11', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17145', '中阳县', '2511.10', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17144', '方山县', '2511.9', 'nativeplace', '2512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17143', '岚　县', '2511.8', 'nativeplace', '2512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17142', '石楼县', '2511.7', 'nativeplace', '2512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17141', '柳林县', '2511.6', 'nativeplace', '2512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17140', '临　县', '2511.5', 'nativeplace', '2512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17139', '兴　县', '2511.4', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17138', '交城县', '2511.3', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17137', '文水县', '2511.2', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17136', '离石区', '2511.1', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17135', '吕梁市', '2511', 'nativeplace', '2511', '1');
INSERT INTO `dede_sys_enum` VALUES ('17134', '霍州市', '2510.17', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17133', '侯马市', '2510.16', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17132', '汾西县', '2510.15', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17131', '蒲　县', '2510.14', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17130', '永和县', '2510.13', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17129', '隰　县', '2510.12', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17128', '大宁县', '2510.11', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17127', '乡宁县', '2510.10', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17126', '吉　县', '2510.9', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17125', '浮山县', '2510.8', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17124', '安泽县', '2510.7', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17123', '古　县', '2510.6', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17122', '洪洞县', '2510.5', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17121', '襄汾县', '2510.4', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17120', '翼城县', '2510.3', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17119', '曲沃县', '2510.2', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17118', '尧都区', '2510.1', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17117', '临汾市', '2510', 'nativeplace', '2510', '1');
INSERT INTO `dede_sys_enum` VALUES ('17116', '原平市', '2509.14', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17115', '偏关县', '2509.13', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17114', '保德县', '2509.12', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17113', '河曲县', '2509.11', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17112', '岢岚县', '2509.10', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17111', '五寨县', '2509.9', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17110', '神池县', '2509.8', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17109', '静乐县', '2509.7', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17108', '宁武县', '2509.6', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17107', '繁峙县', '2509.5', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17106', '代　县', '2509.4', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17105', '五台县', '2509.3', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17104', '定襄县', '2509.2', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17103', '忻府区', '2509.1', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17102', '忻州市', '2509', 'nativeplace', '2509', '1');
INSERT INTO `dede_sys_enum` VALUES ('17101', '河津市', '2508.13', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17100', '永济市', '2508.12', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17099', '芮城县', '2508.11', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17098', '平陆县', '2508.10', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17097', '夏　县', '2508.9', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17096', '垣曲县', '2508.8', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17095', '绛　县', '2508.7', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17094', '新绛县', '2508.6', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17093', '稷山县', '2508.5', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17092', '闻喜县', '2508.4', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17091', '万荣县', '2508.3', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17090', '临猗县', '2508.2', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17089', '盐湖区', '2508.1', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17088', '运城市', '2508', 'nativeplace', '2508', '1');
INSERT INTO `dede_sys_enum` VALUES ('17087', '介休市', '2507.11', 'nativeplace', '2507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17086', '灵石县', '2507.10', 'nativeplace', '2507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17085', '平遥县', '2507.9', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17084', '祁　县', '2507.8', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17083', '太谷县', '2507.7', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17082', '寿阳县', '2507.6', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17081', '昔阳县', '2507.5', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17080', '和顺县', '2507.4', 'nativeplace', '2507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17079', '左权县', '2507.3', 'nativeplace', '2507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17078', '榆社县', '2507.2', 'nativeplace', '2507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17077', '榆次区', '2507.1', 'nativeplace', '2507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17076', '晋中市', '2507', 'nativeplace', '2507', '1');
INSERT INTO `dede_sys_enum` VALUES ('17075', '怀仁县', '2506.6', 'nativeplace', '2507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17074', '右玉县', '2506.5', 'nativeplace', '2507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17073', '应　县', '2506.4', 'nativeplace', '2506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17072', '山阴县', '2506.3', 'nativeplace', '2506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17071', '平鲁区', '2506.2', 'nativeplace', '2506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17070', '朔城区', '2506.1', 'nativeplace', '2506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17069', '朔州市', '2506', 'nativeplace', '2506', '1');
INSERT INTO `dede_sys_enum` VALUES ('17068', '高平市', '2505.6', 'nativeplace', '2506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17067', '泽州县', '2505.5', 'nativeplace', '2506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17066', '陵川县', '2505.4', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17065', '阳城县', '2505.3', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17064', '沁水县', '2505.2', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17063', '城　区', '2505.1', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17062', '晋城市', '2505', 'nativeplace', '2505', '1');
INSERT INTO `dede_sys_enum` VALUES ('17061', '潞城市', '2504.13', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17060', '沁源县', '2504.12', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17059', '沁　县', '2504.11', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17058', '武乡县', '2504.10', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17057', '长子县', '2504.9', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17056', '壶关县', '2504.8', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17055', '黎城县', '2504.7', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17054', '平顺县', '2504.6', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17053', '屯留县', '2504.5', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17052', '襄垣县', '2504.4', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17051', '长治县', '2504.3', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17050', '郊　区', '2504.2', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17049', '城　区', '2504.1', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17048', '长治市', '2504', 'nativeplace', '2504', '1');
INSERT INTO `dede_sys_enum` VALUES ('17047', '盂　县', '2503.5', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17046', '平定县', '2503.4', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17045', '郊　区', '2503.3', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17044', '矿　区', '2503.2', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17043', '城　区', '2503.1', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17042', '阳泉市', '2503', 'nativeplace', '2503', '1');
INSERT INTO `dede_sys_enum` VALUES ('17041', '南郊区', '2502.12', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17040', '矿　区', '2502.11', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17039', '城　区', '2502.10', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17038', '大同县', '2502.9', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17037', '左云县', '2502.8', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17036', '浑源县', '2502.7', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17035', '灵丘县', '2502.6', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17034', '广灵县', '2502.5', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17033', '天镇县', '2502.4', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17032', '阳高县', '2502.3', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17031', '新荣区', '2502.2', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17030', '南郊区', '2502.1', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17029', '大同市', '2502', 'nativeplace', '2502', '1');
INSERT INTO `dede_sys_enum` VALUES ('17028', '古交市', '2501.10', 'nativeplace', '2501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17027', '娄烦县', '2501.9', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17026', '阳曲县', '2501.8', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17025', '清徐县', '2501.7', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17024', '晋源区', '2501.6', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17023', '万柏林区', '2501.5', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17022', '尖草坪区', '2501.4', 'nativeplace', '2501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17021', '杏花岭区', '2501.3', 'nativeplace', '2501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17020', '迎泽区', '2501.2', 'nativeplace', '2501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17019', '小店区', '2501.1', 'nativeplace', '2501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17018', '太原市', '2501', 'nativeplace', '2501', '1');
INSERT INTO `dede_sys_enum` VALUES ('17017', '山西省', '2500', 'nativeplace', '2500', '0');
INSERT INTO `dede_sys_enum` VALUES ('17016', '河间市', '2011.16', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17015', '黄骅市', '2011.15', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17014', '任丘市', '2011.14', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17013', '泊头市', '2011.13', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17012', '孟村回族自治县', '2011.12', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17011', '献　县', '2011.11', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17010', '吴桥县', '2011.10', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17009', '南皮县', '2011.9', 'nativeplace', '2012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17008', '肃宁县', '2011.8', 'nativeplace', '2012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17007', '盐山县', '2011.7', 'nativeplace', '2012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17006', '海兴县', '2011.6', 'nativeplace', '2012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17005', '东光县', '2011.5', 'nativeplace', '2012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17004', '青　县', '2011.4', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17003', '沧　县', '2011.3', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17002', '运河区', '2011.2', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17001', '新华区', '2011.1', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17000', '沧州市', '2011', 'nativeplace', '2011', '1');
INSERT INTO `dede_sys_enum` VALUES ('16999', '深州市', '2010.11', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16998', '冀州市', '2010.10', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16997', '阜城县', '2010.9', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('16996', '景　县', '2010.8', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('16995', '故城县', '2010.7', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('16994', '安平县', '2010.6', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('16993', '饶阳县', '2010.5', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('16992', '武强县', '2010.4', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16991', '武邑县', '2010.3', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16990', '枣强县', '2010.2', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16989', '桃城区', '2010.1', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16988', '衡水市', '2010', 'nativeplace', '2010', '1');
INSERT INTO `dede_sys_enum` VALUES ('16987', '三河市', '2009.10', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16986', '霸州市', '2009.9', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16985', '大厂回族自治县', '2009.8', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16984', '文安县', '2009.7', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16983', '大城县', '2009.6', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16982', '香河县', '2009.5', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16981', '永清县', '2009.4', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16980', '固安县', '2009.3', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16979', '广阳区', '2009.2', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16978', '安次区', '2009.1', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16977', '廊坊市', '2009', 'nativeplace', '2009', '1');
INSERT INTO `dede_sys_enum` VALUES ('16976', ' 围场满族蒙古族自治县', '2008.11', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16975', '宽城满族自治', '2008.10', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16974', '丰宁满族自治县', '2008.9', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16973', '隆化县', '2008.8', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16972', '滦平县', '2008.7', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16971', '平泉县', '2008.6', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16970', '兴隆县', '2008.5', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16969', '承德县', '2008.4', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16968', '鹰手营子矿区', '2008.3', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16967', '双滦区', '2008.2', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16966', '双桥区', '2008.1', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16965', '承德市', '2008', 'nativeplace', '2008', '1');
INSERT INTO `dede_sys_enum` VALUES ('16964', '崇礼县', '2007.17', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16963', '赤城县', '2007.16', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16962', '涿鹿县', '2007.15', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16961', '怀来县', '2007.14', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16960', '万全县', '2007.13', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16959', '怀安县', '2007.12', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16958', '阳原县', '2007.11', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16957', '蔚　县', '2007.10', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16956', '尚义县', '2007.9', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16955', '沽源县', '2007.8', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16954', '康保县', '2007.7', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16953', '张北县', '2007.6', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16952', '宣化县', '2007.5', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16951', '下花园区', '2007.4', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16950', '宣化区', '2007.3', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16949', '桥西区', '2007.2', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16948', '桥东区', '2007.1', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16947', '张家口市', '2007', 'nativeplace', '2007', '1');
INSERT INTO `dede_sys_enum` VALUES ('16946', '高碑店市', '2006.25', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16945', '安国市', '2006.24', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16944', '定州市', '2006.23', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16943', '涿州市', '2006.22', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16942', '雄　县', '2006.21', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16941', '博野县', '2006.20', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16940', '顺平县', '2006.19', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16939', '蠡　县', '2006.18', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16938', '曲阳县', '2006.17', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16937', '易县', '2006.16', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16936', '安新县', '2006.15', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16935', '望都县', '2006.14', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16934', '涞源县', '2006.13', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16933', '容城县', '2006.12', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16932', '高阳县', '2006.11', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16931', '唐　县', '2006.10', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16930', '定兴县', '2006.9', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16929', '徐水县', '2006.8', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16928', '阜平县', '2006.7', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16927', '涞水县', '2006.6', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16926', '清苑县', '2006.5', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16925', '满城县', '2006.4', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16924', '南市区', '2006.3', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16923', '北市区', '2006.2', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16922', '新市区', '2006.1', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16921', '保定市', '2006', 'nativeplace', '2006', '1');
INSERT INTO `dede_sys_enum` VALUES ('16920', '沙河市', '2005.19', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16919', '南宫市', '2005.18', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16918', '临西县', '2005.17', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16917', '清河县', '2005.16', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16916', '威　县', '2005.15', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16915', '平乡县', '2005.14', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16914', '广宗县', '2005.13', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16913', '新河县', '2005.12', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16912', '巨鹿县', '2005.11', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16911', '宁晋县', '2005.10', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16910', '南和县', '2005.9', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16909', '任　县', '2005.8', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16908', '隆尧县', '2005.7', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16907', '柏乡县', '2005.6', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16906', '内丘县', '2005.5', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16905', '临城县', '2005.4', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16904', '邢台县', '2005.3', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16903', '桥西区', '2005.2', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16902', '桥东区', '2005.1', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16901', '邢台市', '2005', 'nativeplace', '2005', '1');
INSERT INTO `dede_sys_enum` VALUES ('16900', '武安市', '2004.20', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16899', '曲周县', '2004.19', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16898', '魏县', '2004.18', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16897', '馆陶县', '2004.17', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16896', '广平县', '2004.16', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16895', '鸡泽县', '2004.15', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16894', '邱　县', '2004.14', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16893', '永年县', '2004.13', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16892', '肥乡县', '2004.12', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16891', '磁　县', '2004.11', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16890', '涉　县', '2004.10', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16889', '大名县', '2004.9', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16888', '成安县', '2004.8', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16887', '临漳县', '2004.7', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16886', '邯郸县', '2004.6', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16885', '峰峰矿区', '2004.5', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16884', '复兴区', '2004.4', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16883', '丛台区', '2004.3', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16882', '邯山区', '2004.2', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16881', '市辖区', '2004.1', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16880', '邯郸市', '2004', 'nativeplace', '2004', '1');
INSERT INTO `dede_sys_enum` VALUES ('16879', '卢龙县', '2003.7', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16878', '抚宁县', '2003.6', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16877', '昌黎县', '2003.5', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16876', '青龙满族自治县', '2003.4', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16875', '北戴河区', '2003.3', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16874', '山海关区', '2003.2', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16873', '海港区', '2003.1', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16872', '秦皇岛市', '2003', 'nativeplace', '2003', '1');
INSERT INTO `dede_sys_enum` VALUES ('16871', '迁安市', '2002.14', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16870', '遵化市', '2002.13', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16869', '唐海县', '2002.12', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16868', '玉田县', '2002.11', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16867', '迁西县', '2002.10', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16866', '乐亭县', '2002.9', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16865', '滦南县', '2002.8', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16864', '滦　县', '2002.7', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16863', '丰润区', '2002.6', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16862', '丰南区', '2002.5', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16861', '开平区', '2002.4', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16860', '古冶区', '2002.3', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16859', '路北区', '2002.2', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16858', '路南区', '2002.1', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16857', '唐山市', '2002', 'nativeplace', '2002', '1');
INSERT INTO `dede_sys_enum` VALUES ('16856', '鹿泉市', '2001.23', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16855', '新乐市', '2001.22', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16854', '晋州市', '2001.21', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16853', '藁城市', '2001.20', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16852', '辛集市', '2001.19', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16851', '赵　县', '2001.18', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16850', '元氏县', '2001.17', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16849', '平山县', '2001.16', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16848', '无极县', '2001.15', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16847', '赞皇县', '2001.14', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16846', '深泽县', '2001.13', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16845', '高邑县', '2001.12', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16844', '灵寿县', '2001.11', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16843', '行唐县', '2001.10', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16842', '栾城县', '2001.9', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16841', '正定县', '2001.8', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16840', '井陉县', '2001.7', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16839', '裕华区', '2001.6', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16838', '井陉矿区', '2001.5', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16837', '新华区', '2001.4', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16836', '桥西区', '2001.3', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16835', '桥东区', '2001.2', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16834', '长安区', '2001.1', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16833', '石家庄市', '2001', 'nativeplace', '2001', '1');
INSERT INTO `dede_sys_enum` VALUES ('16832', '河北省', '2000', 'nativeplace', '2000', '0');
INSERT INTO `dede_sys_enum` VALUES ('16831', '蓟　县', '1518', 'nativeplace', '1518', '1');
INSERT INTO `dede_sys_enum` VALUES ('16830', '静海县', '1517', 'nativeplace', '1517', '1');
INSERT INTO `dede_sys_enum` VALUES ('16829', '宁河县', '1516', 'nativeplace', '1516', '1');
INSERT INTO `dede_sys_enum` VALUES ('16828', '宝坻区', '1515', 'nativeplace', '1515', '1');
INSERT INTO `dede_sys_enum` VALUES ('16827', '武清区', '1514', 'nativeplace', '1514', '1');
INSERT INTO `dede_sys_enum` VALUES ('16826', '北辰区', '1513', 'nativeplace', '1513', '1');
INSERT INTO `dede_sys_enum` VALUES ('16825', '津南区', '1512', 'nativeplace', '1512', '1');
INSERT INTO `dede_sys_enum` VALUES ('16824', '西青区', '1511', 'nativeplace', '1511', '1');
INSERT INTO `dede_sys_enum` VALUES ('16823', '东丽区', '1510', 'nativeplace', '1510', '1');
INSERT INTO `dede_sys_enum` VALUES ('16822', '大港区', '1509', 'nativeplace', '1509', '1');
INSERT INTO `dede_sys_enum` VALUES ('16821', '汉沽区', '1508', 'nativeplace', '1508', '1');
INSERT INTO `dede_sys_enum` VALUES ('16820', '塘沽区', '1507', 'nativeplace', '1507', '1');
INSERT INTO `dede_sys_enum` VALUES ('16819', '红桥区', '1506', 'nativeplace', '1506', '1');
INSERT INTO `dede_sys_enum` VALUES ('16818', '河北区', '1505', 'nativeplace', '1505', '1');
INSERT INTO `dede_sys_enum` VALUES ('16817', '南开区', '1504', 'nativeplace', '1504', '1');
INSERT INTO `dede_sys_enum` VALUES ('16816', '河西区', '1503', 'nativeplace', '1503', '1');
INSERT INTO `dede_sys_enum` VALUES ('16815', '河东区', '1502', 'nativeplace', '1502', '1');
INSERT INTO `dede_sys_enum` VALUES ('16814', '和平区', '1501', 'nativeplace', '1501', '1');
INSERT INTO `dede_sys_enum` VALUES ('16813', '天津市', '1500', 'nativeplace', '1500', '0');
INSERT INTO `dede_sys_enum` VALUES ('16812', '延庆县', '1018', 'nativeplace', '1018', '1');
INSERT INTO `dede_sys_enum` VALUES ('16811', '密云县', '1017', 'nativeplace', '1017', '1');
INSERT INTO `dede_sys_enum` VALUES ('16810', '平谷区', '1016', 'nativeplace', '1016', '1');
INSERT INTO `dede_sys_enum` VALUES ('16809', '怀柔区', '1015', 'nativeplace', '1015', '1');
INSERT INTO `dede_sys_enum` VALUES ('16808', '大兴区', '1014', 'nativeplace', '1014', '1');
INSERT INTO `dede_sys_enum` VALUES ('16807', '昌平区', '1013', 'nativeplace', '1013', '1');
INSERT INTO `dede_sys_enum` VALUES ('16806', '顺义区', '1012', 'nativeplace', '1012', '1');
INSERT INTO `dede_sys_enum` VALUES ('16805', '通州区', '1011', 'nativeplace', '1011', '1');
INSERT INTO `dede_sys_enum` VALUES ('16804', '房山区', '1010', 'nativeplace', '1010', '1');
INSERT INTO `dede_sys_enum` VALUES ('16803', '门头沟区', '1009', 'nativeplace', '1009', '1');
INSERT INTO `dede_sys_enum` VALUES ('16802', '海淀区', '1008', 'nativeplace', '1008', '1');
INSERT INTO `dede_sys_enum` VALUES ('16801', '石景山区', '1007', 'nativeplace', '1007', '1');
INSERT INTO `dede_sys_enum` VALUES ('16800', '丰台区', '1006', 'nativeplace', '1006', '1');
INSERT INTO `dede_sys_enum` VALUES ('16799', '朝阳区', '1005', 'nativeplace', '1005', '1');
INSERT INTO `dede_sys_enum` VALUES ('16798', '宣武区', '1004', 'nativeplace', '1004', '1');
INSERT INTO `dede_sys_enum` VALUES ('16797', '崇文区', '1003', 'nativeplace', '1003', '1');
INSERT INTO `dede_sys_enum` VALUES ('16796', '西城区', '1002', 'nativeplace', '1002', '1');
INSERT INTO `dede_sys_enum` VALUES ('16795', '东城区', '1001', 'nativeplace', '1001', '1');
INSERT INTO `dede_sys_enum` VALUES ('16794', '北京市', '1000', 'nativeplace', '1000', '0');

-- ----------------------------
-- Table structure for `dede_sys_module`
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_sys_module
-- ----------------------------
INSERT INTO `dede_sys_module` VALUES ('1', '0cce60bc0238aa03804682c801584991', '百度新闻', '', '', '0', '');
INSERT INTO `dede_sys_module` VALUES ('2', '1f35620fb42d452fa2bdc1dee1690f92', '文件管理器', '', '', '0', '');
INSERT INTO `dede_sys_module` VALUES ('3', '72ffa6fabe3c236f9238a2b281bc0f93', '广告管理', '', '', '0', '');
INSERT INTO `dede_sys_module` VALUES ('4', 'b437d85a7a7bc778c9c79b5ec36ab9aa', '友情链接', '', '', '0', '');
INSERT INTO `dede_sys_module` VALUES ('5', 'acb8b88eb4a6d4bfc375c18534f9439e', '投票模块', '', '', '0', '');
INSERT INTO `dede_sys_module` VALUES ('6', '572606600345b1a4bb8c810bbae434cc', '挑错管理', '', '', '0', '');
INSERT INTO `dede_sys_module` VALUES ('7', '81323e93cd52ecce9f175b6aa46f5cfd', '百度站内搜索模块', '', '', '0', '<m:top name=\'百度站内搜索\' c=\'6,\' display=\'block\' rank=\'\'>\r\n  <m:item name=\'站内搜索\' link=\'baidusitemap_main.php\' rank=\'\' target=\'main\' />\r\n  <m:item name=\'搜索框管理\' link=\'baidusitemap_main.php?dopost=searchbox2\' rank=\'\' target=\'main\' />\r\n  <m:item name=\'结果页管理\' link=\'baidusitemap_main.php?dopost=searchpage2\' rank=\'\' target=\'main\' />\r\n  <m:item name=\'获得收入\' link=\'baidusitemap_main.php?dopost=income2\' rank=\'\' target=\'main\' />  \r\n  <m:item name=\'数据报表\' link=\'baidusitemap_main.php?dopost=report2\' rank=\'\' target=\'main\' />\r\n</m:top>');

-- ----------------------------
-- Table structure for `dede_sys_set`
-- ----------------------------
DROP TABLE IF EXISTS `dede_sys_set`;
CREATE TABLE `dede_sys_set` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sname` char(20) NOT NULL DEFAULT '',
  `items` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_sys_set
-- ----------------------------
INSERT INTO `dede_sys_set` VALUES ('1', 'nature', '性格外向,性格内向,活泼开朗,沉默寡言,幽默,稳重,轻浮,冲动,坚强,脆弱,幼稚,成熟,能说会道,自私,真诚,独立,依赖,任性,自负,自卑,温柔体贴,神经质,拜金,小心翼翼,暴躁,倔强,逆来顺受,不拘小节,婆婆妈妈,交际广泛,豪爽,害羞,狡猾善变,耿直,虚伪,乐观向上,悲观消极,郁郁寡欢,孤僻,难以琢磨,胆小怕事,敢做敢当,助人为乐,老实,守旧,敏感,迟钝,武断,果断,优柔寡断,暴力倾向,刻薄,损人利己,附庸风雅,时喜时悲,患得患失,快言快语,豪放不羁,多愁善感,循规蹈矩');
INSERT INTO `dede_sys_set` VALUES ('2', 'language', '普通话,上海话,广东话,英语,日语,韩语,法语,意大利语,德语,西班牙语,俄语,阿拉伯语');

-- ----------------------------
-- Table structure for `dede_sys_task`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_sys_task
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_tagindex`
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_tagindex
-- ----------------------------
INSERT INTO `dede_tagindex` VALUES ('1', '2', '26', '0', '1', '0', '0', '1471519417', '1471519417', '1471519417');
INSERT INTO `dede_tagindex` VALUES ('2', 'pos机办理', '31', '0', '1', '0', '0', '1502683315', '1502683315', '1502683315');

-- ----------------------------
-- Table structure for `dede_taglist`
-- ----------------------------
DROP TABLE IF EXISTS `dede_taglist`;
CREATE TABLE `dede_taglist` (
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`,`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_taglist
-- ----------------------------
INSERT INTO `dede_taglist` VALUES ('1', '60', '0', '26', '2');
INSERT INTO `dede_taglist` VALUES ('2', '62', '0', '31', 'pos机办理');

-- ----------------------------
-- Table structure for `dede_uploads`
-- ----------------------------
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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_uploads
-- ----------------------------
INSERT INTO `dede_uploads` VALUES ('1', '7', '多媒体2', '/uploads/allimg/160708/1-160FQ514550-L.jpg', '1', '0', '0', '0', '359448', '1467962095', '1');
INSERT INTO `dede_uploads` VALUES ('2', '6', '多媒体1', '/uploads/allimg/160708/160708/1-160FQ51620a9.jpg', '1', '800', '498', '0', '111690', '1467962180', '1');
INSERT INTO `dede_uploads` VALUES ('3', '8', '影片3', '/uploads/allimg/160708/1-160FQ52644G9.jpg', '1', '800', '476', '0', '109469', '1467962804', '1');
INSERT INTO `dede_uploads` VALUES ('4', '1', '公司介绍', '/uploads/allimg/160708/1-160FQ53043210.jpg', '1', '583', '192', '0', '57439', '1467963043', '1');
INSERT INTO `dede_uploads` VALUES ('5', '16', '精密数控车床1	', '/uploads/allimg/160726/1-160H61945370-L.jpg', '1', '0', '0', '0', '11051', '1469533537', '1');
INSERT INTO `dede_uploads` VALUES ('6', '17', '数控车床2', '/uploads/allimg/160726/1-160H61946310-L.jpg', '1', '0', '0', '0', '13422', '1469533591', '1');
INSERT INTO `dede_uploads` VALUES ('7', '23', '数控机床成为经济发展战略物资', '/uploads/allimg/160726/1-160H61954350-L.jpg', '1', '0', '0', '0', '3267', '1469534075', '1');
INSERT INTO `dede_uploads` VALUES ('8', '30', '数控加工案例1', '/uploads/allimg/160727/1-160HG62I80-L.jpg', '1', '0', '0', '0', '6277', '1469608058', '1');
INSERT INTO `dede_uploads` VALUES ('9', '31', '数控加工案例2', '/uploads/allimg/160727/1-160HG62Q50-L.jpg', '1', '0', '0', '0', '8736', '1469608095', '1');
INSERT INTO `dede_uploads` VALUES ('10', '36', '企业简介', '/uploads/allimg/160817/1-160QH0240ML.jpg', '1', '947', '140', '0', '77019', '1471436647', '1');
INSERT INTO `dede_uploads` VALUES ('11', '37', '企业文化', '/uploads/allimg/160817/1-160QH02639D9.jpg', '1', '947', '140', '0', '77019', '1471436799', '1');
INSERT INTO `dede_uploads` VALUES ('12', '38', '组织架构', '/uploads/allimg/160817/160817/1-160QH029194b.png', '1', '950', '432', '0', '18045', '1471436959', '1');
INSERT INTO `dede_uploads` VALUES ('13', '39', '公司荣誉', '/uploads/allimg/160817/1-160QH0303XI.png', '1', '137', '201', '0', '33705', '1471437038', '1');
INSERT INTO `dede_uploads` VALUES ('14', '39', '公司荣誉', '/uploads/allimg/160817/1-160QH03049444.png', '1', '139', '194', '0', '45411', '1471437049', '1');
INSERT INTO `dede_uploads` VALUES ('15', '40', '联系我们', '/uploads/allimg/160817/1-160QH03215413.png', '1', '946', '253', '0', '349260', '1471437135', '1');
INSERT INTO `dede_uploads` VALUES ('16', '51', '上海贤能信息行业新闻1', '/uploads/allimg/160817/1-160QH051440-L.jpg', '1', '0', '0', '0', '43912', '1471438304', '1');
INSERT INTO `dede_uploads` VALUES ('17', '52', '上海贤能信息行业新闻2', '/uploads/allimg/160817/160817/1-160QH05215921.jpg', '1', '261', '168', '0', '37195', '1471438335', '1');
INSERT INTO `dede_uploads` VALUES ('18', '53', '上海贤能信息行业新闻3', '/uploads/allimg/160817/160817/1-160QH052342a.jpg', '1', '261', '168', '0', '41243', '1471438354', '1');
INSERT INTO `dede_uploads` VALUES ('19', '54', '上海贤能信息行业新闻4', '/uploads/allimg/160817/160817/1-160QH05254932.jpg', '1', '261', '168', '0', '46314', '1471438374', '1');
INSERT INTO `dede_uploads` VALUES ('20', '51', '上海贤能信息行业新闻1', '/uploads/allimg/160817/160817/1-160QH05315403.jpg', '1', '261', '168', '0', '43912', '1471438395', '1');
INSERT INTO `dede_uploads` VALUES ('21', '55', '上海贤能信息公司新闻1', '/uploads/allimg/160817/160817/1-160QH05353933.jpg', '1', '261', '168', '0', '46314', '1471438433', '1');
INSERT INTO `dede_uploads` VALUES ('22', '56', '上海贤能信息公司新闻2', '/uploads/allimg/160817/160817/1-160QH05412209.jpg', '1', '261', '168', '0', '43912', '1471438452', '1');
INSERT INTO `dede_uploads` VALUES ('23', '57', '上海贤能信息公司新闻3', '/uploads/allimg/160817/160817/1-160QH05436191.jpg', '1', '261', '168', '0', '43912', '1471438476', '1');
INSERT INTO `dede_uploads` VALUES ('24', '58', '上海贤能信息公司新闻4', '/uploads/allimg/160817/160817/1-160QH05454K0.jpg', '1', '261', '168', '0', '45288', '1471438494', '1');

-- ----------------------------
-- Table structure for `dede_verifies`
-- ----------------------------
DROP TABLE IF EXISTS `dede_verifies`;
CREATE TABLE `dede_verifies` (
  `nameid` char(32) NOT NULL DEFAULT '',
  `cthash` varchar(32) NOT NULL DEFAULT '',
  `method` enum('local','official') NOT NULL DEFAULT 'official',
  `filename` varchar(254) NOT NULL DEFAULT '',
  PRIMARY KEY (`nameid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_verifies
-- ----------------------------

-- ----------------------------
-- Table structure for `dede_vote`
-- ----------------------------
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

-- ----------------------------
-- Records of dede_vote
-- ----------------------------
INSERT INTO `dede_vote` VALUES ('1', '你是从哪儿得知本站的？', '1266336000', '1584547200', '0', '0', '1', '1', '0', '0', '<v:note id=\"1\" count=\"1\">朋友介绍</v:note>rn<v:note id=\"2\" count=\"0\">门户网站的搜索引擎</v:note>rn<v:note id=\"3\" count=\"2\">Google或百度搜索</v:note>rn<v:note id=\"4\" count=\"2\">别的网站上的链接</v:note>rn<v:note id=\"5\" count=\"1\">其它途径</v:note>rn');

-- ----------------------------
-- Table structure for `dede_vote_member`
-- ----------------------------
DROP TABLE IF EXISTS `dede_vote_member`;
CREATE TABLE `dede_vote_member` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `voteid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` varchar(50) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_vote_member
-- ----------------------------

-- ----------------------------
-- Table structure for `dili_admins`
-- ----------------------------
DROP TABLE IF EXISTS `dili_admins`;
CREATE TABLE `dili_admins` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` smallint(5) unsigned DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '1=正常，2=冻结',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `group` (`role`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_admins
-- ----------------------------
INSERT INTO `dili_admins` VALUES ('1', 'admin', '2e5c80b21127043ef859261ee81c97332bab0ca0', '84b559a80e', 'hello@dilicms.com', '1', '1');

-- ----------------------------
-- Table structure for `dili_attachments`
-- ----------------------------
DROP TABLE IF EXISTS `dili_attachments`;
CREATE TABLE `dili_attachments` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `uid` smallint(10) NOT NULL DEFAULT '0',
  `model` mediumint(10) DEFAULT '0',
  `from` tinyint(1) DEFAULT '0' COMMENT '0:content model,1:cate model',
  `content` int(10) DEFAULT '0',
  `name` varchar(30) DEFAULT NULL,
  `folder` varchar(15) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `image` tinyint(1) DEFAULT '0',
  `posttime` int(11) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_attachments
-- ----------------------------

-- ----------------------------
-- Table structure for `dili_backend_settings`
-- ----------------------------
DROP TABLE IF EXISTS `dili_backend_settings`;
CREATE TABLE `dili_backend_settings` (
  `backend_theme` varchar(15) DEFAULT NULL,
  `backend_lang` varchar(10) DEFAULT NULL,
  `backend_root_access` tinyint(1) unsigned DEFAULT '1',
  `backend_access_point` varchar(20) DEFAULT 'admin',
  `backend_title` varchar(100) DEFAULT 'DiliCMS后台管理',
  `backend_logo` varchar(100) DEFAULT 'images/logo.gif',
  `plugin_dev_mode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `backend_http_auth_on` tinyint(1) DEFAULT '0',
  `backend_http_auth_user` varchar(40) DEFAULT NULL,
  `backend_http_auth_password` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_backend_settings
-- ----------------------------
INSERT INTO `dili_backend_settings` VALUES ('default', 'zh-cn', '1', '', 'DiliCMS', 'images/logo.gif', '0', '0', null, null);

-- ----------------------------
-- Table structure for `dili_cate_fields`
-- ----------------------------
DROP TABLE IF EXISTS `dili_cate_fields`;
CREATE TABLE `dili_cate_fields` (
  `id` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(40) DEFAULT NULL,
  `model` smallint(10) unsigned DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `length` smallint(10) unsigned DEFAULT NULL,
  `values` tinytext,
  `width` smallint(10) DEFAULT NULL,
  `height` smallint(10) DEFAULT NULL,
  `rules` tinytext,
  `ruledescription` tinytext,
  `searchable` tinyint(1) unsigned DEFAULT NULL,
  `listable` tinyint(1) unsigned DEFAULT NULL,
  `order` int(5) unsigned DEFAULT NULL,
  `editable` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`model`),
  KEY `model` (`model`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_cate_fields
-- ----------------------------

-- ----------------------------
-- Table structure for `dili_cate_models`
-- ----------------------------
DROP TABLE IF EXISTS `dili_cate_models`;
CREATE TABLE `dili_cate_models` (
  `id` mediumint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(40) NOT NULL,
  `perpage` varchar(2) NOT NULL,
  `level` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `hasattach` tinyint(1) NOT NULL DEFAULT '0',
  `built_in` tinyint(1) DEFAULT '0',
  `auto_update` tinyint(1) DEFAULT '0',
  `thumb_preferences` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_cate_models
-- ----------------------------
INSERT INTO `dili_cate_models` VALUES ('1', 'aaa', 'bbbb', '3', '1', '0', '0', '0', null);

-- ----------------------------
-- Table structure for `dili_fieldtypes`
-- ----------------------------
DROP TABLE IF EXISTS `dili_fieldtypes`;
CREATE TABLE `dili_fieldtypes` (
  `k` varchar(20) NOT NULL,
  `v` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_fieldtypes
-- ----------------------------
INSERT INTO `dili_fieldtypes` VALUES ('int', '整形(INT)');
INSERT INTO `dili_fieldtypes` VALUES ('float', '浮点型(FLOAT)');
INSERT INTO `dili_fieldtypes` VALUES ('input', '单行文本框(VARCHAR)');
INSERT INTO `dili_fieldtypes` VALUES ('textarea', '文本区域(VARCHAR)');
INSERT INTO `dili_fieldtypes` VALUES ('select', '下拉菜单(VARCHAR)');
INSERT INTO `dili_fieldtypes` VALUES ('select_from_model', '下拉菜单(模型数据)(INT)');
INSERT INTO `dili_fieldtypes` VALUES ('linked_menu', '联动下拉菜单(VARCHAR)');
INSERT INTO `dili_fieldtypes` VALUES ('radio', '单选按钮(VARCHAR)');
INSERT INTO `dili_fieldtypes` VALUES ('radio_from_model', '单选按钮(模型数据)(INT)');
INSERT INTO `dili_fieldtypes` VALUES ('checkbox', '复选框(VARCHAR)');
INSERT INTO `dili_fieldtypes` VALUES ('checkbox_from_model', '复选框(模型数据)(VARCHAR)');
INSERT INTO `dili_fieldtypes` VALUES ('wysiwyg', '编辑器(TEXT)');
INSERT INTO `dili_fieldtypes` VALUES ('wysiwyg_basic', '编辑器(简)(TEXT)');
INSERT INTO `dili_fieldtypes` VALUES ('datetime', '日期时间(VARCHAR)');
INSERT INTO `dili_fieldtypes` VALUES ('content', '内容模型调用(INT)');

-- ----------------------------
-- Table structure for `dili_lulu_jdfenlei`
-- ----------------------------
DROP TABLE IF EXISTS `dili_lulu_jdfenlei`;
CREATE TABLE `dili_lulu_jdfenlei` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dili_lulu_jdfenlei
-- ----------------------------
INSERT INTO `dili_lulu_jdfenlei` VALUES ('6', '金源果蔬', null, null);
INSERT INTO `dili_lulu_jdfenlei` VALUES ('7', '奉贤户外拓展', null, null);
INSERT INTO `dili_lulu_jdfenlei` VALUES ('8', '青浦梦幻田园拓展基地', null, null);
INSERT INTO `dili_lulu_jdfenlei` VALUES ('9', '长兴岛桔园拓展基地', null, null);
INSERT INTO `dili_lulu_jdfenlei` VALUES ('10', '嘉定户外拓展训练基地', null, null);
INSERT INTO `dili_lulu_jdfenlei` VALUES ('11', '葵园拓展基地', null, null);
INSERT INTO `dili_lulu_jdfenlei` VALUES ('12', '浦东喜来春拓展基地', null, null);
INSERT INTO `dili_lulu_jdfenlei` VALUES ('13', '华夏厚天军事拓展培训基地', null, null);
INSERT INTO `dili_lulu_jdfenlei` VALUES ('14', '上海地质科普拓展基地', null, null);
INSERT INTO `dili_lulu_jdfenlei` VALUES ('15', '桐庐青源谷野外拓展露营基地', null, null);

-- ----------------------------
-- Table structure for `dili_lulu_jdliuyan`
-- ----------------------------
DROP TABLE IF EXISTS `dili_lulu_jdliuyan`;
CREATE TABLE `dili_lulu_jdliuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jdfenlei_id` int(11) NOT NULL COMMENT '基地分类',
  `mobile` char(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '联系电话',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名',
  `huodongfenlei` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '活动分类',
  `renshu` smallint(5) DEFAULT '0' COMMENT '人数',
  `content` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `created` datetime DEFAULT NULL COMMENT '创建日期',
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dili_lulu_jdliuyan
-- ----------------------------
INSERT INTO `dili_lulu_jdliuyan` VALUES ('22', '3', '13817999192', 'ayq666', '拓展', '12345', '11111111111111111111111333333333333333', '2017-07-20 18:06:33', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('23', '3', '13817999192', 'ayq666', '拓展', '32767', '11111111111111111111111333333333333333', '2017-07-20 18:07:27', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('24', '3', '13817999192', 'ayq666', '拓展', '32767', '11111111111111111111111333333333333333', '2017-07-24 10:58:39', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('25', '3', '13817999192', 'ayq666', '拓展', '32767', '11111111111111111111111333333333333333', '2017-07-24 10:58:45', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('26', '3', '13817999192', 'ayq666', '拓展', '1', '11111111111111111111111333333333333333', '2017-07-24 10:59:05', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('27', '3', '13817999192', 'ayq666', '拓展', '1', '11111111111111111111111333333333333333', '2017-07-24 10:59:07', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('28', '3', '13817999192', 'ayq666', '拓展', '1', '11111111111111111111111333333333333333', '2017-07-24 10:59:12', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('29', '3', '13817999192', 'ayq666', '拓展', '1', '11111111111111111111111333333333333333', '2017-07-24 10:59:15', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('30', '3', '13817999192', 'ayq666', '拓展', '1', '11111111111111111111111333333333333333', '2017-07-24 11:06:45', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('31', '3', '13817999192', 'ayq666', '拓展', '1', '11111111111111111111111333333333333333', '2017-07-24 11:06:47', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('32', '3', '13817999192', 'ayq666', '拓展', '1', '11111111111111111111111333333333333333', '2017-07-24 11:06:54', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('33', '3', '13817999192', 'ayq666', '拓展', '1', '11111111111111111111111333333333333333', '2017-07-24 11:06:59', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('34', '1', '13817999192', 'ayq666', '拓展', '1', '11111111111111111111111333333333333333', '2017-07-24 11:20:20', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('35', '1', '13817999192', 'ayq666', '拓展', '1', '11111111111111111111111333333333333333', '2017-07-24 11:20:56', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('36', '1', '13817999192', 'ayq666', '拓展', '1', '11111111111111111111111333333333333333', '2017-07-24 11:21:47', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('37', '6', '13817999192', '卢猛', '拓展', '100', '', '2017-07-24 14:09:42', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('38', '6', '13817999192', '卢猛', '拓展', '100', '', '2017-07-24 14:09:46', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('39', '6', '13817999192', '卢猛', '拓展', '100', '', '2017-07-24 14:09:50', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('40', '8', '13817999192', '卢猛', '拓展', '50', '', '2017-07-24 14:30:52', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('41', '7', '13805406957', '111', '拓展', '0', '', '2017-07-24 14:34:26', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('42', '15', '13817999192', '李粟', '拓展', '200', '', '2017-07-24 14:36:37', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('43', '15', '13817999192', '李杰', '拓展', '200', '', '2017-07-24 14:39:09', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('44', '8', '13817999193', 'lijie', '家庭日', '20', '', '2017-07-24 14:58:45', '127.0.0.1');
INSERT INTO `dili_lulu_jdliuyan` VALUES ('45', '10', '15972935298', '苟生', '拓展', '14', '尽快回复', '2017-08-04 03:53:59', '127.0.0.1');

-- ----------------------------
-- Table structure for `dili_lulu_smscode`
-- ----------------------------
DROP TABLE IF EXISTS `dili_lulu_smscode`;
CREATE TABLE `dili_lulu_smscode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` char(20) NOT NULL COMMENT '手机号',
  `code` smallint(6) NOT NULL COMMENT '验证码',
  `ip` char(50) NOT NULL COMMENT 'ip',
  `type` tinyint(2) DEFAULT NULL COMMENT '授权的作用域',
  `created` datetime NOT NULL COMMENT '创建时间',
  `expiredtime` int(11) DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='短信验证码表';

-- ----------------------------
-- Records of dili_lulu_smscode
-- ----------------------------
INSERT INTO `dili_lulu_smscode` VALUES ('19', '13817999192', '0', '', '0', '2017-10-11 10:19:50', null);
INSERT INTO `dili_lulu_smscode` VALUES ('20', '13482521216', '0', '', '0', '2017-10-11 10:38:08', null);

-- ----------------------------
-- Table structure for `dili_lulu_user`
-- ----------------------------
DROP TABLE IF EXISTS `dili_lulu_user`;
CREATE TABLE `dili_lulu_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` char(20) DEFAULT NULL COMMENT '手机号',
  `name` char(50) DEFAULT NULL COMMENT '姓名',
  `privilege` char(50) DEFAULT NULL COMMENT '权限，基地id:1,2,3',
  `wx_openid` char(50) DEFAULT NULL COMMENT 'openid',
  `wx_access_token` varchar(255) DEFAULT NULL COMMENT '调用凭证',
  `wx_expires_in` int(10) DEFAULT NULL COMMENT '超时时间',
  `wx_refresh_token` varchar(255) DEFAULT NULL COMMENT '用户刷新access_token',
  `scope` varchar(255) DEFAULT NULL COMMENT '授权的作用域',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户注册表';

-- ----------------------------
-- Records of dili_lulu_user
-- ----------------------------
INSERT INTO `dili_lulu_user` VALUES ('19', '13817999192', null, null, 'oMCinwfXrDfCt1C5d5Lv2fb3hoSk', '', '0', '', '', '2017-10-11 10:19:50');
INSERT INTO `dili_lulu_user` VALUES ('20', '13482521216', null, null, 'oMCinwVfH8RcCLprfCG5F9f1HowU', '', '0', '', '', '2017-10-11 10:38:08');

-- ----------------------------
-- Table structure for `dili_lulu_user_fengxiang`
-- ----------------------------
DROP TABLE IF EXISTS `dili_lulu_user_fengxiang`;
CREATE TABLE `dili_lulu_user_fengxiang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_old` char(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '分享者',
  `phone_new` char(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受邀者',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户分享表';

-- ----------------------------
-- Records of dili_lulu_user_fengxiang
-- ----------------------------
INSERT INTO `dili_lulu_user_fengxiang` VALUES ('20', '13482521216', '13817999192', '2017-10-11 10:39:40');
INSERT INTO `dili_lulu_user_fengxiang` VALUES ('21', '13482521216', '18918976719', '2017-10-11 10:39:42');

-- ----------------------------
-- Table structure for `dili_lulu_wx_log`
-- ----------------------------
DROP TABLE IF EXISTS `dili_lulu_wx_log`;
CREATE TABLE `dili_lulu_wx_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '标题说明',
  `post_data` text,
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=886 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dili_lulu_wx_log
-- ----------------------------
INSERT INTO `dili_lulu_wx_log` VALUES ('263', '1 原POST', '-{\"signature\":\"594e5bc52719d54ffd33934d502a3e3457489057\",\"timestamp\":\"1501751180\",\"nonce\":\"115832753\",\"openid\":\"oWX6OuLvIUJOhFGl9dJr9ObMnXGc\",\"encrypt_type\":\"aes\",\"msg_signature\":\"3a47a7123bfddd941aa2d87039f68a4352b0fb3a\"}', '2017-08-03 17:06:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('264', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"T7ZrJIWJsu6kWr57sOtXKOcKm8nh6hYkEYbXSqMW0TK4QKFwne+dmATcR9JrMljbdQYmdHrUW6wCtS4MqUd8g3+DYeJQB8zBqQAF3IaCR5rYMjz7FQoQ\\/DqZgUrTq1CJE0uzHx41Y47gHGi\\/BNHJk7dJIBj\\/Ew3CBSTySdt92CS3ivsx0zoScOK\\/bLPyqfxceYhcyzzpe1UIzZmKMBbFF\\/0fHdv7FWijjRP+IJW9QMUlpfGpTNbG3IfsDbIAPQdR2wVYVBdUB4LZ7rYDNqJ\\/lzkrbXhgaUD8Ipbs2X+qabypgF\\/LHXdeYxJR2\\/fC0efqiA87oO78qNLyIuGUqkEQrzW7Nlia3WS\\/tBGLiBFs\\/lVYxSm3FobzXmbKPXew+swTRQEMSvbc6DdV6p0Fe2WIWKk4VlR51KqjcLsQtjk+IxViukUg8Ywbp4GO1e8XTrQvV+DmECvPE4ve1\\/Zc838j0w==\"}', '2017-08-03 17:06:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('265', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuLvIUJOhFGl9dJr9ObMnXGc]]></FromUserName>\n<CreateTime>1501751180</CreateTime>\n<MsgType><![CDATA[text]]></MsgType>\n<Content><![CDATA[这是测试内容]]></Content>\n<MsgId>6449972205251816559</MsgId>\n</xml>=====0', '2017-08-03 17:06:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('266', '1 原POST', '-[]', '2017-08-03 17:06:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('267', '2 POST php:// INPUT XML', 'false', '2017-08-03 17:06:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('268', '4 decryptMsg', '=====-40001', '2017-08-03 17:06:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('269', '1 原POST', '-{\"signature\":\"a07420ae308c6ad9167313e5e44ceb1f76fa8d72\",\"timestamp\":\"1501816152\",\"nonce\":\"1821572453\",\"openid\":\"oWX6OuCqapdX9KpukTiYkgCx_9I4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"f035d2ef3cefc7b0f43a434edeee044268c40720\"}', '2017-08-04 11:09:12');
INSERT INTO `dili_lulu_wx_log` VALUES ('270', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"a6Uvy9YhAo0bLlTuaqSUMhnJO2SSvQl1En5o5ra7X9jGvZDRP1ECYBN5NhtnnTC3Tuzh9tF7XhFtbcTykKNL6MB1901OIuBO909RcgaCRTCkbeDvHXtWgMJGmnNRBw\\/588Y5+MnAAA96dBBpuRQEYSmRAsopJqZxtUdh4FyJMISMv85a\\/aBSWZbap9Z7UeEda1vxDSuY6nvCzLfrtxFxxBa8ICmwqpsQfDysO7IXFAGdNCzYNJDLiqUEhpVCQLVPUGdzUA\\/l8UNUfg6IMdXrHEnk11LJBcI1BWGhzgLGfJziaVXMAsjqX+qQJF8FhKvAMJggR8BIqhZwhaBZCIJbAgIDAmAlb901Pk9p+Yq9mqkUKVvjH6fJfyVmr5oOMsWAlym\\/QWecKMLohWv+hJ6s1LFtdjpzjDPnw0Az\\/yBrifE=\"}', '2017-08-04 11:09:12');
INSERT INTO `dili_lulu_wx_log` VALUES ('271', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuCqapdX9KpukTiYkgCx_9I4]]></FromUserName>\n<CreateTime>1501816152</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-04 11:09:12');
INSERT INTO `dili_lulu_wx_log` VALUES ('272', '1 原POST', '-{\"signature\":\"47b6f4b6743ea9028e745ab04ec1a3608358348a\",\"timestamp\":\"1501816192\",\"nonce\":\"764983290\",\"openid\":\"oWX6OuCqapdX9KpukTiYkgCx_9I4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"bdf777e59980f69c177f90f3ee788397dd57e434\"}', '2017-08-04 11:09:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('273', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"xDkImEXwO6KAqGIwz4ufgPfoslGmNQ1U\\/qgMZGplwM5HjbU6yH0T2FMPJs\\/\\/Dmvz06F2kmqhyTKYXEEJSUErJhdpruDVrCJ9MP2oG8FvtekE+8S6dVCuL5ZP0MTcCLHfUHAh1g3lquwOWVEGCBnf4EgmSboqgnmumPj68BgYSSZnvUau3FlKRq\\/R58QXYyPdShjYiW0PyLCBectwi\\/6Z3hN2iGMNRMs2khYfAM36kaOID2NcRc+8+Y\\/bcuoOy8Ks53h4Xl+qDjsX+4WZygpNHJ2gWYmGtCitQeMqoBHB2PbRXHEWWnJOdyyI8dWpAU7EkzRAqcDeU8BzTLCw0PcCASqLMHaE1sPp2NjBvayXYEFYYh\\/HbBwBj2WedHvSOjGyItn9AgZ6QBfLS6\\/nx3VOyB0zLLMfBJuL6VQrtvmtcBk=\"}', '2017-08-04 11:09:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('274', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuCqapdX9KpukTiYkgCx_9I4]]></FromUserName>\n<CreateTime>1501816192</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-04 11:09:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('275', '1 原POST', '-{\"signature\":\"ebba3981c62fcca6179f63c20b6ab0b2f6a68da1\",\"timestamp\":\"1502245256\",\"nonce\":\"807078039\",\"openid\":\"oWX6OuElUZxSQHafni3cYxkeLJZ4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"9ef53c5bfd77ff8d673c81c5e97b1acc40116d8e\"}', '2017-08-09 10:20:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('276', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"XXat7R5FTbYlB3y8J82GjNGqrUppVD0Sz4FUbzZKgcL0ehiU55FHbtWNKuZ4DpjW7may1Bu0jM9kkCHYKoFzOnKUUYPihJHs7lDXrJwdQDGv3+DrrXSXvSKFVyWYFD\\/He0CQHXVcAUu52pyspwjOQw08I1MpZYr+koM3r4iKKfhcnj9v6HH69bV2vP68pVakH4i02EvEYuGlvNcmv1rQUG7+44tPE3EEQem4fenEJlEHoS6L\\/MiBquf4PL\\/kQZdgo04xZwklk\\/FymB0IcL0d\\/a30z6V+J8XZ5hg1jBDf03GhBjL+7pTalFf3ezIZqha9cj+2dYazZ82XXP0PkCACGnWnuiW84e2rAOV\\/0HEEAUUV5nOR+YTzdQzHGLcP7xWZ3GSNsqo7VGKINxpHjnVh0Yw3BAzeA5VajoodzYrt26M=\"}', '2017-08-09 10:20:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('277', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuElUZxSQHafni3cYxkeLJZ4]]></FromUserName>\n<CreateTime>1502245256</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-09 10:20:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('278', '1 原POST', '-{\"signature\":\"550bdd5ec87d9e087d75ab19be5dad05f84bb1e3\",\"timestamp\":\"1502277007\",\"nonce\":\"1950163\",\"openid\":\"oWX6OuMkDt1pX62295gQHrvm9puc\",\"encrypt_type\":\"aes\",\"msg_signature\":\"956dd0de6f8d89e89ecd65a99b9a4b71b0f52d80\"}', '2017-08-09 19:10:07');
INSERT INTO `dili_lulu_wx_log` VALUES ('279', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"aHFZndzfweNA2jCiGkCeHy39T1wzQHyzcN+qh8SFO+SoKgKkgax7Jm227CZ15i2kNPitNVfalfMC+4I1sAfTpQ+PrLPOV23LicSqnUa2RRks7ioVuB\\/TDlVFMBWojaLJENlfMs9VAQ1x4cCF3Nea9E+hicQL9LHyfoSCS\\/ZpH5qtpPCVyMibARrbz0Ew1scBsORgrkG2WtFJSaZTQU4o3w\\/LSlthkoBfctYW4RNRYYRcGxxBSpwrGAMfBHIFDnDYVKv+8zx3rwq9aNTeQTQfPqwuvOnetz8jsOGFyzuuf\\/uCyOSIcol8gZX\\/qgBKofiAMVCp9YViiQ6Eqgv8CevxBMwSKq2GstJTybVvm70RTL66XVwHFfAef\\/3+oa\\/bY5Q6YK\\/nFJt69LmYVUWv\\/25cTVQ326KbbHZSrI8ERHJYbE8=\"}', '2017-08-09 19:10:07');
INSERT INTO `dili_lulu_wx_log` VALUES ('280', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuMkDt1pX62295gQHrvm9puc]]></FromUserName>\n<CreateTime>1502277007</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-09 19:10:07');
INSERT INTO `dili_lulu_wx_log` VALUES ('281', '1 原POST', '-{\"signature\":\"f92c973f40790b8b762833b41139fa1aa694f7a4\",\"timestamp\":\"1502363761\",\"nonce\":\"1202158092\",\"openid\":\"oWX6OuIj2Av7kdM5p_IILVioh7Ts\",\"encrypt_type\":\"aes\",\"msg_signature\":\"b29bd0a823ce5c58d4fad5a532b54c5055cff478\"}', '2017-08-10 19:16:01');
INSERT INTO `dili_lulu_wx_log` VALUES ('282', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"vU1yHOobipWRZsYjKSZm8pZ7lffEQyGewx90GEuJ1B\\/3fsvxjFRgeTBfxyVioyBwV2xDuSgdE2V7Egy7ED9uS1kCMmQhglRJjvR\\/X2DOHO5m6X1Yribe0PxOV2WpWhQc6P05wqJRe4lyCyd6ZgWfFuF\\/O\\/qZMQl5YJZ33ueKSeuTdOlsbz09NfZ7j80CYZICq0rI09obeMVucPAg7RPHERmcBrgRMGJuS9oPUm9D\\/JvuwA2ufU6AXNxluaRRLhjKit4+m2BUylfLHe89vAZBm7ShXdrz1sB3KzExqHaVtQEPmW5Z2gDBCzOIByQ1Y3J7FGJE1O2PCn9ynWF3ALG7cO9KGpfkSG\\/9MzEpDzgkNNfPlETmy6iA7+H3btbI4MjCVqAIK0utXYMnPCLd59fIxgDlLDXAwrB8wr8hAZWXFaI=\"}', '2017-08-10 19:16:01');
INSERT INTO `dili_lulu_wx_log` VALUES ('283', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuIj2Av7kdM5p_IILVioh7Ts]]></FromUserName>\n<CreateTime>1502363761</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-10 19:16:01');
INSERT INTO `dili_lulu_wx_log` VALUES ('284', '1 原POST', '-{\"signature\":\"d96bc23a55ffba063b7c46833e13a125d3b16966\",\"timestamp\":\"1502432641\",\"nonce\":\"1812913727\",\"openid\":\"oWX6OuH7IXrm7GDniKZHcHE91YVs\",\"encrypt_type\":\"aes\",\"msg_signature\":\"0302ef4cb271d93b0e558f70810fbaecbbffa2ae\"}', '2017-08-11 14:24:04');
INSERT INTO `dili_lulu_wx_log` VALUES ('285', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"qQfC61XPfvEnvVIbSNV+dNwMdsTuOzC2OVCjYapVIc3zY7qlPby1AMNc9Bjk\\/TkA5HNm5AGNKmQRGdJ56YeJsQPpEGJqTS1C924K9nBp4fkBx+h9xDGUL4uc0+nfc8USU4SPe6NnuqIcuGDOp39HGRXUQJhjRe8vK0TTsEvxoqeH7Fwfynhq3uxzyyRjCziTq4GrXuBEX0Qj8hhFGzHxCvbqCwvb2LLvd3nWe6QiDbBi5giOj6TzciCz\\/vRMIyPLQFh3b1Poc4EUDWgQVVktJcmhyBInvYHmt+QJGuBFGXaABkPnbsdX6peqVM2n+048QEVEsPDDpNS4SWgNhlVG34Sm4vDignHHbeimeffTd0XlvqiIlOImDsYlMMItm3e2HEEmmQm76yD\\/dAKbvzLKXfd+k0NQiP3NW4iOqNo\\/5EJswUOgHeAJK5L54MO5A\\/gNlbm4jEyUcDX\\/2eaXomAC0Ka1itInFmoOeVuR01PUF0seB9R\\/L3eDaiKk7mexH7VpjgpwvFJATb7F68dcZpDzsmjdVSg5P6PvneXv7KmiQf5InokeE\\/R7fEQWl3Dh3iu5qpfzeJByZWR\\/iZVCbfWQ4qe90oHmtgknAQZ0FzhHEdg3wFWO8QimpCggRToqWIdqafCsYvb+1lwcWhN74II98UoH6QGM6wsIuTHldqfokbLjU5oTAXoihIJ7UyBkIk0zq5X79UlCZEkAXVPATYR868QRSnaFtn8wII0380szk6t9Os5vFJlGS0+pv5JDRFpEUsATF4W4KH69Op1pnPpxfNH8C8mG15BCMSNN9kp17qU=\"}', '2017-08-11 14:24:04');
INSERT INTO `dili_lulu_wx_log` VALUES ('286', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuH7IXrm7GDniKZHcHE91YVs]]></FromUserName>\n<CreateTime>1502432641</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[MASSSENDJOBFINISH]]></Event>\n<MsgID>1000000038</MsgID>\n<Status><![CDATA[send success]]></Status>\n<TotalCount>968</TotalCount>\n<FilterCount>968</FilterCount>\n<SentCount>968</SentCount>\n<ErrorCount>0</ErrorCount>\n<CopyrightCheckResult><Count>0</Count>\n<ResultList></ResultList>\n<CheckState>0</CheckState>\n</CopyrightCheckResult>\n</xml>=====0', '2017-08-11 14:24:04');
INSERT INTO `dili_lulu_wx_log` VALUES ('287', '1 原POST', '-{\"signature\":\"907abfa2c590187d273ece9b0ab9ded79b7a0f8a\",\"timestamp\":\"1502447983\",\"nonce\":\"577283110\",\"openid\":\"oWX6OuFUoQv20GAHLtywZhenE3qU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"69de1b5705b97476deb5e7437d1d0203fb9dd88c\"}', '2017-08-11 18:39:43');
INSERT INTO `dili_lulu_wx_log` VALUES ('288', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"uk8u5yd6JVvHhpHUB2DxGXyNaQcwY3eDy5jjeZ4LJ6JKFuTECFFygg4Ah7ZbyIAYbw33LOxYJItqGrgiNcIAvRz\\/0GvUYfDGjpX84DChDE4ljx5trVDjXfpAv70JUu5vOm9eMwOBsyjPFyYgq3bhxsh0Ii3hDsSEpha3aS6z3N+lynCLTdY83I0hzJe1sy\\/F2VF0jV7xsFK4EJ4RHWVtPRKFeEHsHQZTGFwqQaDZJ4QFhnVLoSQFRoaODUTBL7F\\/XjO2qgwJMcAvNoUn0yngkNIHtBGuL\\/7lO8Y2QzwrhTrZtyX5uFpAlKWgQ0JYwrysSEITWWcasBblyqtVmOXdfDv\\/TnkE9n14tSexYYJGqP68Sjtn0QtNqxPH558n6+KoCiuWVmGJMzUzitmwGtxhRLYxvQExqWA0WIBi\\/Z6OPh4=\"}', '2017-08-11 18:39:43');
INSERT INTO `dili_lulu_wx_log` VALUES ('289', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuFUoQv20GAHLtywZhenE3qU]]></FromUserName>\n<CreateTime>1502447983</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-11 18:39:43');
INSERT INTO `dili_lulu_wx_log` VALUES ('290', '1 原POST', '-{\"signature\":\"2202074bcfaa17302f805228b6bd9472f8876db8\",\"timestamp\":\"1502453395\",\"nonce\":\"913849321\",\"openid\":\"oWX6OuIAEtcNxSHw_tv-lw94Ghfk\",\"encrypt_type\":\"aes\",\"msg_signature\":\"32d9ac1e3247ceec7a68deb458fe622ff30527c1\"}', '2017-08-11 20:09:55');
INSERT INTO `dili_lulu_wx_log` VALUES ('291', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"6K5MldNKEmxrjkFzJiW2G3LAbhcaei0GbxxkAoFPlJHdmpZ6Xndup54\\/DCZAb78sNrfWOgFmMZxqjMSNylCbzHY+WERcp\\/oGW1G1XOIgOVOAMNmH2zNdn9tnbpiEJTpmT4mlGE2NNsg\\/zbzs43THgbQOO0hgfYMyf7DAl+IJMPLu4\\/IXaywZx1x4qpEmbhy8p6Qxz2AFmprA+CIPW5EvvYBPSGcY6aKlYL9lkxRn4FZ3sPXdPmWDw7a2GXn5qGZMEWUUqoeDeyrJM9qSegSiBV2f7Gveuqe9c8gVhVD0jo6Bib6QJsCj36pbsmaf4v+QabRJ2iv0yqkKKM\\/teSiK\\/ynVp4+T7NHbQitJziaIgbZwHgFb2J9+SKUbW85NORjRuik9CPX4RHTK6MAVi7iCxmw28Orcd8b88zVzllZck+c=\"}', '2017-08-11 20:09:55');
INSERT INTO `dili_lulu_wx_log` VALUES ('292', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuIAEtcNxSHw_tv-lw94Ghfk]]></FromUserName>\n<CreateTime>1502453395</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-11 20:09:55');
INSERT INTO `dili_lulu_wx_log` VALUES ('293', '1 原POST', '-{\"signature\":\"6a914914d8be9c141ca8b586dfc09724879043fb\",\"timestamp\":\"1502509641\",\"nonce\":\"497452338\",\"openid\":\"oWX6OuHTb8P_NWoy7MWmZioIU6DQ\",\"encrypt_type\":\"aes\",\"msg_signature\":\"1b0446e727cfd65d8cf025bf142f2161a690c7e7\"}', '2017-08-12 11:47:21');
INSERT INTO `dili_lulu_wx_log` VALUES ('294', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"dm4OvkgB+ncAY0yhUY4fmG2L7Qvn2W0tO\\/aLaypfyxMGL45sox5tgiVcFI64Y4sMNmPqrnTLTGjR1hzuaVa7Fb+Cos9xrnHB5\\/VAETpRAKWgn39xuj2mNgqtwILcVufr4Y7u3m5U8pREJHXjMbCmh8DUeB69FSkUJXF1lMQCqCgI+v+LIj8OY8jN92PcvBdHK9GitKRPNP1fjtILlbAoaHESmqWOllQhkwBMal4ajPrauNEFJLNr4Q09wcMCF\\/NerCEwYr+U\\/LvZvNkAFHVMUNEYaicKNmszSNHejNUjSGwIaNn82thd7k\\/AGZVNoMziuPvl1KdGvhEHnxkwQjygor5G0lpk6tpbI2yt9BEjgjHH5OWBDs9tjtXK\\/ZGsJSpKqt0QNvmhYHDbJshEaBlX\\/Qrf2NMHu7yT3O70wiKaUlQ=\"}', '2017-08-12 11:47:21');
INSERT INTO `dili_lulu_wx_log` VALUES ('295', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuHTb8P_NWoy7MWmZioIU6DQ]]></FromUserName>\n<CreateTime>1502509641</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-12 11:47:21');
INSERT INTO `dili_lulu_wx_log` VALUES ('296', '1 原POST', '-{\"signature\":\"6870bfae73dc64314d818e38642560077c45383e\",\"timestamp\":\"1502521592\",\"nonce\":\"7991063\",\"openid\":\"oWX6OuK0Tny4Yf89HZ-Jbg6R-S4I\",\"encrypt_type\":\"aes\",\"msg_signature\":\"4d41cecea40fd202f8e5369876275c3e740cc448\"}', '2017-08-12 15:06:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('297', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"3rgZBXaez0NIremJvQkbSqasEoM9Rij2pO0WHOfzwEptHkdLoBYwpljiyh74J+80xO5W98pz\\/DidOdomB2AMhw1S18uVR6a2OpcYQy2RB0PEX\\/L6LVkyHWb\\/66Qi6viTQS7ZbaA1SYVWD7MLrVPt53aM5g9HruQNv7wIUe9E1RFxzS1jF6uurKKFoHA6+KCrL64T3PjwhChKz5Z7GYG\\/j1gZlz4k95ZU+Dc3FQFWG5\\/98rnWjLh6Xe7cGMnq0uPK9vFEWOGbl2EBJz2Bcv5JXZVgnX1zpLgOXQNnu9qmmiUaoGsJ3bJzYsogHc6tuGq\\/t1KPSQLBsCzvDl2\\/fWgu5rpP1B8qMsepnpMn5KOuxMDjfdbqOnE1eqREO74\\/fheCiV+9Q68eXxc4\\/Li4T5QgzpI8M\\/nt79PvPlaJvQL0DXU=\"}', '2017-08-12 15:06:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('298', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuK0Tny4Yf89HZ-Jbg6R-S4I]]></FromUserName>\n<CreateTime>1502521592</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-12 15:06:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('299', '1 原POST', '-[]', '2017-08-13 05:40:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('300', '2 POST php:// INPUT XML', 'false', '2017-08-13 05:40:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('301', '4 decryptMsg', '=====-40001', '2017-08-13 05:40:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('302', '1 原POST', '-[]', '2017-08-13 12:29:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('303', '2 POST php:// INPUT XML', 'false', '2017-08-13 12:29:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('304', '4 decryptMsg', '=====-40001', '2017-08-13 12:29:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('305', '1 原POST', '-{\"signature\":\"273ad187d4bd77d186baace2291af19b1602606b\",\"timestamp\":\"1502692650\",\"nonce\":\"778071012\",\"openid\":\"oWX6OuH7IXrm7GDniKZHcHE91YVs\",\"encrypt_type\":\"aes\",\"msg_signature\":\"72898c829eea924762d598c5f643125daaed0e2b\"}', '2017-08-14 14:37:29');
INSERT INTO `dili_lulu_wx_log` VALUES ('306', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"4y3c4cjytOCelilAo2UO1xSXaplW9lY87W+KWjiAyruvE7AG0XXzquBh8eE3mAYQ4x0a91NnlEHbYSEH5xK082M\\/6+BjJ3dBx1bYZh43lga3O51a2qOL2+OrOWzq41GruggK\\/npwOqf9FoAF4\\/sATYEODZDRwv3yMEWuTdeRLqEetojw8rkyzov7Kfua+AtL4Og1uyFudPbJs60StRmTOxpPkVcIHqwOpcuubOWnmQwS89U\\/VRuOzT2MdwRbBxw6qTBUmez0KOswX9Aokcbv9k+w7pCf6XmZU58D6DXGiXvA\\/Hqtj4oBnCr3u5PXYQDrfgZRysnsvW71gBsqh9S9DBaPrCf7W5q6e+vSG9CRwCS6J9TWBWN5b8BXa6nJbr+bJCGrWEtc8xPeC8\\/Exu8+HAyGiXirzQwaPmazBEiySxFx6s+qfsi9bdfaLKEqlTdfHqc3iZ+tGzh6Z2uU5IVjV2TDXHoeDobYT1xvzydh1HiolaiIfNuPyi4CMrvSzbaIlOqQVkVbd7ySUj79U\\/iURzTUQm9syC2z0FJC54vTeAgSp0vWt41lhr6YVdfNK6F6\\/yCt1uYY1Gx9zAjPBz2cy0h+IY7yb+DtmUJWrQtF6\\/gJFshljnLYUCLkPGWiWQ+KMvJsS3Z1ET8iDOMIU\\/4PQuIlfp0vh+DPDuV21EOKPNw2wiI7rgAKaXJxXXOnY1TGdeHtQxNYrs0g2HhqFnEfaDnfphq\\/YuTVXnTjRgO49bDbzDRPmKg7ToyfUkLPuZ\\/RGX55AP8kBMuWAKEHVKBqWTkDTq63z0fJAQjaC85SOT0=\"}', '2017-08-14 14:37:30');
INSERT INTO `dili_lulu_wx_log` VALUES ('307', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuH7IXrm7GDniKZHcHE91YVs]]></FromUserName>\n<CreateTime>1502692650</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[MASSSENDJOBFINISH]]></Event>\n<MsgID>1000000039</MsgID>\n<Status><![CDATA[send success]]></Status>\n<TotalCount>966</TotalCount>\n<FilterCount>966</FilterCount>\n<SentCount>966</SentCount>\n<ErrorCount>0</ErrorCount>\n<CopyrightCheckResult><Count>0</Count>\n<ResultList></ResultList>\n<CheckState>0</CheckState>\n</CopyrightCheckResult>\n</xml>=====0', '2017-08-14 14:37:30');
INSERT INTO `dili_lulu_wx_log` VALUES ('308', '1 原POST', '-{\"signature\":\"acf4f86c44671e0e76fe887184db574b421e324f\",\"timestamp\":\"1502716340\",\"nonce\":\"2092535713\",\"openid\":\"oWX6OuLogL-UPnPn4VGjXAFNSZzs\",\"encrypt_type\":\"aes\",\"msg_signature\":\"15b3a964f613abc6052d90beb28ff503e64883ee\"}', '2017-08-14 21:12:19');
INSERT INTO `dili_lulu_wx_log` VALUES ('309', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"1K4AjSZ5o13NCJXCeNnXB12jLQtDMJCBbkSf4GHEXCORbW4pOHjXzGqNg+K2qok8YRLsqEpRT162cvPX1sJOrV9eDiiJNQQEYi8\\/iUfMkbYkUYDNB+0j1k+ELZw+0fjXnyCb2nwAEtwOM5AgbvrDTYQvOwgRf0ykMpupR68o72EGob+pFi70ldTxBxWZ9I924ECdYbz3jBxQV6M0+MRLq2\\/R1v52CLHy1n4SogL18w3tRNnykq8Tk16W8zX3SIJ2Nr2LeAUS3xuZ2\\/lNINndtUbJvTO69YefNE12zpS55+V50FLacNo+bV9QmpkKzJmCMzslIzrKuScXFz7h4wz+wNRjvO7Ck6\\/DZJQOrlnX0ZR5SMSdT108RZXY6lA2uxE5XgwGMR4m9fTkf3wUttNbUZd45ahPNIFTQJcp5z88HVc=\"}', '2017-08-14 21:12:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('310', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuLogL-UPnPn4VGjXAFNSZzs]]></FromUserName>\n<CreateTime>1502716340</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-14 21:12:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('311', '1 原POST', '-{\"signature\":\"7eb4f8d175b51b878b11c402a073993322e6fa29\",\"timestamp\":\"1502721781\",\"nonce\":\"978966571\",\"openid\":\"oWX6OuL8Mt-ttN-Ml8ndD91FNJtU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"ac6ee6d654f5f9835a77b2025491bc2127acf3bf\"}', '2017-08-14 22:43:01');
INSERT INTO `dili_lulu_wx_log` VALUES ('312', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"rlr\\/Uil1IYC6gI4CFR\\/PTtHWvSb2f8nQwOfo+0vhFQK2zXn4jguBfOtc3gLWo5V6eTO4OyOJ0cA+U9vhSIbtPDc2No0iDHrPkWq1V5C39H1hCUu6vz4ObViYH5vHYzD4OIGdbB0IgGzXMAAvVVs2Gp0gy0exB0L+pMYMZ+UVII4XeRfbS1YUAVZZfIjRMheQRaxn5CL4L1hF76jj2tek6aYbRtfGh0H9DH3iE1htiq76wQnC9wKvaJCPLleiijYhFTXF69dKFOE+Qx7yrVUxmQRBTdyI7hoqr7CKxWl5UQDg47Pa3mTYn6hNQuJOZzYVCYNfeuVg4bsl8h0Vd9igJhfT+POE1Bf0Ta7xT7b7fY\\/NBASAp4VjvQblvGYfDN+TtupDelQ1QIdB9K6BmsLEKJSdUneKrre7WYk4qoB8qS4=\"}', '2017-08-14 22:43:01');
INSERT INTO `dili_lulu_wx_log` VALUES ('313', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuL8Mt-ttN-Ml8ndD91FNJtU]]></FromUserName>\n<CreateTime>1502721781</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-14 22:43:01');
INSERT INTO `dili_lulu_wx_log` VALUES ('314', '1 原POST', '-{\"signature\":\"7c4248b2e14ccf96e8140901aa8cf109a3335711\",\"timestamp\":\"1502764202\",\"nonce\":\"300114212\",\"openid\":\"oWX6OuH7IXrm7GDniKZHcHE91YVs\",\"encrypt_type\":\"aes\",\"msg_signature\":\"dd81a0b640994ffb53feb55bedff777e69faa5a2\"}', '2017-08-15 10:30:05');
INSERT INTO `dili_lulu_wx_log` VALUES ('315', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"fiIpwvdO8z0nVlhIg2Wm62VuUiGvrMVYl7woCZyeFXcglXXiphxeiqw2XB5tNkwurnjC6KGsG86R6OYu5GdikKU\\/NJc\\/cml9IrGCBP57joBCv3IL0KbGfIxs9diTuj65RPB8uoqAE1ONdfOOU824gZsmjhhsJE4A08LzmxC8aFoJNucRRsSoSqr+coZB\\/O\\/vs0+FAhNvGh\\/\\/yj8e\\/TR1qJ0T3zFIbUghxadya7Ir8m2CO3dKpfgvpGkQBdpNYbNSHeUp+CaabPQ+JVt8GD04X4xOTtnRtbRmd\\/7dNRVw2bu2bmiN7GtSynULqyRFzVf5fZgRJqiJRW9SzBMprZORkdromGITU9GUYDB2ejkgRNsVvKkFdo\\/j3SkjGxe1a9yHsqf6XmHPR7bBA8t8xblajsr40icXjyHdzcQ\\/K9IvAGs4RqGoxfWb+kIrQ26zGVSYkN45Q6zQsdZeL8IWuipaXMo6sImZ258ifytQCC8t8ZITMwTMD0HvTNE5BLsihvpzmqonK1WnD+Z7Nen1gKWRhqCBnzfTsC\\/vJuZVllhCK\\/rpJgwOhGPKWbiLmdFdKNGqNiKRNbq7Is2USoJeQy6LYKOioaz9gTA9XJC2mqDr4Bas\\/xJNV7S8DTH4UIUrZRC55H39HrVgsCsC3+M\\/K1fkUsVhYyhwckSPJawVTryHtJ8bc0eYcOhWgvICHAHi\\/DXMAPZsbuPZGjU7VcWkLQ6ZBif2lpz+Hv8g7WUTo60Faec0XUcv6W5qVGua8l2IuK6bIoqjs+O6OFwoMeZCOJ6gL1awSt0p62VP+Q\\/148JWOgo=\"}', '2017-08-15 10:30:05');
INSERT INTO `dili_lulu_wx_log` VALUES ('316', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuH7IXrm7GDniKZHcHE91YVs]]></FromUserName>\n<CreateTime>1502764202</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[MASSSENDJOBFINISH]]></Event>\n<MsgID>1000000040</MsgID>\n<Status><![CDATA[send success]]></Status>\n<TotalCount>964</TotalCount>\n<FilterCount>964</FilterCount>\n<SentCount>964</SentCount>\n<ErrorCount>0</ErrorCount>\n<CopyrightCheckResult><Count>0</Count>\n<ResultList></ResultList>\n<CheckState>0</CheckState>\n</CopyrightCheckResult>\n</xml>=====0', '2017-08-15 10:30:05');
INSERT INTO `dili_lulu_wx_log` VALUES ('317', '1 原POST', '-{\"signature\":\"cef3a0248de96469200e9fbec551eac7896ff51b\",\"timestamp\":\"1502926746\",\"nonce\":\"2114354988\",\"openid\":\"oWX6OuByQj5B-fycEKvUhEUtSNpY\",\"encrypt_type\":\"aes\",\"msg_signature\":\"d7457a6b01f32dc3f3c08bafce6ecc2120e1468d\"}', '2017-08-17 07:39:06');
INSERT INTO `dili_lulu_wx_log` VALUES ('318', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"HHRNcxBcGepvTgUoClic5JvN8yiB+Un7QovcOiXQyLvryjV\\/BCNwHqsO3dCZIcy\\/O6LPexrCgiJx7wXKmeTztHqvL8bvcRF3vTfdGPb9CBJ66QyJO4UBiEBO0OU9RKtz\\/ebID8SQgjsxbVRXzXFCY3BsorUu3KX71jD+ThB\\/wrVCq3uKgplawXtmqbW2QrbEUHqSUZaJYldEf7YQNnFwe+NkdujCcj0HZG1K3oc4DwT55CKaOmy37W6EVKIAK7+UgJ26BP07bi6UKBLl7vAbmGivocte02pWG9jhkdAi+u5AsTAbuyeWAy6J+5Zr5s8qbl6s4nPQ+ys6Jreqm4uZLw8XTRi0O40geehwFSrydmLGxLdWFGnDg1raWAaRXfeD8ia6RIUR+\\/lKJjY4bskbPiC7mC7caHq9juhFxmxZ1UU=\"}', '2017-08-17 07:39:06');
INSERT INTO `dili_lulu_wx_log` VALUES ('319', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuByQj5B-fycEKvUhEUtSNpY]]></FromUserName>\n<CreateTime>1502926746</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 07:39:06');
INSERT INTO `dili_lulu_wx_log` VALUES ('320', '1 原POST', '-{\"signature\":\"7fc7ec6cd1869d3ab778abc74f92a54f88f5b84e\",\"timestamp\":\"1502941334\",\"nonce\":\"38334378\",\"openid\":\"oWX6OuOK2PBrX5GQ5Ql4hR6HbBx4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"da272dea2f979732e07c42ccc1c24924c47442db\"}', '2017-08-17 11:42:14');
INSERT INTO `dili_lulu_wx_log` VALUES ('321', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"C\\/jTtYfxgaivIhJD2jiFIx6b92RIf6A1jvlTlfdS4IIoMtfOlbFmKELUkJnKgNmCdW+qsWfwEMQumfy9qBuWalsLAXXNFqP5sDUrD6wj2+c6taPxgDNVe3\\/sYdUNrD22FMHNARkC8H6cy4J2WGAU1f703j8QcUK7xP3d2x6nlngxD6b4zce9OJec1AsGWclBF3zkHqsX0JgcY+9YzYJswr7eSXMzpDDIjQzM9vpD9Tni59l1pv02biyoJQ3h70wddED5WceOLqBpJrf6RI+hQjkkp4Ig0Dtu3FbkpqywGJWU4ZU5IVL23X\\/e0xF8vwUwA5tDRzyf1jIGdJWLS5sxC5cSBLwzmz1sPEorrj0vbYTbMW1Kmkw6W7M6eYzYvDLxtF0P\\/sYoY6X+wIXBzmxPMH1fZOVywq+\\/s8vn+\\/DDVq0=\"}', '2017-08-17 11:42:14');
INSERT INTO `dili_lulu_wx_log` VALUES ('322', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuOK2PBrX5GQ5Ql4hR6HbBx4]]></FromUserName>\n<CreateTime>1502941334</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 11:42:14');
INSERT INTO `dili_lulu_wx_log` VALUES ('323', '1 原POST', '-{\"signature\":\"30b53928737aee917e30028512331be9a285ec2a\",\"timestamp\":\"1502941355\",\"nonce\":\"592353747\",\"openid\":\"oWX6OuGZjzTk7DZ61aJMUPRIOI78\",\"encrypt_type\":\"aes\",\"msg_signature\":\"524de5b8b1fe2829a582b62848c106e5b7702c02\"}', '2017-08-17 11:42:35');
INSERT INTO `dili_lulu_wx_log` VALUES ('324', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"In9FlEW0UG7jqFoioM1OvjLVXj91E0F7LUxNXKgUYYFrSVzlCkgVAuIk0DL3PM02FDIz80CT\\/YWUSarXIf3foCzVIonanlpBda711SXo1k5wZeuBLqt7OSDaJbpdEcUiOo+11MPnVP466sM1YZgENlQk\\/DZ9Ce7nFOmHRgipXXV4zM7lu\\/sB1Xv2AJg686SFEC17roemSEK4Scmkma3PebdNu\\/1eMkBuJbuSFnjBwT55UfwrD0AmQc+8y1vSDL+l\\/257C5H5WpAGUm1qnSDRN4nEoM+iylbRN\\/BE9DoUMas7Yacb9UuJoE7tc2el2IHqPv7O3qVnZCOYVQHbHxUa6UeZCSn8USpzw1cfaEzyLPfKmsV+QZuYcN5iaGRPDp\\/985XeSiXx31r56hQNu9YjHA2Cy96Lux3B1er1T+X7Rpc=\"}', '2017-08-17 11:42:35');
INSERT INTO `dili_lulu_wx_log` VALUES ('325', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGZjzTk7DZ61aJMUPRIOI78]]></FromUserName>\n<CreateTime>1502941355</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 11:42:35');
INSERT INTO `dili_lulu_wx_log` VALUES ('326', '1 原POST', '-{\"signature\":\"7e2c9fc731b35223a63245485de68e4dbc81d89a\",\"timestamp\":\"1502941522\",\"nonce\":\"701544496\",\"openid\":\"oWX6OuCjePumuRWc1zV8pCRc8EnE\",\"encrypt_type\":\"aes\",\"msg_signature\":\"7370d21fbaaa6d65147ffaa87ad4e56b75482afb\"}', '2017-08-17 11:45:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('327', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"i9pSIjYUafMLi8bFtAm\\/ZdRv4V2TxEZXuQAW1aBjElu9Jt2076LTcM1UXW\\/mGwlVSmum0gEedXdtvdF5IgF0ocyEIZLXxZLxJtEGqHSB6zUrLiI\\/E7srISugAD3C3FW0H0PRQilahSyen7OsOtxdDv\\/oZnctimxetj3uwoePUQPYBapPQz4PkW0nFidqDMR4ZGmBBVJTLRAgerqq\\/D59ft\\/QKE\\/4RkX01OXSrWb5j9XsNGkiz97UeuFOMivzgbDieogUPTZNLoXc5xa0ZbGD4UneiSjtZVsftZTXDj1A+Xwx+pPnPLmkQAkCUO5vNIfJYOmgr\\/zMMWo1ZstqfyfsEBBn\\/ZkA+W3umO5mmXITF4N2NWqsh\\/YHPWJEm8DMfM4iIHY7vKM3ghzmcgqZFGuS7LEHvMIq2NQGGa7bPPywjkg=\"}', '2017-08-17 11:45:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('328', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuCjePumuRWc1zV8pCRc8EnE]]></FromUserName>\n<CreateTime>1502941522</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 11:45:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('329', '1 原POST', '-{\"signature\":\"b9c7385746358bccff338cc171b3bddf32af3745\",\"timestamp\":\"1502941542\",\"nonce\":\"1996049674\",\"openid\":\"oWX6OuD6RWvWcS_OhFTArk3uke3c\",\"encrypt_type\":\"aes\",\"msg_signature\":\"637efea3b21b8acb006a726b294c83c08f5a0a66\"}', '2017-08-17 11:45:42');
INSERT INTO `dili_lulu_wx_log` VALUES ('330', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"ArfyZR+zQESjlDvo7oCOxJvvNB6cqH6h6wkJcfD5wgTGLohCmxvvLJomNyi2LDPYiss2C30aSi2Abp2Ox42H4xBkzTVXKXjemoGRgoNpX9tUkiWAUNQFIivXmNC2e4A\\/lKHKoK\\/BUpBobasyFxo2YdSJPu7X9MHWyrSPphSJxJoys3dLynJJnEiiyEQVx3xDGfz46VsNv2CuGmUtDB3sWj0XI\\/Q5hz4UGmBBWfv0T9W4aTKz3TLqtn1ZmV+72KY+YFJ6mZ9I7WlEDDAdIeHHD3gFcuUTH6ngMzdMkm44KJtpkIc+TY0EIyPVb304JPja7vzzUdcZyqV50+RlebzegicsbyRisFDtBNgIZOHdyirrhcEOPTw3DWLemYLQEWhEjy3MvxhjPXTwZjFMwg1KDlDt11z\\/3vIngupdQkPOj3o=\"}', '2017-08-17 11:45:42');
INSERT INTO `dili_lulu_wx_log` VALUES ('331', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuD6RWvWcS_OhFTArk3uke3c]]></FromUserName>\n<CreateTime>1502941542</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 11:45:42');
INSERT INTO `dili_lulu_wx_log` VALUES ('332', '1 原POST', '-{\"signature\":\"9f96ccc721ebf8b21fbecc394676b7e79887bae3\",\"timestamp\":\"1502941547\",\"nonce\":\"1258110258\",\"openid\":\"oWX6OuEfG3CRlcUPAsGHU3oQCp1Y\",\"encrypt_type\":\"aes\",\"msg_signature\":\"0360e0cb1222ccd93c55aa25eb87139bc9a8ed1a\"}', '2017-08-17 11:45:47');
INSERT INTO `dili_lulu_wx_log` VALUES ('333', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"VRVcwYknu\\/aOkz28OeXsSoPV\\/BRH5fnVsI43PsrGt7ZpzbeCJqEghNFTZpP8Z6sDptv3PLS5R6W1zOT4Fz6QWEtEJqA4vPYyO+QyLxACfLso2Xf745\\/clBZxsBgLDsxvpPLz7Booq9I2lSjTXCMBCYO4a8R79\\/Nv2\\/CJGuH0f9DyA3R8oIZFiPqt3dSMWFeFHh0fOBGtCBmbKDmUMcoteCff37rj\\/9xccxl\\/Bqo0nfDCXOlWJ0d19AfbCKo8ERO9ggb6F3x2y2kEXwGfhEOQKw4rnc2UxO+6DnDzlTNJIYJduT1EtDHq0kyNVwUp0afSgwJyOqW7hEK9QvcTMuNw1PoxxJmTPNLpu5p53FrZZuhSxIBvBvoISG+N0uyUR1d\\/unrrCEfqbOTrzskvAOh\\/O08HykZqGj+BrZhXzPUBmOI=\"}', '2017-08-17 11:45:47');
INSERT INTO `dili_lulu_wx_log` VALUES ('334', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuEfG3CRlcUPAsGHU3oQCp1Y]]></FromUserName>\n<CreateTime>1502941547</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 11:45:47');
INSERT INTO `dili_lulu_wx_log` VALUES ('335', '1 原POST', '-{\"signature\":\"a3f24c36a9a23f4e10fdff0fce63c92045acb54a\",\"timestamp\":\"1502941702\",\"nonce\":\"366760381\",\"openid\":\"oWX6OuNtl0jyfLkZCXMZGAqImdwQ\",\"encrypt_type\":\"aes\",\"msg_signature\":\"ead06969bd71d5db7199d21abefc90ddddc87705\"}', '2017-08-17 11:48:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('336', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"IQHBM+r1g5PoKXMBmtB2b6GpeI8vyHr7uNSlZXY1gyD\\/C5zBn152jwFlB8VtIGLvrHS5UC688FN31YkwVIqoDAxs7rOrZ\\/WCX0E7iUvsTqEVjzSAq5k0swwbspQyUcBKMfZyDfLbk7efEtZS+NPRX8bASJeG3hOsS+RynHGnd498mrby8MruQqGY1alBDiOHSuUUdEFRa9qsZjNudkhJ\\/aJq71HLehhOuKiV5jAEUV6ILVC1f2yKJVpgqY\\/SLyFPGJgDqyXzjC4DpFQRJ6czFdxuWcdRZ\\/umbxb\\/j24XJTGhsTr5kQKyL3vU2UAOj4ApV1ssA+G\\/IDVzaUZLp4PB5Tpdm3b\\/Mo0vBwrCEcmxxfTdIR3Mxmt4o38iBR0nvSwLjr0aRm25Pyu3\\/FJ0ral7OKceb3QtBECkw1YKBBawLbk=\"}', '2017-08-17 11:48:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('337', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuNtl0jyfLkZCXMZGAqImdwQ]]></FromUserName>\n<CreateTime>1502941702</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 11:48:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('338', '1 原POST', '-{\"signature\":\"9771e4adb4d1ab380938f315edb8f11b1639acd7\",\"timestamp\":\"1502941776\",\"nonce\":\"975762080\",\"openid\":\"oWX6OuKK8n_iSHCBV3wpNycgVL4E\",\"encrypt_type\":\"aes\",\"msg_signature\":\"12e599ceb67974b472f837a51d64e9ccd5629c9a\"}', '2017-08-17 11:49:36');
INSERT INTO `dili_lulu_wx_log` VALUES ('339', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"hhXnUuH9SimrpzSHwiWL0nLA+TYoUySA7JkSdYjNb3wYL8673rTRdroHD\\/G0Oc4jYr75+HvXDhnh0xJgWLEMYQNEvOEy1K91xSvyO+N6KjZhJP7cz96Mv9RCJLvnthdpz7WuT291fLjJFUZ2O3oA\\/NtJxDdU+CCIO+HS7NaH2KUsf9C2JdJB0qJgC8eVQpJKrgh1xDKHtB+DAexYrnFKYoevluKhoDbvPa7sLaOdqOofskspQfN+KeC4FrF5MCZ63QhO8s0hj62lRBzVpBnOqLw7Aog8dS5YV40LIkpRauKy0SyYoAIQmTg6dFHL8dSs0vzC5qofD5GL5gk8c4sGRKUJcCEcZmOQdLFZKXC0n7iUl6XfW46nt44kL7STRXqQa7OFVNE1uvguyKGC2jnuGZY\\/ikxS9Lmsfk9R0A8XF1M=\"}', '2017-08-17 11:49:36');
INSERT INTO `dili_lulu_wx_log` VALUES ('340', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuKK8n_iSHCBV3wpNycgVL4E]]></FromUserName>\n<CreateTime>1502941776</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 11:49:36');
INSERT INTO `dili_lulu_wx_log` VALUES ('341', '1 原POST', '-{\"signature\":\"a9647da3781cc64d635dfea1b61289633b7e13d0\",\"timestamp\":\"1502942524\",\"nonce\":\"1422100022\",\"openid\":\"oWX6OuMoBkcoNQRwUDXXroRYsy6s\",\"encrypt_type\":\"aes\",\"msg_signature\":\"f4c74e1128c6cd305bf2073942143f01a6548f93\"}', '2017-08-17 12:02:04');
INSERT INTO `dili_lulu_wx_log` VALUES ('342', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"bPBv0mR\\/TtNz3jVMuySRaHfsFQbLItiA1U3jJSvdxMT4O8KrN9h05NmBk2Bnl1bMZ4NdD4xYmKhjZ61relpmG3KFLE3jZk4p\\/JP\\/6ywhwci\\/sYBuSKH1KMRvQMlaM7bie3XH2826f\\/nbZYx4CFBilGG6qUQfzbXi+GDz5UBWXd\\/1\\/GJ7A6TfdQFwr29Jo5AcbVOHewCivfv8UWYJrgkwuDdnlok2+lfmFpakSqW+sc1ey3v7Uvk+WTVg8S2GjvZ247avdJYDyQJb04L4eMejUXYSiF7pWBKFkMBvYXJHr6tVBJwgqKPWVAZTcSJ1mg29sOFMlhaxXnckhYi3pyYfQOaTtP8cCbyOzQPX5tOOUrtPGFKFCAKoHbJFQ3U7ZrXJZvFiooqfjUkS\\/xZ5SHyklXvZnoNg5zwmlgQyuSqhgZo=\"}', '2017-08-17 12:02:04');
INSERT INTO `dili_lulu_wx_log` VALUES ('343', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuMoBkcoNQRwUDXXroRYsy6s]]></FromUserName>\n<CreateTime>1502942524</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 12:02:04');
INSERT INTO `dili_lulu_wx_log` VALUES ('344', '1 原POST', '-{\"signature\":\"5c7345100bddb777bf46baf9073dda658808f6e6\",\"timestamp\":\"1502943369\",\"nonce\":\"900547078\",\"openid\":\"oWX6OuJd90_FyBXpugZ7vpQXul1U\",\"encrypt_type\":\"aes\",\"msg_signature\":\"e95b9e62d036cb281ca77a614bb6eb5e1ce950c5\"}', '2017-08-17 12:16:09');
INSERT INTO `dili_lulu_wx_log` VALUES ('345', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"5UL4qZ4eVdxnB95\\/hAu0lTu3L1XLV6UAWYGl2nrZVbaI9ch1BDM9sFEIJwhT51I2r9JwcgKyzNS4ynA5vq2MKjUgEtfRuEJnJAwBXxu0BrY2L2JEvw8KcWohZcpRYeVrjGmoytWH9U2QniDVQb3+orjiUGIRN0Ux0RJpckX2WGmrsmZjBSzpAUrP8yTCwuenT7ZtctWCsxW+BgMjA6QhLaty985Mb+SX+1uxJa+ha3OtYqOL+TD+MjTTzOR21Rct\\/a2boHm9KEMZvurnjIaTJGifHER1kdvS0Comiq4kT77\\/gESKR9ytlcTX9GrIAPa4sTZXi2tUUeV5L+b12WPwXZCmN8EQEsWgXB8bxDfxgG\\/9AdZ0azzvmXW96i1f6kqQXlu3lYPTRdDzFkWzUkW9YpbkvC1sIqP2nrNOX41Wu\\/A=\"}', '2017-08-17 12:16:09');
INSERT INTO `dili_lulu_wx_log` VALUES ('346', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuJd90_FyBXpugZ7vpQXul1U]]></FromUserName>\n<CreateTime>1502943369</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 12:16:09');
INSERT INTO `dili_lulu_wx_log` VALUES ('347', '1 原POST', '-{\"signature\":\"f0c94506c038f421f6bff8e6dc6f09c579e50d23\",\"timestamp\":\"1502943772\",\"nonce\":\"1454701999\",\"openid\":\"oWX6OuBM5XrkC9dkqd0kDN8XxU2c\",\"encrypt_type\":\"aes\",\"msg_signature\":\"a25dfccb16994088b77ef1007e789109c614f7a9\"}', '2017-08-17 12:22:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('348', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"5hgvIbvBSZN6YeScOnffWU8W8DVBJ\\/Wimz4cQcq0YzZ05gLfHskCj\\/SftJuQGyB+68vWxgeZaS4sAOo\\/z0n7bzM4EwQA3gCjQFbT1iHP0Go+4XlkrT3f5p6\\/RuS8zgmNaRo2JyfJFHPYUXAquY5RA3uKxm6LPpxs1Jh1GyvNRSAV8Ldh0zbD1ZdAlk2XeGbWDUpOe+1ztyORNl3QDf8UCcPB5TSRkkLB08piHeL\\/LTXXFRr\\/juNGpxEZDV3bWl+xuBJOdS5pSYE4hPI1+KhLk5HZ28voHsca7BgG8Q6m5z0Wsgl4nnEU6UWicbJKN1t6Dcv\\/P7fg1qQpqW0es7GzMD4Jl\\/kRIoc79tutGDCFaFNeHIKfcNp4NwbD1I4RtOiMkYrJe4JyFnpZbCF35xtPBNOGlxFR\\/q9PT\\/E91yunheE=\"}', '2017-08-17 12:22:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('349', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuBM5XrkC9dkqd0kDN8XxU2c]]></FromUserName>\n<CreateTime>1502943772</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 12:22:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('350', '1 原POST', '-{\"signature\":\"23ebb7fee8a0d8d0d0a3a85643ef7f10c772a501\",\"timestamp\":\"1502945045\",\"nonce\":\"1182060455\",\"openid\":\"oWX6OuCqKy9Z-zDhPvK4DmuoGmm8\",\"encrypt_type\":\"aes\",\"msg_signature\":\"fe2e90d4a9626fbf68fd317da3afb6bc5dd1849d\"}', '2017-08-17 12:44:05');
INSERT INTO `dili_lulu_wx_log` VALUES ('351', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"LhR4m5NFlNKpWjlm9MF1+Pe1rlqtKDtW2Q3jfwHOY2DBp0YqIP2uhBlYmxipg6CQn1izA7TgKFFCiePg0BznUhw8jiMiuLVQnNEut6NwclgV7SLkGE25R9N4AlCA+uEH4pIe0nEKFAlhqrn2Vcn2AOkR7d\\/n0830br4nlWjsxE\\/UUZK0+Vx\\/anS4AnprfFPIsxd3SkpD4uRY3cWCIifXxgGu0UpThU5j5pXPsLRlVuzNy1yVfqugMagw9WCk+Ux8JURtM40WdzH2MGbPuosTioaEC3NdF\\/eOqfRlfYx3rbg+6W+O6TwcnuW+TAtYlzdEDAb8Q6Uz3lAtGqcFd0DH4cMlmEWhnyQcR7nwWR4TOpiUaH\\/\\/Kh+gWaU67eFqjNvzsNUkqB0aXffjTJZEoggpq5QZ+GA1SnOAcw0DXl0s9j8=\"}', '2017-08-17 12:44:05');
INSERT INTO `dili_lulu_wx_log` VALUES ('352', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuCqKy9Z-zDhPvK4DmuoGmm8]]></FromUserName>\n<CreateTime>1502945045</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 12:44:05');
INSERT INTO `dili_lulu_wx_log` VALUES ('353', '1 原POST', '-{\"signature\":\"678e7d5bc7ecd53a4d8322533f187b44e98114af\",\"timestamp\":\"1502945507\",\"nonce\":\"441439940\",\"openid\":\"oWX6OuCiHciNZxKx3iThEF5dyj0s\",\"encrypt_type\":\"aes\",\"msg_signature\":\"5ef487d98ecb00ebd56e0bd711594a4b6ed0a1f1\"}', '2017-08-17 12:51:46');
INSERT INTO `dili_lulu_wx_log` VALUES ('354', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"yp7+OY8MaGkQgy3Z1VJF7kFUUOQ3dmadobKgNzPujOF7AUgB2MQq78syBP9rMTkOxqfEqYceoXWAYbECHOF2p9ZDRjm+YVHENCXfRKc+95Vd3c09kS7nmj\\/WAqt\\/pAatRp0e9v6WqA4ZWQUOJxUoyhKM45dLG2CkQ2+tLLBqof0Cv+eRLuqjTcSLcJc9YQC5I5upUpcT8FboCHWTmXXtxCUop4T+3TqaTcBqNmoZ4m5YlfKcCswwl4WiMEBdIZNvy7Ej+0nARFa4mttwVKCJsSOA4woCrEmp8vTHCZtbMEFWSqZ5UYDz8vgx22Caoyppm1VEyzz18DZJ4H13LD4mGorEhiiCpLwtwaJ\\/JsYckFP7d9PXsCu5STdlhVloY9FZjx\\/XZ5wxGgqP0DOcuND6PmD+gSAhi9IwtOLFtTxx\\/qg=\"}', '2017-08-17 12:51:46');
INSERT INTO `dili_lulu_wx_log` VALUES ('355', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuCiHciNZxKx3iThEF5dyj0s]]></FromUserName>\n<CreateTime>1502945507</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 12:51:46');
INSERT INTO `dili_lulu_wx_log` VALUES ('356', '1 原POST', '-{\"signature\":\"aa423633baada3fc1a12f82e9b7990ab011aa846\",\"timestamp\":\"1502948624\",\"nonce\":\"947917562\",\"openid\":\"oWX6OuMi7VLdCEKcAx6Xjo87sVHU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"cda3e0e8450eeeacf50e236ed79a32e59ed773b8\"}', '2017-08-17 13:43:44');
INSERT INTO `dili_lulu_wx_log` VALUES ('357', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"jem06ZkZBfeaHDKiNPXsXptFl94iQuvLTnxczpgtuK7rxUzqW98WJoga17\\/cOHiBPz+PZUL8yPjR8n4F4W0yThies7D17ki8Pl29DJfJ5\\/LCjsKfyqe8VzQVongi1n6X6Z6\\/HHCfKDg5l+u+7etJbOrOAS8cxZe4ISnJtCwRib84uMlvfb4GphtUlMjLeKtPGx86mOf5Fwo2JSGHNZX7m8IDw8vRWuQ8I5\\/QsJPW5dkZkBpBrpSVoR5Hl4XHaGarF4n5AuLkEOrCBr+2pke9zK4Zszx6P5Nqje8gDD1ysdqvUQexVnplO+8VAuqOroYo+B+srwWUbQNBvo0ksr4H+A1CpTKOhi1K+2vdG2OVFDe\\/9l+6oOeVWj1SFSRYQfTsdplgoyuVZASw+JDEyq0erw4pQVpaWvSW+sNloz2u5gU=\"}', '2017-08-17 13:43:44');
INSERT INTO `dili_lulu_wx_log` VALUES ('358', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuMi7VLdCEKcAx6Xjo87sVHU]]></FromUserName>\n<CreateTime>1502948624</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 13:43:44');
INSERT INTO `dili_lulu_wx_log` VALUES ('359', '1 原POST', '-{\"signature\":\"fa91ebae4eec06aa6f801807f4762b292d365bd5\",\"timestamp\":\"1502949373\",\"nonce\":\"561294366\",\"openid\":\"oWX6OuO5Ml9dX8fnkykH_LdgZ_8Y\",\"encrypt_type\":\"aes\",\"msg_signature\":\"1d9d59a7ee6b3582f7729c42143b2e44c5a538e5\"}', '2017-08-17 13:56:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('360', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"k50BBv0LGF7iOZGN5ILnrbzwCV254jPkHnPUntAsFdnPR8VjB7w8tcST7+R4sM+x0SoMeyLVOqXRzaS\\/Q27dc\\/639OgKnstkJkg3RgaJY3KLvZgHc4Wkvl+q1h4ooDDEa0\\/vNSeboxPGnPAGd0nuc\\/6vuqhWM6Ufn3aomTPckgXMm865MV+\\/nzx19UOTaiwSsb7XRw6JvF3WCMyMkvRm2CBNRmiJ5cnH0kJrH7ji+ZQgoCH1rH7KFIq\\/eQzMtriOtsKnGAtnvgSgMuj\\/RvJlptBi+Wwz6oE+NvMzyk1jhyXQUwzmIAk5AnbMbNRwXcZcob7+7KlXVsWbF6Ko3i7T2yMyeaBu9Ltbqu0hnCgyH0e3lb5hL0KIoQ4aWnacRCuxZAcRQlz5UjvenJODn8VZkUoANQzUqMZNAthhKBrWiYE=\"}', '2017-08-17 13:56:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('361', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuO5Ml9dX8fnkykH_LdgZ_8Y]]></FromUserName>\n<CreateTime>1502949373</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 13:56:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('362', '1 原POST', '-{\"signature\":\"eb2b1bc783195c46c3e4267944a5d1bea234ea0f\",\"timestamp\":\"1502952313\",\"nonce\":\"452849295\",\"openid\":\"oWX6OuLdgNmmj0xmQRVJQD9RTSns\",\"encrypt_type\":\"aes\",\"msg_signature\":\"c7879a3fcb8efd8d885721c81eaca3a53c1ee965\"}', '2017-08-17 14:45:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('363', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"+UTq7gYeryw2OXGwlcbNBUrnNH8wzCs5hpeBaWfRaOaopDb5rZ22iW5w0DGgJJ7K4NxzAtuPL9zijm03lHW0RMtUP\\/1LvuJHOB0rcYrDlgir4RaUfoRqm9NqgTtX5Uig80zpR+1z\\/rAmyglT60Yft7ZFP8XhoK3KSSKzOWcZW7VscpEy07pvL+3YffzAbot\\/xkHcdOdNki8LQcED8QL63VTl4gYqJ9qwaNB1VjrNYIRSyXEkX4VXBLEgk3hJ177NNTjT8I+oXLQDWuMHwMBuUa6B45HjO0XcuAZ3KBMEH3pweRz+KPupWbIbCUdMgvAlGroG\\/TVhuAblIk\\/R9YhNyDS9dpxPpPf5MggQrf2kbqC8B5T36ecxoC7d0zIGQxPrcN+l7PasegasPYEC824ji+vyO4lgtHI+v+OqMfhuH80=\"}', '2017-08-17 14:45:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('364', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuLdgNmmj0xmQRVJQD9RTSns]]></FromUserName>\n<CreateTime>1502952313</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 14:45:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('365', '1 原POST', '-{\"signature\":\"d0c9482e1fcd5d8ef50c9c88c82efdf9f16c8257\",\"timestamp\":\"1502965434\",\"nonce\":\"1920093724\",\"openid\":\"oWX6OuEs5vU2hfDYCbjoejhM_pQY\",\"encrypt_type\":\"aes\",\"msg_signature\":\"1512f34a35c98e897cd832d51b20c43ba25891ab\"}', '2017-08-17 18:23:54');
INSERT INTO `dili_lulu_wx_log` VALUES ('366', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"lf3qqC9z1PkWgQ8FQi+8jvO91GfqjBuCUihGDJ5DET164AGTSWwnc+sZxurlcS\\/9896nX0DFfce9IOe\\/lvrv6mv5aQwCRZcrDhDZ3y2Q9vPJ2BoDOjuDdSy9NQ6mqzpUVxzXBTakmGLLcNxE23xndMsOsOIAeSW3gs+fOq2beGunPKPZGHf5Di\\/LZzCxzaIhkwCmZ8VvTnwFerWf7+c3SOU\\/MgpDoBVBxtLfTP0WVG62ANZ9sreryachu44Pj4nzrBANao2b7RiPO\\/g7lD3RAS+cJGg2jz86pc0TUDPsQkOf68f2Gyb8Fb0enROx16dV6epsQ9qAwECtqRsI2heKShsP7vGpxNyXDfFRHm2SnbaRoBjSlor578uh56wxhtScSBXPP1ctCnXs8gQwmfhcwunHa9wDXyxGlT6jVkIAu3uMbvR1YPnxoaCyPGS+KDilhWhV8C4qT2GntkSay1WSIEmp8cOy6gytdsZ7qkz8NWaZisHp+8J9dQKoLF3zRDCT\"}', '2017-08-17 18:23:54');
INSERT INTO `dili_lulu_wx_log` VALUES ('367', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuEs5vU2hfDYCbjoejhM_pQY]]></FromUserName>\n<CreateTime>1502965434</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-17 18:23:54');
INSERT INTO `dili_lulu_wx_log` VALUES ('368', '1 原POST', '-{\"signature\":\"8e6c9db4c6d38dc19ed92358bd059e55b4f988cd\",\"timestamp\":\"1502965440\",\"nonce\":\"2090509892\",\"openid\":\"oWX6OuEs5vU2hfDYCbjoejhM_pQY\",\"encrypt_type\":\"aes\",\"msg_signature\":\"6fedd7e638309dcc413adb3fde309a793e4fba41\"}', '2017-08-17 18:23:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('369', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"60l74Jq6wfqA+jhRZuP1UQ4vj4A\\/f4i8FcxLA66UJu7uvhH36Nxj0Ksuj4ikq4kX9yxLtNNDErqzPBado1ak32zfe+wmouCrm3vb3ivIQ\\/F9Zbzq8AODtP2WljaWSBkJ9ME3rJfBAtffiGMdgm8Bn11UP0N50QQtS9J5\\/Xdvx5zO34wcdvXu3dGFDRIuHBNMcD312OgAk08By1h1HcPrXetnoExzKicH6PLCmXM6WPLpKgdedwDqDVtUisl88SHNJXSTcjPbmhkYCUrsWlEVeY\\/IO+T4PnYJ3aZAZAjRcyc8Bn6o1Aiyzi3GyxBdkJQK7JQq1p4jV3nEDh55toIckadwZ4\\/xhZbGyGrOGj78BEIGxFskNNbEFeWmBcnP22gDPP\\/MaSZSySehPOK5DcpnV\\/ER6wCLOaEKCVYXJIgjfEiAu3\\/45Xg+UXUeNh7NIBGw5m5ubqKB9H7sN9e68\\/Qjhvnp3HUly81t9VXkEmHwWfzorQmkPrKALj+fh\\/ZLRWc9\"}', '2017-08-17 18:23:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('370', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuEs5vU2hfDYCbjoejhM_pQY]]></FromUserName>\n<CreateTime>1502965440</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-17 18:23:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('371', '1 原POST', '-{\"signature\":\"c6967081a631b26cd5444c20f98827f00c073f76\",\"timestamp\":\"1502968453\",\"nonce\":\"825569684\",\"openid\":\"oWX6OuG_q0sraL4MqtIh285RYFkE\",\"encrypt_type\":\"aes\",\"msg_signature\":\"44ebec529999faacc8877d6a9aa97e36d2a48c78\"}', '2017-08-17 19:14:14');
INSERT INTO `dili_lulu_wx_log` VALUES ('372', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"2b6Mc+edFwRFG2tKsjWMRJHz2852uDzpyVov98Vmc2o7J5ctGnx5MA+LM\\/24+GV75mYtYv4FxqI5xdIBidP4SbODPSDgkpXgp6\\/hzJgR8H1RM9Xsi9bLWjLvVxvtbOvfBkzbTGXVpwvqa9uhM77RCK2vrb30chv88xvKmPqPw26rTsbHLKeYf7QVoOdh0OpyGguI5zLOf1uCeUaSolMUFPV\\/bkuyB5wCklibn6eCSXaMHCxIUCrmInkZgkCmzaZw5nxw1n4ZLhugcQczIf1N30MFaotq4H5WMar8nhx2hjdHLgY45a4sUJ3OuBmTYsIT+x2Mm3S+5DeasOF7Yomwyh1khEZqKW2eYdq5RA3cFepeiaYQmcw5uML85lB4XntDzTQSXZQ8Tg6Ui525k3pyvhIrpq5FimVUmVIHmB0UtAs=\"}', '2017-08-17 19:14:14');
INSERT INTO `dili_lulu_wx_log` VALUES ('373', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuG_q0sraL4MqtIh285RYFkE]]></FromUserName>\n<CreateTime>1502968453</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 19:14:14');
INSERT INTO `dili_lulu_wx_log` VALUES ('374', '1 原POST', '-{\"signature\":\"6fea6ece546ca3bf67e2bd80eeff6ac477e6be40\",\"timestamp\":\"1502971513\",\"nonce\":\"1909490773\",\"openid\":\"oWX6OuExJRhmKlMchM59qKa1J1Kg\",\"encrypt_type\":\"aes\",\"msg_signature\":\"3be23dd0a3a4d0298316d490b7cc11e27b5aa667\"}', '2017-08-17 20:05:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('375', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"fYIoU0v2EC9blqmEYqqabxQcOJZIdZfN8S07FPEQUvYNaOToSvLRKedDX4kXWI+iBpCs7ZVjbY5BlmUfe7olptXMY67or7jzhr7B86XjUXtrewk1sm6y98SzuNKLAYb+kqPATe7TOdHWdSKiPSzkGItChZxrVZIym3fOmtm6z19PFKaAZfnvf9dsAHSwVk1ch2zyyvhm06RESp3iC\\/+\\/R988pss\\/0HFY2zcYdQ8vf4Py4Y4sNmLZokkCe3wOaiv170AsAQtsyz3wmIUTycZZimOjXD23JW4FHbaAD\\/KAxa\\/z+QXrai02lQ+KuoNNQgZhW2ox6Zg4tm9Rmk5HL4t3LII9oNJbQ8pLnp1Kr1gXcUq4gHtHfnf8dc5upZLo27twPT\\/z2IOlSqmRFcJYsTgsIo5MnZPrsCeFR75co7kYqj0=\"}', '2017-08-17 20:05:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('376', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuExJRhmKlMchM59qKa1J1Kg]]></FromUserName>\n<CreateTime>1502971513</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 20:05:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('377', '1 原POST', '-{\"signature\":\"5cbf2482dffd93cbc67e30c97345a6ca059ef980\",\"timestamp\":\"1502974804\",\"nonce\":\"771899520\",\"openid\":\"oWX6OuCMnIit8oRpmOceUTVXmQvg\",\"encrypt_type\":\"aes\",\"msg_signature\":\"fe8b811ba6dd82675cc4d3893a924676147864a2\"}', '2017-08-17 21:00:04');
INSERT INTO `dili_lulu_wx_log` VALUES ('378', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"Y86s16T2GUe6c3GmZQQfF2dekfPCMmbAWulqFZcjo3SfOQr4lD78gb3rds59E0vhHyeKwid7MHs2ZA0Gj8RXNmRsVuNDaDKcppBfjO2Fa3DUhUwZAs2fBymxwd0DyugFTbIt5iMQjtN37jFmsLZPy3whpt55nKm9rbMEn2V5fqbnSiar9CJ+J4XypPSdzma3CSRuxRknNhejnxS4lcACWw+gTkhUxR9B2VLSyztQZTODYsUQSKMAlP6gx2KpBiu2fCh7JPEZhrQ2mn0XBf3aMle\\/uM7yEUuYawrMp6YPD\\/jz\\/PB9JQ33nHZ9zDkmBFuhCI0MAFEIdZ0hRJRLsDaGxP693lwLgyluk30K68tOhvbVeliriLeNMAPAQlcqZPvgTdTc9+GBiTKL+Clgb9BQGmGxPmhSKV1pIw0w+28EhFw=\"}', '2017-08-17 21:00:04');
INSERT INTO `dili_lulu_wx_log` VALUES ('379', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuCMnIit8oRpmOceUTVXmQvg]]></FromUserName>\n<CreateTime>1502974804</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 21:00:04');
INSERT INTO `dili_lulu_wx_log` VALUES ('380', '1 原POST', '-{\"signature\":\"20a3463c24329df5b138092705795a2fea58c9ea\",\"timestamp\":\"1502978085\",\"nonce\":\"1157448504\",\"openid\":\"oWX6OuD_7l3fmCYLin1fCgYIvI3w\",\"encrypt_type\":\"aes\",\"msg_signature\":\"f07678ff24ce6433ddbc141594c98d35e77811ff\"}', '2017-08-17 21:54:45');
INSERT INTO `dili_lulu_wx_log` VALUES ('381', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"QVT5C8G\\/Sg1+oblLyJmcRiYWLnwVLOAB2rsekpI4hNrNRIJVUV0lrsEItnv281r1ETTsSstFbb39I+JY23DdnNSVUpg+8d80S766ASY87bPBYB9FC9YvELEBc35g6Iw5IRKFUtm41T3wCPSmoVNiwf77fsROUM1K2UTxCZsFp9vSriWkugR7Nk561OgAjo\\/canBiFmC+TZ8x0KX8yzMSUtJ989Ns9icZfZhPWh1dedM65Edmw0ljtBJHM6kJ4c2UKZmpwqi03TgXZMRBkj3\\/5WUT4NVHQE\\/IVX0kJpYi6RhTHHvneKIGS3Kd\\/XfwShgymih9IZW83DIzcTfQM\\/iHrXbyh5UbJAUnhDRmRYlJCjNNZO1vMOoerYxbhYQBsdC0zfN1iD9Vge16QTId5jnS44x3lrpr9M9KG2pfq2M02Ak=\"}', '2017-08-17 21:54:45');
INSERT INTO `dili_lulu_wx_log` VALUES ('382', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuD_7l3fmCYLin1fCgYIvI3w]]></FromUserName>\n<CreateTime>1502978085</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-17 21:54:45');
INSERT INTO `dili_lulu_wx_log` VALUES ('383', '1 原POST', '-{\"signature\":\"64801800f39aaff4a4f5175bae482c11a8bd4c0e\",\"timestamp\":\"1502978812\",\"nonce\":\"1909544477\",\"openid\":\"oWX6OuGuQu7TZ4vx87pjFeY-0-10\",\"encrypt_type\":\"aes\",\"msg_signature\":\"face12a5460e714a47a630a1d3250c0b63c762ee\"}', '2017-08-17 22:06:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('384', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"lqd8J7ViZ1Lj5ya6YL1a83oeTuGqaVJbrv0aLC9C\\/Awf8hGr\\/jerRFRmi9hS3TwqfHtsutVDe0fhQwynx1x51gqIsO2f8uvsH2iRuTqWFX8fNQj1ljcLGRlyVGa2EMNFLak81Sr7efKVLxgmuwbb3vU2\\/tclBrVheNkxtF5dnJuj0dp45f3GltiusHf1qlfQpIEbZiZCYwwZuAekxoIZ\\/iPdrZ7IGifg9Q4pfm5XUKLrB4LmvH2xV2N+0uY2qtc0TSCQElQtSJivRREXon1HMH4isvHbS1NYzKNvPeFaSWSbeUDf5qKWSrQJmL4bXmulet0KvQKSq+nQKNF8d8OaDFXdtZ0cK3STq1p8GGfC\\/FxTenOcZbmtrzbZWCCBZEbTyUTU3sIiH6RGcdve70zFm36RGdhmkMb913BkvVHMci7XWuOQiW9Zr3gZpbQ834n4WeFsy+SJYv\\/lYwR28myHVB1ICRNaAMq3eAPhSCo8GtzdJ7vBhfmtO7IXswvwDFrF\"}', '2017-08-17 22:06:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('385', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGuQu7TZ4vx87pjFeY-0-10]]></FromUserName>\n<CreateTime>1502978811</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=755]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-17 22:06:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('386', '1 原POST', '-{\"signature\":\"3b4444f5e7c21e891f1832a0856ecf952aee9271\",\"timestamp\":\"1502978865\",\"nonce\":\"1955752420\",\"openid\":\"oWX6OuGuQu7TZ4vx87pjFeY-0-10\",\"encrypt_type\":\"aes\",\"msg_signature\":\"b17c7864de7e9d85ff3e0befa9160de3104fe0a3\"}', '2017-08-17 22:07:45');
INSERT INTO `dili_lulu_wx_log` VALUES ('387', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"hT61cA+dO10yCqQwBkpjrCqwEbHsD59ntqNCfO2tdL2HIWhTXV\\/tU9\\/4Eh1Wjb58gXFvdw0mCgDRCl2fY08qw5oG0iYp4uiO\\/iBYNOJwLLfGs8eWqmsqT\\/Ey00UKxJN2+SPHp4+KOjE7YETDn3mA2RLTdBF0Zmi4MJDl6in2yjIKD3jCHsAqJd2g1Hpks4nG9xflixnX2cFbUJsgRtXwzujgx0a\\/9C0EdzRlOs7Jl42zACmBj7vJhI\\/OGcN+xBHZXz7Ol32Po\\/MRNzYSNQEQRUHKeHAKjNLE2l+Hk+uLYjFLQ0p93kegGV8jSS8Jl2enYCh3wPeLIsevrjRhHDtmPOTraJv0LK+zPEA35nzkO1Njq7R2AQRtNJUuseAEDvuTzHAqVUwODA+ADwxMLCP\\/5CINp+oQta+kotCZCm1Iz2xCxJBgb8bOkKQlOT22cC5I06UlWv+dw1LOeowEzsWSOfzcR\\/GYA8psMcSvR46N6CKpNOFI52Irab0gIoEO\\/JxN\"}', '2017-08-17 22:07:45');
INSERT INTO `dili_lulu_wx_log` VALUES ('388', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGuQu7TZ4vx87pjFeY-0-10]]></FromUserName>\n<CreateTime>1502978865</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=750]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-17 22:07:45');
INSERT INTO `dili_lulu_wx_log` VALUES ('389', '1 原POST', '-{\"signature\":\"e7c57ca5d8ccec3abc933f24b1fa9b3d3010b1d2\",\"timestamp\":\"1502978924\",\"nonce\":\"2117484444\",\"openid\":\"oWX6OuGuQu7TZ4vx87pjFeY-0-10\",\"encrypt_type\":\"aes\",\"msg_signature\":\"b98dfc7e1494560338828adf22bbff60257f055a\"}', '2017-08-17 22:08:44');
INSERT INTO `dili_lulu_wx_log` VALUES ('390', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"sUZiglUNA2Nr4aSD5QBnjOXm1bp8jArv3ajxTZ8F+ILAKfSXImHrzdUBBYyF9um6N\\/VoPvaVwC56EBlRpEni2vkZlfPVIvTxP24cLS9xdoETZ3oyZoILeftI7hsEEz9DIHrxbNNZ5TlzX9uWb7YF0KALKhE79+hovXtHd2ankNLk9GVrHL+MSDQ7ew0rE8dQXpgDULJDH6Fk2ZewKgL9XPraVVBZxvPGzoX1\\/9n+tpeibwZJvGGMrjCqIbcdzX8bfrvyMedAP44MhEptkZiEAbAZ5nHl8em7NiifGqw5xHnAQS3yjpT8A0WpuSCk34CrARb4DhSMUSnk6m7U00R\\/RpILHtfl6uxmASHRI\\/0+G+J7AXpHF2fVvGjaQC589Ku5bqe\\/u3SiO1UwLloBIJRe1eppLuaq4eQdeDXhaAErvgk0Sy6nzaYd8uGVMlPx\\/ZfB9MQuBHVcee5BLrXPOVXpEd5IDkDZPBcPkUc6ZOG3cbB8fSISNlqX4KPO\\/l5oHa1H\"}', '2017-08-17 22:08:44');
INSERT INTO `dili_lulu_wx_log` VALUES ('391', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGuQu7TZ4vx87pjFeY-0-10]]></FromUserName>\n<CreateTime>1502978924</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-17 22:08:44');
INSERT INTO `dili_lulu_wx_log` VALUES ('392', '1 原POST', '-{\"signature\":\"dcc09ebe445d3dc04dac341f05d58c67ec290fc5\",\"timestamp\":\"1503016944\",\"nonce\":\"207970574\",\"openid\":\"oWX6OuDxQh_nPb7icmaS_IWjHdO4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"9c4bc4e0941c6c9c55a5909ca2681b8144274c10\"}', '2017-08-18 08:42:24');
INSERT INTO `dili_lulu_wx_log` VALUES ('393', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"Id+RXyzaGKKXpDYintcYH9uW1keRiwYeF8IQ37l1NHuOe6qL2kfxEDTG9P2\\/4\\/lnxfDXo8ow2zsZrTjd96Xg0HqnU6T7A+HdwJduQRPRfNWWz\\/2zUCwf2cWJKEwxp1E1sob8NXsOqREtJBl6wJWkQJM5vJdlapMvMdWOmdeX2+vH2ZhQyn2jf\\/eQRr6gaptXzCnobG7SzMhdAtD09IaL9JiZ5p0Q\\/dXFV0zddmPu5XjOlr7S7W5PLq4hm+VGRzToYckgkLTe9JST8a9DPGJ8DyniiDP+j1Y+pVuW6xhBUZenYWQRXZYfnetyGOI8EFdGLb\\/o1mqc\\/5Kp03XNQjg7PvI6nV5ypVj5h4Z+tRT5oNcZUAfUQwgtmtPAfPISOpy38EJdI40wHwflaoqg\\/MyIB9LVoM1KSgBO1Yw3bYxEO2g=\"}', '2017-08-18 08:42:24');
INSERT INTO `dili_lulu_wx_log` VALUES ('394', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuDxQh_nPb7icmaS_IWjHdO4]]></FromUserName>\n<CreateTime>1503016944</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-18 08:42:24');
INSERT INTO `dili_lulu_wx_log` VALUES ('395', '1 原POST', '-{\"signature\":\"c75d940698407faa27b271ca18bc5b2a2fd05b15\",\"timestamp\":\"1503017628\",\"nonce\":\"1862307392\",\"openid\":\"oWX6OuHhtBMjidW4Ceb17_1ERMDA\",\"encrypt_type\":\"aes\",\"msg_signature\":\"087879a749215561e1b998db85bba747c796efcf\"}', '2017-08-18 08:53:47');
INSERT INTO `dili_lulu_wx_log` VALUES ('396', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"K3oj49fTv\\/jUkS+lwZAQISR7u447Ktc4c5IOQuJK8+WG7RMbqpcewMZbLBFVwNOLO4AbX378MLs9GlFc154Uweu02eVFSzA831Y63t2S\\/hZYB6g+zC1s0VTNYNl\\/WWPRnoL4ksGm3fFIXYHkZpxLggXZrohgQ2wBpd5Hr7A\\/KnxVAPZqcOKULDvkxGtBVoSJiDXz5CpVYsHw8APXw51WQBKZYFsSN24M1uH1s0cpS+YsCUxCe8MX\\/L2JSmECMJVRGfn4Tv9v43NW+mNThvtNJBBNH1NWhsnj6gGyyRiVsHSD4e3zXwH24+aNIw\\/6paXIgQAoFtZc0UQfTvgdeoiZvdWgGl9OoZqOpH3pVaIH\\/0GwBB6bDLRKxR5U2CnN\\/W8NWzrxcwB\\/VM1wz+YasHD815+EQ7d1vKr2MfflB6zCCes=\"}', '2017-08-18 08:53:47');
INSERT INTO `dili_lulu_wx_log` VALUES ('397', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuHhtBMjidW4Ceb17_1ERMDA]]></FromUserName>\n<CreateTime>1503017628</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-18 08:53:47');
INSERT INTO `dili_lulu_wx_log` VALUES ('398', '1 原POST', '-{\"signature\":\"5eb2a812cf287e1e47ec18e73440501c587e3ceb\",\"timestamp\":\"1503060568\",\"nonce\":\"2024613866\",\"openid\":\"oWX6OuGuQu7TZ4vx87pjFeY-0-10\",\"encrypt_type\":\"aes\",\"msg_signature\":\"6a249a59faf9ffaab6365c5547b0c4270221671f\"}', '2017-08-18 20:49:28');
INSERT INTO `dili_lulu_wx_log` VALUES ('399', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"OujjsnVIDM5fpxiJpCbws1hwDuThU9AJS92mad9rr+wy+Fua4odfBG+j6G8vhXxSwGhigeFnY6l4KFkp\\/Ue7oxiR+jcsKSPXRY6jUFRNq9j4YMFO5nEqMHCsJCTb76OnBB9z7wVctJ9oXHhc\\/sgN2aDv8wDsffy0PPDBy05a3uDC8epyehNNuwQ9tSVm2l+eWuBKTZO+niGV943u+n1dCZKmgLYd8qqz7WVWhJLRm0T8vTSEyHdJZyNRuQb2wUo5FEU2dK5zEC+GtVCe1zgqGYabQrWEgkcJl8Lv10x4QK9lTb33\\/EXHgvW6X6fvg367hLWiWS65nTNNj3CMOnaeRwRouqXhC3q\\/QrsEqiY80ZmvqI\\/gcuA8McsV0OmB+q2eWCfLmNlq\\/BcqpVpMkTRsCIpBsvhqc1eJchZoy0k6i6U=\"}', '2017-08-18 20:49:28');
INSERT INTO `dili_lulu_wx_log` VALUES ('400', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGuQu7TZ4vx87pjFeY-0-10]]></FromUserName>\n<CreateTime>1503060568</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-18 20:49:28');
INSERT INTO `dili_lulu_wx_log` VALUES ('401', '1 原POST', '-{\"signature\":\"852293a12f94d2d82ec0cddb2522d083bae4e889\",\"timestamp\":\"1503064007\",\"nonce\":\"1082371109\",\"openid\":\"oWX6OuM18hiNoSvFTJfXONxm7nSg\",\"encrypt_type\":\"aes\",\"msg_signature\":\"7c1bbbb798e9432b0f4d25eccfa44e74e37307e4\"}', '2017-08-18 21:46:47');
INSERT INTO `dili_lulu_wx_log` VALUES ('402', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"zk7+ydfFV9zIhqUUEYZ4oBkBN\\/SfHGzdR4KmoYX4xe2IdSfMymvy1XYVYP2JVzuyRQ26Vr610kLvyzmR2IUrQsAWow6b8nBrs0rPMxsIOmAL3aA6CwLqbomDKT\\/0kzXd\\/S9muxjXTQeA84WCCtT9aqF0QljaInGTmefECXseyo5Vazl7VuembfRJ5dPaiDI32MlB9OUT2DWEkTJ9ZPDoXzsGrZ17asi8uyQDbUkMcCNae4vrKIawlQiTGgUbK5I+CkbRWRRKiO31VaJt4k2OuQ44yVat\\/TtsIM93VnXKsWM6z\\/Pg6lemHEmB2uHUSKr1x72Wo5Ru\\/BV86\\/tUN4loGayQA53FvJzsdUqQMH8Ec400iOQiHlmhR+16zWQnfhZ7Z6nZIMcWYPZg4UkqrPiLXkchhiRtBVX5hwUf\\/OFwAnU=\"}', '2017-08-18 21:46:47');
INSERT INTO `dili_lulu_wx_log` VALUES ('403', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuM18hiNoSvFTJfXONxm7nSg]]></FromUserName>\n<CreateTime>1503064007</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-18 21:46:47');
INSERT INTO `dili_lulu_wx_log` VALUES ('404', '1 原POST', '-{\"signature\":\"c13606ac70d070fb1615d92a83c930457836aa5e\",\"timestamp\":\"1503171708\",\"nonce\":\"310095817\",\"openid\":\"oWX6OuBKUBQyZUs8OaDgrtvfqJlQ\",\"encrypt_type\":\"aes\",\"msg_signature\":\"fd32e849aeb9d8b7251776f0e506017a86a612bf\"}', '2017-08-20 03:41:48');
INSERT INTO `dili_lulu_wx_log` VALUES ('405', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"Yz47F6ywS8tFHMEujujLrS4x3j0mmZQMy3c0ygpwfomvZNjwj6vlaDTiOvZQ+JvHYsafiMlefgGLiu5YVYa1rXhyYG4L8m8NcqhG8aD9+QMWX1n\\/qG2dvuz97\\/R4qsK8BM9NcTXuRAAO+aEpMm+2iBlQowhyNSy2oar6y74I8L5DOfO+qb7KT9cGTFvN72ahvoiJcMLz6EQpD0jSwN7S1Bdnl25KBBTlI58bDUBvQ6Q45yOkjvRAqlzDENMX7ycu3J5CWH5ZHyMNOmlCkpoBu2k+CDmu+rtMKfbsKMT6ugmr87PlwAppO0w1UUn6vy09aoqqgkQWLRiAwZ3X9rqCS+UmkR7b+Wz4VeSGjOkyv+Q9ytwQFEnUVQckWsMPkzyYx6ZrjF8pPmO+9hQpI80DWPbSRMb+vbEKBrVIX+xs0g0kdWL4UqPB5aBT8u0Mypa8BpHot1FTHRQq5pmQvstqgAjbYM+BQKGj55qOlRYn0Fyfrlf\\/qoK319FxTzDXX3KZ\"}', '2017-08-20 03:41:48');
INSERT INTO `dili_lulu_wx_log` VALUES ('406', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuBKUBQyZUs8OaDgrtvfqJlQ]]></FromUserName>\n<CreateTime>1503171708</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=750]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-20 03:41:48');
INSERT INTO `dili_lulu_wx_log` VALUES ('407', '1 原POST', '-{\"signature\":\"c4f395268d364030c0db59cdb7124747da9bf230\",\"timestamp\":\"1503186993\",\"nonce\":\"1323940043\",\"openid\":\"oWX6OuLVSRQaPXlexw7sSveet-3w\",\"encrypt_type\":\"aes\",\"msg_signature\":\"591cf5990999cdea004e13a8a3e8ac3b1254892e\"}', '2017-08-20 07:56:36');
INSERT INTO `dili_lulu_wx_log` VALUES ('408', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"vAU2f14XVuGuVWtHH+a+NjYUufosjBgGc1rnI\\/EQB2qifZLEHIXZiekkqda78ibM\\/mqGWqA9HkjlO5I\\/1dMg3B5A2pMc4WITm6TFzHoVJQPPPPxskBvVHoHBxfcWNNNK+RxdmIjJCL5pz8UbVX3bcWo19qXzQKjZAd6Xuq++\\/0+MSCEnC4vemNGkWnucsTH3Yzh1bIymLQt2z3BbcxInlUh1ShrZ8Wi+F+dfzKjxvXHhFyGu9jXbCQroK1c4PY5DaZxpAvR8EOqSItDeYJHkfyTrxJmGdkt3SaZLhxcgDIiScaEm5UGsWIDyyy529i9ULjvlPKOxBCt\\/7BRlhs0gh6+MhR+SX0aWKXrEALIfcLr5u\\/wRghgWJM1\\/YS9PuBl+sHQZg4e550NCApdm0n3k5rKOTUazEzydnAGaL6T1ONN2cKidJRVXJndLc1+e04+vT9GI4syg2YAOPgcF9J51w37dEjqmaKU7lIn4zvb5O+P\\/cj6C7UVpbqK2EXSemodJ\"}', '2017-08-20 07:56:36');
INSERT INTO `dili_lulu_wx_log` VALUES ('409', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuLVSRQaPXlexw7sSveet-3w]]></FromUserName>\n<CreateTime>1503186993</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=753]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-20 07:56:36');
INSERT INTO `dili_lulu_wx_log` VALUES ('410', '1 原POST', '-{\"signature\":\"a543c4d60e42d241dfc94e77f08d3a76128530c2\",\"timestamp\":\"1503319232\",\"nonce\":\"117964536\",\"openid\":\"oWX6OuDVBwTgZXi6RKUkuw1pEsZk\",\"encrypt_type\":\"aes\",\"msg_signature\":\"17dd8e6f2a0c1cc67cc812eb709976087dda9c3b\"}', '2017-08-21 20:40:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('411', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"Y7DrAt4TiVKdaBm8kMKHG146uqplrCFu1Ahr36F4F+\\/19cWk0omvtnX4JTz4ZwuOQ9DgZ0gaxgkxP5rUNsfFmMS0wFm5gPEKK73xBxaGwivP1dGBRpMTZWAwVDArL5McQ6WTnJvk4kQ3jqZYNOrsEbLI5qkq0N4UJylSbrNtZSFi1RktN4aKSjJaU3fXk9Q9hPSe2EbZFn0+xfyaUKAJZuNF5ZhmJZBBjVTzizusaCY6Z6gip\\/U2XUndfLahzTU0kgrQGQDQZbQWM\\/taEQdgr7jmtDaa91EVm\\/wY8n3xzvLgUqxZNtEneT9X5qWglztJZi6xUdCritMxEeNPjLXo6E+6GJEJWsweuXSpnqMTfctULYBM55TeP5gzjDH4kj97lQzXy7YQP\\/IWrRUmNgr0bL82XiN5AolScEDQVLgNvSRF3K39pfdmTUl74ZK1oTklmXQcIpJVs0qI0f7RinpbakLNaI2eVClDJ7CmuhhKHgwoAUCy8F0v2q6Wyl3gehlU\"}', '2017-08-21 20:40:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('412', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuDVBwTgZXi6RKUkuw1pEsZk]]></FromUserName>\n<CreateTime>1503319232</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-21 20:40:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('413', '1 原POST', '-{\"signature\":\"27c4abeb618604386739c4816a193bb34904d5dc\",\"timestamp\":\"1503352594\",\"nonce\":\"973431472\",\"openid\":\"oWX6OuH7IXrm7GDniKZHcHE91YVs\",\"encrypt_type\":\"aes\",\"msg_signature\":\"5faef81b331bee10e59ff015438de439fd550cd3\"}', '2017-08-22 05:56:33');
INSERT INTO `dili_lulu_wx_log` VALUES ('414', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"jyNy8N3hGq8zmoJwV+dkWkIZa0t9HCxLdORoozXlldrxvbQ+m0KYLH6Wb3Kac\\/uSnf1GTvyEUszfvxuzR4j0ryKYAktZ5Skw\\/IS05YH\\/180cD0NwWMxC7AWVG8TLa8TGW44Qb7thR7I4ODKhqy0A3TouXKryLkTG+8U\\/c9Cezl6z4mh6hp3EH3PL4ls3DODPZobBlS83KQtfkMBZFX15C21HY5XhwHj7IhyQeTx\\/bP5wRDBAtmaMCASCWYdlnhCxest4aTIffs2bK94zd75jmG6tGxdElWB77JmfTBeLSav\\/sifvKKXYWMS4LtOtJWUTCq\\/\\/AZtsR3\\/DJZD05eBVDgQemaCu3YGJu91ssQXP9FJRA7x2zgQlv8Yik+oq6xy9vJS3UxmkRN8EPlQl+eLWZMC9TwOlg27Bcpz5hyOL6D6V6aIK6D3xTNif3BxuwUOkp14keu7R6ADf4iKpWgtEiYoZUcnBDKfKw4wkTcR3Im6CubX8SUJasgISUSSixA+KY795O2YZ7V+2HZXckHNcqZfsLokru58u7d4Yy9PY2kEkh2282gjs4XGNu4Jpm91Wv9+W\\/cRIs3+5kJeWoytOMP\\/l41gOEjNT4HZRvZr7WTwTa6td127UHnDdrliTBvUZ2mqlMVckI9s39iVX489s+9YUnUW9piHdsRNvG0klfHYZ36ZkQxc\\/B1\\/7EZQd3IxR3wqvQXe\\/HA21Yhb8Du8vCexHjCO+TAAEUu3jOdlxl4ipkOT3F29MjjXEqnujSE7RD\\/giTTNkUH4E1eUvpsBpZZT+ycUBJ4yMGTtinODfs7g=\"}', '2017-08-22 05:56:33');
INSERT INTO `dili_lulu_wx_log` VALUES ('415', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuH7IXrm7GDniKZHcHE91YVs]]></FromUserName>\n<CreateTime>1503352594</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[MASSSENDJOBFINISH]]></Event>\n<MsgID>1000000041</MsgID>\n<Status><![CDATA[send success]]></Status>\n<TotalCount>942</TotalCount>\n<FilterCount>942</FilterCount>\n<SentCount>942</SentCount>\n<ErrorCount>0</ErrorCount>\n<CopyrightCheckResult><Count>0</Count>\n<ResultList></ResultList>\n<CheckState>0</CheckState>\n</CopyrightCheckResult>\n</xml>=====0', '2017-08-22 05:56:33');
INSERT INTO `dili_lulu_wx_log` VALUES ('416', '1 原POST', '-{\"signature\":\"6886e9dea6bc26d8fe7430775a2f7a72e8dbb289\",\"timestamp\":\"1503352659\",\"nonce\":\"185015982\",\"openid\":\"oWX6OuHasRcObXauPoCwlOvg7e_Y\",\"encrypt_type\":\"aes\",\"msg_signature\":\"004d2d5ee63f1e333424570760a68d8db58cad91\"}', '2017-08-22 05:57:39');
INSERT INTO `dili_lulu_wx_log` VALUES ('417', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"FYul1jTDiYFL2lhtPgrq1OBnLp9qvS3ZpqAgp8L7WN+Jl9CQfNB1oUTBL0VWm0QrBJRr62Z\\/70pvXKGgqDRz6RFIlLKjeCn1C2NTOKsI1mMLS\\/dOYrQrwkJXGgE4yHwoUDnHLw+QA7WB8lCmSBaP0cE5I6K3JE4C8l2Qn8BcyFYETcZ2i248Zr2lCHWQQzeEb4y1Dx1tM\\/mAAUuZQglkDKqkmaBuZqYvN8SaN6wEYmWTuBXrddIj8kSopSMJEFkV66zWSrqK9g7ExD9gZlsk63YSl39irwTWiU6LPTjF8pVANiEVpzyy8IWMeEAe2HpwRxtZXGtD2\\/pohEHcOGMdHLNcM0G5IAxCbX1l8FwxkRPnHKmno0a5BY25uAcvZBTslG4WvZTsaTWHqmQVXrmKyC1pxciPhBAy1s\\/JOPFwZFzcZ4FZtHSU7B9oD7Dk5UlpYJ8HlJOmZUQVuX2CSQehevEHiIITh8ZUrxmtXz2xHGd4og3wxaRR5AZ7e\\/1jJmjJ\"}', '2017-08-22 05:57:39');
INSERT INTO `dili_lulu_wx_log` VALUES ('418', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuHasRcObXauPoCwlOvg7e_Y]]></FromUserName>\n<CreateTime>1503352659</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-22 05:57:39');
INSERT INTO `dili_lulu_wx_log` VALUES ('419', '1 原POST', '-{\"signature\":\"1d873505e82d1a1fbd6643b0e08b89d62ac33361\",\"timestamp\":\"1503352672\",\"nonce\":\"1826058319\",\"openid\":\"oWX6OuHasRcObXauPoCwlOvg7e_Y\",\"encrypt_type\":\"aes\",\"msg_signature\":\"868b4ae58fee0256b6c9949f20955833b8581c6e\"}', '2017-08-22 05:57:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('420', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"A3LHIevkycK8XezN6W5Yg07wDZSWxr3IK\\/o5Pb4JAvk7I+9x56wB+4xUTwVjufJZcMt+A\\/z6pD0RIQ0hTcs8idxmYsYIb5a7EPqBrknES2SOw3LOtlC4uGmfEQ4zd57vUKSTFjzx16dp+6X\\/kR48yDZzriV7sTnJlsbx\\/8Bxbm0oX4GkSvUQV1nazJq6n7gp372V9zhXmgMO7OKvtXTVcdl\\/zHPQVtdTxPHlWIpsRMnVkU0MqQVq9sXmZ7woRPJ0N0f9BhxRjbHIoylzW9wEFC8uYj1HgtngVCQP248jwpMMRW5RfX0I+drvPDr4eC72KuzzgqVnwn9ovLyxljCNMGTiqCjdnlrRRcz\\/MKgq\\/LutMrJgvw7BFdZAG1rLQtit6cEWW1MqbEADh2O\\/o9trCqoLB9ls5sTal6UKJUg0MZWPAlQ87HMypVMEl61rseJuW9rSaP96MgIs5mFpO4Z6obqcpO1RqMeVJsbSI\\/oNyVynonr5m5z8neB45RQSAFa8\"}', '2017-08-22 05:57:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('421', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuHasRcObXauPoCwlOvg7e_Y]]></FromUserName>\n<CreateTime>1503352672</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=756]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-22 05:57:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('422', '1 原POST', '-{\"signature\":\"5f58c43b7947d0786b27217721f9b887f802a1e9\",\"timestamp\":\"1503352678\",\"nonce\":\"693818315\",\"openid\":\"oWX6OuHasRcObXauPoCwlOvg7e_Y\",\"encrypt_type\":\"aes\",\"msg_signature\":\"8a6b9f540e876192a8ff1a0e64702cccc69671c4\"}', '2017-08-22 05:57:58');
INSERT INTO `dili_lulu_wx_log` VALUES ('423', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"DVmY7nhWskjSWDFAavB7YAxN+lCSL+DNy6byx9vshuRjx42KYyVQ1LQfWVs177fAo3OSjpIm2Bb5bkpbCwr2gCbGZ6IbU5wPdMPjghflPQHtXBdVHDb2ODymxyu5mE+v9q382U\\/YSj16pZ+HJcqI8VWRcuYVCIXGzcs9qOy3hV\\/VbUDYKhehlKaEGzOQZOk3SnDzLRY8m7g1P7qa4BK3BNPNI\\/BtWT6ISK7qrGH6Ag5M2hNucRZXY4n6kvhxkoU0Qp+5E1HOvIXM7O5tD+T7aVjCucLj+eyXkn2z8xLy9elZZqu1SmNxGWYf7y+LiOBNjbMoDYw3M\\/aZfbcgmAYtvb06Ga7BXKmPhS+I5XDk\\/BKnR3RhAlwbu\\/BWKeRXIV6Oj9ZwzRw8xlctH5NfXNXWRZgf3jBWbxnJrTvc4o6aTW87u04zacc7IV3zbv4Kidg8CFLDi7MczQ7EH7jnm429J\\/jiKFDQ6w\\/Ii57Dqaadu4TM4Q9ndVXB\\/aHoWIK4Qu3u\"}', '2017-08-22 05:57:58');
INSERT INTO `dili_lulu_wx_log` VALUES ('424', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuHasRcObXauPoCwlOvg7e_Y]]></FromUserName>\n<CreateTime>1503352678</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=752]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-22 05:57:58');
INSERT INTO `dili_lulu_wx_log` VALUES ('425', '1 原POST', '-{\"signature\":\"479349623c1701b9d2564b8e7c1e1cffb44bab95\",\"timestamp\":\"1503352807\",\"nonce\":\"1480151602\",\"openid\":\"oWX6OuFpB582nhJ80-_xALzT4iyk\",\"encrypt_type\":\"aes\",\"msg_signature\":\"0cc4fd3b5eb255b8eabbf859030adea9b9b31b16\"}', '2017-08-22 06:00:07');
INSERT INTO `dili_lulu_wx_log` VALUES ('426', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"kiUxrPs3bRDekHkr12BIXwz2KB7MYnaT88cNUPZ+tRnm1X8rcag0CKBxnYN1FYq2LW\\/JASIwvrMIR7FspydM7kl7nNyyw0m1sJfOmkKyWgK2duGz98tAPRdMRuDM7ZfqKivupdrV2r+6JsQrakl7RNKAxDMfdT1pGH18TjLHIE1YsqemLxPnhILxbHuC4VgFH9D0vf\\/9No2dnmCreZYbXhmCzS\\/lnJueRr5yiFXk\\/gSoE8Ffgz04aoZd7losroK3hpfJaoKUHvSzCeCcJGTieUzarT9NFmgxE9P2rCMp8zPWfX81gZyAz4Oi54FocnCDaJi\\/eVdXMXOvb5v2JF2oT2fbHsDJLpx+GGPC5ZRDYdYGuBadtvaTRZEDcdCiybcv2YzXg9RO+ItuUFxO+w4gZiCz1yK1Z2q+gr\\/vFeQKtVLSLquCJyEBUjO5BvtBBoUNlHpFUkgb8ou5\\/wll4q0YSL3CWEpE2nMzcqiKOEDJ0ajgF5U9cmj7wslMGfkeR0r4\"}', '2017-08-22 06:00:07');
INSERT INTO `dili_lulu_wx_log` VALUES ('427', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuFpB582nhJ80-_xALzT4iyk]]></FromUserName>\n<CreateTime>1503352807</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-22 06:00:07');
INSERT INTO `dili_lulu_wx_log` VALUES ('428', '1 原POST', '-{\"signature\":\"62de0af76cd04dddb6255e39f90e89a95d2a4233\",\"timestamp\":\"1503356545\",\"nonce\":\"1487029100\",\"openid\":\"oWX6OuAMiKtHQXI4Qn89N8nD81Y4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"130d8a12366a49f55b3c643b00cdee60208e79ea\"}', '2017-08-22 07:02:25');
INSERT INTO `dili_lulu_wx_log` VALUES ('429', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"pGWPpxGlhkd8Ok36wT18GF\\/Tanq2UbKUURBKXTntoigI9SIjBa56Kdt\\/M7nCOkeIDuvpeOX\\/cQ+mMVpv85O5Pz10dTkgj8jPDDQiFSB4z5Y1jHnOLmn\\/gXOJnXVxThcFdxgPigHRbKyUY4XCqPReqM\\/JDBZwQRAUt7bJ7wZ910NRaFNSRZskwsRVNOJLd8YmhaxaZL+QWEYGWIHWmhrG65gnFuY0RreyngEaMjJwpGfzl4HKcfkWThez4sRHZQryzi3uS5ML2XaqV16ym7KDOEUFltjpCaiGBWsDnIn1vwcRVMbblZBu1N7mfa8cE7i\\/axS4uhDmQ6jX4x3EnW17pyY0TqDLE1GZp11ohpa3OSCyUYok4iLK2YlfvncGNDA3E\\/fn58x2YcplTG0iNYAkBTHA65AhFog7uSpaAPapql8=\"}', '2017-08-22 07:02:25');
INSERT INTO `dili_lulu_wx_log` VALUES ('430', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuAMiKtHQXI4Qn89N8nD81Y4]]></FromUserName>\n<CreateTime>1503356545</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-22 07:02:25');
INSERT INTO `dili_lulu_wx_log` VALUES ('431', '1 原POST', '-{\"signature\":\"cc456e3b76f97d3ba2f4b79ef3722f24ad399c45\",\"timestamp\":\"1503357353\",\"nonce\":\"1437108081\",\"openid\":\"oWX6OuKPUSI4f-sfI7xRCTsfcJys\",\"encrypt_type\":\"aes\",\"msg_signature\":\"facbf91258df2ba0b9b03506c30faf2aec7e387b\"}', '2017-08-22 07:15:53');
INSERT INTO `dili_lulu_wx_log` VALUES ('432', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"pquoOTvUtaEDpsM4cI4DrtlaCvBr8Ilkp9+N5byVYJX7\\/5yzFh2+acNE6QH5k8mqULjMi1uGSkDVbRTd7BQnKvD22KWIJQ3FO2QRRlt\\/S3nEhpoDAOnG6WUor0DwzsXtKo37q3DTVe+1cLRBGaQY24hx6X7jdrMhYheXFu3XmEOkcZlSZfu+ouejSOf3+d+EC4nAUhWvyZvogrFf9RHgEHBmixehvNJred\\/FtPeahoL5jlmOsUiwZA6UV+g67Kbtf9mwTevrYOAxh8y4vKAbGD+Uy8OaQYhzpcZKzaeYbe7W4LwHjJAV955+Bwboy1hdf15ZJvzswIQVM1qHeCvMDcFn41iTOnf2kN5xuFYKijl5SQlauuSZHW+eFR+4+eyXgidIs7n9KUE7wSTBuPyBmWwekzmKyIwdLpIRBUdsUeI=\"}', '2017-08-22 07:15:53');
INSERT INTO `dili_lulu_wx_log` VALUES ('433', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuKPUSI4f-sfI7xRCTsfcJys]]></FromUserName>\n<CreateTime>1503357353</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-22 07:15:53');
INSERT INTO `dili_lulu_wx_log` VALUES ('434', '1 原POST', '-{\"signature\":\"46bc707305053482a9a4b9701ea483e3ac23464e\",\"timestamp\":\"1503357918\",\"nonce\":\"1155472357\",\"openid\":\"oWX6OuLoXQlY5D1sNCgu8BTJgG-0\",\"encrypt_type\":\"aes\",\"msg_signature\":\"11a35ff14d37236de44c5552d98ffa2b04561954\"}', '2017-08-22 07:25:17');
INSERT INTO `dili_lulu_wx_log` VALUES ('435', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"\\/1H5SB53uemHkin6+zWlZO7nxKK94odXYaitUZm6k3tNjOPdZQrzDVNkBAO+ZMitEygpDw05IDWW5txAlaukGjayimxhrn+Vf7SfiettJ1mTtnup8JqEHPg2+o6SmcuecQVBV7IaZLpN78wWFyo9zZaLtsd5e1HMabOgwYeAsA\\/i6N0LhQA+UlGNcrA2SnlpplCZRuyk4Je1LvsN\\/Rm2hiEnGM0ziWHUOpEZfZKuiL\\/uYPQMqAz8pQJ\\/ScwsLsAMdOyyiQlEBNHZy\\/HWNGaFWK7bMm6s29IOZ5vR8dS6XDIXGm8deiAm6JqCKAhHlDKRTuCq89YSWvSlytep9X849rvXjtoI1+bktXk3W4JMlBaibxXueoWYf6UpAYxMLHOtMnQOZA7wRzMR\\/Kjld8zIlLOCYLr7uabSP6D6Wu0aGXjuf+vOBJx2fboybjMWBovrCIL0\\/kaA8OaUOqclR7R7NwxjoePWYBORbCx76pFk3EALk9Az2CKOGKZba0uEamyO\"}', '2017-08-22 07:25:17');
INSERT INTO `dili_lulu_wx_log` VALUES ('436', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuLoXQlY5D1sNCgu8BTJgG-0]]></FromUserName>\n<CreateTime>1503357918</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-22 07:25:17');
INSERT INTO `dili_lulu_wx_log` VALUES ('437', '1 原POST', '-{\"signature\":\"6437b6a3fdac05e656a01068eed58a845778f063\",\"timestamp\":\"1503359060\",\"nonce\":\"15103530\",\"openid\":\"oWX6OuHasRcObXauPoCwlOvg7e_Y\",\"encrypt_type\":\"aes\",\"msg_signature\":\"e6aa82c1938701282a811f166c765dd02ed59233\"}', '2017-08-22 07:44:19');
INSERT INTO `dili_lulu_wx_log` VALUES ('438', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"ja1P3E28Ig160DNFMtKVmtWJBdW7StfMTMT3mE5yvcu0u5hktW+bxGBYnl5+2Kkm2ub7PYU5XyyzWTUQmycd1IThwpNFCKw\\/6lBI4Z3qOQCFLdQ5RgeCzDNfp7mthNBDrzPhHEgmQ\\/MXukKUqNS6XUVg9J6\\/6zuasC+tRsgUA9kNcPJeNptf7uAyiMjnjC\\/4McizBetrhkxDHCus8vWPJSV0GvdAp73W22oLUAW+Ctxuc03w2DGyqtRsiSh09yJk4GLKKC3Rr1Y7Jz521j7v1uCRv9cg3vXMm0dQMy2QLvmBRzYRj8x9xFSLVh1VmpNitfrVNqTAp0g\\/AM6CE2qjOR3ftY7\\/eestv1a3+befy1jAR30OO311bvTLKcqdAP4xhhmpw4YiQcrOglWemxUlXAf8r1exHHw2Yt7zIiqbm5qQVwkK0tru4I7T612+SHtO7KEM36hBVcoBP0FRSE0EnFvyULOq\\/SQ+l881FlpD\\/uwaQegHJq\\/vx5fXaeOJGwJn\"}', '2017-08-22 07:44:19');
INSERT INTO `dili_lulu_wx_log` VALUES ('439', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuHasRcObXauPoCwlOvg7e_Y]]></FromUserName>\n<CreateTime>1503359060</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=756]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-22 07:44:19');
INSERT INTO `dili_lulu_wx_log` VALUES ('440', '1 原POST', '-{\"signature\":\"deec978289fa67cfd2bc5c9c4de1cf7dc16aa4aa\",\"timestamp\":\"1503359368\",\"nonce\":\"1481679643\",\"openid\":\"oWX6OuK__C1SVVC8O7RIPqZfWvNs\",\"encrypt_type\":\"aes\",\"msg_signature\":\"0668da6a6914dc40c93de78dc3513426a9133800\"}', '2017-08-22 07:49:28');
INSERT INTO `dili_lulu_wx_log` VALUES ('441', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"rf+2nG\\/Hhvv1Fghvw2GXvBnY1vyWSixbXTKaE60bnZIXbgWyyTAgfYQbZ57UkDpZZoG6mBxPC6joKzJaTsMGenyBG3XUrUUfwOkIL8jkxrFIWy3cafu4\\/nfvC1PIW7A36HcfupjIZlrpbrGw6kPTECVsVjjSE1WVVOTkWaP0g1vbv863gOcM44TKohvJ3LGKyJt4DkfuwRb1cfvzzsBJgzYiIKr8W9paytICNtNZMsZliDZ8tR2g4Z85K4L+AbjNpv8GXaqVauWs47S5IPTG48mmWhli9eqXUcpZq57Ap5vFXBnMcCVstH4CfIVgbYBRKl0KLeGYzfYU+o3ezm0aUyR\\/WG8lNAwlSIevjoiKtGIvxczg\\/YZnKK6t4jAG0zKTmKxwgwtOoivCmoPFenAQyyuAs+ZyrMhvWHk5wUEN8gUfSzNYpOMQ1sSE4rB6iTdlTe3KmZqx4gmwNic56aDIp8GoVqTYtQCPaX76TdwtoXqY0Ljvtgat2kMzMc7l8GnP\"}', '2017-08-22 07:49:28');
INSERT INTO `dili_lulu_wx_log` VALUES ('442', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuK__C1SVVC8O7RIPqZfWvNs]]></FromUserName>\n<CreateTime>1503359368</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-22 07:49:28');
INSERT INTO `dili_lulu_wx_log` VALUES ('443', '1 原POST', '-{\"signature\":\"646b113595957a5617bf6d28fb4f3b40f30f32db\",\"timestamp\":\"1503359483\",\"nonce\":\"2016775438\",\"openid\":\"oWX6OuCtB83lIg1CVoo6JfyP4NY0\",\"encrypt_type\":\"aes\",\"msg_signature\":\"f12c1c3dcdf13fae158d0cc3cca5108f713ccf07\"}', '2017-08-22 07:51:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('444', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"CaGOMzND7Nky0BOt3ViToRLYaYcoCMd9Ddkl9QTp1z0ZuJ+fmSLjeljRotwO1LBUBiX+keirL6I\\/Qvncla3KFScJqg6inac6PpuxAdua7nrlff4XDxN8kHZqhshfrtNwnx14+C\\/apa8iGiUg++AWXqdm356yvqOICTUhRNrl3wF5J0iOZjouWUcObnxtR6ac70yDl6Bkfs3r+Oi4bc0YC\\/EszAT\\/OyGsy6XX1Xt36IAH7Ie\\/MtX\\/te1GhhqJMaTBEAfwJD1xVPfIgdnZRvUuoqZscWn8vDnpOhSC1ctda6J+3DFP7mWG\\/o1jOiH8LUc3LJMocT3Lk2frxAnJud4RCinJEW0BoyS4j5H\\/fK65NMyDSQUcuh+EZSlsAvE\\/LEgYa8TgkRs1GApveHj\\/jf\\/EHTAL4phE0horvxgx0DrziRM=\"}', '2017-08-22 07:51:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('445', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuCtB83lIg1CVoo6JfyP4NY0]]></FromUserName>\n<CreateTime>1503359483</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-22 07:51:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('446', '1 原POST', '-{\"signature\":\"0edfdb9420fdba09b127e5cae5a34cb38d3a6526\",\"timestamp\":\"1503360487\",\"nonce\":\"823395625\",\"openid\":\"oWX6OuCA2gun3HVJObF7EZ50r1ik\",\"encrypt_type\":\"aes\",\"msg_signature\":\"5a5d69a9d03bd294202242c21c82c89e8881778b\"}', '2017-08-22 08:08:07');
INSERT INTO `dili_lulu_wx_log` VALUES ('447', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"O4BUtUqbPUSv8NDLa9glXgoSlUSnOP\\/xttlvSwsZY5RgIQLRSBRoURLuvMEZZwTgRJOnLrTn7bibb0Gvf6xbzl+7Nnn0Brh756Wjn4GV5Gu\\/6\\/jAwVrEaPmETrwgF5cjdhxf1Bef4kflb2pcRqchZGWQA0KezLT8xspxagi6iLHGZur0jgIMD1km0XOXliShtj2glpsZUdJQO10J8Mm7WYb+3jqlGjA0uyDzzrBmyUF5f8d5+1z4IFaJNNVnv9udgPuAcqn46PLNWNCLv8phL9v8L3kMF\\/MvA5gKoJZ2\\/yDur+uC82ATQ9LXy1eZcgtTFR7EDmkm32Q3V97+Wlk\\/7mfBLIZYbVWpi9cFAVVclTS1oV9KEAAYjpkxO2o7PPbh7FJxIMMZU0nIDx7AJ7KQH+lyjtfZG5Ki06MjCQ7Evik=\"}', '2017-08-22 08:08:07');
INSERT INTO `dili_lulu_wx_log` VALUES ('448', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuCA2gun3HVJObF7EZ50r1ik]]></FromUserName>\n<CreateTime>1503360487</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-22 08:08:07');
INSERT INTO `dili_lulu_wx_log` VALUES ('449', '1 原POST', '-{\"signature\":\"8f89ae7b079c42caa908052d61ae4cb6d050159e\",\"timestamp\":\"1503360661\",\"nonce\":\"600449166\",\"openid\":\"oWX6OuCH_lH3OIeIpei7PCOFtinE\",\"encrypt_type\":\"aes\",\"msg_signature\":\"1567e08538bf2d3e998ec3b991f42e8564c41e43\"}', '2017-08-22 08:11:01');
INSERT INTO `dili_lulu_wx_log` VALUES ('450', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"zJxdW5ooP5Sz\\/m6TqFzpJk04ffAY274rC3HQhui9r598iQXXVthmCme2\\/\\/cymtB4QJT5YPkK\\/2lg3P5Jot94c\\/Cob0DmC6su65R3HVTWn\\/uXiyYw8Ny86txXkxKZ9sYK2RqXSH4G0pxnVhsa15fTmuq8VSwyeYf1nKTJFAaFDtDJ94WK2RFS4jAFGXN9EGqWzb0Hyj9Qfe1d+lSfjucDXS4N3xKq+KvWLp94Sz00DkNGK+fqGnCaYS5jjIncOCeaWqDrZ1HjJalFqvrfnvWUMzuxAjH9eeDZ3h+nijHUnOmsjCqHiFeuEJ5YQG2w+rXST\\/H9EgtNrxjjNudHaipaX2myZxtFVGRdA72QFy2wpH1nslHPfcJ6uDaTHkdC+GzxeI1T631Vq2bcRNUtSMI1MLms8myVQP5JDbFoGcY2lnM=\"}', '2017-08-22 08:11:01');
INSERT INTO `dili_lulu_wx_log` VALUES ('451', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuCH_lH3OIeIpei7PCOFtinE]]></FromUserName>\n<CreateTime>1503360661</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-22 08:11:01');
INSERT INTO `dili_lulu_wx_log` VALUES ('452', '1 原POST', '-{\"signature\":\"299bddb5e73fba1fddd45ddc090756259aa5c1ee\",\"timestamp\":\"1503361936\",\"nonce\":\"1157427059\",\"openid\":\"oWX6OuKdIwtLryPl4THVu_ebsnuU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"22a724c06eefa3a596e6616300dea158918e1283\"}', '2017-08-22 08:32:16');
INSERT INTO `dili_lulu_wx_log` VALUES ('453', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"gx75NcA8pePVJLj\\/JUA2rOQM2EmH6\\/6U+zjryIEb\\/0jBXAxVLPRICFd8auiLCMGjQc3xMIgMazWS0jHjlNQ8TgfAkM7deWua3WegrbLubblYWr1FNFDgwKkH\\/8BOcA\\/IMm4eQz\\/D0ns7W0eIfP3sucdSGrThD9EuvtLjwBAIgeMbEyiaJWjs6bOv4qU3ZriMxyp8ZaUigHphdWDUQEg8tfWQkvXoK2rCouMIR+RaKQZNz7YyeG4XGaYhYrQmIMLvqzyji0mXfYwxoBdRNqlhNg++cxB65utVNdjrte9xXDT0km+OISOF83sFP895BuUVFrL9tUwWUaNG+Eulf1XqwfKNZOY4ISuBpUKVDy68dmXIWbvG67EvpnoOmA9Tmyke0euPDp1aTgRFo44G57vZxVW\\/6WS95EzyUnWDNCAYFg0=\"}', '2017-08-22 08:32:16');
INSERT INTO `dili_lulu_wx_log` VALUES ('454', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuKdIwtLryPl4THVu_ebsnuU]]></FromUserName>\n<CreateTime>1503361936</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-22 08:32:16');
INSERT INTO `dili_lulu_wx_log` VALUES ('455', '1 原POST', '-{\"signature\":\"a3cb8593bc4fcda685928aa0136569e8489b73c5\",\"timestamp\":\"1503363351\",\"nonce\":\"1682445548\",\"openid\":\"oWX6OuLvIUJOhFGl9dJr9ObMnXGc\",\"encrypt_type\":\"aes\",\"msg_signature\":\"a693198a6c6031fd46c8f8b50d7e90366bcab2f4\"}', '2017-08-22 08:55:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('456', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"zd+jYCtyTHPL4lTvKkEjnHGtCJqCDfjptNIGZ6LlAQvQ6T+1MYdNrhBmHXQVstD3o3Z0GwLKVH4dVlmZ8zIQITqq1QWiBfXoJDKDhnSB5kxmBuJf5VhcfpJbOOIGBkXv\\/VK7c1XRbtNELDWY9wyoVx6grgg1M+7AgrT6TfejiCGKLco6EViZJcy3u7LkOzl4r8eDP0yhTMjHjdCUpYqkWyQ5wGulNehDSnG\\/FC6kVKALK1FZfEr6av9qDrShJO6pvUGED51GksomPgVQouaGtp9kUjVFMDvmnbewfifKBUvxI4ZPwtkN2mG+DegSQLb7Beu3Yd\\/j2p9lNa\\/WZcgRepw2I6QH0\\/gZ0fKcN0PV8YYkgBedUSc8c+98e5jQ2auYf43KzaQdSoalob8kU39M5Zwvh6acMIVLy8tAHWYwoSE=\"}', '2017-08-22 08:55:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('457', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuLvIUJOhFGl9dJr9ObMnXGc]]></FromUserName>\n<CreateTime>1503363351</CreateTime>\n<MsgType><![CDATA[text]]></MsgType>\n<Content><![CDATA[1]]></Content>\n<MsgId>6456896426972768710</MsgId>\n</xml>=====0', '2017-08-22 08:55:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('458', '1 原POST', '-{\"signature\":\"a24c252375ebb4de8f7b4ef78ff9aa1200314d7c\",\"timestamp\":\"1503363359\",\"nonce\":\"724199487\",\"openid\":\"oWX6OuLvIUJOhFGl9dJr9ObMnXGc\",\"encrypt_type\":\"aes\",\"msg_signature\":\"8cc2281db3b46bf48ddc49f8e475d591091e2d94\"}', '2017-08-22 08:55:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('459', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"AN4vkrfEH0IUcpCWpA2UiPYsaDwcjoTPW77bKrcfv+8wO6zg5C9a4lY+fAHOkqz2mkRjqhig13LBsAUiV0jwtnZ8CkgHbV6gg6l0nfl15SPzebaQYvek7SgOX2pC4O3s5AgvlCpcvYgwAvZ63ziiBeJJuGzz0+gQVHNggyJIeKz83iAtw4kZuhh2ul7LPp89qfIqmXFrtJ7jVjT2CoEz7kIbIG0QB1FzrbYiB1oV+QPJjHP6qRgFXDjc2amTJeyJraz3AEkGLFt6nEuxde3h1D65UauEr7NkGG+\\/PYzZvvUo5Z9IqD4AUHOLWGZJJIMypjiwjn75ca4e6Lk9JTRyAcIK2n2MJ4xNoGAqfZAKdogaxyFcuGrsH8cYAcYmGYDcz1v4TXyyzHTfjg1yLrwj3m5QZNtLbOjoL7wTGs5cr0zoMz066Bu2h5UMGf0SG85PfKGgr3VBIh0DBsK5VLBOnU4MlMXWU6MTKbLE7qjPSv5hDh+k0FAG\\/9oEaMc8w18C\"}', '2017-08-22 08:55:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('460', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuLvIUJOhFGl9dJr9ObMnXGc]]></FromUserName>\n<CreateTime>1503363359</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=754]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-22 08:55:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('461', '1 原POST', '-[]', '2017-08-22 08:56:02');
INSERT INTO `dili_lulu_wx_log` VALUES ('462', '2 POST php:// INPUT XML', 'false', '2017-08-22 08:56:02');
INSERT INTO `dili_lulu_wx_log` VALUES ('463', '4 decryptMsg', '=====-40001', '2017-08-22 08:56:02');
INSERT INTO `dili_lulu_wx_log` VALUES ('464', '1 原POST', '-{\"signature\":\"56947c5a2fe05b7ee257c034ef292daf9bf4dbc4\",\"timestamp\":\"1503363952\",\"nonce\":\"421478706\",\"openid\":\"oWX6OuCziDds2Mvx75ty-2XBTX8o\",\"encrypt_type\":\"aes\",\"msg_signature\":\"123f6ee8534c1266a53c3c2cce8822c5a06cbe10\"}', '2017-08-22 09:05:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('465', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"f5coKXbfwrSkvsTvPELy+XBKjADD9yb+2jRsTs95H54hg+Lja1tVLx9lUT\\/\\/clTji1f4UwkxXJjOneAQHUumrXeyufrKErhJs4TLME34LE6KpqNREzbY3Os\\/hPUaQkn1ow+XNFkxXYthweZania2IO1l\\/\\/+3PcI0ASu9Pnt9yCFLqd5SKq6FhcLTwXNa2yVeEABhf1vxbo2Lv3Ef1rbJPE2ae8vwDXlP7HB3NjfCv\\/cKdjdbcZstTgeScozJFwEe8FLixUAQtiRkvos6hUnp2vyXyrroRCUxoiSzMujtZoaRnKKW0Vo5E8+PNu4iK4hDs8QuLj2Hq0gL14yjz1EMR0la2ED8s+t+rPilV5OS7saSoYcbfWiNj+26qmheTKOzAh1bl1KnokRlwDAJiG2q7ElMX1Kte+BNLxf3TZWFhK4=\"}', '2017-08-22 09:05:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('466', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuCziDds2Mvx75ty-2XBTX8o]]></FromUserName>\n<CreateTime>1503363952</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-22 09:05:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('467', '1 原POST', '-{\"signature\":\"98632510561c12b84dca030fc32537b7dd0cd591\",\"timestamp\":\"1503365298\",\"nonce\":\"1142144922\",\"openid\":\"oWX6OuMKS7dDvJopVim6Olnepk64\",\"encrypt_type\":\"aes\",\"msg_signature\":\"c0129930810e7870f9e0a67bef663e7216090428\"}', '2017-08-22 09:28:18');
INSERT INTO `dili_lulu_wx_log` VALUES ('468', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"BsiB7wEILt4Zu6Hy01mL2sla9iV5+bGJO+xEpMokSjZ1rqBvbFsw7pHDfhL7EgFAW\\/ys5cmQDeYO\\/Ygb+ooTQYCCROYqru3Z45VpgDMSpE7Qw7bBP1d+V44ED77DADi5eVX+KaVTp8oNOFvXp7+z730Lro1h+0RL4tlLNQ7qx03R2SZ9mtm\\/XKysd2h4dPhtNz\\/1SMhrBzBOSdB\\/MJ1VwzfztOYOduH7omc5pIc4dRjjNbKQGdGcV3lxekGbANCb9sqVQSiiwI7ogbm2h0CGv6N+M8eb\\/M8PyACupIMVR40otb00KeLNntdMxMLoBmcllWFZsmWOohdCiMmPli8Q3xBpSdc4cEHdfdmWpJwlx57YB8iGodu8maK7IkuzwnqKBgXyeg8d5c\\/V+9J9UmJ7nYeb91R5FtfZ3JpncEwk3UDNSvRqhrmaaYvJilajvpVUmMuUae39\\/oHeWUKjzIWTvFI1lHzi6vUbg62O1UOiAFuMTm1a0HJ85lKbkyghsoYj\"}', '2017-08-22 09:28:18');
INSERT INTO `dili_lulu_wx_log` VALUES ('469', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuMKS7dDvJopVim6Olnepk64]]></FromUserName>\n<CreateTime>1503365298</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=752]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-22 09:28:18');
INSERT INTO `dili_lulu_wx_log` VALUES ('470', '1 原POST', '-{\"signature\":\"f19773d5f7a1bc6077ee2df2517f828ad6fb0620\",\"timestamp\":\"1503365317\",\"nonce\":\"27100858\",\"openid\":\"oWX6OuMKS7dDvJopVim6Olnepk64\",\"encrypt_type\":\"aes\",\"msg_signature\":\"43c56ecf8c87e0096f595a78bd47efcb054fe83a\"}', '2017-08-22 09:28:37');
INSERT INTO `dili_lulu_wx_log` VALUES ('471', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"ovgUE3x9GG0uqTCgv2\\/cd9t0St++v\\/DIkb4eajbmHX3uTuQVBm1qs7qJtvb27ecO19qwnxdPsqWnSo1Hx0xDRy\\/n+2fDQ0PEMuECeYTOuvjFDJJERBwZLkacl36eC6\\/bwlnkQaZnWmRhEi+Q1obgRyQhJyxHZnIz2+94jdisYINfVerwgHcx5r1MB12h2sizWjHSLjEjzVFT3veNUH8QK8aUNNWXzkbTvoEhTHN5OBv0zQESoWnuVsqFyXNZOEppjpTFsJNLEITys5d+StHcRzgHpofFpcTWJTIUrIH+UMDFgohlJy2iQ0pKviyLvbXSfPUzVBgbdfmOkAHNrj0hqRT4P3s\\/vMIX6vfOIkWibeJifwpzx3mfbjGPxmgRGruxPZyI96bpWdhnvTeemtUbQJqcUiTZBFCdqbn3ev+i89ZV54XFZJCvS+2xf9jA3A55gN983TegQUhhU1tWc+NZYouzwDc3Wpi+X3es7+36VtCnFBnIZgD+8MmFjdqotegE\"}', '2017-08-22 09:28:37');
INSERT INTO `dili_lulu_wx_log` VALUES ('472', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuMKS7dDvJopVim6Olnepk64]]></FromUserName>\n<CreateTime>1503365317</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-22 09:28:37');
INSERT INTO `dili_lulu_wx_log` VALUES ('473', '1 原POST', '-{\"signature\":\"19b460ceb9622e465a44200e1f9bc1a6c84132e4\",\"timestamp\":\"1503365591\",\"nonce\":\"1924495645\",\"openid\":\"oWX6OuLnBae3PLGw_rQrsQ0RUffY\",\"encrypt_type\":\"aes\",\"msg_signature\":\"a79f18e2b2b019924b5159ecf96ffcf81f318f64\"}', '2017-08-22 09:33:11');
INSERT INTO `dili_lulu_wx_log` VALUES ('474', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"EvOchPF1UXFihPI+qrWu4Fxw8hSa2jL\\/IcyNeh05P8E9x54mCcnaqeARmJw+exS+Kc1TRUUoFCkt9SoNkqIhlvmZv1e0Kuq5ns7LSk+AvTLnIqaI1Hyn7BLVyIJfAoYXI+8FJ1RHtP+CtQUoWR0u38kDROT1l7g3TNn0jwS+q\\/9sWErDxIjM+IE+qonkTq7kPwQrxfZoydspSK5LAsbZbn9li5yULeoGhVWsBQqB4lNYqUmup776cAjn+q0VWO\\/sJpJeibjbAHwxOIp0ufJGfMrZQ+aU5QvAES7bJMmWZZkL27q7swTTXlEA8J+qf2N5m1CvPVKGfI7IVvVfHy5CIampJbp5KFftQ7\\/MyA181h0XY9HOwEdCMmr\\/aDv9KVMlBR\\/wEKf458p1UMwAlSzAzmsnXpb1pUNH7+4OLWzXAW8=\"}', '2017-08-22 09:33:11');
INSERT INTO `dili_lulu_wx_log` VALUES ('475', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuLnBae3PLGw_rQrsQ0RUffY]]></FromUserName>\n<CreateTime>1503365591</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-22 09:33:11');
INSERT INTO `dili_lulu_wx_log` VALUES ('476', '1 原POST', '-{\"signature\":\"cac0041c01be1fab12d42354ec3b3c0cad2941c3\",\"timestamp\":\"1503372329\",\"nonce\":\"468801572\",\"openid\":\"oWX6OuGp86ZdUerX7eiMjVxVeZzA\",\"encrypt_type\":\"aes\",\"msg_signature\":\"fdba8d77d9f9f961440d4b0d43c2298d4f30ba63\"}', '2017-08-22 11:25:29');
INSERT INTO `dili_lulu_wx_log` VALUES ('477', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"mtuZE7\\/P2IqG03f4onhsw8uZSxRh4m+FSs4e\\/QmP8jG8jjRcfQ4iOiFrdBOcgSKNiJVpyfktEl06fNDX2khOxgTzCNVp4h8t5HNZQ+L2d10NNZXeUBzGIijLlYVIt87zFtfbhMWcbHW2LzuD2ys3P4wdV46q7EbHkUAV5FxhBI2bWb\\/08XkVkIZwcm5QnPxH5Bc61uAC7NTFzaZA2MRkLV5VrYB\\/mbyoSHKEj2PuM+Z8pUAkqSaWMxG42cBeVb0slfgwajtoD2VfVtVue7mQkG+C+H\\/Qj+d5cxkxCoMhaWcFspqcL1GGd1LFz6rJYSFR\\/QLbFIN3yff7OxicSkBoS6v5mzp9nvGTLY91MOsvIO6PqTEyZxln60hTR0odLyduxug8Al2TSdbbw3TYCNVL08DuMpUo0BpJEJCcb2krOOY=\"}', '2017-08-22 11:25:29');
INSERT INTO `dili_lulu_wx_log` VALUES ('478', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGp86ZdUerX7eiMjVxVeZzA]]></FromUserName>\n<CreateTime>1503372329</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-22 11:25:29');
INSERT INTO `dili_lulu_wx_log` VALUES ('479', '1 原POST', '-{\"signature\":\"4a252ba405f4656e7faee869bebe4373db08a2da\",\"timestamp\":\"1503377943\",\"nonce\":\"186072396\",\"openid\":\"oWX6OuBFofA5Bh7ygMtfGWSHNUko\",\"encrypt_type\":\"aes\",\"msg_signature\":\"9cb426dd193ead5ab753942f8f384cf543de8e6e\"}', '2017-08-22 12:59:03');
INSERT INTO `dili_lulu_wx_log` VALUES ('480', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"4rKjA4aI2Uu20QNAylkZbXls9IActaF3jbNHxZDGQwYhFD8g\\/LV0QVbFR4AzjNuOUhMKbXAzFM2oMbAOW\\/DkFSQLHmvdEaFJ1ulpQbmDQakJPy3+vKEwjcrP0BkT08RBVCM3ER4Eub2T3o\\/fRuAUmNyz3FZODUNVc+puwm1zvTAkqapZFpmSASNBRcGtzHf4r8nwsYN7rgDkuWrS3\\/aH8W8nEr6IAiO4wu+4B4clXEIS1qHwh7AHV5VoGD7VHRhe5+aebGKZm7Wbtj4xtXzhzEzvKBu5XD3Ab0KGCJhAjoMVSmZJ22IlKkYySmDX7Wf0dKN+j7BgMB26Q9ZNTsfghACZhhnEoqf8h1ksEEP+O89onwAp62ZhyTJOMR0J9Sy\\/GNrOXx\\/gP+r+ue3Fh6hXnK2qT+z6B\\/Jkey9MwpX3nNM=\"}', '2017-08-22 12:59:03');
INSERT INTO `dili_lulu_wx_log` VALUES ('481', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuBFofA5Bh7ygMtfGWSHNUko]]></FromUserName>\n<CreateTime>1503377943</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-22 12:59:03');
INSERT INTO `dili_lulu_wx_log` VALUES ('482', '1 原POST', '-{\"signature\":\"d102876053b4f459d9b87bac0091827a0948dcce\",\"timestamp\":\"1503385835\",\"nonce\":\"1766585015\",\"openid\":\"oWX6OuAVU3X1GfxEKjr_m_pUn3AM\",\"encrypt_type\":\"aes\",\"msg_signature\":\"a13a92dbc369a3ebc6486cd40562060900319202\"}', '2017-08-22 15:10:35');
INSERT INTO `dili_lulu_wx_log` VALUES ('483', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"nDLy+nj\\/pjwIqZK3HQoHijMqezMImPlZInIm4h02lP+0uQVdt+\\/AuH5ORVs8v6OqnxLQoqNkhuDJ9HJ7GCJ+hTgUjP1jjSxBFpPyDizuI+ArcHscxmyBnX3zYSJg\\/I1jlayxTm2nsq7TGkms7f4fKPJEw+0rQfh+mUO1WayV3oMwQlVBUaZ204qOpMt1uN1rvYggZLcKeE8B5XIbioI\\/uHEOHZVY8B7fzBTwuM+wj2da8MQU2BytR6tvgaURnghVZfPQ3BpSFaGpRH31n55d4reUmCqwU4vjRxXZ9W9+X05ZahhpJvCHfLTkgelN2cngtu7UNxRwk9vw9zaQlEyYwKItmb6sf+5JIE9BCDALOCDeNN1FE\\/5JuY8OPWlQBwU2\\/tO4gRrtQzJwEHBpae\\/VlrSpuNSZa6w3e7DEYaDKduw=\"}', '2017-08-22 15:10:35');
INSERT INTO `dili_lulu_wx_log` VALUES ('484', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuAVU3X1GfxEKjr_m_pUn3AM]]></FromUserName>\n<CreateTime>1503385835</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-22 15:10:35');
INSERT INTO `dili_lulu_wx_log` VALUES ('485', '1 原POST', '-{\"signature\":\"ddc21b3f9af32331f31948824be2296bb8bf3bf3\",\"timestamp\":\"1503393959\",\"nonce\":\"1572983676\",\"openid\":\"oWX6OuIsErhmR5_znTI_RIzsCqNc\",\"encrypt_type\":\"aes\",\"msg_signature\":\"0fb1e6595f6416880314421d688c4095fc6bdf6c\"}', '2017-08-22 17:25:58');
INSERT INTO `dili_lulu_wx_log` VALUES ('486', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"7m9G2NKpLsTOnFw5Ym2sk6knwPHOOCEQYpWHHaHahuWzVGR+lU3BQgg99iBEMwzmBwA0pfFHNKjOBrLlOJPwQc3bWT1AUrFe3JLWJCED2kOeRWfuXf8DCeE22zUt3pi2wGMuGH9xV9qwZroDOcu+w9kmbB3cphZ1o\\/fwb6dLNTsKHB\\/OH6rFDdigUqXlPyYsbtzPSpTJseI3iE2yG9V+56YZQSre\\/GBrDFvIw7nRdmo8pmJ1r8bDkoU3dLSNoNkGRRB+6HbNf6LG1AHVYcV1C7oBUoHHRYaoL9v3EMjAr3MJLiqE9d1RUjU0O0fMUsntlFsB3XaCVdTK5fhneD26nOoO2M5DmseBtplvurAYQmQ0F7IxmIS9zpmhf4x3Y4HGJzbMiKpRhfwMbzV6M0RsrNua+GOmdGu0E5XrVXchLVg=\"}', '2017-08-22 17:25:58');
INSERT INTO `dili_lulu_wx_log` VALUES ('487', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuIsErhmR5_znTI_RIzsCqNc]]></FromUserName>\n<CreateTime>1503393959</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-22 17:25:58');
INSERT INTO `dili_lulu_wx_log` VALUES ('488', '1 原POST', '-{\"signature\":\"dcbb7a7ec0e0db3d9ffa7d6ffe5cf101b48e7e2a\",\"timestamp\":\"1503513891\",\"nonce\":\"907309855\",\"openid\":\"oWX6OuK6ygf47TBFoSjzH0vs1NSo\",\"encrypt_type\":\"aes\",\"msg_signature\":\"f84ea7f9d4ccd3d22d42181c8454f2eab0896b98\"}', '2017-08-24 02:44:54');
INSERT INTO `dili_lulu_wx_log` VALUES ('489', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"hhBOT6TAhY3MpJQHcfiALR2Q46Vk\\/TTYkKpyVP1dI8Kn2DuUHYG1BFxaiMmnYOL\\/2iVrvLPg8+6er3HfijOElBf7G0y0R0U1mUFUQFInVmga1pVuo76Dq8KBSU15tbZaK4sV2LjXULIrA7IBf9A9hkQQf3q94\\/lSylWGWFwj+xvwRGcndrtzs\\/sRzQzq0LkvJTnV9LRyqyaqQrPr4Svq8BZJ2vUNSj1FKqzeEVvtrN6AxOjIbjK52MYa84IWl40S3QLwpFpw\\/Jtb3iH27mBk\\/P9GjdfvudoF\\/lHozocPCRuYEPojURmcqBQLqNyEHnktwFattMwpFGrVs3iluBTzvZ42Igu7t3DfAnt+a3lzgVNXoPtpXHXCMVEfibYQ1hyqSF7eHsrR4\\/PqKipuAbyEgPqta+w75VF5lsmVPkbm8VmYp01kPDucwhS\\/sQxSiDznOjIAQgGERT+vKJWuOIKEt9hM3hH32N+vF3pKsDFcFNjVsGiAS5R\\/JfTtzuNB4r54\"}', '2017-08-24 02:44:54');
INSERT INTO `dili_lulu_wx_log` VALUES ('490', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuK6ygf47TBFoSjzH0vs1NSo]]></FromUserName>\n<CreateTime>1503513891</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=750]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-24 02:44:54');
INSERT INTO `dili_lulu_wx_log` VALUES ('491', '1 原POST', '-{\"signature\":\"632a593b6fa072f6dd7164642f463420f9a2b1bf\",\"timestamp\":\"1503623717\",\"nonce\":\"1915279628\",\"openid\":\"oWX6OuO63LUEqjyTYLWWnnOOxv9w\",\"encrypt_type\":\"aes\",\"msg_signature\":\"a96befe4a7e439577fade435f7377880338c55b5\"}', '2017-08-25 09:15:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('492', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"28nfHdXy8DF7GhgPHDg9t7JkUhTWAxiaAjtjMu9B7OMKq68w1KNYkIaSrCbQTtRAzORPoJ2NIV6BaXtzJZwLjTEubVEmv0eI+R1k4Y3sNK39N29HNSYiBB3HClUkmMTGw2uTS6kWZD2UFYlS3X8Ac\\/oh+hlAXEbhjCHcJI5w1Dug0UChrwevzTnfk2DxkN5N77xbyXJiaXhuQcmWmciPoo3gWyK5WDYra\\/hTvhE8wF+zxiXtxD+ltVZBuipEPrDJOIkopQWo9UisIhp2LBQYXuj2M0mc5k3xamTELjcN1YEkWdHg8vWw7niAdGI2PikaFzNMjQEpVpQwC8WTJTWP+mqr6AGCk7tHM4Mp7emibDZ0Gti5sj\\/mo2tIjsVXYPnLL6aIZpSyX2rWSPwA\\/BYRTE6S+DrbMilEcnnvndPcgh8=\"}', '2017-08-25 09:15:21');
INSERT INTO `dili_lulu_wx_log` VALUES ('493', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuO63LUEqjyTYLWWnnOOxv9w]]></FromUserName>\n<CreateTime>1503623717</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-25 09:15:21');
INSERT INTO `dili_lulu_wx_log` VALUES ('494', '1 原POST', '-{\"signature\":\"d24e3bbd894f1f69a6cc495ab9cca653129add1d\",\"timestamp\":\"1503664790\",\"nonce\":\"2065288393\",\"openid\":\"oWX6OuADajINKu_IC6szuRN_eF1Q\",\"encrypt_type\":\"aes\",\"msg_signature\":\"71b776177c899b800b3a12744f147274cb6c7625\"}', '2017-08-25 20:39:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('495', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"UTPy6CRl2MKj99e8zq1iZAE9SwWaYxg\\/4byw9jTu2lIKpULwZUn54cPjvGp1lZtgvnSfkf8uEFXRdJPz1I1xT4xhmnbeqU\\/+wV+Vd4+bGRa850ApKt\\/pj\\/iurdDFNuKQWHBqlmZHdMOvrXaUTcN\\/RQuCsx\\/X8JFsHqCVoRJijk0ed5YdiTP0vIzHF2p6eeZFXPb4lc34qH3aV4h7tCG\\/kSUzt\\/KSCe3MRQ2rdNp2y8CfRT1m1WC6PSUWGgmBQ0nzRvv\\/\\/NVbfl4hJncGFwLryQMbLp1Aa+p\\/\\/itFPM7PFpqtSgzPsdtIFlgSju8bT+AXkm5gdFooPK1UAqbyraqFnTjLPS50u6Qvn5Izcml1ndpUk8L4UC59uw8j6Fztbhi9u6JtO8ZsEEQO81FebSyYvyIj7ifMIAcDa9mr0nAYSlqOXaBlV3C\\/XndvqPLeMz\\/2O7gkUye9LjETgioC2Z8TUCc2MQvgUm5\\/0rXR2p\\/nfgKodi3swK0M0Q596m26IN7Q\"}', '2017-08-25 20:39:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('496', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuADajINKu_IC6szuRN_eF1Q]]></FromUserName>\n<CreateTime>1503664790</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-25 20:39:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('497', '1 原POST', '-{\"signature\":\"56ce8e17350e8b8858dc86180d136909275710b5\",\"timestamp\":\"1503664810\",\"nonce\":\"1551556067\",\"openid\":\"oWX6OuADajINKu_IC6szuRN_eF1Q\",\"encrypt_type\":\"aes\",\"msg_signature\":\"8dbe4deba178aaa23cefabd6a68daf6c549c6781\"}', '2017-08-25 20:40:10');
INSERT INTO `dili_lulu_wx_log` VALUES ('498', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"N2Q1+BPgS2q+OyfqwC2XVU4+b6KzKZw\\/hLScplmbLU46kESg4I7opFjFp6o79HZW1NAWuEj9bbfKm717qs42JNhYmpRpTPsdAnQVaGb1vb8Pd5r1C\\/yDFkYTm1Z5\\/1tM9YBNQHz2s0NVK363zfRDoDTvyyJcgQr0DcbIhq0rNncONCC5ixvZ36rbncK\\/0aFt1rexKT8Avx9zt6qudR9XSIum5O0dbMKqRXN8kFfPqqFX\\/tJfYXZJe+db+ZTn9OxmfIvPWbcUvmx07z8qzU2FWYO8sdU\\/4Y6IfNdChANnG7cbBYOQqNFrUYWkx4FP0VzqQ1P3IY4FkAPkF27Ihg6tCTBCjzFAmwEqzfkiYhbEN4GBPZuGS9LauCJ4WxPdIG\\/laFD6ZzALV\\/NIm+X\\/78BKW\\/vnfsRUqwwhGiSfTE07r0H+VJZTz05YHA23x++xFFtBFPd\\/0I1L4vuQBQ8beXkjzOhkg1a5pHwyY9iLEKjbGGz4ojLcueIWogZwtfxo1oRn\"}', '2017-08-25 20:40:10');
INSERT INTO `dili_lulu_wx_log` VALUES ('499', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuADajINKu_IC6szuRN_eF1Q]]></FromUserName>\n<CreateTime>1503664810</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-25 20:40:10');
INSERT INTO `dili_lulu_wx_log` VALUES ('500', '1 原POST', '-{\"signature\":\"27eb552cc25c71089335279b4bab027418c3f9ad\",\"timestamp\":\"1503664847\",\"nonce\":\"1277917491\",\"openid\":\"oWX6OuADajINKu_IC6szuRN_eF1Q\",\"encrypt_type\":\"aes\",\"msg_signature\":\"78264e58c262f59bac9dcb3c5ab99ab0aa6a2519\"}', '2017-08-25 20:40:47');
INSERT INTO `dili_lulu_wx_log` VALUES ('501', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"TBIuElJ2dWpBT1Sf9J1qNw3Cu8bantjOH8zDgnXyiAs2Bxom75XvaarSZWyV1ffxvWfv8yEgWayA1SLW8W7Jmzsck1oA9trHrSi0qa+raEAVur8+ZswA6zIx2\\/ZlnXa73HFXhxrCc7eKY\\/zXOIwvWNJMDSlkTMOeeBCB+L6cCyBC1fzpVyazk80FcS2O9ToaBgsdnCJzxB\\/dOjZTTlSHzl0zG0a\\/Tw3jMZerftDluhLt8TN+ApOQPuwqy2MULsqMVtXITlNjXv57QM7Nnnv61SjXiGXyDc9qfafGgL\\/5vyHzKpsYNj3yoPDvdAwRwzEWQaA83VO7CTrhI11aaYkMmzEFasDGs1MHlrOH42M5FFx4+x8wKpwUPaDdq2N1LQYPTsR2jaMoxx8EzhpARML1KcP6bhW7m2Cdcc\\/qEPz04hYgN+MitichbFoDhgfRBx4PwwHB6daZE8BfX2ijUUZimH2KMDJMGNCGSzzJ1BgPUo97Fv0e5amxciu+WkYX9AGj\"}', '2017-08-25 20:40:47');
INSERT INTO `dili_lulu_wx_log` VALUES ('502', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuADajINKu_IC6szuRN_eF1Q]]></FromUserName>\n<CreateTime>1503664847</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=752]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-25 20:40:47');
INSERT INTO `dili_lulu_wx_log` VALUES ('503', '1 原POST', '-{\"signature\":\"db140291b7520a7d1b093a365f9a1583ab641116\",\"timestamp\":\"1503667690\",\"nonce\":\"844462495\",\"openid\":\"oWX6OuAjgXIicV_zJFdZOpEVOCyQ\",\"encrypt_type\":\"aes\",\"msg_signature\":\"c0e1e275a685cd442d8ac53a903205e8311f32e3\"}', '2017-08-25 21:28:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('504', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"3XLsf\\/ue7IIrIjCSiUOay9W+zm0b9KapYXiut30VnN7OosY5YOVIHDHVadgI3HWKrLULRL7oxSc2k0vSbIzxm+6fwjhyJ51I3a1vFjqZ93RAuc87YMUILoH99ChomahPrARoct9eFwWnwCjvw5UNNN2fpuWun96POZU7F9+St6TRme93ZfCgeZyInS1DoACPoNQv9+VGbgZVlS+Hx35vQ7jaA93CdtLXbMJxFSxDrVQFiLa3LJNP7Xd5zrSh3t8W4U1bwmHwRzX4x6l92JNzdk7XkH5qm0\\/SsMVcbkqUALHu1kBGatu7WQvZdNSvLDMWL\\/DEQtoIEQugzhDjxDBB\\/7+KsvO3J8UqDCv5WBNbxiAZpbTAI81aP7TltUttPeQ+uls8Rbg5K\\/389dwYP7gLFCBbpqPfosAYaFwvUe71ojw=\"}', '2017-08-25 21:28:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('505', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuAjgXIicV_zJFdZOpEVOCyQ]]></FromUserName>\n<CreateTime>1503667690</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-25 21:28:14');
INSERT INTO `dili_lulu_wx_log` VALUES ('506', '1 原POST', '-{\"signature\":\"92605e892775a6807fabae04c62d21564ad3f2dc\",\"timestamp\":\"1503734719\",\"nonce\":\"1686260399\",\"openid\":\"oWX6OuDVBwTgZXi6RKUkuw1pEsZk\",\"encrypt_type\":\"aes\",\"msg_signature\":\"4dc681acebda60c3169cafd6e69e6c77efef486b\"}', '2017-08-26 16:05:19');
INSERT INTO `dili_lulu_wx_log` VALUES ('507', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"aTYD2v0QHgT8A2GbfKkkR9IsoYqaT5W3FzS4OfsUS+Z5dgXipCUGDZb8wxQuxD2eiLFUmmIk5k7BFP5cLhiP2KVQe8SG1Igt3uJsJaCsbu3lhMyzxbrp0ktfzNU7fMUackps\\/ei87RJT0MTadKRSSaPPeQObzIYHS48\\/DOLMLZj3DnpC2V8biNfKjdryBpUXpV02W5\\/DFb7qJJyEaHEm9vwSB9V7Pr7Kc7RwrCu0KI\\/E\\/jHdffYUyUZeXp6kkGaRcao2StL\\/oqnlJfkos2fORr14JSAS6wOcjxeY\\/QnQi44H3Amwj+abw9clOmZrEPPd5O7rupXKrK6dFNtP1IZjXczA0RlQsZe2RX2VYhR1i4QhJA7\\/RVtK4Yevet59zmtAyzxyOwREJgBiZ2VdmsBgRlIvfWJu61DAUe84caActbECQiiRNBghieB0m3x\\/wBKITekVhzqIqP+kDpxjmUdK7JTumFhrglzkc\\/9Db\\/ksMc44YaFp8EP2BZCnT550lP3v\"}', '2017-08-26 16:05:19');
INSERT INTO `dili_lulu_wx_log` VALUES ('508', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuDVBwTgZXi6RKUkuw1pEsZk]]></FromUserName>\n<CreateTime>1503734719</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-26 16:05:19');
INSERT INTO `dili_lulu_wx_log` VALUES ('509', '1 原POST', '-{\"signature\":\"315843640a6aa47a0345c9304d3f978870d589b0\",\"timestamp\":\"1503736001\",\"nonce\":\"2096266221\",\"openid\":\"oWX6OuCLu4qRWLNgTaYBiJZcC3Y0\",\"encrypt_type\":\"aes\",\"msg_signature\":\"fe6d6f92af4e176985564297d4e350292b4e58da\"}', '2017-08-26 16:26:41');
INSERT INTO `dili_lulu_wx_log` VALUES ('510', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"\\/n3wj36D\\/XBnU5Zu5jl6j16k8UcciMIiCLttiwqDTNNhOjJhQNkAUrbL7sKFAK3B\\/dvfkfC15tIFgxdweki7U2QWjQpwMyyDzcjRCtJJF1EeUmBpw0LW3RpXfS6IArosLDm6NskpdzeTC6OrG6NO8nMhYv3FXcZYh48fP+sO\\/Esi3xRXU2EhIIOxv94jzsfd+bFtXvb0friAG6UMjeaPHJdn9KomQ1ZmwRikRKHpDeE3Hi\\/LkLFjO6tI6J03XkVO03I3rnDA6u5GEtFtSR9khwCu45H6icofdZTQNH5X9wtLtiXkRbqKcXAKBOO0uZfkQXqg\\/7xys9\\/8Js4wiCL7UpC0QF6mLF\\/uQXUHq\\/MIPhjlF4PziwJNpjCMIJAZgzYR+zS2XfeXSGa34sjN8oZ+zmT87Py6qA0h9rKtpGPU93M=\"}', '2017-08-26 16:26:41');
INSERT INTO `dili_lulu_wx_log` VALUES ('511', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuCLu4qRWLNgTaYBiJZcC3Y0]]></FromUserName>\n<CreateTime>1503736001</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-26 16:26:41');
INSERT INTO `dili_lulu_wx_log` VALUES ('512', '1 原POST', '-{\"signature\":\"a37851492324fbb1315d1a9ee61580d443372594\",\"timestamp\":\"1503757351\",\"nonce\":\"1025194070\",\"openid\":\"oWX6OuKR6aHIqCVWj1rMtL0RTnAg\",\"encrypt_type\":\"aes\",\"msg_signature\":\"288fc56c6620a3e728f159806cd02c1ecb59bf80\"}', '2017-08-26 22:22:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('513', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"HISAo6+dTjlFKLt4z5jWGZnnqqbmbFQdOHs61JdubjcqbSQuDE8r7bpjEWC2SZbQOGJWeyMjqbO9Bqk8+0o+dhoEr2ysMmam2f6XZw8YMij51dEgBo+oQMsrxFPuAfIyF9hw5llxCEC6MtAtPr9RGszKsooZ+q0tFh8TP\\/WIrIty2L0ygWQJ5gTZd2W1w\\/MQBjR1UUiWFeV5HrP1uW6BPNGouNiqRDNENxSldkyf1IPfa5pnAZyfmwvzTYydA9TBHAsnk55WiM6BOef0SReOO4zaLMjoR3JnrzlNUTsxYYFFCJWUx3rbtsxcBXzsi6DwQs07JiyxI4uzJ+rwWzL6LiBRf0vrS93+hfYqN7eqjJz4gglQNgyohb2TQo9IlJqB96wEdRSxxbXRYru4\\/tR6LtzZhZfWWyR8mU2aJSQq+u0=\"}', '2017-08-26 22:22:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('514', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuKR6aHIqCVWj1rMtL0RTnAg]]></FromUserName>\n<CreateTime>1503757351</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-26 22:22:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('515', '1 原POST', '-{\"signature\":\"103f2755d4653b7401afa4464ec04331f1a146cd\",\"timestamp\":\"1503816986\",\"nonce\":\"557400657\",\"openid\":\"oWX6OuKR6aHIqCVWj1rMtL0RTnAg\",\"encrypt_type\":\"aes\",\"msg_signature\":\"8fa3488428caed381f65a4b61c180899fd4aec35\"}', '2017-08-27 14:56:29');
INSERT INTO `dili_lulu_wx_log` VALUES ('516', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"GEQ1qdxSXgA+\\/kX9ddhjXM2YG3J2d\\/7fIp7XcqBYN9Z+27c0O2lvJQ2cNOQVwirAy9YbaObSaIDzO\\/yklAk+Yrr2ll03uOqa8GA1KpB+PWYRS6H5B+7hDQi3XCTta9xgie0D0mV5DHepFqbMz3iYA42paVKjudy5g3kU15HyHSAq035oaVI4Ur38dluu4z9x5CfWJW\\/sg9qRBBfqtGXj+rZnta3Sq+0AE7Sl7e1++wYr7k\\/dIaDfA6UuqqrFtgMgaP78QrCtYIe6yE2AsH+yNDjmqWxTd1De1R6cSPWrzP7GgBvO\\/57yTqgUTYGNfunc0HkJ\\/fxehjyCmj8z7CDNdMA461yAd5OY7jbX5eHaSV3eQNI9bsW7\\/9qcqafKPz0+RSpKLtG9jq8yXaNm4kvGnW0sD234QLxcRQGZcMlf7RM=\"}', '2017-08-27 14:56:29');
INSERT INTO `dili_lulu_wx_log` VALUES ('517', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuKR6aHIqCVWj1rMtL0RTnAg]]></FromUserName>\n<CreateTime>1503816986</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-27 14:56:29');
INSERT INTO `dili_lulu_wx_log` VALUES ('518', '1 原POST', '-{\"signature\":\"c70ebb6f7c8e09de36254a592c62c00cdf0fc6b8\",\"timestamp\":\"1503899158\",\"nonce\":\"1809804035\",\"openid\":\"oWX6OuP3GRSxF1zw5L0onKmzw_I4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"545a00b7ff291563e3414848c4a23b1cf5da0707\"}', '2017-08-28 13:45:58');
INSERT INTO `dili_lulu_wx_log` VALUES ('519', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"9uCqaT8xsNErIZTbUWGLAwhqGkK8MWHWKNuRS3cTowJRrwmeyOWQbnyQF+v7yNwd4cU6mzhCJLtCNLIB6FT4UQK\\/xyGLu5I55B+4ejhiPQfCrV2W29P4Ji2MADTHxYuEWYG5KZ6THJlNzC21iYWwRtz4qvdArDPD8NqaHIJOLjFP5cTo\\/qOqcSYGsZ+Wu6QUMsPu1VNkFUL6fIkUBimtcTpdJyyy1RaRgOXmMlnLrz2rkDZbLAQgyndtR2vy\\/+8M9ywYxN6id94Y6WBH6Qmbd\\/0i51eCbMns64aVbpWj9cvF5h\\/kYBTeDTi3QyfF1\\/Ha5S5aX23pcwQv1EJAyQKc4ZxJizLcaOgWsroFsmr6BzptmJi\\/nuWXJf2Vf8LzKyxFmHNE4+fTR5Fjn1lGpiJLn6H+WW6kwivvj7uI468TZ5MJcbhmH8ZQH2gAvF1JemwFg\\/z35iwRs\\/dpOsI9qGYWtFDnCinrAyaaNXuElXFcaPBu3fAbNAiaZ2uLEe7odLX2\"}', '2017-08-28 13:45:58');
INSERT INTO `dili_lulu_wx_log` VALUES ('520', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuP3GRSxF1zw5L0onKmzw_I4]]></FromUserName>\n<CreateTime>1503899158</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-28 13:45:58');
INSERT INTO `dili_lulu_wx_log` VALUES ('521', '1 原POST', '-{\"signature\":\"fc74ab746100c04219c2bc0e6a61d6d8677b59b6\",\"timestamp\":\"1503988976\",\"nonce\":\"531849362\",\"openid\":\"oWX6OuH7IXrm7GDniKZHcHE91YVs\",\"encrypt_type\":\"aes\",\"msg_signature\":\"33ce93c8ccef58b0bd8ddccdd1cdd8e5d4b1a5a8\"}', '2017-08-29 14:42:56');
INSERT INTO `dili_lulu_wx_log` VALUES ('522', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"QINVE1rffwJ9\\/Wmv8MPwDL3wEDNVJ+HrBhEIHADPQbc79OiT\\/rXRXdoIDC020lOJ6EsN9Suj09UVz9OBiU7U1ErOG0Y+UJ8wPciDE4HRSJqw3k9g0y5upPY12Ie6R82c\\/R4Xuwes8ZCxX7eQQDj9w+7IHAMNKWR6JLMMaHvkgKdN3dY49Gg6dAgoYDeakWsDj+IpPqjuQjlvTPF4KpdZ6C0syBovh4fez5q6ev7lqhADAz\\/lon189Obptq8WUk+Pw1WguV\\/gbIFPYbMNbX3jkd2BMJJ7DSuDypQANpQeR0DBSemTUJeEW4aeIQXgKvyDluhdy+Z2R90QGsk8HvCaXIsIszw\\/HJTw804rb0ZHLsOiP3VotbpriISqvV3F0ucFIkbT4FF2qTl4rVnQmqPECwaltU7yWI06lVKR7yMeHJULO\\/nyZFUKESu0s+HrpQpmmPEmiOKoWiH8WArHCU6xIxsBsh5SArF1Fh4HuONTVfNaCfGEGic\\/VTecLNQXuq1T\\/\\/YlqZMO4XVpvqqrjXraNzQTDRt84KwrR6lCOBTukTAo9V5m5QP9uLZAqNudxVCx6L35FmS0TFC1at2Bvh2NMm63GwyjIm1+laTtqazIWBGyMB9dd4KDAyBg\\/ew5mrFFQ9oU+m03Q7bAYaJ51BjBL999fIrdmlmb7615VWHOfk6lj\\/bLUONO3EI5WtFBfRKc6u2MtTSwDKykneRj8sIQEd9MQIyB6OyYdbjZoH\\/G9qLHBcFoI8bLgsXVqHn3IafhAw0nfWjYY\\/pYmptl1QiCSPE2IxHJcqiU480hpspPUig=\"}', '2017-08-29 14:42:56');
INSERT INTO `dili_lulu_wx_log` VALUES ('523', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuH7IXrm7GDniKZHcHE91YVs]]></FromUserName>\n<CreateTime>1503988976</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[MASSSENDJOBFINISH]]></Event>\n<MsgID>1000000042</MsgID>\n<Status><![CDATA[send success]]></Status>\n<TotalCount>933</TotalCount>\n<FilterCount>933</FilterCount>\n<SentCount>933</SentCount>\n<ErrorCount>0</ErrorCount>\n<CopyrightCheckResult><Count>0</Count>\n<ResultList></ResultList>\n<CheckState>0</CheckState>\n</CopyrightCheckResult>\n</xml>=====0', '2017-08-29 14:42:56');
INSERT INTO `dili_lulu_wx_log` VALUES ('524', '1 原POST', '-{\"signature\":\"46507e3875fda35e97df4ba22cbebe338c33c560\",\"timestamp\":\"1503989313\",\"nonce\":\"612670659\",\"openid\":\"oWX6OuGiXLrgYtTmbe0VyA_ctKFw\",\"encrypt_type\":\"aes\",\"msg_signature\":\"ee17eecc0df60e802d4ce9e23671850e905d66a2\"}', '2017-08-29 14:48:33');
INSERT INTO `dili_lulu_wx_log` VALUES ('525', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"NALg0lISLWOOgmFn2CqfbHlJECRZfY+YOoO7DolO+piauY\\/oSbtR4poVcMrXheDDqxPDuzqadBYWy5Jv7m\\/ninuRzYfMkqTbdu15Djss+6GpSJwesv8D4azG5JJjiQcRS9lpnB0WSRLGufBWdBJpWLObFKEQZf4ehT9tSOSrCk3M2w8nx3IkcJHrk41ebBPeorWQqx+9XPFY\\/2s+foTndcEws+3oFfOaS1YslR2jT4bkOV22LBCIRgHJcozpDK2ZSxChvE2XYIN26wHNdW1QKba5LBSWAkhlqwCGtVUu02+WLy5lyCnxl2SmVgQbwy4w68tXJ\\/5gf3mg\\/i+sHzxbMBQZhNEBcQMjv+J8ZvBGPT1Z+c\\/cxVTHxajm9c\\/wCgXBqXm0v2YTamNgmjlU+jwKiTkXmRnzWHx65HfzFQQlC6c=\"}', '2017-08-29 14:48:33');
INSERT INTO `dili_lulu_wx_log` VALUES ('526', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGiXLrgYtTmbe0VyA_ctKFw]]></FromUserName>\n<CreateTime>1503989313</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-29 14:48:33');
INSERT INTO `dili_lulu_wx_log` VALUES ('527', '1 原POST', '-{\"signature\":\"fb41f61e38ab20cb2b97842164e4510e728ffef1\",\"timestamp\":\"1503990263\",\"nonce\":\"1889613781\",\"openid\":\"oWX6OuHLCsocQAdU2Sn4Kuyhbvtw\",\"encrypt_type\":\"aes\",\"msg_signature\":\"8bc8220e1ab6b2b1d3338d8aff3cf6200329c852\"}', '2017-08-29 15:04:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('528', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"16yL9gqBWJqgCiJ0ZsbhNpNj3A\\/nrAAlSqEFh3t6qtjLabQ7bAj+A0DMmjN37qf6oQeTG7UFwjW7L2Sfi+u6sp9vNAQVRygbMy1CYFz5JRAQrWTBDyBTbEUCJ0SWLKuwxDUGNzJMpgbblihfap3U\\/CwSWHierVb\\/\\/YjJHvDqbbF1PgdZCt5HhvdbJj2BPXi\\/GIHxhf9MzMB9S3xGP72+Nk1cizc75sHVrK5XFGkDFywTchoZj4srtpHxVM5Km5xjhOKqRjZtoeg+oIVVFqXOGFMGl7R0ePwF5JYCpa\\/bY5am3YBWGasI7rzxcD+bCkTcznT6xuz78ZVn\\/QgUZVLLEKQgZaA92tBZ9r\\/DgGGeNLEINdemXSue9uGBw8K5SNoWG3my414ITssgqCudwFsFDDwdPYvPbUJJ14OLs9scXsc=\"}', '2017-08-29 15:04:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('529', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuHLCsocQAdU2Sn4Kuyhbvtw]]></FromUserName>\n<CreateTime>1503990263</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-29 15:04:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('530', '1 原POST', '-{\"signature\":\"ab4accd41b12d4d322a6d491bbaaf1d9d4234bef\",\"timestamp\":\"1503991215\",\"nonce\":\"2019009333\",\"openid\":\"oWX6OuD6-IKwnAh_Rd_KvBUDSuNA\",\"encrypt_type\":\"aes\",\"msg_signature\":\"7083c582aaf2cea394f6edf2ebce602110da637a\"}', '2017-08-29 15:20:18');
INSERT INTO `dili_lulu_wx_log` VALUES ('531', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"73K1VFRqYl0ycUp4HpnxB91bEcOZJPVnJ0FamfVGEEolAuSlMjDPHXcxAlwSN\\/FGEuVraL8BgQQrUjfBvo7TFEHVkF\\/\\/+qowBCwVpxeVOgXMcor5LpCiCEmWFbKukhwkvoeVv9uBi7HRB73cac0iUx\\/Uky\\/W2lrGHX5TR9UcB8iYu7H25OZ6bCbJb2AU9YzUDFocP+J8f9\\/ZXcIh1vGzqSmRJNBCSrgRDCGoq5jy\\/e5rebLLgU4ugIRzL3IMroXk3zHbcws2QcPLhi+dHcDT3BPfZUyaCnPAL5fP78UGZUmd0gzuQV2kNpBCvwNvcim2C6YGOTxzp5XpJiAOIO2IsPzS8GLO+SpIFFLTWT25cOL8\\/EXgmTelqBF5Nk2+KgLC9BG6D8TcvRLoMB3jqbb99zIhyuzWF4+DUbo93k3614c=\"}', '2017-08-29 15:20:18');
INSERT INTO `dili_lulu_wx_log` VALUES ('532', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuD6-IKwnAh_Rd_KvBUDSuNA]]></FromUserName>\n<CreateTime>1503991215</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-29 15:20:18');
INSERT INTO `dili_lulu_wx_log` VALUES ('533', '1 原POST', '-{\"signature\":\"c8ef64d351c120b127d34609c00ec196896cf4a2\",\"timestamp\":\"1503994675\",\"nonce\":\"261441010\",\"openid\":\"oWX6OuDKJ9ZBqml0qsqcs804d0gI\",\"encrypt_type\":\"aes\",\"msg_signature\":\"0c8282eb010fbc9405b1506e67056f7a81360498\"}', '2017-08-29 16:17:56');
INSERT INTO `dili_lulu_wx_log` VALUES ('534', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"RfqszblvD\\/dcHjaNplDtkHDd0zPoo3gFBwdqOwCEtPvNmnhltUGWjP7YwpgQKtaREzjc\\/FRn74tVVTlm+JysWojeIOxd7nnh+G1XEv9wDz1gQqppi2sQdY0kBIN\\/qBt3opmlS9olNwi3r\\/MiVDeT\\/SJyhcHvVJ+3DUAHtD7KXqtykNuCCl4IwPwdAGovIAsejVTL0ntovkPJal3xgFDP+CgVOe1i5HU2daeJk9M0CM\\/l2iqSiMqbeS9lUbru4OPR35b6z3w\\/jeC\\/69MAufSjSIW7Rgd9gXPcPoVlZI1HBgs46hY27jd8f9fPTZJz6i0e2PqgObFt0u2dTNvZ4WyitLYjHKCZoRJL0tzaybMwruw0yxL0X8Tm5IfdJvQ2Vqkeh7kib77phs\\/HbsKivuXBd2aU3nMEuv\\/tKR3JufzcxhM=\"}', '2017-08-29 16:17:56');
INSERT INTO `dili_lulu_wx_log` VALUES ('535', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuDKJ9ZBqml0qsqcs804d0gI]]></FromUserName>\n<CreateTime>1503994675</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-29 16:17:56');
INSERT INTO `dili_lulu_wx_log` VALUES ('536', '1 原POST', '-{\"signature\":\"502fd34a7422c86afcdd50eeb1315f61b2a91d3a\",\"timestamp\":\"1504052179\",\"nonce\":\"591769572\",\"openid\":\"oWX6OuMh0MAnGN-E0QyP2eZs5q48\",\"encrypt_type\":\"aes\",\"msg_signature\":\"6ccac1c67e9c3e8aae6ee4a25b09996f9036c9b8\"}', '2017-08-30 08:16:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('537', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"C1Z0b718GIiR6cgphJfu1izbsbGhI4yYTJaC0bqV5HDUrRs+iRLJ57tqLR3hv4+RXfj5tCNuKVSJqhhj1A1y1ABvG5yQtuB0xPUAFINQBvkQb5tYlWy+0EUASLC\\/ZB\\/NOUEGRfiTMkYSF64+eZlGnU\\/QxezsG\\/o+eiErjz7oGHQfN+qlLPengi97PyV2BDMY\\/bF07TWmj0Pgm7GFYt7SPnyBSNwVVsWORZtcEg\\/T8B3UpOIAdCgv3nuEfLw7f0opWugLsKdHtVIMyTIPjLLjwzZFJKWb4qLcgNtow5NPPfERQKXxRSAD5YLhQzRp212WAQkmQNcT2VB2M4ycaB+E\\/b0UPGrehLTauhZrMwRI+bGpkw0rAj0sZIhiPE15mLHgo8j02xtlB66jOviCoZRlqI+iVQbf65Dp5k+KRg3f\\/Lw=\"}', '2017-08-30 08:16:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('538', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuMh0MAnGN-E0QyP2eZs5q48]]></FromUserName>\n<CreateTime>1504052179</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-30 08:16:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('539', '1 原POST', '-{\"signature\":\"7e0e89e4d6457ae5866c9674a3c46fcae932c908\",\"timestamp\":\"1504057715\",\"nonce\":\"1354525139\",\"openid\":\"oWX6OuGtXtUPf3q6R7eKqU-bm-A4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"faa75c6d401b3f3e5e100f976374b4ec03d38d6c\"}', '2017-08-30 09:48:36');
INSERT INTO `dili_lulu_wx_log` VALUES ('540', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"A0K1SF5dHnjgnLZ7xGZ9c6gRiWDVJpTOuYU4obgAE58DixM+FFuAgKmYs3FdaL6YW2O47G7s2v4ghPiDPo47N+dCnUAmTHQoNMqCI\\/bsFHajVes+iTZKM\\/ikBSVI1WtkDC3tE+hk7DxAOYmn8GNcv3dBYJ1VtBagBM6xLvE73LqHvJrOB3a7rutr+KM4PTxqb2x3SP2+hLol5OfPlor8+8cXrWSFQRgAs8OZBLxfbqILSYOTt0RWIm9607rnhDc6SiHaqmfaEAOzST5\\/3aZDulc52bYp7MW2nbVWHOp8PpFK5wiwasALyAou45o3roi\\/XBgFi8Z6BV2QewE7MKG6gSCj6IYE4z84NDQqstZVuHsLNMhlJe7gip2lbdUpFIbsVnRL+ywJqjVztygwqWoe0ucjc0M5rYwcg8SjYXfdup8=\"}', '2017-08-30 09:48:36');
INSERT INTO `dili_lulu_wx_log` VALUES ('541', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGtXtUPf3q6R7eKqU-bm-A4]]></FromUserName>\n<CreateTime>1504057715</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-08-30 09:48:36');
INSERT INTO `dili_lulu_wx_log` VALUES ('542', '1 原POST', '-{\"signature\":\"53a2ace578f78d1262e0790018b302d7c7ae99fe\",\"timestamp\":\"1504057767\",\"nonce\":\"1186417978\",\"openid\":\"oWX6OuGtXtUPf3q6R7eKqU-bm-A4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"3b3f518c58d6cc858c1382b21f77b0449457e0e8\"}', '2017-08-30 09:49:27');
INSERT INTO `dili_lulu_wx_log` VALUES ('543', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"wfOflDnf3GWI6JQ9M7h8PAZlMJoa6qtryoMViEt6sX3fczNXQs1BdKiq\\/ZsvX7mtLXX9zDFbZ7poz76dvHYfHrmQyxtulKYrCOp82HaRJ9hZ6gA8WiDeUYFM4Byc6ZIN08MPwPBY1KgAxnSoCP2fHjQm4a2Q9L+WrFGH6NrrHSFVLfIS6uub15oMdrTKPkY66r\\/8kcBOpX0vY7OP\\/zZ7DELSUUQu17MuzV8v5UgIDauWTwcOIDmhV6y7M2ITvfVDcEpsuypLSx2iFzFKek3y\\/yRX\\/Wiir6P+bm4uf\\/dPM2stgpx+YQ5YnSp73n7fFP0YX6UizEiIw084whELIpQhtcwb5D5lIE+8XwuxZCy\\/wgOVZBO05xN6d3G4FQ8QR\\/qkC3J+hURo3zOH+\\/gPDV9H7U1FNAWttbFHI8+nGD3R3fzb11kvIszUYyIhRhoW9xL\\/6kCBLdTB\\/miZm5D6JvrH4gcPxVTl+JxY4509NE62skMKEJUzcNNPc5bpTJT6JYOp\"}', '2017-08-30 09:49:27');
INSERT INTO `dili_lulu_wx_log` VALUES ('544', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGtXtUPf3q6R7eKqU-bm-A4]]></FromUserName>\n<CreateTime>1504057767</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=754]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-30 09:49:27');
INSERT INTO `dili_lulu_wx_log` VALUES ('545', '1 原POST', '-{\"signature\":\"353bd55558e507f1c56fcb199c5aa77ba2fe5e07\",\"timestamp\":\"1504057806\",\"nonce\":\"1949674232\",\"openid\":\"oWX6OuGtXtUPf3q6R7eKqU-bm-A4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"b3125ab2d5a2f5d75627f30a93e689bbc3769fae\"}', '2017-08-30 09:50:06');
INSERT INTO `dili_lulu_wx_log` VALUES ('546', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"tN1vzuP+\\/3DrA+4cQXtPEqN8VmQj\\/5Pwiu\\/24FgSTJAffdHijCfmqerzIbaEE5YvQJMDZRwJvssgE8iz6AlqXvVTXhEwUKzkjKyVFqemJkbrQyOrsQxvj0M9ZHzFVWBKSJfX6OerGaxS3f1C82abmmIzB\\/qTnNRxrcdqUJbhAzTWNYL8zH0gSEEgPRVIoZD3\\/yT6YglyU78IYFJ1ejUSbb1uSkvNnrO734Agg6XkMgXqj0+0oc\\/J0wpePncF7E2+\\/0Cpd1K+fiqc8muH4S99p2cthOt8KH7uPCFDxmdVqI64NC\\/m63IhnlSAH7mudYKSoxKEFj2Tdartzu4LzGDo4wlC0ljree3S00dP3WITVQyGh0ds5JnuFX31qVadTnEI2iKHAkPbKd1Mr00sD28MvtUMVJhbJgOsL1\\/teSELD\\/cwwcfTcJD0+mXuAng7h+Ap0WZXYjxNCQPDnoHHjvxliXBVF5ncrKMj1XF728Fx5fO6pg6m5iez+OjJMuYsRfbj\"}', '2017-08-30 09:50:06');
INSERT INTO `dili_lulu_wx_log` VALUES ('547', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGtXtUPf3q6R7eKqU-bm-A4]]></FromUserName>\n<CreateTime>1504057806</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=755]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-30 09:50:06');
INSERT INTO `dili_lulu_wx_log` VALUES ('548', '1 原POST', '-{\"signature\":\"a008e973da2debf2bcd880b0f85a449abb7536da\",\"timestamp\":\"1504057952\",\"nonce\":\"1707373228\",\"openid\":\"oWX6OuGtXtUPf3q6R7eKqU-bm-A4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"25bf6823565d7ac9dc51a1b586d7731b297fd310\"}', '2017-08-30 09:52:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('549', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"cA2vsxUtpPOzLZV+1KULPTR5Qfic4L4uA9CZLRIE2QwFd7DdkfI7qHuIbld0atFqBz1wtkRaKE8wvwa+6HexbOH9BcIaoM\\/V4yti5X9DR7lm9fTwiSWVxTMdhGN8AyPVgMAyfhd+iJ53ZmHPt3A1zYEypLNExW\\/xZbRL9X7SndQLW\\/P7HqAwOa8jbrOx\\/5gtJR3TtuyECqR3E+W0kUwF\\/VCR7OMB0B4dLvROZpFn6B+PPmEsMVLCUsKl3rzTpe84ppbvMVSXJLoykSoCkGm\\/YlJD03uPJTw7psBXK1iQGq3+ISUhOOO\\/BzK3imluaclCK2\\/oPpHgQVQu0KQ5IRADm4zqWINEoHYulpJelaRxAueJF1TZk++07quvI7Sxzk8heX6pq6J0cxfA6q1U4w\\/tOCVoaI9KQJnWkymH3zXHlaXtL0EcUyWkxPopTgdXzlp0yI52oq0Vkc8pxDLQVNt3q39VYvWj79VxxJuNZoDo0jeQ6+2RfxMxz1za4OI\\/FH\\/b\"}', '2017-08-30 09:52:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('550', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGtXtUPf3q6R7eKqU-bm-A4]]></FromUserName>\n<CreateTime>1504057952</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-30 09:52:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('551', '1 原POST', '-{\"signature\":\"3a6c42851e5739a867525a16d65d0215ff143416\",\"timestamp\":\"1504058133\",\"nonce\":\"892570891\",\"openid\":\"oWX6OuGtXtUPf3q6R7eKqU-bm-A4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"e2930dc9cc60ba2047c0a4ee29ce40ba5695a78e\"}', '2017-08-30 09:55:33');
INSERT INTO `dili_lulu_wx_log` VALUES ('552', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"\\/5UjuWol5+8Lh9CRQrwMYh9lh9afWEBWsLwLiS99Xia8Ov0J1ijtRGRtvDZd\\/2FnWTz7mDqlz4cEnvGvZM9zKsLKpR\\/wzb2L0K+R4uU38y37xIQ4v6Kfh8eF95Xoh+fO9a9xhbpap67ia3lJbGHZYW991dHW865fY7EAfID8kC2qaXl0qXnbIp8xCCOzMzpEJcY+C5qFrrpp1ZuPSTKBwoyRxk124HQjwmwPZ3DmEEcSNxZWL73AzJvtCnVWZ3B6iRwonEBD\\/TKCQVWjbLZo6Z05YbczwEqAcB4DGkiu9UfMIuzP8SBlP4d1tYzwWScrT+K9yrBkVUmy7SBEimJiH\\/lcANuB87+17Cw1HhnyWb8nmzW3FMQ7KjRRRN\\/Xwb8DSFZic6KUsYWRLFtMg\\/jonq2Hupkz2+M+kyjaAtloa0SpqSSPfUL+MUT0tfHmjluidI7xI0Su\\/MeMfVT9t+49RAqnoANg0cMQkBurSIuk5f5tEp75b3INwc6X88XN7aj2\"}', '2017-08-30 09:55:33');
INSERT INTO `dili_lulu_wx_log` VALUES ('553', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGtXtUPf3q6R7eKqU-bm-A4]]></FromUserName>\n<CreateTime>1504058133</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=754]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-30 09:55:33');
INSERT INTO `dili_lulu_wx_log` VALUES ('554', '1 原POST', '-{\"signature\":\"0ad7b1ff2f5f8e469f8db1833506ba66297a70bf\",\"timestamp\":\"1504058144\",\"nonce\":\"443862943\",\"openid\":\"oWX6OuGtXtUPf3q6R7eKqU-bm-A4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"5a1c5127d2d0ba7bb56c68d8a2f6aca5a53496d9\"}', '2017-08-30 09:55:44');
INSERT INTO `dili_lulu_wx_log` VALUES ('555', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"5z7efQCAqORwM\\/8a3PqtZFN8u9FZ8kDLh9PqA9KBemEbNcmLBrQg1FUC5OOJf4FG2ZB5bw11G3NfCnK7PhkkH2paKw0QXZQaqtgCMMFwrfaQOjB8kxn8royaHBta3EnMKgb0fi8B7LU+RYGxduq6zZ3lL1a6FrNNunCIOvsZWGZZ4rP+fjYX+eTFvPLtq+isM7ub8XfDA4uMWbnXu5yUjZnu7lX2IyLLLtxHc8u0PALIGcxRm9Lj+as5CttOwPV09Av+JH8k5YBsCNmk6OD5cE5hnXaU3QTtXzjv4q5HwjrB48wxytsOXSUU+1OKWVbJUnVHub3VI8WN46xbcoupKU9ALWzYUrP9kBZezI+Je3gR6DwsCjIdAbIhbHFjL5a4qIkpsW9\\/4fzoLhDKbCeHZxTcTVK7PgZ2qV1ElrtmlvG5Gk\\/WOgqwdcb6k2mZWnfKxZLZkoyMYYfCxAVgeIo4LWSQkGvmIFXkTwnVMM7FqpLrJE6Nhq6yQqIOwW8srqbb\"}', '2017-08-30 09:55:44');
INSERT INTO `dili_lulu_wx_log` VALUES ('556', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGtXtUPf3q6R7eKqU-bm-A4]]></FromUserName>\n<CreateTime>1504058144</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-30 09:55:44');
INSERT INTO `dili_lulu_wx_log` VALUES ('557', '1 原POST', '-{\"signature\":\"af791ebe31ba86959dfcad4ff8929c7da63622ad\",\"timestamp\":\"1504058532\",\"nonce\":\"1305937095\",\"openid\":\"oWX6OuGtXtUPf3q6R7eKqU-bm-A4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"102cf85d9e95d3c092c8bea64c113d2868bd382e\"}', '2017-08-30 10:02:12');
INSERT INTO `dili_lulu_wx_log` VALUES ('558', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"gBpedQsf0cr9NCCypesM+D14cjUkS7DtVUh7yQfi+ct6c\\/3VhGKLR5jxhY80A1z0Y7dZpgYe1vL375akoM2rYEF4sXnicGqzYNqalrySg0M4OQ4dOT+gKZdaojXJNfyHaFRiae8dRD4RK3S72q\\/xsAgKwT+zk1MT4\\/OsirE9o7RObD41eJ+zTbxTPAaiv\\/pBJPNBV+uuCijyp5gl7kw2Oz4bmESmNP36ZTsIm\\/zcGJ\\/tA2s4FGENesH03AMhzoVTqz5LPre07sZDHiIday3gDMfo4wQCHJNejGcOB4kMtqoDM4ppST5HtEhGD1u\\/+M1mryGB1Y7Rru4TXqo9x6f9pvFLnucf8c1RPvF87wNHHITSqNGiLbviwXPOlWZNo5ggQgWjm9XKvummQVrxElicIMW8\\/7CITNSkPyvr7hSoMSKfE6g6YNq3tR\\/NkZUBopCd\\/lJ27KlWleC7E+ZgsFzHzHl+6hCeA0y7j0ivImlb6beumqKUbmyZauBrSd7kRfqB\"}', '2017-08-30 10:02:12');
INSERT INTO `dili_lulu_wx_log` VALUES ('559', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGtXtUPf3q6R7eKqU-bm-A4]]></FromUserName>\n<CreateTime>1504058532</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=754]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-30 10:02:12');
INSERT INTO `dili_lulu_wx_log` VALUES ('560', '1 原POST', '-{\"signature\":\"2e82abe5215679e85e96db550dd71e1041df75cf\",\"timestamp\":\"1504077073\",\"nonce\":\"636731250\",\"openid\":\"oWX6OuPdz6uxDe_6qlnlM8WHP54Y\",\"encrypt_type\":\"aes\",\"msg_signature\":\"391e74a7efe3759e4a9951e8193ca2658ad80b16\"}', '2017-08-30 15:11:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('561', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"tnqW3DTB3xbG7uXyKjtcDklTfNNC2A1ZyxCz6ZyrdENdnj\\/9+v8i3v1PxhwsgAiAsMEvj\\/oII3aoadf1UPa88XtKdexecoE4IOGIug504w4naErhb9XFHFJE6cWNKddPHLkT0ctotc9dTbEC82iEmQIXqOIhXcU\\/aP4m2I6n3\\/2D8VnUgeHPrTKy1SJPPZlllahUV\\/j9KFpaMh81XQQluKrYbHYRn\\/p0icNciVxJ68RHuMZYVHQ0KNJIBOsFuVwBXWLhcALLeh2W\\/eelWOvIKKknV4KiKCiGNj9kP2A7mftudS7fDfEv8WHN3L8jL1ay2uUdHkaBkgoOuBewNyZfVgVKzPZJkF4xMbT5uGfgT4Qs29Z2Iv3ujt5\\/F8Lc8T94JODJ78\\/GkxFohy9hCgB6jpUWfLybHl5gSjkkIZTnFS\\/T2misrgbS8qCAouXGAh8SdO3PsuuVL68Rnurbv7G\\/EnUThfQWIYwYRt8JiQHGADBVZNkv+5W7OYh48q1Z1Ip7\"}', '2017-08-30 15:11:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('562', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuPdz6uxDe_6qlnlM8WHP54Y]]></FromUserName>\n<CreateTime>1504077073</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-30 15:11:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('563', '1 原POST', '-{\"signature\":\"265e9db39d7fcdb5cd0463795fc11454fe673adb\",\"timestamp\":\"1504099467\",\"nonce\":\"748990793\",\"openid\":\"oWX6OuAvG-7JhhB9SByG4EvIPy34\",\"encrypt_type\":\"aes\",\"msg_signature\":\"5a2a1c69f16e3f29c2ad0b1609dc573a58fcf80d\"}', '2017-08-30 21:24:27');
INSERT INTO `dili_lulu_wx_log` VALUES ('564', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"KA8DiDNagyxwtlAR8iTVbKZpP7angyATqxZ\\/nlvNm6+fXzrwrk1s213XRkDBRPXbNtsygUlcicK\\/isVcixmcCP3ce2rOBmer40hPXKXcdrxJPZKqOoAbhaIa7OyzwvqiDV6ua\\/MZcO6rANsChPS6zJAU8jhk0OvVBaednAV0FVBBMG7NTKfkjfHJ8rjhFC+JFJxHpbqpVwL9SU\\/jsdheLX+D1g5BQCfK1AIQKEu77Sk2VAfKetU\\/EfuYWUVxde5JSATGlaL4euqR+GF0\\/4Xy1XLpsIr5dPQDa09LAhqSnwyXvkrUy6hCqXmGp55yZ24qRRUD24xwh\\/\\/YgZoOJhwq9\\/atDrk9\\/7Hg\\/twqRmtOvaJHMOdd6AExiNoQGWGG0vZ2PPmC44SPwol69R1SL\\/gB2je3zB245esDaTC50EIjeLEAjf9uwzOBd+f\\/n0k56xKP7YyHtXXA4zRZWaPfHIhRC3Q4U4KcNKgktValpcYMfaAUFX5kaZmLJQbZCGEgo6b7\"}', '2017-08-30 21:24:27');
INSERT INTO `dili_lulu_wx_log` VALUES ('565', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuAvG-7JhhB9SByG4EvIPy34]]></FromUserName>\n<CreateTime>1504099467</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=752]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-30 21:24:27');
INSERT INTO `dili_lulu_wx_log` VALUES ('566', '1 原POST', '-{\"signature\":\"c5d10bbcbcf6555521ae8af68ca4966bed18242a\",\"timestamp\":\"1504138729\",\"nonce\":\"1068726190\",\"openid\":\"oWX6OuGtXtUPf3q6R7eKqU-bm-A4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"c748a4241c5237825cd513295b4887c12d7e0ec1\"}', '2017-08-31 08:18:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('567', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"mv7zmyqujdoQifH9Be\\/MogtDSahKoS40QeWsfBKZFpUtCbJqLR8DMzCg7+NU7q8ujqodNrzAYaaz64TNn\\/zSPBBtohjSb7r8oAvXi141WVu2phdRz14VzPoJIAyr0BLFmZPVarn+Hguwe07FDJ\\/\\/mz03OEwqijJRweBnYAwsjn7Etn7bvXI9IDY0oq9Lr4+Z5LEgFd+1vr56OrUN55qVmGLq1lWScwJW0otMDP4LYA9Q5GEe4kp9FzcgpdyzeKb0fTtdW\\/pxhyHeiHtXewVDPl17K+mOgUPxsJSVwOSVmQTCBDQT5Ii96hr13Um9qQ1IOtl21b6WIjJJgc0QXVgNwWTYApxmNwI1x3tlPQgVenLHrPY\\/XM984sgR5aY19EwOJrDTPktpUxA1oCfY\\/AKWTaLkRDiQoU0+So4FbmPB64zjQIuIDy9teemCZj2L\\/wLRRnN90pnbRsi25PNv+YNjKCJ4LXWiFuGRu+LAVUpVQD6uEAHoJ7093NxYPHjhbpkr\"}', '2017-08-31 08:18:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('568', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGtXtUPf3q6R7eKqU-bm-A4]]></FromUserName>\n<CreateTime>1504138729</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-31 08:18:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('569', '1 原POST', '-{\"signature\":\"0d720138a46a7c66a4d9f0c7253bc7831b348ca2\",\"timestamp\":\"1504138786\",\"nonce\":\"759088434\",\"openid\":\"oWX6OuGtXtUPf3q6R7eKqU-bm-A4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"74497ac4be722829e9b7c180cf2e5bd99808bee9\"}', '2017-08-31 08:19:46');
INSERT INTO `dili_lulu_wx_log` VALUES ('570', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"+Am51nuLERkvg+HInwmnC9S+6ksQkVz4ZJe07JeFUoC3gsoeld0z\\/AlorkfB8oj\\/vK+OFESYb6ZSU8hyEikQ17YQ164emb6jaNzcCMYk22soU5ygI8DURCtdjr\\/TfXdw\\/VjZ4ztWg5V8paQaUj0+oKVK7FCI60I5go9EnvEJobQl1UJKEXeZJNNyNrz3dBNsRRlyqzFSDEjha1xbr8Gi3pphmtEW+OflcAFllhKmY0YqLHjBFOW615GNQKz\\/pKU5DBYPi+2JOY6+SfYj5LSvHbNGaHopuWwFay4dpCQwMBLBIrV+0ovXYduLrEJ47QLRNItPfKLKXm4LuA1By\\/dzzUqBtLJHb1I+3YyKfrTvD\\/3gZWHegfrlCdBnfUCcWH5dZrH7FKDlIu7EGd\\/rUngow\\/2qOA1ET5wgP5TM81Qr0AcSAcQWk4JE7Ssk4UtPUgOS\\/fd+iBk\\/NJ4Kzw3bYi3QDxDwqe+aLeTueFHd0YCeYt8lljcpIOwxSU+5lnTndu\\/V\"}', '2017-08-31 08:19:46');
INSERT INTO `dili_lulu_wx_log` VALUES ('571', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGtXtUPf3q6R7eKqU-bm-A4]]></FromUserName>\n<CreateTime>1504138786</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=755]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-31 08:19:46');
INSERT INTO `dili_lulu_wx_log` VALUES ('572', '1 原POST', '-{\"signature\":\"bcd636017c3f11844bddd5e9ae53cf7649466667\",\"timestamp\":\"1504138872\",\"nonce\":\"1895244405\",\"openid\":\"oWX6OuGtXtUPf3q6R7eKqU-bm-A4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"414b4ca0f7697ea73bb568fa7987bef31eafcfd6\"}', '2017-08-31 08:21:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('573', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"s3omLPLUoNBGTC+UlxhVridG8J\\/wbXp8CndPnn4VysexBx0isu5R7EtgKXfTrLCWR2hQM0eD7WQpNknjMUcISeGyC7sYpSgX3Yqa4GMf7Gbzd3U2PVsNwqdU8w3c2AQgJ2dzAkjs4YYJ7UW4Q+GHWRzfo7O96rV2xbZS5k2a7bBYiGM3ulP\\/RutWrs0opbJeMa44W4NTtF2x\\/lemJ9Dld93tGmrSNDKLH22ktF8\\/BOLSD+5iFwE\\/6eKOXXQ5T11oWhBaxHylCtvRCfeIVKH+DdUSjy2mOGCXcNGmwsXso6BUAa2bVm75Sp\\/lt0DmmwUoMX2T+W76wMloO89AJyUQz0+eTlsmTyPcYXUVkOSkvlDwamKPV\\/sQ8oi\\/yT0sU4ViT\\/MjvR\\/V4zeML0jZGTt7695GgTsjhERaCAv+k8d4XQLG+\\/+6eG5Oro\\/THpM3ZXBeJo7jsLMsKqBYJDEhVjzReb7K\\/ZiSEZJWyCh3vfzkq\\/Jy32FqcCZOHj4y61d7\\/LVP\"}', '2017-08-31 08:21:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('574', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGtXtUPf3q6R7eKqU-bm-A4]]></FromUserName>\n<CreateTime>1504138872</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-31 08:21:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('575', '1 原POST', '-{\"signature\":\"815363abffb82a443455007d570a978d7ca3bf87\",\"timestamp\":\"1504139873\",\"nonce\":\"129782715\",\"openid\":\"oWX6OuGtXtUPf3q6R7eKqU-bm-A4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"9a2f8f35b47af8b29f38be7f123dc26c2f083e59\"}', '2017-08-31 08:37:53');
INSERT INTO `dili_lulu_wx_log` VALUES ('576', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"FF5HuXTfcjazQWjMeu0TK+AZfGNmO8PSErrGmdCe72jLwGhtaitenGcNYUmUdBO06qQrBXIj8Z78cyWUQOsqHu1UXoxbhKwllE6Z9U0KKoKthKYoS+sbgSPhIHbqKNbMbBIjsHisg3J3\\/zCUimknl2QXrqeqYPmb8DiPH\\/5\\/1gBBNLJW1i8O7gtlS0y\\/A9y7FU73\\/XshVyChZdqA0YnBkOddu44NssNwJ0khDcK6DvV+CQa1UoM5GOcEPHCXcxJM5VmBuxIkuE44F7qxHPHHyiUHL1A20ElRobc0LfmqGmZFC3QCF9\\/H9nTf8t38HmPrbAUbEWpIjP7RHl9EUwtosHYMcNIQHGDzPD3jLmWugIh3yifSL\\/JNxy289sd07E765sL2h6CCopi4aAHR\\/p3QD30Ib0iNKKksDe4AiY2dd4LlrrMhttEHbaxwx2hNiFEhLdzuD18z\\/9nHMygTMbsO3jNzovxnXMUKJGq6RaKgMuc3BL+jWskMoMiuLYZo+Ydb\"}', '2017-08-31 08:37:53');
INSERT INTO `dili_lulu_wx_log` VALUES ('577', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGtXtUPf3q6R7eKqU-bm-A4]]></FromUserName>\n<CreateTime>1504139873</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-31 08:37:53');
INSERT INTO `dili_lulu_wx_log` VALUES ('578', '1 原POST', '-{\"signature\":\"fb190e9cae9f0437b0f87e3c91c8273c8ba74b44\",\"timestamp\":\"1504139932\",\"nonce\":\"388689677\",\"openid\":\"oWX6OuGtXtUPf3q6R7eKqU-bm-A4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"a0bf832271993f3bd26dc0eb1a266484b90a762e\"}', '2017-08-31 08:38:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('579', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"UEVCIRS\\/WxOGcYvb+0qXfUIXRUGubDFY5LQZivK6Te3OogSsA6WI92Vzy7xcTbg+Mc+nRRathFPdiVxb9uhM629Udn16W33svTjHGdy\\/uDBP\\/xAviibBHyFJo3kf08wyQXhnmmhnEJT9dz2a8erbt+7PO2tWVOZTxRlSG6hg+9QmAuQ7QMMB1XOtUTDbB9wJAvCoDpYkmjm2VfVSsPinjQwdRYe6iL9HW\\/CL6fKRpASiAeVm1Lmie\\/0QpzSaW8Ns42RNSB7jju8DI+c4bvwbQ0irvKyrRanUoFn8PzGgJrDKvRfnMCELIFD19gkbZSp255Kb86dmUihRxO6zptzLn02hVc4NxdCzcP9CgXSESDSVjbUDcWrbTFwqD8yZvoc1my\\/NtyIJ5R+pr3CPnwPSypPZbScA6f7s53J3we6zKWTH80uPOMq05brMfp2quyV1tlzhRE0\\/VrqP5T6qMll0CwOd1vEDpJ02T9uqC+\\/5g9raIdBAHGTd2tFQ1QUD1A3O\"}', '2017-08-31 08:38:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('580', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGtXtUPf3q6R7eKqU-bm-A4]]></FromUserName>\n<CreateTime>1504139932</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=755]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-31 08:38:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('581', '1 原POST', '-{\"signature\":\"11fb54033ab974862b1c9fffdd6ad5973a277c0f\",\"timestamp\":\"1504140051\",\"nonce\":\"1708579474\",\"openid\":\"oWX6OuGtXtUPf3q6R7eKqU-bm-A4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"d968db2240b9b368eca6673f854785d43ac80c64\"}', '2017-08-31 08:40:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('582', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"hsYjkTuZgOQGKHEcCxoxTqMsDDy+aj40mFFdoEVOVVZPHADEnLVxdlNmORFo5xOZY0q36edT6VMrqpxuNBmWxudUF78ww\\/\\/FUeyGzYFf0t4PPHw6u8e\\/wVIJHHZZ36grLIKU\\/VQCVaW4y3fvAjhO00KPKRQQk8FQoHBCKjhmsFXXsGWIL00ybyhUQducIjPpe7IIxDT89UdZGDBZs+Vyy8RMwpdVDV\\/WwHPxEwrf6GuHkoy\\/DArZTqOCGcD5hOU1zvfeosAqBcOnw8F+pKQG7yDfyGJ5t57fpmHJQwkUmjDLSRfFoEU+QPfV3eVktThLv6fRGSvGTZoLo+ZkDzkKbbv1G5ay4ll8SkmVTUBcbCHEALNnmwSt3ygKwCPssXGkCIgRlRmLX40D6TU4JLDO6jw86BZO8U93yLEk7cd\\/+3+OoIuv5n2ysPRh\\/j6ejo28FUm0Zs6PdVQDOj+3PGvkTkj72Ibcg9NhAmgbK+TOkmX2Z7a8stKEBcqYxllkSuoi\"}', '2017-08-31 08:40:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('583', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGtXtUPf3q6R7eKqU-bm-A4]]></FromUserName>\n<CreateTime>1504140051</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-31 08:40:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('584', '1 原POST', '-{\"signature\":\"76d09b6945913588385c1ba85d1a3a095b137394\",\"timestamp\":\"1504140288\",\"nonce\":\"1971031593\",\"openid\":\"oWX6OuGtXtUPf3q6R7eKqU-bm-A4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"6e60289b44d7b3cb6d54b3392ff494e203dc45a9\"}', '2017-08-31 08:44:49');
INSERT INTO `dili_lulu_wx_log` VALUES ('585', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"XOPeBaTjt9NizXIEYNlxiyyXWSeYZDOri3haxxQ9osL8Oteu6xByQ5W+UuivRHzUgQO\\/HL1kd1S7Ko7ffj\\/YhoLg6Awi3qv6iRbN0ZNghjf5qj+C0LugjuJnQNq\\/NaYgS4bgZys+KyFM8o62VeZ4+nLqGG3dMBdiKP7LgHLO5deIfsA5UYSeCIez1WDSxID6ZDkGNUTBF6bcF1Ad+kxCMwDuzPh68ClyOcpT68C+IKaRVpEx1FUfLmnY3HCEamdSjcQzET\\/dGZRhm5RMtpmuIYtpKqBUXVBztYd+G9\\/yBdY+fHENvZUpcrE6SW32gkKSN9OKPqsEYUycUFWAbpxk6GwyMf60LG2A2DDUe7+jwDzzv4iiok8hnrLrM7G1GKtS80Pgayg7VgHkOMZREeJaA4xiayuTUacRmULNfhsxxNSCUSt78z0QMbqY4DUSjFdGpTCBZ7iEpyi6Uzw0WDL2FgkZQgxPqUXV2M4bXBI8omdRMNCKkQjzn0A1\\/YSDSKpR\"}', '2017-08-31 08:44:49');
INSERT INTO `dili_lulu_wx_log` VALUES ('586', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGtXtUPf3q6R7eKqU-bm-A4]]></FromUserName>\n<CreateTime>1504140288</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=755]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-31 08:44:49');
INSERT INTO `dili_lulu_wx_log` VALUES ('587', '1 原POST', '-{\"signature\":\"0396e472046267631022a11e9d46b71ba89cc6c8\",\"timestamp\":\"1504140299\",\"nonce\":\"1361096331\",\"openid\":\"oWX6OuGtXtUPf3q6R7eKqU-bm-A4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"9663c450df935388de3f009d776ff3ead338f3bc\"}', '2017-08-31 08:44:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('588', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"ZVxoEsHDcamTl+HbuBxp3JrCDEo9ctVxeFu5sxl4yQydkOK7\\/bz7+Mmo2ppUPV8PAE3XiraJU2dn31AOXsdDrzhqXF3VZoqLdJO4E49+gj3nFvfX+iA22Z5qt+ukgyZk3d8vf9Ms7Z3R\\/nUDuAasViksRIT0I1B9CzgTtiW2FnShDrYhSUDDnQi8mUhXDQpLfSdEQW6qzeYacpa5QEPjclgs6rTXXX7y+q1kSwEmSUlIGSLEpyIC9bINJZd5ByMgl5PQIPH\\/FVpmxacebhsCbepBbfj6XmKhZCPYSYuYGSUpk3JtVc1ud7bHBtNhbss0wtJCB4qUx06KXH3zCshmTm5B5jF3zHeUUyfxk1cwdekJClHSrKI481loiFrCzkTwDbdvswKhLbBCX6euPDXm85pe2pB+opTx7iweP2NoMuI9QBqsYX8KkhF3LVifPBSH5NVeDX7QBES3w8T9Mh5Mlj9BaBaYOsu7cAwXkbHy+pZSrswneOfpBwg8Y4hI09uv\"}', '2017-08-31 08:44:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('589', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGtXtUPf3q6R7eKqU-bm-A4]]></FromUserName>\n<CreateTime>1504140299</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=750]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-31 08:44:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('590', '1 原POST', '-{\"signature\":\"7b74a229f7c7def5882a107475038b36b5506ff3\",\"timestamp\":\"1504140862\",\"nonce\":\"1021313645\",\"openid\":\"oWX6OuGtXtUPf3q6R7eKqU-bm-A4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"69a366575bef9978800cab36d1c86cf2da1cea80\"}', '2017-08-31 08:54:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('591', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"HnOnCbwrgJwLPik3W3Z+scZdEVpU1STHPRMvrnxs2CQbgp4C50Pk1Iv0I0CYdh89wQM1+bErG7TBDC6A4RnoqAK9uS2dGgIiO4oUxnOwRBjrvCswLNXn0lI6u1Pk0iiqj9wkJm0loMvpWlOSMdYbq1eInGUKzzlvFmGueTlgW9G0yEPBWklqsxXGQYYpw7MvPT7c+gL4facXyOzObGYmHodqS2HxVJ7uHyYF0M8lCzsTb7dy1AdiP+0VuzsF9aOIJknFLCmyg2FwZ9dmbB1SuK8ZLGE8RGjIqLFJNcAZWy\\/6VHauyKaPrplWHtDbPaZViEooCa4agqTxtNy0wCdaxzS3IG5MHcMJbilLkG1R+SCXXNPy9kXpUfo20otuQb0ULD3vj0n76C9FuconQ3\\/0Fpbi7x7vENgjwAIGSF0wfVofq8OIZrIFlnKGAKznoIoMraYF5RhrM\\/H8OSF1Oh6SEZl4Ff3h2jPGSGEr9dBdNK7FSoMGFsrPZS+AF+3jTEb9\"}', '2017-08-31 08:54:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('592', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGtXtUPf3q6R7eKqU-bm-A4]]></FromUserName>\n<CreateTime>1504140862</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-08-31 08:54:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('593', '1 原POST', '-{\"signature\":\"cdef9d2a70993cf30df391ba4223890a963d3ab9\",\"timestamp\":\"1504228911\",\"nonce\":\"1682154465\",\"openid\":\"oWX6OuHVUKHcmdqOXJnrPavXsQOU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"e123ec83a1bc3570483099239fb1ffe44cf7f456\"}', '2017-09-01 09:21:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('594', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"xyHM34yUvs6azo3KoS8StlhMZDxFg1viBuB7gCYJIPBgf2p2\\/I5OR40y5wBV+zJymOxrRXK3IqqpGEl8w63GNA9AbkmuVvBhzyN8xrtGFZKAmHBdMj\\/1sRA5JiXbSqeCVGs58+K8U8tMlpWSWE6m+8Js1k\\/qDPsdihRtaoIE55oyNwuXA1H5LeFx5lkgSr\\/UdckrPdjPLIZejklGmvvxeuxoK1XZbkJX2CzVzk8HMwGGlh\\/4h2cbS6y0T4bDQ6MZy41HJME8HKc38Y7VXHciXfz\\/Go2WI82Cl5Oc8ZKenL8Hv9T52DiX3gGYgRF5ku6m9RJ8+0SyhIqoMeBF2Vgu7CqT21AMcSgXCIo1QfI3urqITsrnuGwzc1ff\\/CEDAlXG\\/c09EYi6E6lIYBOBLiNjs2iA1WeYq2ev4EqVJAVqLjA=\"}', '2017-09-01 09:21:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('595', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuHVUKHcmdqOXJnrPavXsQOU]]></FromUserName>\n<CreateTime>1504228911</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-01 09:21:51');
INSERT INTO `dili_lulu_wx_log` VALUES ('596', '1 原POST', '-{\"signature\":\"5607f26c29819c1694ec97bbbf6c53f9a4081138\",\"timestamp\":\"1504259419\",\"nonce\":\"1914961916\",\"openid\":\"oWX6OuHTb8P_NWoy7MWmZioIU6DQ\",\"encrypt_type\":\"aes\",\"msg_signature\":\"57134030ce5b2dcec45deb5be73d24a00c3d8855\"}', '2017-09-01 17:50:19');
INSERT INTO `dili_lulu_wx_log` VALUES ('597', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"M4lahGrHkvpYAg+EJhknT\\/ahntMxmY8YAtQJs5bwz+vAWTb+10URHsLqGKLXxg1zffG1HLjckpq9j7rcbJViMWSyRvvApBjYc78\\/8DTd\\/i0uWCxmhRYWJSLFTnNenjZ\\/4qDPisSZx5cQswhiNInJUDruUQini9eWSiIkURW1qQ77aPS01D4752l3d2icgAMutfa3nXc3+YAorCXuCuGMqklZFyey7FCSl6GNBrUanAx8E2iHqL\\/CcR7FOwxm8QodrTo7tpV3Y4HzcCVZFCYBA4ymwSsLHv5tJz9uE\\/YhhE31KriBq4bhsB6Fs425Ge0J8mbgc7sAOzBoZYjmbbhz583JMypqwttIZaIhesD9ItLZiy5D1fC6F1V0O9w2GUsKUxS\\/nttqcg3a9f\\/xQZUk1HgWZKQ1SzQewbLc720eYWpksxmcdstJUMM\\/CC6VgTVJ1URs4iJlKvpXS86ABhcQkZf7IrLLdBn3IO7hOfKfbAMRpSGe8tho2PG\\/OfdELXmK\"}', '2017-09-01 17:50:19');
INSERT INTO `dili_lulu_wx_log` VALUES ('598', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuHTb8P_NWoy7MWmZioIU6DQ]]></FromUserName>\n<CreateTime>1504259418</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-01 17:50:19');
INSERT INTO `dili_lulu_wx_log` VALUES ('599', '1 原POST', '-{\"signature\":\"2aa9c8a190d40f119ac4b02e06c8032c2c7c0460\",\"timestamp\":\"1504421550\",\"nonce\":\"1545755156\",\"openid\":\"oWX6OuO63LUEqjyTYLWWnnOOxv9w\",\"encrypt_type\":\"aes\",\"msg_signature\":\"20bd51a4695120069379ebe887f17a9d969ee734\"}', '2017-09-03 14:52:30');
INSERT INTO `dili_lulu_wx_log` VALUES ('600', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"oVOJymdC0wWywWDw7MZxxtyX0LYgxd2Xk6WTPBAaA\\/JRRleOn2fYKlV11\\/hv5U2Sj03zAcEs+ZsVwLpdLO6cgK6ZYrQJ520QORQO6GvcQ2fsgAnubqSVvQXO+yaRUVspr2Mc5CiWWWF4CooJs+Pxp1d6UyNmjXHgFF2soz3qwLZ0qDB7ZMr8Pley+C5PG+jh0qnpDdvoc+GDEBQZIDGZeT861cbRTawTcSc+mu0KaNxQZvk9r1neuKdo9AP9Ytu6+wP5Sqle1D5OXLovj4PbUzeeM01kfowND3isSdASCzpf7X7rLwhekXvzgDGH+3GV5jTpD9J37Ze0ezZLUdY6iuujJ4vbj1j4jgBe8fulPQxrNx8rIzwd0AqYrs9iowN+geSe5L8h0+7EwaidV1yrXPgMhOQZsWgMIqo0Y6sBVj4=\"}', '2017-09-03 14:52:30');
INSERT INTO `dili_lulu_wx_log` VALUES ('601', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuO63LUEqjyTYLWWnnOOxv9w]]></FromUserName>\n<CreateTime>1504421550</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-03 14:52:30');
INSERT INTO `dili_lulu_wx_log` VALUES ('602', '1 原POST', '-{\"signature\":\"d39ddcf3241faa4fd3f67411e5be0f5890ed038a\",\"timestamp\":\"1504491839\",\"nonce\":\"1797208034\",\"openid\":\"oWX6OuNwVQfUNfNEx0YrCENsxvZk\",\"encrypt_type\":\"aes\",\"msg_signature\":\"b66781f4100980fbcb369112ac28737afcba0484\"}', '2017-09-04 10:23:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('603', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"qFrosPvxUUhDk+DpCBm+usaUqMmrkZLfictAJjb5PVEZ2uM4oiKLhUcRq32CbB4N3PtFqInWqk2\\/JTD\\/5rbFeCgLg7B7pDlp\\/PJ1jSV1pNktOvciJ2Gvlk9+rrOhJxCfcpeHzhdM5B4r59dvJV3D5jfgHGbPEiRaoJWZTOolinCVvFd5hVxgdZO4x\\/SSPqb2uS78ulukntbE+JmXdGF+kXpgoJ83EpXijZXFZvY9n8ZAu3m+9J1GoSSD53tXSsMcK5qAn1lp3SWRU8H0RPZvkCF7hTy9UULEDFMi3MOu3sqJy5s71JJp9abS+q59ZF6QpvWsef5Gxll6IJ0gLaewO\\/9XNhtsfuu4ai5UIzSZSVMfnilVBjdioVNgpqyJyBLZnoneEwO3vpC4bkv9KYK1Lwf27HdxPopIEN34Ldj850Q=\"}', '2017-09-04 10:23:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('604', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuNwVQfUNfNEx0YrCENsxvZk]]></FromUserName>\n<CreateTime>1504491839</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-04 10:23:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('605', '1 原POST', '-{\"signature\":\"40c2b2f197bbea69fd98858f92d07b7f82a9dff3\",\"timestamp\":\"1504491849\",\"nonce\":\"569718315\",\"openid\":\"oWX6OuNwVQfUNfNEx0YrCENsxvZk\",\"encrypt_type\":\"aes\",\"msg_signature\":\"82e6361f671a6c689a91358de1f101aa781e37b5\"}', '2017-09-04 10:24:10');
INSERT INTO `dili_lulu_wx_log` VALUES ('606', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"34sU+YXwxPuUkm7aBXHyDSIFcUE\\/SOSt1c8FWxgkhqInBZ\\/iMNTUvK7cHWSYTOrJQ8sGh7\\/UD3Ty3Sd9xAbiURRqT4SSZJT+AfLCE4gA\\/ukX4Tnui0CkZwvYY12kwsl2zK5ZyJJ8228DMqtVwMxTheDL4lIXLFbciGx01AkQWYVpgz8sUn8alPi9llqGCY1o1bLED93gjbpCFNd2il4szVAmF1w41xn\\/tGFi+CK6icPcFbR8P2VpciOK4qdqhTJgKuvPfaJh5SbtbVKV+vtYUvyNEnBeF\\/Ewe9YNCEFppL7oyGnei7OMrfsxrLQJYIUz4GiADwbEj7Mi9O\\/Ni2hMMpM9dz9ArQdqZwhoFWcwlHCz+aSx8DAxnzspriVH5TR3M6zHX008Fag2c8I8zNun5YCiUFGOzL5un8g4vrwG9iumgBCMwUmcQF0+Lv00fOAQMoWynk1r2tCyu1diCMKK\\/sZ3IF0rgN9wMgx8CIr26w3e0YN+DaO6Ri\\/PHrN8XyBf\"}', '2017-09-04 10:24:10');
INSERT INTO `dili_lulu_wx_log` VALUES ('607', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuNwVQfUNfNEx0YrCENsxvZk]]></FromUserName>\n<CreateTime>1504491849</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=750]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-04 10:24:10');
INSERT INTO `dili_lulu_wx_log` VALUES ('608', '1 原POST', '-{\"signature\":\"9d01282c1586735bee004068f0f3b9cfa8894b3a\",\"timestamp\":\"1504491910\",\"nonce\":\"129854699\",\"openid\":\"oWX6OuNwVQfUNfNEx0YrCENsxvZk\",\"encrypt_type\":\"aes\",\"msg_signature\":\"66292715c4bc0458343835fab63e3fc61afd4e91\"}', '2017-09-04 10:25:10');
INSERT INTO `dili_lulu_wx_log` VALUES ('609', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"Ly2N6I2Ub72mEQHjQ5j\\/dEMLvWpUPNvRPx4XDnE6T1JDRn5bYnpLkAIgUIObeBw+XiagqWdp+42dY\\/0PRI6gs1VpDLL38LiADDOLxOvkBD2vbVpuqNh9PadBWM4Zc6rJR\\/++POkmFgG1ksvvaz0x6el3fEXJpoDLlORAOUqacBUHtOBBFMkd0VFXQX4KNqWsyC1OZlYkoncrNHfHAKRMle\\/+Kzuea\\/krk8kci3tVfz8QnhZwMxLtgfhGO4RolD4StdhsNAqJIqnLtf8xs+PWWO5qWi7f7bXmRBLu6n0fiwN5yqEEgEb3ImOKNOYZgNEjjr0BDissjcfqpb02nOoVHguiZ0R9EcolYuelJGt6vvAU7HBwSi5m978mn\\/b96nSmDeBIGV3BHomexiW3SfuQxvtqntDoNUE63Pjmj3mhUew\\/k\\/x20GzjTgZnYehAdJYi9Y0t5J7x5Q67Drq5MXs\\/\\/UuFIzASY+3CwCLPdnbtAhGY+MNYplmj366tHbkXr8mZ\"}', '2017-09-04 10:25:10');
INSERT INTO `dili_lulu_wx_log` VALUES ('610', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuNwVQfUNfNEx0YrCENsxvZk]]></FromUserName>\n<CreateTime>1504491910</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-04 10:25:10');
INSERT INTO `dili_lulu_wx_log` VALUES ('611', '1 原POST', '-{\"signature\":\"5dc4b5b79e4385902e4a03343568d2751019763d\",\"timestamp\":\"1504494456\",\"nonce\":\"1770483301\",\"openid\":\"oWX6OuNwVQfUNfNEx0YrCENsxvZk\",\"encrypt_type\":\"aes\",\"msg_signature\":\"b6cea3d20c04b873c0cf18999b94461652ebec63\"}', '2017-09-04 11:07:36');
INSERT INTO `dili_lulu_wx_log` VALUES ('612', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"Fa9r+xM7wom+sApPqO93zjMso2nsWbZkL\\/E9Bk7VNq+l0e2Gp\\/lj\\/3QyXN5h\\/R2NGvfoIfhL0Nu1I\\/LjDWKaL6ZPRUWj0Q89pt1EJhBiqh0UArE\\/rihEyMA3+lmUW7gabcVFauKKCEeXQ3eq6et57VUWnAEGD0Z0b3WH4k6PIgmH4ZDuVq7Pnr9u0TlRhGokn1QT6Vqx1LwOgLUf3ViNtwDovNimEHhLQKyyglGmmmeXvmnSdjX3vkQsu3aK4THYT5laF\\/iD9EO4IBvzC7CFxFNBKjripsdsMD32NaeOtUNQQI\\/Z9Hpn0sX1T1CR1XCZNPIbk2Inz4\\/sQzhL5+L1HJlOjPn\\/YpcYayFXJH4sW1OtemDAFsKFz4mkopC+NhbCTdNMbGYqF+oTArHFXTqw2rUmk5NTuXXcvv7z5GNSjKp7+7fzSwocq+OdfP\\/rRMJwidayEDy1J4dTtiMD4Dk9Zl2iNMbahohATmd\\/dJrcMxBqsj9Bt\\/iSfAvcU4FINQDH\"}', '2017-09-04 11:07:36');
INSERT INTO `dili_lulu_wx_log` VALUES ('613', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuNwVQfUNfNEx0YrCENsxvZk]]></FromUserName>\n<CreateTime>1504494456</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=750]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-04 11:07:36');
INSERT INTO `dili_lulu_wx_log` VALUES ('614', '1 原POST', '-{\"signature\":\"c0427bc4ee1589a9c3c79221f4c1e2c14ebd60d8\",\"timestamp\":\"1504495479\",\"nonce\":\"485675666\",\"openid\":\"oWX6OuNwVQfUNfNEx0YrCENsxvZk\",\"encrypt_type\":\"aes\",\"msg_signature\":\"752b17d95f6328bcc376cc6a9aa06c0178506ae3\"}', '2017-09-04 11:24:39');
INSERT INTO `dili_lulu_wx_log` VALUES ('615', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"IRfjjM5p+CqGGzs3Q0tzT0B3dVsv80+alw6t4V0n+soD5qsTs5VSa3XIGVoccfswu1QaGh1rMPG3ov7MX9hDU\\/oFD5uH4oqixD7W3kgu5R7gdGOmZr7nmIT\\/0Zwv4J456X\\/vSLdXM4rNSsUVtWbkK8xQ3+s\\/NqJHbnsVY26RtH0GqFhDIxmxV1ktwWs5ToTTde7Axp5NutMU\\/KnkUT2Nm+d\\/ZC5QcDWz8OLWeSnAxqS1+CIYI+FXRR47G1mDV+2eLs26On5UCjN7M+1HB5XhnKJbWale5UR4+2E0tNyxVk2HHnD4kiNDEA2rW0QtNWmPMj9EqYkvTroOLUxN6x3E1iUMOYrGnQhAAXnTxrs10OhZg\\/SKbJJZI7+sF+41SqjFdJI6hKh8taVaZCv52wXMiTQpKv1wUsykEgHZ0g1H1TVr3ntt3OQVvmdVn8XjJ1TnMTCBO3+20czZENGn8WxATFJJ0H8MgnNcV\\/lcCWg3xV897tifb1poNuGp0u3DRYi8\"}', '2017-09-04 11:24:39');
INSERT INTO `dili_lulu_wx_log` VALUES ('616', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuNwVQfUNfNEx0YrCENsxvZk]]></FromUserName>\n<CreateTime>1504495479</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=750]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-04 11:24:39');
INSERT INTO `dili_lulu_wx_log` VALUES ('617', '1 原POST', '-{\"signature\":\"c9c27a69bca17afc23f7cae4a83b11ca0469b332\",\"timestamp\":\"1504576388\",\"nonce\":\"1468674453\",\"openid\":\"oWX6OuH7IXrm7GDniKZHcHE91YVs\",\"encrypt_type\":\"aes\",\"msg_signature\":\"79de271045db8166692814947273104275346e11\"}', '2017-09-05 09:53:09');
INSERT INTO `dili_lulu_wx_log` VALUES ('618', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"egyIUNcERoS3NZyG9nEEjW+Xv3WzBzrJFy1SXo\\/Py8+mUZAuS3KrN+QNEMHh1XMESKUjzoyXWfetSrPHySSPdKgOCo4r+XtZBrFwym5Cm91O5bPNHOMlIDW1BqUHM2RWFMNjPVFjgD\\/iwi6Cc7G9AzH1duuwUsnPVPIOy66zOTBoZ5Sj4JWW5\\/Fbpp5OohxWKM7hqVfCsRkWMvOyb+OiL6go0aoUtcEi\\/P648K+SG2WjcydIYp2I2QJh4AAd0nDAzK5IWjvsO9yQZyoM5K9rWo5HdWfBziS64gDGyuCT7Ljkz80b3u\\/40hxAUdoPzpHb8BRCaqyTzuyKr5d5cflB6hKS1ecr8XsZEV\\/HkMgtgiS0N07UwEYhlKXAprtCZh4UhP1ur80lEwvDyo3sxI19WlQlmEy6Y2cLcMerRgOLdYj1tb3c+zmdRSa0EfZ\\/FDKFKypsnG65WkrAf4\\/oqybyue7FWTkCP\\/eHATOB2WNxu7kRALTo3TzwJz6hEekvDA0+wbUw467S4HRArLK7898icfGjSA1J7gcwrUEq553GUoI2yzCvcv8sM6s27tmerOMPJyj\\/jW\\/9JUdsouuCtBeaCrPGH3qx9f3km8d0qc3xU4QsTAXAcJERAhw0P7tkRyKOK1Wbqsbh8nUv2R\\/vKTOHTVoPI4RTA3RPaGhhL+t9unwMxZYBan6+HZW7OVV2cyPq8GaOKKe2wZrjXf4vEFEcDae0BiABA+FDRp+QSXZofzp\\/lN\\/zJDF5Go5ewUCSsyGBgbIl9tqs574q49qPgxLMhQZX5WMu2cM7Huc9bpAYoTg=\"}', '2017-09-05 09:53:09');
INSERT INTO `dili_lulu_wx_log` VALUES ('619', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuH7IXrm7GDniKZHcHE91YVs]]></FromUserName>\n<CreateTime>1504576388</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[MASSSENDJOBFINISH]]></Event>\n<MsgID>1000000043</MsgID>\n<Status><![CDATA[send success]]></Status>\n<TotalCount>929</TotalCount>\n<FilterCount>929</FilterCount>\n<SentCount>929</SentCount>\n<ErrorCount>0</ErrorCount>\n<CopyrightCheckResult><Count>0</Count>\n<ResultList></ResultList>\n<CheckState>0</CheckState>\n</CopyrightCheckResult>\n</xml>=====0', '2017-09-05 09:53:09');
INSERT INTO `dili_lulu_wx_log` VALUES ('620', '1 原POST', '-{\"signature\":\"1dde671fc2d16d86b1093ccb03ad9be151da5980\",\"timestamp\":\"1504576657\",\"nonce\":\"253614354\",\"openid\":\"oWX6OuL6GhHm-uGE9EIKBypkTkoE\",\"encrypt_type\":\"aes\",\"msg_signature\":\"6d2768ed9c658d17a50afc22011075bf9451cce5\"}', '2017-09-05 09:57:38');
INSERT INTO `dili_lulu_wx_log` VALUES ('621', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"r1P8Db3L+2kdYWTcNhTK7e4VEvAsXRg2r388ChMu+AftjBrVR2UZzQ4zwrVXwoCUltlmPhRl8Sc2jSBqipskTNmY9zJuRJPqbNMKSHun+unkBOzjyOQ5l4mFMA5JU3rOREZBjvRTwpkadn8Z1OApBZ7EfcEY+sZuc0qFq\\/2VP0HZgMySsapck2oE4Neo5t3mel6l+ipXlhIwwWUZ0C1thr8ib6DJxpqgq2S48jwf+mD0Sp\\/\\/x3\\/md9gqM\\/cbuedg8bM31lv5wHKYH3M2H1xqaNVJVx2SUxcuAaab9IaVZM0gZN4Apg\\/paLag+t5baEOgUOhTMMSs9VrYYKiAg9RdaI+DkGfW9OdTXuwFbb0SeV4z2aZxVC+6\\/HrHL7DbgMWqPLA+YbcXpl4xmgbCK5oJWJ8\\/RJLrXofqZEXN8zZJl58=\"}', '2017-09-05 09:57:38');
INSERT INTO `dili_lulu_wx_log` VALUES ('622', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuL6GhHm-uGE9EIKBypkTkoE]]></FromUserName>\n<CreateTime>1504576657</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-05 09:57:38');
INSERT INTO `dili_lulu_wx_log` VALUES ('623', '1 原POST', '-{\"signature\":\"2f81de553c8a24fe209d2d612c4110540ef0d642\",\"timestamp\":\"1504576887\",\"nonce\":\"1586440781\",\"openid\":\"oWX6OuCNiZXFWGjtvSiKATb7MMVQ\",\"encrypt_type\":\"aes\",\"msg_signature\":\"5d5a87fd9ebfee4d7a716d741ed4baea26fa3baf\"}', '2017-09-05 10:01:27');
INSERT INTO `dili_lulu_wx_log` VALUES ('624', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"WQUvsC93k5KIrfqpnu9LKkJyMEw0wbPl2VGVHjHtALZz5YXoKuuhMh6U4WAp9CsxzU+5nV17wPVeo2y\\/FEFuZMvmeJVJ\\/7P39Kw\\/Jj9hL3Yb2XubDu2AMoERhAsQwglpwSrQIMn43esAe385NxVcnqtbrrdmGyopJ2lQ8vGCrpV2MxeGJwYHKcqmte\\/VYyP6KyxKzRH8FLskMr8d84z1uAUZEankTgIbW0p66AFJBgLTvuS73iRPJSVpviROkO2kx8NaQoWnRxl2ZrXXGHQA0UCezSlr6wzTB4oLLjqlyaX\\/7sPjGAxQ750oH91ixnqbZDZrjBvI0OMqBCuirPClCxUOis+Ym2FeAqG3P7XwIuO5Jvox3TjtYsbkD4lgj0f23xAgducalcgpYadhW6kRet8dsM7RV9iWHjd9fv\\/aP08=\"}', '2017-09-05 10:01:28');
INSERT INTO `dili_lulu_wx_log` VALUES ('625', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuCNiZXFWGjtvSiKATb7MMVQ]]></FromUserName>\n<CreateTime>1504576887</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-05 10:01:28');
INSERT INTO `dili_lulu_wx_log` VALUES ('626', '1 原POST', '-{\"signature\":\"40ae294559c1256ac2b45f2e84d454509daebd1b\",\"timestamp\":\"1504576909\",\"nonce\":\"2017583376\",\"openid\":\"oWX6OuD8m3OpTcGFXzul7BGaCimM\",\"encrypt_type\":\"aes\",\"msg_signature\":\"a62b777e1c3434b796e2b9111dc3d60f0347bf84\"}', '2017-09-05 10:01:50');
INSERT INTO `dili_lulu_wx_log` VALUES ('627', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"kR3t9DK1iXxSGvrGmMZQRjXpL\\/diFb5PPqPMcHzxgpBsU2F\\/LkJRo5jpZ2MjmwAwdE52hwZm6bVioYsQu8A6j4kcP2mPaTbLhc0bg2mwc40c1QABGrnTjz9A+4\\/PrDT8B1DTNc5QZa5hrzFO7hAmXr9SolsAxmgPKTtlF7pJBHEONHbf3COCoO3sTIMCYemixdTjUDnIKQMg5I3e\\/glwR7Wkw\\/Pzb5tRczSJeU6Oz4YB3EkhlqMHkQs6+IkmIjnuUmaWTBfViab9TbNFUP1kK3opw5Er7n3KVagT+NmfC\\/o+aF20I45xTi6sMGJlrtgkiONG1+LrhqjijHYiu3lDCk\\/mrJsaoVwdxxF+VY\\/KorkkIlSjuW0wUR4ZM2TREB7f1lsZyVmScTMydm5Ju78ExGyCMdzkTnyTX0YFc+2V75IcHnlX9DTTRqlbAs\\/pcqSfD5oaoVdVGvtH+hi7r3IXx8dJmmY8BqPqmIn0kd1OwRYcqtq3Q1WkR7HnixRbD+nZ\"}', '2017-09-05 10:01:50');
INSERT INTO `dili_lulu_wx_log` VALUES ('628', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuD8m3OpTcGFXzul7BGaCimM]]></FromUserName>\n<CreateTime>1504576909</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-05 10:01:50');
INSERT INTO `dili_lulu_wx_log` VALUES ('629', '1 原POST', '-{\"signature\":\"0b206e1a1c4e86cbed16c011fad96776043f5d51\",\"timestamp\":\"1504577500\",\"nonce\":\"1033197899\",\"openid\":\"oWX6OuC7VEFIL8nlDmFhKJ5tVWn8\",\"encrypt_type\":\"aes\",\"msg_signature\":\"ccc23637098e27aa34ab86a2fef05c703ec75613\"}', '2017-09-05 10:11:40');
INSERT INTO `dili_lulu_wx_log` VALUES ('630', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"llXdmn5Z8AqJBhLPf6\\/hSEqFffSWCuzbJ2DC9wjM7BtAkxdsSzD4L5dYLP+tDEFaXNSiqUKuFbZlXKMBS5G2iPggJzqJ4m+bgh+C+esvvSibSXP\\/9KMPEQu0lkB0lbtl6gxKb9iIDxS4IDOvJhhehglkLpRh4LR8O8lH0Y1rQekCiciPrT0ilRp9\\/C39tllysdG44avPiCrHdE4gi1A1bN5EoJK\\/lntzDKuQYbP65\\/mJzXd92M5JByg+uElYfJT88L2qtwSEKIzQewBnFQ1qZsPCUpasJH6ihyB2C6eJt7Esdza1sZwEJB5G72O1n0pa\\/opZFn4jMNnu2mE+35pYni1WqXbCQyuIV4iufCBubbEKvacDNauFZ7Y90W7xpNvfdhXQr\\/EPCsa57WQzODtlvxESGhLvBx55HQeJRX0itv+25R7jR81frQyzU7HPJ0QbWqVzWNsbAkT67Y\\/OQHbI4BbWJQD23jMgsHwDRwbmuTd8LUxPrRaea2t6E497C5\\/I\"}', '2017-09-05 10:11:40');
INSERT INTO `dili_lulu_wx_log` VALUES ('631', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuC7VEFIL8nlDmFhKJ5tVWn8]]></FromUserName>\n<CreateTime>1504577500</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=752]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-05 10:11:40');
INSERT INTO `dili_lulu_wx_log` VALUES ('632', '1 原POST', '-{\"signature\":\"81dc1149911a34251e23004cc947632c585d7349\",\"timestamp\":\"1504579082\",\"nonce\":\"975040601\",\"openid\":\"oWX6OuI3XCD7Ai9AWlEY9FT_IoYQ\",\"encrypt_type\":\"aes\",\"msg_signature\":\"9e86d4a56643a17161e2aaa7ab24d3cd9bd417cb\"}', '2017-09-05 10:38:02');
INSERT INTO `dili_lulu_wx_log` VALUES ('633', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"Jtiv8WilaO533BCn7nGeccuG3znYZELFqvaS67pw5B+6EZN+yoQdGjSt\\/abdo\\/xYzrs\\/8HM\\/m+P9gJlITJ\\/7OgBAbzejuoP+dl5baG3c3T\\/29Ndx3nP8Rk23BOkgDcuHKMUEFeDp54KwJ4mQ70aPWUgpd2I0pVyktVhvjqsaH\\/p6kFHSbtW+xfsmXmrzDX\\/2bxmkXWzJLDMCMnCjbZOPkUTqfMl2kB1vMXZ0O4FVy0tJbxhagREC0TKijzCIxvq+NS3gpMkxaQKrU1rU6+ioBD6sqiRXNbhWBe3p2d5fYw6Q9Tj21gTpwqsuFi5mA++bg53bgkLoM3zCaKG5Zd6AxuUT6MCH5nhVrQuTVTb52wvw8c4tx9dcln9h4dPhxdvsLyw9qIN8BMAvUVpnkcOETMYyZ055yVELwz4XroMHcvI=\"}', '2017-09-05 10:38:02');
INSERT INTO `dili_lulu_wx_log` VALUES ('634', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuI3XCD7Ai9AWlEY9FT_IoYQ]]></FromUserName>\n<CreateTime>1504579082</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-05 10:38:02');
INSERT INTO `dili_lulu_wx_log` VALUES ('635', '1 原POST', '-{\"signature\":\"94f3564f95723cf33b745100a9d6bb5848eae3ae\",\"timestamp\":\"1504581770\",\"nonce\":\"347791958\",\"openid\":\"oWX6OuJl8jkmmI7Du1FK21Cm63Us\",\"encrypt_type\":\"aes\",\"msg_signature\":\"906fc5bacacadc456aa170c380adcfc8bdbcbe0e\"}', '2017-09-05 11:22:50');
INSERT INTO `dili_lulu_wx_log` VALUES ('636', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"kt+BwXi\\/A4htmM\\/lT4tLxiAFvQZjrJZdBfFaCkEzwoACPHnArLMn9NDv+buNwKYCrTAy0GWkBa3KX21NrIvrbJ9tb0ZHbreuhRCAdXCksOz0JS+PsG\\/qF0QJ50DJLBOj4x0FIQsYefuofVKyaWkn9QwmywKK6dOHKAY0kCnrO7uyeKuKFrMcGj88cvKYt2nuQu\\/4chcCv1z\\/+rageGDZCvKcziqhTv9qWdsDhcrgzqDdqiyABoixQ\\/afp8ylQwM\\/4DzL3oux9ktKAtMVA3GPxsMsi54dS8dqOdMm+fSZVxULemnxew6kgGidbn10N7iaA3s5shk48n6VKxWgDMv\\/YIgh1m9zJYXsDrGWDmEd9+8Ep4J1fn4a0\\/ilaYE0\\/BOBDOHF3CGY8rMaR709spH6WFotVkdvyb8RagMQJztu\\/nE=\"}', '2017-09-05 11:22:50');
INSERT INTO `dili_lulu_wx_log` VALUES ('637', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuJl8jkmmI7Du1FK21Cm63Us]]></FromUserName>\n<CreateTime>1504581770</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-05 11:22:50');
INSERT INTO `dili_lulu_wx_log` VALUES ('638', '1 原POST', '-{\"signature\":\"56c63640e8c02c737987dd1115e353705e268869\",\"timestamp\":\"1504657733\",\"nonce\":\"1652725562\",\"openid\":\"oWX6OuNlE0tZ9OE6H8rAr7GEanws\",\"encrypt_type\":\"aes\",\"msg_signature\":\"73154b336cfe0bd696e355a22350b8e22f8ad48c\"}', '2017-09-06 08:28:53');
INSERT INTO `dili_lulu_wx_log` VALUES ('639', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"AfcYhM7r5liqxwnQEVlVn33aJ2ZkIVT0EknC5BiM9gXFhiemzjUU2MUd4ULbhSzjFpfz7q7pw2xCYchPChphRE3KXT6\\/MbrSu57sVHxx6s4QgFlJmauRCBP2bFvHAmzLXZLMPIUlSu\\/ez2cZDSwX1ba2Olp47YNuhSeo2p7HV2Cpf9D0lpYfGBapn7Kxn5mCgNzxZbe8iQjaReLDVnz56U3q31nSZJNbXj9zUD7gY6i3XkpyBIhnyhv6IjbJ3SAijnCNWsg21zNxLes2AFpkqULJxooi6NAUl2pXpMgMq8LFsuufEgU8DZ7z1WKY6pN29NTI1+wznETZ4mNpw\\/q6ELmgOwNrBK6+Wjz3MdyrU8UR2zKnH6yVm37kcBEP\\/xhx3tBlbWf3QhvaQbFdrhuSUiOwt1yGVKwQGRvQw3eNcf8=\"}', '2017-09-06 08:28:53');
INSERT INTO `dili_lulu_wx_log` VALUES ('640', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuNlE0tZ9OE6H8rAr7GEanws]]></FromUserName>\n<CreateTime>1504657733</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-06 08:28:54');
INSERT INTO `dili_lulu_wx_log` VALUES ('641', '1 原POST', '-{\"signature\":\"2d0c588752970634fb8c220f866e3fa8264b76d0\",\"timestamp\":\"1504665656\",\"nonce\":\"304467079\",\"openid\":\"oWX6OuMh0MAnGN-E0QyP2eZs5q48\",\"encrypt_type\":\"aes\",\"msg_signature\":\"b8cc23e475b5663174a8abc5f5ba2a0e6dff634a\"}', '2017-09-06 10:40:57');
INSERT INTO `dili_lulu_wx_log` VALUES ('642', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"\\/cloIGVz5OQLTOQQeTNnN6+0swuVkZAxviwh18FzC8Fer+IfGuGBaOrwxGDg+VRZlPNhri2rBdmVAU7+tCDViiH+WDMqImCZryK7vURUauqtAAvBvMlWdT3L\\/tjnwBIkDdR+PyCghp1DmYi\\/0lcc\\/V85OPfSZQKOXRN5N4UfKUqrXmSP+euq21lDNXeUKVYZ1xySmYV5OJrp+TH+CEOqxKb9uIZgReERCg7ZtzGTCk7pDOW0qttpL2Vwg4Xz+uDA+oJphLmpRoNIpeS9fsvXL3VOgx2UXnqU2sRlsj38XcPypeHVWM074Ct2sG6fuJoJrYyxACpHXuYQHudm+IdC7WdJWoieJLE85SKP1Yz4qpzByP3MZCIJXtRMNOSvH0fNFwb1pDQEzt1+XSCtwjSW8NAqYeWaCWAgi5aKbEKo5segP9lhHl5ERUkRGiP\\/JGoVi5Qi1RhPieDf++hf+ShLw\\/UVAFCrU44bW0hq2YycZJGj0BPR7eYDr7PtgpMqsVht\"}', '2017-09-06 10:40:57');
INSERT INTO `dili_lulu_wx_log` VALUES ('643', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuMh0MAnGN-E0QyP2eZs5q48]]></FromUserName>\n<CreateTime>1504665656</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=752]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-06 10:40:57');
INSERT INTO `dili_lulu_wx_log` VALUES ('644', '1 原POST', '-{\"signature\":\"0330928972a56b066dffbee03e9b8c02e7d6449c\",\"timestamp\":\"1504665680\",\"nonce\":\"755481031\",\"openid\":\"oWX6OuMh0MAnGN-E0QyP2eZs5q48\",\"encrypt_type\":\"aes\",\"msg_signature\":\"14f9c2b2f96b9b8702fdbcfe8f1305ab07ac8ebb\"}', '2017-09-06 10:41:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('645', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"Qce62jQxdHMOw2dg8V+PlU54cdUgjGG6OPiMFJ5bXKyPE\\/n6Xk4OI7+htHIxjUKfP44jNfLgZVzsrCte+RMPg43RQU1nLAiLGbVOFYULEOsvL5nHvDHaOF8Etp\\/N7BDVYeeXj+PaJ9AEDV6WN9fWq7NNAfK7ak5mV6rAGG14QU\\/GuWCtBy1bBT7UOJSaqerAL4FIZOfscDIOlLlVPLXr5qf5cvPFaUrcxei2l7cOxRFm7yPYYHyi2+mbVAIO\\/UrJJ0zSH75+PP6s4eHUnKSPaTcINDTTnz6+rBBKXnhPh8k9Cp5cosQBN0ICaH+It9k1s13B+NYDW029fE\\/39r1EhEf+PgNl75vMXgw04xYHvJzb+VXLfgGEtyDrhlAfoprvq4tBRYZ41Vz3r7yhm1ut+zV1VJxfqOrZjo2exrtPX2pv9FzO3w85CnJ7Xb0PUpvWYyuKyzv\\/Wvb6poZiBBgy5pF4maeMuSVKLJxQ7OB2L1UQeqRrCPUHgMyU0MDt76VC\"}', '2017-09-06 10:41:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('646', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuMh0MAnGN-E0QyP2eZs5q48]]></FromUserName>\n<CreateTime>1504665680</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=754]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-06 10:41:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('647', '1 原POST', '-{\"signature\":\"8872cbf5491390a076fcef88c665f54d8c8192fb\",\"timestamp\":\"1504665685\",\"nonce\":\"920100944\",\"openid\":\"oWX6OuMh0MAnGN-E0QyP2eZs5q48\",\"encrypt_type\":\"aes\",\"msg_signature\":\"4ec935cf3d233e37c81ada94653b13c1570516f2\"}', '2017-09-06 10:41:26');
INSERT INTO `dili_lulu_wx_log` VALUES ('648', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"\\/YKC7h4CPyOcroLIMKqTSp23hQj4srJ0JA758J50UY540G3RAP7nRs405SKxGrlFw\\/bVfCdUocmKuKmdk5T\\/8X13LEqpioebIV1eviL\\/z+Ykay+3FyDrW1GnSNsmY1+24xstNMTm943uD9ZeCvNYZMkDND4fnRZRhH9O9Ts517+y\\/ogTOwiz\\/xX7Qbhi9XQacyaDwXtsnQNLVRiMWhiLgxyq+pUHJWKm0AbMwoswjXKPGITF3nXMjNKS0DLXBuGKHWtH1xb5pSgKjbi3K2P9WhA0oaviYjmo+53uK3MZY5hMiL\\/10zKs50y5qxLFpG55x7b\\/Wd4pa\\/ammN+BHPA4lXiL6KKex736M2mufrW4\\/9exucXgQX2PDTum7mVeecK4u2X4pWcgf\\/8RyvxM1vA8VMeKVGsB6KqgqlUwN\\/VSLNRppeYKkCXd15HVjDZc7LhvpjQ1memeesC\\/U1wef6AS872rodZ0IKWvF8QxzeeWixJWN5d+pNTKKBux1LjlBXSj\"}', '2017-09-06 10:41:26');
INSERT INTO `dili_lulu_wx_log` VALUES ('649', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuMh0MAnGN-E0QyP2eZs5q48]]></FromUserName>\n<CreateTime>1504665685</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=753]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-06 10:41:26');
INSERT INTO `dili_lulu_wx_log` VALUES ('650', '1 原POST', '-{\"signature\":\"f588e814e93cff4e6dbdff473df2c157dedfe1c8\",\"timestamp\":\"1504698940\",\"nonce\":\"701608598\",\"openid\":\"oWX6OuGP0Irr3_tXWm3cWGR3pj84\",\"encrypt_type\":\"aes\",\"msg_signature\":\"2f04f697c117fa5e24dcd5282afaabcaf0f6edce\"}', '2017-09-06 19:55:41');
INSERT INTO `dili_lulu_wx_log` VALUES ('651', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"r3wgHUo6r\\/AEKF5osIlEVTkYwL4206be4k3lTGPhqJGT\\/3\\/IWLncVKjSlV2Zp7hRM01Dhzus+X0Vu0x5rog1\\/styXmis11j9wy0049O0DO2yfYA20Q1vSnT2n5mI\\/xlA6V6LtHMoC7F6cZVfumjKWTsZv1+rriSNAlG0gbmcyGoJbU0UtB4HPnDs2rAqV3mSzBkZG0OisiBf8GLcBupfQze57GF4Ssr+r7TXWK1n4yLUqzgafR0VuCVpxNbTMMfuwJuHhQmoX4DkeM2NhUByulkyvLfgUuJOrf\\/5ExhHMTaFBi4wnM31sfayIlOZTZQCwawWzfxNbtTtSSo1S0xesuaUulxcyjOoxdguqAtvLI2\\/lZQ0O44ctHotP58IpY9RXpCXSbejg3EsOlCwGm7cpcBlebfr3g6Emn9lgPg+80c=\"}', '2017-09-06 19:55:41');
INSERT INTO `dili_lulu_wx_log` VALUES ('652', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGP0Irr3_tXWm3cWGR3pj84]]></FromUserName>\n<CreateTime>1504698940</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-06 19:55:41');
INSERT INTO `dili_lulu_wx_log` VALUES ('653', '1 原POST', '-{\"signature\":\"2a979e31b323a00f2b48f178460fedc32436d231\",\"timestamp\":\"1504762334\",\"nonce\":\"623711480\",\"openid\":\"oWX6OuMh0MAnGN-E0QyP2eZs5q48\",\"encrypt_type\":\"aes\",\"msg_signature\":\"0ce818d101d080f1b2ed29efad872de4e48c30bf\"}', '2017-09-07 13:32:14');
INSERT INTO `dili_lulu_wx_log` VALUES ('654', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"YLPprUQ8GLedzJ2eiY9RqjcD5A\\/PoJL57cWq1uvg5IBLjBZfU6I\\/z6EXQnz8Wnp85eLNFiNOgzI+JfSIE\\/X4JN3EbtrGjPaDznh4t7P4nNi+iB2hFC9UwLdOlYK5DnDvmjSkqfoqyI\\/diG3BlqQT8WyV52vzbu8gEX9dJmsh+MM64ZKOhXTMQrXuRWBVSJ2HvdARl4wrL0qGNojjQBnl61yw35QkXjqphnAx2xAa3A+ygnpsIgR2WYUepY5mCBloJt0QvFZoAnoPKSExAn0dGIwU4xytsC4AAifiziPdfI8K9q5jhYC1h\\/XtJcEbsJD0otdNbrJV7puffQLx2sj3QSp9e0akE2IFXjeKdTtpG8VZnf\\/v4tKD4f585KbrlPrDWsUCt4pxDPS22oXEbWcJLWJ0k88OW6CoiNk3t2icG+f+hKQVQ740NSuo3\\/r7g1MxQewLnSN41TnMudEXMiTipGnGkWQ8jn2qDOOhRn8oyd+N+4CvFK\\/Z8VLpRVAcxAQg\"}', '2017-09-07 13:32:14');
INSERT INTO `dili_lulu_wx_log` VALUES ('655', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuMh0MAnGN-E0QyP2eZs5q48]]></FromUserName>\n<CreateTime>1504762334</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-07 13:32:14');
INSERT INTO `dili_lulu_wx_log` VALUES ('656', '1 原POST', '-{\"signature\":\"461b30de64fa8d7cf0a7b065a61962fd65a18ec5\",\"timestamp\":\"1504785232\",\"nonce\":\"1285398858\",\"openid\":\"oWX6OuIH9WfF9RfdL3YZZgO51ZqY\",\"encrypt_type\":\"aes\",\"msg_signature\":\"826065d5a8dd46ecfdb93313a9192b159029ed91\"}', '2017-09-07 19:53:53');
INSERT INTO `dili_lulu_wx_log` VALUES ('657', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"Yw2SwPAXaVPALcE6LmdwIhatGqhf2ZYCgEPu9kqsKteoOP5K8WUabnRs7ICFnu7YEXmkunH63N8M9kSarrXADZidxdiXcEOiss3aZ7OQE7bsG3ZKBcmiIOmqVSbtpkQqoNvxYQc4oH2X\\/ikJbXn93OlZNKgGtXOb8E2+y3fnnfkr5OgVc0lLkHpfuVxdYusJ33t8LVhW2TVnvnSDDU1+Wso6DapA75ev9yHEDDJGaI9vpJS8SHUPTjQeRfdKA5vVp2ebgWfPT2VMjrwFiVIMqkDgeWzOm8b0H7H6xiWxFObeb\\/so9QINKA6px5Z05VzOuyKZlM3VrjUhBTm59fiSE1fF0bojJ+UOiWPU4v2dC+t5wCjKRNslBRsHj2apgyyzl7w2gzpHhuYP01G76163g3qJ9JDxYHQw02XI7ZOBVaE=\"}', '2017-09-07 19:53:53');
INSERT INTO `dili_lulu_wx_log` VALUES ('658', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuIH9WfF9RfdL3YZZgO51ZqY]]></FromUserName>\n<CreateTime>1504785232</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-07 19:53:53');
INSERT INTO `dili_lulu_wx_log` VALUES ('659', '1 原POST', '-{\"signature\":\"db07f002a80625824c3a4433cb1936385b610df7\",\"timestamp\":\"1504785241\",\"nonce\":\"963077982\",\"openid\":\"oWX6OuIH9WfF9RfdL3YZZgO51ZqY\",\"encrypt_type\":\"aes\",\"msg_signature\":\"efc759ca7ac7d864275ad21db8edffcac705f3ab\"}', '2017-09-07 19:54:01');
INSERT INTO `dili_lulu_wx_log` VALUES ('660', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"vgPNq0qkO0y2WnU4MHOWc3OzIegCDQGsRL05CGe2kNQGSDwiLi2Pk3wx11vqAE6\\/taiF6ZELB9CinttnnT2MPMzoe5SQHYg\\/onzRrlIPPx9duhlBwhIf9ZfPPp7IAga4JEtgIH4bGzjLQCmFmrOSwQZiR5+0FVFrFlrccaYwoEdw7atm0cZq+tCsHHQWBvUhZuNb7qJYR+IFE3uYtUIH0mZz6Lh2RGLF6GlnQ1RvhTJVmWG7YN2i0cSExaIvLId8enBaOl2bToSu+TiNhvG3pZcd8zjYCL7OnYdC3\\/NbLGULNFnMo2PfsY1rBCuBZVTBo1Njfu48HCtaUtc7tsis2+C+Io\\/nd\\/YpmCACkTMs0mYVgev402FcFqw6WBB5rTXX2FAXz1D2CxWOg\\/FvvOTH6Kqe2IcF8UivLG+AaB8rvWkuxncQrLXTOZdArOZhSclJ+qhkp80shSbweSIur7fEnszbh0siElm9Ev75upUzaJUNI46CjRaW32F\\/SOnlvUfm\"}', '2017-09-07 19:54:01');
INSERT INTO `dili_lulu_wx_log` VALUES ('661', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuIH9WfF9RfdL3YZZgO51ZqY]]></FromUserName>\n<CreateTime>1504785241</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=754]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-07 19:54:01');
INSERT INTO `dili_lulu_wx_log` VALUES ('662', '1 原POST', '-{\"signature\":\"11aff5db2e530a58576f4cba39745b25ac473afd\",\"timestamp\":\"1504785345\",\"nonce\":\"1594946439\",\"openid\":\"oWX6OuIH9WfF9RfdL3YZZgO51ZqY\",\"encrypt_type\":\"aes\",\"msg_signature\":\"58aa4466d38e5b4b8ec55cb81a86f0f9f18d7ceb\"}', '2017-09-07 19:55:45');
INSERT INTO `dili_lulu_wx_log` VALUES ('663', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"Hq5938ctg3qGJutuFRPKs1S1PRSbtFxusRbzuukMtjYrR4g3LwPJwz9E4cN5VQAFoWdrXz5tmUs5loGE\\/nUIp5BukxQPKWVelAqPTq3nYfhyXgjP8WMTZsWlSHPSHj548+FS84Nc524qImA16mDOEK6i7ZryLVRkIzXoT+oVbvcqqasgdu8kkPDA3Dpcvw9+AX19w3vbAsgrzQzMBiliQKARuwlbZU7W3j8il2vIyJwdG3I1xtHopngunAg2r9tPYhm\\/52pfCEbvN3l\\/15dLLepdbicrReFcmEIaM3KbP1pVxK3x5c8XHlUTQwis2hmF0tcRXnwUA8j7tX8IhgSWPmQIX+gcFOkkAfzDRxLVNT34p2x1KuMQIQBqXLtHmUjJurkGOKpwjLHi2Td3Y4lYvjeDEZFGR\\/fUH0\\/ZJ\\/eOZ2BgqRcmz6oom+bTz8+R8bLFKPzz67k\\/POjaKlbSQcXtLSw2gpwhcq\\/HaiZKSTiyj5blVhNanEZj+596a1mMm9Db\"}', '2017-09-07 19:55:45');
INSERT INTO `dili_lulu_wx_log` VALUES ('664', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuIH9WfF9RfdL3YZZgO51ZqY]]></FromUserName>\n<CreateTime>1504785345</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=755]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-07 19:55:45');
INSERT INTO `dili_lulu_wx_log` VALUES ('665', '1 原POST', '-{\"signature\":\"44721ed17573efe0a6495b5de9a31a01abed2c4b\",\"timestamp\":\"1504785402\",\"nonce\":\"398143572\",\"openid\":\"oWX6OuIH9WfF9RfdL3YZZgO51ZqY\",\"encrypt_type\":\"aes\",\"msg_signature\":\"4b8406386f4b1f85de233dda5c222707c6243720\"}', '2017-09-07 19:56:43');
INSERT INTO `dili_lulu_wx_log` VALUES ('666', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"m0sU7Wovlma8z1kIVy9NiwVVgKgy9ji38GriRELDGKD+q7mOVJcu9J34ehoQpZ9nzhkMloP6ax0S1omFAUSpKxrRKVRPcQnQBHF43yH8gj0T1lgHddVtpXm2yE7CBS6CFoOJ86uHBydQfIvJ2Ex6DP21RZPc8BkGKHQFBZg\\/0blq8V5yN+lotibB\\/yHBXT2ReupGcunek8YAZ\\/rpcFkI7D3RGt219XmmvIdJwEYZOqhaMqouLfUjk\\/3YN3vapuh1\\/mSpCVK68mBMfT8O3Dhhqil\\/ZmBkt7ktuYjywr3bdsq7Bn1DTBaSwXkW1ALIxyqlaod39KULnFxblYw83nQ2P7i7Z1zaWvs36wxnIr\\/hgHeJNSjAJoRwFK00as2++Rnp7YC38+SPi4y3WHirSpLvvq17\\/OQRgHZ5fOcF\\/Ix7wxacJEaeEYFsakiA51AeB24GpTjpBno56M\\/lD\\/me5dsXzKmoiRLLCSCmuU6wkqutw1AbjQ9bOH17dhKzgvalSKXD\"}', '2017-09-07 19:56:43');
INSERT INTO `dili_lulu_wx_log` VALUES ('667', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuIH9WfF9RfdL3YZZgO51ZqY]]></FromUserName>\n<CreateTime>1504785402</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-07 19:56:43');
INSERT INTO `dili_lulu_wx_log` VALUES ('668', '1 原POST', '-{\"signature\":\"fdce8fe0c860baa11c96525e985fef6301499b56\",\"timestamp\":\"1504785622\",\"nonce\":\"392237990\",\"openid\":\"oWX6OuIH9WfF9RfdL3YZZgO51ZqY\",\"encrypt_type\":\"aes\",\"msg_signature\":\"189ec2fce924e1bed7cab7773b1d2112820205f6\"}', '2017-09-07 20:00:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('669', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"xrKHNsy1mlzo4Rr5hEd\\/2usr4mcd8ShNtdDK2aIV7lr\\/ZGIelcdMbuOk4yk1I61j4l1fm\\/yFg0qwjgxoIUURQFtmuznnwn04NpiWv1nvRBWVVw6TAguvCQF1PAuDHp271anmqasIpWcnNH+Ih+k6Yk4ol\\/G7hKPKqj24t2KuT3BSg4FenELKo0A9g6UYW7Ek5O9+9kLiPbKyLuiTyrS1U2soskMLMvrAVrLIEWz6uS\\/CBzjiTQCG8XAbuLI7AR4\\/lbpUTA2vpCeUF+uinkZ3Fg9tlsTnf+xK5Rm105jFR7i7lFbnq4fT7+i6xRYOVExA15DxECWgbUpM+s9lS8ftTEmneumWXgqzyMflipUAjzDT2jx0NiVnp8LTFd\\/DtVTCzaKcINXsDpvo03vaBZ0QgRpDyFyVB9Z5R4nh5djjiQHvnIeAzbepGBZsnYCw9plS+ekv29sLmSdbDZ+e8GmelzdamKikGbZNbQ1LbB7LsT\\/ydVlbhV\\/0lRxe5p5hA5ae\"}', '2017-09-07 20:00:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('670', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuIH9WfF9RfdL3YZZgO51ZqY]]></FromUserName>\n<CreateTime>1504785622</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-07 20:00:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('671', '1 原POST', '-{\"signature\":\"027c62f60e71fdccdcd82cb9be10cfb5c80967cc\",\"timestamp\":\"1504836805\",\"nonce\":\"1676617286\",\"openid\":\"oWX6OuDCXhV2R7KL9rEm3pBpxMNE\",\"encrypt_type\":\"aes\",\"msg_signature\":\"b75a7115b36433e38368bc9ef04fdbfed1fd0559\"}', '2017-09-08 10:13:27');
INSERT INTO `dili_lulu_wx_log` VALUES ('672', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"48ZpU3ilwGvOWUcRd6K4dhc7sFcjefoRCfsufrlKi4fFpIt\\/EdfCK5KgeH9es+7ChU\\/mqWCKjeKnVFjPfr+Dm4EsSma9NlSg1+FuOjLKGFFVwcqpFdJ1HkiCbK5m9GidHLScm1GXR\\/Xe8btZFpKfpTkIRMWlbWB\\/1kpuyHtfrhtZ23+QE8Qk1exAP5IkVMQhhyx4RyYDT0PWPJ9mA00Ojy2ITB2IuuhoB+a1kFqBCHVf7hVdfeOCr4FM3BTWwyctFoe+0gswgwaQh\\/NPrYbEJSpC8YsnbHjo5s2tIGy4bWbLLuee5UDEXMsEte0y3Il6vlrpSFsqGOmKBaYsyCiPxizUjlpGeOFLY1VACXX\\/VDkXn0ufE8fn8bEUB73gH\\/N04QMxmISF3MJD+T+WQNG+f\\/uhhi10EHz\\/pULCuWybRyo=\"}', '2017-09-08 10:13:27');
INSERT INTO `dili_lulu_wx_log` VALUES ('673', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuDCXhV2R7KL9rEm3pBpxMNE]]></FromUserName>\n<CreateTime>1504836805</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-08 10:13:27');
INSERT INTO `dili_lulu_wx_log` VALUES ('674', '1 原POST', '-{\"signature\":\"23c6a1d3865400a3c2e67d1eb0ece6c3ed77def3\",\"timestamp\":\"1504836880\",\"nonce\":\"889160397\",\"openid\":\"oWX6OuDCXhV2R7KL9rEm3pBpxMNE\",\"encrypt_type\":\"aes\",\"msg_signature\":\"5666c78842a8b67cdd0252b0ff150b6f40e41b08\"}', '2017-09-08 10:14:41');
INSERT INTO `dili_lulu_wx_log` VALUES ('675', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"gMxOKbqJtenGTdnnS6BcUBMeiDwWtxs9X7MK25aj27K1nqjaDU728KzBcONqzRs9alnPt3F+wyyr43VKo1JCMUJGi\\/lAkcOQi+TIid8aPhagE8pmOueG27yJrIqjmCnONOv3CQqTSeOM8puxslkKlblKzgBfrzppKsAAxrxyW05zJVhxZoNj3+hhewPXjuQAFSdOP4YR0OB+qiiby2HeSuBIkYgz3wEYqkafCxJb3d1XfYgIHu1nYFCiZ\\/1eBn7dNv2W+ks\\/Bq6oXISJNoUttidPN46T53PY0By2NsRhgtltl6EIpiQCwOoyeNgi4Q4JknS4mkVilM8WnEkairr3PDj5K8NTCUWRaPw\\/6Rw\\/7ldoCrTi1b7ZMujMi\\/VD+xaCPMyuNawl6NyMZsyOdtletmJBz5hND2B0HZKLSh65w9zLkEMEehtg3B0vgntFuh55XF3txQKx5qzRIIWPz6wdN1Z46rCp7RCSenhe7s5igYlK7yrFc7Uh6FwTESdC0Ypl\"}', '2017-09-08 10:14:41');
INSERT INTO `dili_lulu_wx_log` VALUES ('676', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuDCXhV2R7KL9rEm3pBpxMNE]]></FromUserName>\n<CreateTime>1504836880</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-08 10:14:41');
INSERT INTO `dili_lulu_wx_log` VALUES ('677', '1 原POST', '-{\"signature\":\"917cc2ff89f364f9f75981afce165fc49d6e2135\",\"timestamp\":\"1504852521\",\"nonce\":\"905380809\",\"openid\":\"oWX6OuG5CzuU7KhL2kphiG97X8r8\",\"encrypt_type\":\"aes\",\"msg_signature\":\"37c8f1e2acda2bbea18dc0a4f84c6bb5999105d9\"}', '2017-09-08 14:35:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('678', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"SXWDa\\/VnzvIlpyp3jIlF2t9aUtxqhILgXRCVnW+KaXQ5x7XCazY9ogK\\/UJzE9pGCVZNXjIRck6pS6KkJsGX5WSAce0PfKNhF+J6+LCW+1INDBcvY\\/fNwLVk2GHcRqk\\/MtG46xPKPN\\/\\/OPxfhp3Q4ge21L3gGPxGqbAYONQUBs+Lxi3Ho7u6fMSwbp6EzPKURezr8cfzjFhwl0zKtEFBE7\\/OC8lA13JLkAXmCS8qqh6H73T91PL4ToVdQGF\\/WnUKFLIgfEjN8vMqulOw9lmDnWDVg7vP0uiXeCuPdrmU7ow3Emrnjqp\\/h0T0cipka7eTCZF5vbzFCHyrXK8OS91CyNhgpXVEjcA50lnVlr9aLBi+u6AozCDQ2cYxs1pnjrg1d17nYJSB0gIdEhAJZEY\\/uPmSqG40TdXO31iWJLppMkMk=\"}', '2017-09-08 14:35:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('679', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuG5CzuU7KhL2kphiG97X8r8]]></FromUserName>\n<CreateTime>1504852521</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-08 14:35:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('680', '1 原POST', '-{\"signature\":\"8853cdc831338964edeabe28d16b0ecbaf343e58\",\"timestamp\":\"1504866397\",\"nonce\":\"321843241\",\"openid\":\"oWX6OuH2Za6P_GGKUzwM9R5TxNe4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"130890060f7708b574dd17e0f206999caccac6de\"}', '2017-09-08 18:26:38');
INSERT INTO `dili_lulu_wx_log` VALUES ('681', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"2dIgc2afPVM+4G0qxFVrzg64nXgzrOrfZ7zgpG4tjCX\\/HtVCNdklB\\/QZ0gfL4moWYD9Q8xL3j5ga84EH8KK6W2KpaRFlq0yvaw9pytUR5AMlTTYguCIpya3QBfCZpBOq99\\/KGN7wmwfMde47hW6jEMTI7KCNgAUcGNyR5rioZmhLsfowPG5hYbMxQkY8wGK+mX0qp8\\/pQG\\/QBVimmzF5We4wzb7AEdccHSnKgWt3zPsOMaExlfVCOc9KugdpAw+SQDBtYEaFpQO1uh29PDayo8xnNU8Vbr7UNkO8R2WqlFACuWTohOTUW5cTMYy\\/vyEXkwez619Oy2crErXoZ+sqWIUKk3OW3CJTrXgEKiKzNHWIBm8CTVwbvaQJ9yBGc5KinAcqAVdV1RQUnijo+SWU120qWO5UwG5xFoMWCAGznurB5bZbn0Ks1odJ6v5L8prufUS8xojMFr3PnuoyAdm+729jZb4o25pOfv2mOfMqRBqsRPQ8Y0jh7r\\/0mC7AoSwc\"}', '2017-09-08 18:26:38');
INSERT INTO `dili_lulu_wx_log` VALUES ('682', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuH2Za6P_GGKUzwM9R5TxNe4]]></FromUserName>\n<CreateTime>1504866397</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=752]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-08 18:26:38');
INSERT INTO `dili_lulu_wx_log` VALUES ('683', '1 原POST', '-{\"signature\":\"dc92ec3edd1b0e661f8dcaba0c5dc4c2218f9dc0\",\"timestamp\":\"1504866452\",\"nonce\":\"295728133\",\"openid\":\"oWX6OuH2Za6P_GGKUzwM9R5TxNe4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"ca0ed1a6948ed5e3c099eb79bd6e94eee8205cc3\"}', '2017-09-08 18:27:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('684', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"7feJmtqoud3YA5TcKe0gQBYvAvp9RPDuJA\\/A7mhsScpPAHzcMPu2bT+xcB8X7aYbJH6FMpzl7u79M38YQh16Nk3BS1NYhSXvcbNjWvUQLDUskroNLOTLaHvRtwvuSXGkAPrBtE7C1dSkDMnkmWLrBSy0vkFNLAYs7EnN78kV2n4RfIfVmsbZYBrHAeBzcvWzBNBXELInHrfn5ozmWx6orxqOaq1RrHdj85PUlV0in4BukvmPpWZsul8Yt9dP2hSo7M9CDfdhFGAGAEPzmade9cYv3T8iaOScSCtQHVzNWfYEkE1ldHBOZU5hOIrMYQ0XeOveih96hTRiDFxKg4i1YaILCQ5f8DOR9dJxnQXsSXelAscQk75hIrsQpdW6OR6DWWqiAJaBhO7FWClvcBOMQjo4NJW4gHTZIW3BknBf\\/n2zYvOklO\\/BeVYuQVKcgmMvKbo2ZklL12x\\/hL3xaHnVIYpbaz3k\\/VbiGD2QvvhF5Rni+WIS8JkhtmlyFYm6rYWx\"}', '2017-09-08 18:27:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('685', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuH2Za6P_GGKUzwM9R5TxNe4]]></FromUserName>\n<CreateTime>1504866452</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=753]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-08 18:27:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('686', '1 原POST', '-{\"signature\":\"521094745f01de4aa06e134febcb48014114be81\",\"timestamp\":\"1504917931\",\"nonce\":\"888954353\",\"openid\":\"oWX6OuHbMgJUf9FaT2oI8Wx6N7CY\",\"encrypt_type\":\"aes\",\"msg_signature\":\"6667bf87f629fbfe6bb399b5549a90a4193cfde2\"}', '2017-09-09 08:45:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('687', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"upIiWED8CgyLX+CGaR0SwxmsL7UMsHr+5\\/H1gP9ZVs\\/KtLtaJhNkbFjQUtKoCAHC79sZvLipgz1a076LVvUxDnOioHOXOR7HSVQ8u2IoA+R09i61uDAX2mcAQn4WJJ4Jq3\\/6d44ECUHznkRm+H0bc1aFYJLcinaKzTdGfSF5uFrEOm+9\\/g32oOvA57JVIA+iaceiWaL2dNYtbP7aWtgi08CEQAzTbLrcfFl\\/K6gS8gF0hQ802JKcUPhnLbmO960w4JpCFkXgjxTyRoKBH7Gf3C65\\/NOg541FvZBZMZc54JvIjpV6Tj8gz4VCou1myjW8nxjakSmDuFBrk3ffGJni4pjXdJrzhJmJ4WK4wA4XkYJG8wpk2oS12HT6PTEKK0xvlSoNHykoJFuysFukeyFsZX2nZ474t7uiE5iBKinKsic=\"}', '2017-09-09 08:45:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('688', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuHbMgJUf9FaT2oI8Wx6N7CY]]></FromUserName>\n<CreateTime>1504917931</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-09 08:45:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('689', '1 原POST', '-{\"signature\":\"5707ff84adfeccb6723dcd1f5adaaafbed0ce438\",\"timestamp\":\"1504947949\",\"nonce\":\"207870198\",\"openid\":\"oWX6OuLL-F9gyMAyZ1MW5sC-poiM\",\"encrypt_type\":\"aes\",\"msg_signature\":\"d6c0ada194414c068b5f4bf8b00a10e49f037122\"}', '2017-09-09 17:05:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('690', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"ko3D6ml+5o2s7sSzoEGs64RAFwiOS+3fcEnblB0Og8d2\\/ZEHSLCy+bRYKq8rwu+9kxrnr865kpgxBZmh\\/mOGGJ6l4FpldhnMOrRuajZm\\/TjdSh5QJ72ZDZoC5ZH2FOLTYKsDNxT1uE7zkMQv3qyfgFJgS29zTiO7\\/VwBOljHOsZCNTPP4RuSzoG+cJkyiPKWy9g97O8MZllJEGoExaUaJ9uU4v3UWAejIBtyVJTcVg\\/AHkxhY+sGM83hiCuzbkJM210C9xXavSpaZTEO3Fblgzx\\/skh5M1wX1bJBmffMZYZfhUS6bIA4\\/YNPL3TjcTHolLajIzE+5AARb+dBA42uxSVhZyc9E\\/522kw6tqlgJjvqwdrqVKhzatrFkXPNpO3XhZNQxPpOQA+eiJ+Sjs6FWjoHA3jUxhzRVYC+Bp0O0bA=\"}', '2017-09-09 17:05:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('691', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuLL-F9gyMAyZ1MW5sC-poiM]]></FromUserName>\n<CreateTime>1504947949</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-09 17:05:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('692', '1 原POST', '-{\"signature\":\"aac45c60d1506577b1350a6fe22a21a9b79f5d3a\",\"timestamp\":\"1504960573\",\"nonce\":\"603386174\",\"openid\":\"oWX6OuAIeBNWzJMRHUPeUVQ3mb-s\",\"encrypt_type\":\"aes\",\"msg_signature\":\"a1997234e71ecc8fca94a771d0cc6a8cc5a0a6dc\"}', '2017-09-09 20:36:16');
INSERT INTO `dili_lulu_wx_log` VALUES ('693', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"U+NT3rkPj4tbJ90TVtk57mcW9cNKI4iUgrZITKOnMWZAzItYiQxE+94NBkSqh\\/+Bb5+YM7cgYkg89ym\\/9+3Tm2At\\/16urLEugPxh9TMYYyp00ha6rNlswzvVLM77eOxsHSmsMThyu8sdZLW0asxH+Huql1Y9jrQLY5pcjBysxywmsW5Jw6qlU5r0GeBSKGpxqkrXTszNE4YVHq\\/v2pBtWUL7Aj7GsDkOd13kfrfRLbeiuTqfBwiBX3jQWCWWXqkCxFoP70wnLT1nD9g6XjRG0ytfzBDa1ViYrx5R3LeNdUO3ToZl8ErrJ2k142KxjnKpxVXCwCQnBB10e+wR2c0SWliMDI+rpiuvhPXb75MCMaJ+LrseZS5lJW6BpZvPeLDev7EKFXXOG8XsQ1x\\/xkdAX1svhHE4ooxKaibum+tJli8=\"}', '2017-09-09 20:36:16');
INSERT INTO `dili_lulu_wx_log` VALUES ('694', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuAIeBNWzJMRHUPeUVQ3mb-s]]></FromUserName>\n<CreateTime>1504960573</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-09 20:36:16');
INSERT INTO `dili_lulu_wx_log` VALUES ('695', '1 原POST', '-{\"signature\":\"2d3e39f36f29d4604df46560b034d30cf01d9daf\",\"timestamp\":\"1505081124\",\"nonce\":\"1478670406\",\"openid\":\"oWX6OuGTJkvw-Fd9rTneWaFAPCUc\",\"encrypt_type\":\"aes\",\"msg_signature\":\"be403ef11940d7399fed19386bc6919422f7c8e8\"}', '2017-09-11 06:05:24');
INSERT INTO `dili_lulu_wx_log` VALUES ('696', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"j8a0\\/Chg6xmf+xYaWaOYFe\\/Ec3qC8HcUH1sEypjLcjes88rQ0IGV390WtjNgdNgOoqjvhvFiYyYtR1KV6F0Kl5YAbbNNm987NsgEXaVBqVwEVfR6hQGxjfDsvJfcp1Q4S6j83eSd2rmdZ6lIQfh1Ps8ASVODK\\/fUWMIiDlGveO6JLbHOYHUpwSBE1gGf5G\\/LXxH\\/pdQxkg1TUMGRIJZF5cllSXFbbBkc8A4ndLzF6wy952aiZTDHa\\/\\/+U4wq9aJ\\/s9Db\\/vNit3SjeyGFMz+hLuoxHYd821LOEjWOReGMyZCj3g8Zfa1Mh\\/2wIZFh4sDd2iAboVRl0yFhqwiwQXvE9e\\/9V61SNl3XV9PT4BEHEdkK5rlWRF6EjX39GYJN6ubsbb44mzpqrZBEWkJAEra06rhsSMzuPyth3aYioggT9yE=\"}', '2017-09-11 06:05:24');
INSERT INTO `dili_lulu_wx_log` VALUES ('697', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuGTJkvw-Fd9rTneWaFAPCUc]]></FromUserName>\n<CreateTime>1505081124</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-11 06:05:24');
INSERT INTO `dili_lulu_wx_log` VALUES ('698', '1 原POST', '-{\"signature\":\"a04ac343d90955a58c2b3fe9d55cb31c4ff2bce1\",\"timestamp\":\"1505097236\",\"nonce\":\"1645304233\",\"openid\":\"oWX6OuHMe5FTWWQNzfFRRT2n2bSU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"77e3353895556999e9ebbe47815d2f241de483bf\"}', '2017-09-11 10:33:57');
INSERT INTO `dili_lulu_wx_log` VALUES ('699', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"8TWqZWOh8Fkeqh5oLyAzh1Pyjp\\/7V+Ou+L4blavEggRUfRkB8Mor\\/thmgHYZKGQ6UQ3QO35piviQPblUjfIpCkp0UoR0dgjnK5WeUjSVjEDS\\/XWe8hglqP+0stMgLtSX47z6pFW0IrXz7a0uSrhW4pOaLwN5uDg2u2q\\/AZG4A1idT9IXpK3nS2OJjn4i\\/WLlIM2yX7i1cenjhogdUfBzd+\\/cOvH\\/oRX+jejwQm11+B3UOFiB5W6Oa0rAIwAorq4OGfQUoGapcGLFbdLTw2hRc\\/d3UYAmZC2qtgOx4UsJ\\/9XOSkH7Tq+VeujcOBXUIlN00YnqgnGq8jcth3\\/J8Ta0jlQXb4Coygrii9JjYCy7HY5iV9YF0m10GNgAEOgPW\\/ADXgLRJ1+BK5Wk8wJ1CSeNNVv9ZTt8y0llREaHOMr92QQ=\"}', '2017-09-11 10:33:57');
INSERT INTO `dili_lulu_wx_log` VALUES ('700', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuHMe5FTWWQNzfFRRT2n2bSU]]></FromUserName>\n<CreateTime>1505097236</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-11 10:33:57');
INSERT INTO `dili_lulu_wx_log` VALUES ('701', '1 原POST', '-{\"signature\":\"70c39f9939b35e250b54250b49943756fe22dd37\",\"timestamp\":\"1505106064\",\"nonce\":\"811361153\",\"openid\":\"oWX6OuHMe5FTWWQNzfFRRT2n2bSU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"16e03b9a45e534301f22f75e40b9c2ca0289b201\"}', '2017-09-11 13:01:08');
INSERT INTO `dili_lulu_wx_log` VALUES ('702', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"KiScxpmHpXie8EFP2rENVL4tQQq4hf0\\/ay67CyKJLUF7qvOpKhZ2RLUmX+\\/nPBj6tT+p1wVlr9SUB7b1cosLYf4In55XEvMHl3hxZoWegGNDcW0tB8Z6psES0+MrfsbEmYwz+W2Df\\/xje\\/qmeHiRQvoL\\/\\/83inzrPBWyQnsgRWUmCegY3oHxBjDC69bXmuAT8eGvWlvyeZzo27H0g+tnl5XUutmM9WJqZbZd8I+nenTBLofoy6I6M0Pkr7ZFi+sDp\\/Akwod3p3EVM9co8OeDXVBwnJagYwheC72A3quqM\\/sb+xpxtjnkWsTxrFgVATjFZhtafKP8j+WzYPNuYeA\\/NoYbWXhN35sZfYK7aGceFM9jf8RQz5MOqtXdIt97TxR770jceXQPeFUXOuh\\/O3ask11Is9v9G9k\\/3ce5pv3VZR715cw9VaxIv2Bc+PoQPwgSiZdc2RKYwcAawYd04+aLMQHYStumazifkHldDU2HEywPmoJ9FUdq+ssWX23H9EIm\"}', '2017-09-11 13:01:08');
INSERT INTO `dili_lulu_wx_log` VALUES ('703', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuHMe5FTWWQNzfFRRT2n2bSU]]></FromUserName>\n<CreateTime>1505106064</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-11 13:01:08');
INSERT INTO `dili_lulu_wx_log` VALUES ('704', '1 原POST', '-{\"signature\":\"e6d398f930f0ae4795ea70cee61642e7177fdc54\",\"timestamp\":\"1505128883\",\"nonce\":\"458344781\",\"openid\":\"oWX6OuLvYARUmR82eoSFeLbbZDsI\",\"encrypt_type\":\"aes\",\"msg_signature\":\"3d735c07b0fa51c07bf1e904c93c61db77dc6677\"}', '2017-09-11 19:21:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('705', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"lmICbiIBk3VVRrI87o4e4VZPjfrGyBR1KmROLA3UtxnavBocL00m4bH7A3pKxp8vHaRZfXcdW1or7voXk1f9TEH7qrcl1gs1GMfsw1x8ATqDg0Z6uNSo9\\/dNbaLV3op0e+jkDL0vRLPoFfqrytEO5AH5B33UByXsX3tJfSIdB6ePOL4Q0kciXI8sC50K1B+VNpNh9gM3mLlfnvZBy1eZEmRHGgk6cwVBHgKay+5zPeQN4HIcbZnkV8B4c7swUCisgZnrIFn+DBPAWV+4zVLrGoc6pYUNp+V7tsv5fg1OnZr2CeTJlzPe20NASsMXT2xL+Vumia\\/ETIxiPYCsw+d5oeAD3DLsRgxsFExRLuB3BnejHz6PIkyVJ8lxQRRZ8a816aH47E68DzAvldrJPEs3XYV5Rte8TwacBLLiM1vlIv4=\"}', '2017-09-11 19:21:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('706', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuLvYARUmR82eoSFeLbbZDsI]]></FromUserName>\n<CreateTime>1505128883</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-11 19:21:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('707', '1 原POST', '-{\"signature\":\"92f413696b1c480d7d282b8c529a7c3a700f5191\",\"timestamp\":\"1505179329\",\"nonce\":\"223436044\",\"openid\":\"oWX6OuMh0MAnGN-E0QyP2eZs5q48\",\"encrypt_type\":\"aes\",\"msg_signature\":\"385e292ba575e6ee3f0a153fe13937818a4a40bc\"}', '2017-09-12 09:22:10');
INSERT INTO `dili_lulu_wx_log` VALUES ('708', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"shcXBDvinitls0xRxX7iMaaY70k9gCfQh1JBpjNNJKuKDEwl4+mGf0FPVnFb7Vyh59fD5f\\/M8DWjp6Qs3zq6J5ys+vHZJ+f48CPLUs74dg5Gkxf0Z61JdnnM0CggneWaIMDlQ1\\/kZiHByMsDut\\/nkjoCek6J++T\\/RAQyacRvaDf7+Boa+wU277rYfBOwEkc4fhnQTXD8Fk9\\/1qkOIVvO7zIgmrjDXwRV6Usw1GyV8EupPqbMc75vC6DgblHWRB8Wgrjeo6RxytPxgIgyUvBji9C1gkhENYpg\\/VsihYsRCgFcws9uzawoQWxOIDYxDvxjk0E9z23G8gjHlGWxNB4u0fdqF\\/bPiHCooCynRsTrMd7nlYy+3TRpIdkIgZvbqLPCfjOXcQoIxek22NOCeqO+KD\\/GdD6wavwmZVelvmGK\\/beFNKPPuU5AOs1UYq\\/J9KYKztOkHMs1Rhvl5fWh21naUUJDw6Df1+MKO+5TUqJd8GikaKPxYexNBWoo6RRt2XXF\"}', '2017-09-12 09:22:10');
INSERT INTO `dili_lulu_wx_log` VALUES ('709', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuMh0MAnGN-E0QyP2eZs5q48]]></FromUserName>\n<CreateTime>1505179329</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-12 09:22:10');
INSERT INTO `dili_lulu_wx_log` VALUES ('710', '1 原POST', '-{\"signature\":\"55af585c7fff63528a7f1f2bdfafce94705c1aec\",\"timestamp\":\"1505183000\",\"nonce\":\"743663726\",\"openid\":\"oWX6OuBlV4GzKMFayVUu0hJ3g274\",\"encrypt_type\":\"aes\",\"msg_signature\":\"a74fa2165d89af0259acbe9bc8dc5684523cfdc7\"}', '2017-09-12 10:23:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('711', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"fGg8B5sSR9CDpfy\\/AFYagpYFGYZmum\\/YeEN4HluUfRZd9xd4gIp8cEJ\\/\\/VrAEYlO5CkCPWfDKz9mmd9hN8jijaRglp9wD2pntMDeSn3FfpIwMKcyK4ZtoSClf+KlRdyTo4yASHyg2Z62qmYk\\/EkXDm4Rz2hUXwjaDAFCT\\/ch85OmtWW6Od8djLadoPLeyq9ABlri1Ao91bWiT+TFQg4FYKHd0HbjmF0Q4pLCqYumRBnFbjg53AMBlLAkWFlYFTVSvsNrflm9F4shLvDyNe3VGJIqYKFcFTfqLqaiwi\\/P61Xa\\/v4XmrkmPrWuDPOObMkshfJX1JT7fNyfZmUUC0iu++iE1nNaPh+hpgzHrx++v5pv2yIoTtuxd2Hi\\/hsadvVw8457ihdaFeY+eKdGEe4Zt0y1D18nk5QxlnjhjTJ\\/4MM=\"}', '2017-09-12 10:23:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('712', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuBlV4GzKMFayVUu0hJ3g274]]></FromUserName>\n<CreateTime>1505183000</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-12 10:23:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('713', '1 原POST', '-{\"signature\":\"e5523a15efed60bd54ccd9b5c7a2d4f8a3c1909c\",\"timestamp\":\"1505183014\",\"nonce\":\"796642121\",\"openid\":\"oWX6OuBlV4GzKMFayVUu0hJ3g274\",\"encrypt_type\":\"aes\",\"msg_signature\":\"2b1c5f0f40b31ce7823ca81714c79bb976e0ce28\"}', '2017-09-12 10:23:34');
INSERT INTO `dili_lulu_wx_log` VALUES ('714', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"OkcyptryK7S4PC\\/jn0s82E1ws0h7SDt4u9YYrMIrY20tijgKzsmBCevnAALp\\/PDhQeZd6eydMfRWsvuyzEJAZQCD5uDb2lRtChpVjNXkgHUyCEONYt175nOqXWfUZJ4EJz2bRgro0qjjE8VFB4kCAFp9uBGxc\\/04Hq5p3Sgth7t8FOESswr+NH4P7YE9W535L2QiyLIud8jNmCq7fGrpYPG4WmzNJdQdOVySkyjdDJuSN51FbdmAYCP\\/nF0jumoQ6Zks1anp7DvW6oWoQ8qDvjnGxQ+9g8FU2hEtSVEZJdrksMOfA2YwJ7JX9b0sgYYTqL56U0zwr3M9OKlRgjIfhToyoTlwubdPpySWeoNJLU1TtSRJj1rDm35dqfHDE++79Iat4ed2emkaCoDI9SsDmFkOCoEVr2f5FsW8tmbCZbxLdLfYwiD8eAmenr3VhyoG+vo1vKEQnlmGEncCvW1ncDFc9AiCsTj0caZUHCrWiH7JOmDlYneTzufTuZaRFAAf\"}', '2017-09-12 10:23:34');
INSERT INTO `dili_lulu_wx_log` VALUES ('715', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuBlV4GzKMFayVUu0hJ3g274]]></FromUserName>\n<CreateTime>1505183014</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-12 10:23:34');
INSERT INTO `dili_lulu_wx_log` VALUES ('716', '1 原POST', '-{\"signature\":\"fa34ad5b958dede03ead82058c2994d5c7b5af41\",\"timestamp\":\"1505190846\",\"nonce\":\"32413443\",\"openid\":\"oWX6OuJFZn5anPyTUXV6mgquDlr8\",\"encrypt_type\":\"aes\",\"msg_signature\":\"ede22ed684dcf79ea12cf453bff54c49b79360ae\"}', '2017-09-12 12:34:06');
INSERT INTO `dili_lulu_wx_log` VALUES ('717', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"V\\/h+SYobb9OMOP+Q7Cwf5uL\\/8Ek7olVRQz9ovw4nMBozS3TMhE+7dMSBcgzbvRDj90oC6vZJMzhiStCXNKiv92dAG08XHvlQGb18uqoWcitICIfsvOBgQg02Jtq5Aec6tZ4PMAPL2jikV5LDCupFaakbd5Kibkm0emvh98Y9BifqIXqmtvBvOJn6uq9B+\\/rsTVjC5cB5lDcAPL2ozr2\\/BsdpjUOLmza3YhpTmOoWNza\\/wkONUmXISa3mn9KMK7wtqIF0X0LZ7uW6IdQ3ighMN1i5siDgEwZPJhcoA\\/Qx\\/UZMUiyHTSqjlvsubczOOEd4YukO55sLKKJnyDZkzl+BJndsRF\\/6sSAhV7WwCm7jOn4ZR9vN6Ot2UyzNkkLvff1Izf5l1SLv4+antx6615oPiz0aTBCXpGgyEJt2+97vgy0=\"}', '2017-09-12 12:34:06');
INSERT INTO `dili_lulu_wx_log` VALUES ('718', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuJFZn5anPyTUXV6mgquDlr8]]></FromUserName>\n<CreateTime>1505190846</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-12 12:34:06');
INSERT INTO `dili_lulu_wx_log` VALUES ('719', '1 原POST', '-{\"signature\":\"462e7da8e6c44a996c89ebdf931fedc2c5656a19\",\"timestamp\":\"1505190877\",\"nonce\":\"1846149680\",\"openid\":\"oWX6OuJFZn5anPyTUXV6mgquDlr8\",\"encrypt_type\":\"aes\",\"msg_signature\":\"e2f3f6ab8bfdb07bf0b0114c05f3999197f48164\"}', '2017-09-12 12:34:38');
INSERT INTO `dili_lulu_wx_log` VALUES ('720', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"andkJEORqm0LIuHLcCHijO3jufA40M2fGkJYFwEvzrvuhMPuiR2uAcDND3MlkNz1TY4QdTGUvNuiVkPKZB8MCFYtAyibz12e15plH625RF6M6zfUvH53oRfE9TbXreqiqxAp23xWye1UnpcQY5K59KeWA1y+rUzsTYzxuSlHrsIcM6qCDmziwDTdpHaMZIbDgiiDVOzyxwwNKHJdMQQtr5aE\\/v7wVFQdsn14\\/4Q9rfBw\\/B13mJMa5KtrdNM5jOC6aSRactsBsf0\\/mirxMPMD784mEu3j\\/irth7x5VGnGBWqsiFqGrVNXP6e1\\/VJ\\/9aMK4WKbCIDgMhiuWnKly\\/cnmHyMObydOFiv\\/Y9R3PjfNJTHam1LDhP8JMJpNfLfgDGdhSNMGnT2OwQXawt\\/zIpd3NF8I3JCiglcMhzf46p06U0Xg1uHt1tuXfUm2OAVjMtRFzkdzBeGJ9Nid43dMJbDangSKmQT0TTMsq2dlGOiN+nGk9YvnD5QiHkMcgteCUXY\"}', '2017-09-12 12:34:38');
INSERT INTO `dili_lulu_wx_log` VALUES ('721', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuJFZn5anPyTUXV6mgquDlr8]]></FromUserName>\n<CreateTime>1505190877</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-12 12:34:38');
INSERT INTO `dili_lulu_wx_log` VALUES ('722', '1 原POST', '-{\"signature\":\"c694e990d0e7a1841d4e9edc1af7f33cf5e957f2\",\"timestamp\":\"1505228059\",\"nonce\":\"1014373994\",\"openid\":\"oWX6OuIaIuSWBv4Gr-ECzp8-xqcc\",\"encrypt_type\":\"aes\",\"msg_signature\":\"362eb66304deaa5102cb17574cc31f30d567c20a\"}', '2017-09-12 22:54:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('723', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"MguhKjWUZfX6fHuYtOpTvS7mcJBODHsUS7g4V1bWOz2LEKCByLb5wp9QDiWEIykqZ2YfKPyI5WauNqHbIs2zx\\/pgKcmRE3zjLiDUS98TwlZ7aOHOHuxyEDtcEGkn4PQMpFaUZbvwzZ0RNQOdhQb8hCU6pjU\\/3+IbhapIMcvAwkGL6v3L0d12RQ8sL\\/k1E1sIJKM4245Pm2Va+1hfsk\\/RLD6J9KYtf7Twky5kYdyGaUjuhxCuuVjPTEaSjagaN9cfi9oLVHrUSbJ+gtDXPf613ov4KergsYwhwAqfCFMLsmboopv7uOks36WfjXxe8ErCyT60lIuELlbUEvlc8RAnaQACif26T7LuLxvVzyEDgaAnjCkBEtlBhKnC1AM56fllnAhAOOKXoLw+0NlT7RLctDZMqryQ2W4oOKUeFKS8i2c=\"}', '2017-09-12 22:54:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('724', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuIaIuSWBv4Gr-ECzp8-xqcc]]></FromUserName>\n<CreateTime>1505228059</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-12 22:54:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('725', '1 原POST', '-{\"signature\":\"4f8008709ee54e7ffa019a437d92cafeff79f149\",\"timestamp\":\"1505252350\",\"nonce\":\"2105018233\",\"openid\":\"oWX6OuD_E2Cd1HKgdNhcQJT7G6V8\",\"encrypt_type\":\"aes\",\"msg_signature\":\"64321d2b8a1991e9b97c80a758c3aff001836701\"}', '2017-09-13 05:39:11');
INSERT INTO `dili_lulu_wx_log` VALUES ('726', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"eoMo8VH7I9sd18qE4AOlV+N\\/Fxe+y\\/bR4SWoNl6KCQFdeUbv1hJw62uYvAoVVqiKkoEAXcsxV+T8hDaXCUPLE9yV4GnCaDBm636KKQLu30vLaFmQyiW1iPocaMt3y9B9lB0\\/MnrvHGlvzJ0Ciaxy0I9EANsTcw8\\/75QYrNQjs9bThTRdSH2SKe+DEcqwPzx84h7HAjGsgGa+sbupvSJ535Kk\\/UruU0PIuia7QPHQJtnQjD5ddjhi0TfAJeTfeEOM+SL9Fgbv25vH2NoaqtG6vxAIICwxNIX4VJCHkRB9DgawToVZL7SjUA4KA2uyiza6iG0slsB6iqoGphcmZyocpANM3ifrDNCCnEjH\\/kyHjZY7EXQtAyWs3wYvjLh3UBMgm46MiWUscn7x3D9YBvjCsPQE1hHiUlCQsbFbYxM9Zvs=\"}', '2017-09-13 05:39:11');
INSERT INTO `dili_lulu_wx_log` VALUES ('727', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuD_E2Cd1HKgdNhcQJT7G6V8]]></FromUserName>\n<CreateTime>1505252350</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-13 05:39:11');
INSERT INTO `dili_lulu_wx_log` VALUES ('728', '1 原POST', '-{\"signature\":\"f58f294d51aa7e80510e5f7e86d55b62a5e6a8a0\",\"timestamp\":\"1505265354\",\"nonce\":\"231063429\",\"openid\":\"oWX6OuCLu4qRWLNgTaYBiJZcC3Y0\",\"encrypt_type\":\"aes\",\"msg_signature\":\"6dc555e49e49c8861b1b9fc62deb0a0afe495429\"}', '2017-09-13 09:15:54');
INSERT INTO `dili_lulu_wx_log` VALUES ('729', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"9iBOX5wZwbFChYu\\/\\/GfaRu4k\\/A2Ep1GFh+7ajQ6OqqNPHcCKySGKaB51Ri8QmHgTCojcy1IVe1SDZD+immG78GeUrXqsBuN1\\/E1Lx2Ksx1vpzOStYivtFuTTZcmnG193f4dawbxKHB9v+C+tx\\/HniL9MXCBWF5TlD+UZoNpnRLmu9mZgOKVqP+jw9obEg7LXtvLDwCKwG39UJE17PfFP\\/BYN5t4r4QXATOIPWKEmV8Q0HWDb+OuB1blEAidkG46fpykxTCCuJ5vv9UTGZPXlyq\\/GTClznFLeARwpBhzBQaHpETt5eyF7kV8G9hCbFOmw4\\/2s2iM4zioXeyr8yWHhJYJ9pJ4RMU7QI1j\\/ju\\/Zq6jA+0upqglpxN53YWTUrp920zjNUQTr\\/99gEFWg076yzOsJwjXuGdAJbdg7v\\/NiAkU=\"}', '2017-09-13 09:15:54');
INSERT INTO `dili_lulu_wx_log` VALUES ('730', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuCLu4qRWLNgTaYBiJZcC3Y0]]></FromUserName>\n<CreateTime>1505265354</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-13 09:15:54');
INSERT INTO `dili_lulu_wx_log` VALUES ('731', '1 原POST', '-{\"signature\":\"17a566e032c1a1e60578d5120aa6addccb9760e3\",\"timestamp\":\"1505290006\",\"nonce\":\"2105255210\",\"openid\":\"oWX6OuDVBwTgZXi6RKUkuw1pEsZk\",\"encrypt_type\":\"aes\",\"msg_signature\":\"3614cd95113263c73c4c639023d3f33889946038\"}', '2017-09-13 16:06:46');
INSERT INTO `dili_lulu_wx_log` VALUES ('732', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"6Qem\\/F\\/Rxqy0Qm8NtYoK+X2gDPboQD+6Q+xWmJx+W0LVQ3o1sbPdLlVxhvxngn\\/OzPLm4X3DfHTgJ3ClWCCgofdVaA5Aw6UWx12CSLSYi+hfH1j12sxnhSd3L6MXaEgo3bXctTlpoDrw01aXwvZZ5lS3V50y8QfTMh\\/CbGfWnFMzkAULeAcU55PMwImrSJpTJ7KurwUQQAydFH+aaT4r6+g55kA2y\\/ndjmMoQ9Vt9uesNxS\\/e5csKxAUESGNFYfXmwvFU5WBpljHINWWrVu6ICGEv4M1QvykO+f3fiyqU0UFLVxFfqeUxlGPfeyJAVxIxMi\\/l\\/6vnfH+i4cl22BkWv92pYXILCOxtnaL\\/RF58BGhsaGj3T475EWm8lFoC3h14GA5td3EYNuYm5MborS402jPcsU4cEeRKYALpM0UsB5TPzDQ2VeRwqfaYlCNKIE+0zGptpCwjhy4\\/2HJNaYkLsuZWWC6O5xWLWOCK1yAb\\/Octtl0kehyTqL4LTS+NO6K\"}', '2017-09-13 16:06:46');
INSERT INTO `dili_lulu_wx_log` VALUES ('733', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuDVBwTgZXi6RKUkuw1pEsZk]]></FromUserName>\n<CreateTime>1505290006</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=754]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-13 16:06:46');
INSERT INTO `dili_lulu_wx_log` VALUES ('734', '1 原POST', '-{\"signature\":\"6741aa505a712d7c93bc357fe5104a8a8e59473b\",\"timestamp\":\"1505290047\",\"nonce\":\"1989120017\",\"openid\":\"oWX6OuDVBwTgZXi6RKUkuw1pEsZk\",\"encrypt_type\":\"aes\",\"msg_signature\":\"2e10505589845b79bc497c99b097aff1728c1482\"}', '2017-09-13 16:07:27');
INSERT INTO `dili_lulu_wx_log` VALUES ('735', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"fNp0mpzgfUwJyBU0W1bq5fitoIET0NDzfLkWHRj5AMfVfbvSdB8uoMXaVIFH1xguVuwsddmok0uqoJL7CREA9zDMfZt7NxhN7jOT7nnpMj1pL741MbCHQF91y8D6Vu\\/0GzYS02+GHkRNlXahpfQSc\\/9SYo\\/IeJ\\/tpp4lIfelf3HV5pwSxGL7uwds7jKpATLLjgEJfF42Z3CCj3WPQj20wkpCKjs0ooKzHQZX6rZ0at92Jw+eFNCUom8MrSM34i8jCwJcpJXrWfY+IYkFziQYb\\/BXTj5Zi9e3gs3vKA\\/CCyX2lpSiF7NviBbaWrh4lOQgOUS8wPofgK3jMD42X\\/yuoPYuOmrywJreFWu5ANGGXYsoipk9FmnrTHWdLB8bsmulQYDgEKov3YXJSOTMM5v2dqP3ubZiGT+6pify1k7SZ6ducDSrl7OSrmPnQaSla5E8E\\/tP+PQotwiH1KObTuarH3J0Pkz8UWAwvWk3sEvyeI8xQ0VnZHjZuI02N\\/pGD\\/lB\"}', '2017-09-13 16:07:27');
INSERT INTO `dili_lulu_wx_log` VALUES ('736', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuDVBwTgZXi6RKUkuw1pEsZk]]></FromUserName>\n<CreateTime>1505290047</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-13 16:07:27');
INSERT INTO `dili_lulu_wx_log` VALUES ('737', '1 原POST', '-{\"signature\":\"779d8dac9d0f5bdd20be685b7976fec3d91f07b5\",\"timestamp\":\"1505307683\",\"nonce\":\"1095328618\",\"openid\":\"oWX6OuEvzQ0elWtNIvvOAEPyGGg8\",\"encrypt_type\":\"aes\",\"msg_signature\":\"1e726ff9a52fbf07e372d8d9c3c65efcb5b596a4\"}', '2017-09-13 21:01:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('738', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"XEjKOiRc9I5EBJhyeQgP6E3H5wQJpgp+58Y\\/z9PCXeWolcTfgtBt\\/Mpa+b88Qqz211Q0Q+f8y2WF2b0CCwms6HxudWsYCQGbgekq5l+ZnqheaSw6YqQcl8Rto8rfXWYYxqT1v8NXgTx43oC0jcVO1+28Jo8urMXB5DJMv9W7wcf69AEXl9c11yLCFtouX7WUloI0Q6oOMYls23hbCBiz3J8zX4Cog+XQ4mN2nDuJ6E1HQnllsvuLFEXhxKA8+he8nKWCrJKqjqo50RUKKph2LpFXqdTkFf6dXjGuzhrzXRevFPHot5r+HS2gGzr0joKeURJBtri2HruHIuK+nL19rDBSjrmc0oL3+JLcxvcECGNT+FD2VN\\/lTmDKG4rE9Zpgof6WtbPg8q5DKHeNRpgk6xpsWFtYn\\/EUOWuSfvRCwJ4=\"}', '2017-09-13 21:01:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('739', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuEvzQ0elWtNIvvOAEPyGGg8]]></FromUserName>\n<CreateTime>1505307683</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-13 21:01:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('740', '1 原POST', '-{\"signature\":\"30da29d6e2c8a38e47a110278167d70553ec3887\",\"timestamp\":\"1505316549\",\"nonce\":\"1533272309\",\"openid\":\"oWX6OuEvzQ0elWtNIvvOAEPyGGg8\",\"encrypt_type\":\"aes\",\"msg_signature\":\"ed45449b9a8f8b0d0e2a8b998835b7d1ce74ee78\"}', '2017-09-13 23:29:09');
INSERT INTO `dili_lulu_wx_log` VALUES ('741', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"0G9gtDimS9D2IcW\\/ChwAMmVBKdPHZYRqKPbE0yaHIFO13Pp4tbaMP2kt5Qc6VUQV3lutCBL8wk+EA1Bsod024endwu4ndAKMkoy8fA0eMgsJcXCi0GBnoERSAeqM0YaRIi6nR8IbTBLay5H688cph55OOA4N\\/hDSBBMiA6xHMsJy4w\\/3XMcsDtVZO\\/XPOA4blOE2p6MJQa3jzyzFeQGToSBgZqWkQ+3veliaQDxpISrVmB\\/vG\\/pyFgBcr2YxXX8WWRMymZeb84AWluH0tr07F4MSf+QJwMlX0\\/JHXWWsOxCRSGR1pGZEBlIpqcB7f6E4XEwjqOWjxXje5KA0iyP1xO830a1b53WQtwnvZL369MvdZmLR9xFuFJWb7jTMIMaERAmPPg+7+Vg0ZAl\\/uCn3kA9kU5UVl1D+6yd4OnaU6U7jSkfZnxQk3jxM\\/k7pAUtOoFY95CwDfDAV6EJoITTTF8a7y6EQJu8\\/ZceHTDDJm7DWJoh1BDMKyojzxTSpplzI\"}', '2017-09-13 23:29:09');
INSERT INTO `dili_lulu_wx_log` VALUES ('742', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuEvzQ0elWtNIvvOAEPyGGg8]]></FromUserName>\n<CreateTime>1505316549</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=756]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-13 23:29:09');
INSERT INTO `dili_lulu_wx_log` VALUES ('743', '1 原POST', '-{\"signature\":\"94437c6c0988a8c91f56602e8340d5ef77eac129\",\"timestamp\":\"1505440553\",\"nonce\":\"1317778276\",\"openid\":\"oWX6OuDVBwTgZXi6RKUkuw1pEsZk\",\"encrypt_type\":\"aes\",\"msg_signature\":\"ef205ea84abf9da23a5ac4dea40555f48bdae26f\"}', '2017-09-15 09:55:54');
INSERT INTO `dili_lulu_wx_log` VALUES ('744', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"\\/sQCsffdwV6Z3j6atG9dTFLUEHyYcsAwrFetOhUXEkP27QT05zj99wsRKEl9zc93uD\\/5BhdhbjiKJb0C9R7ujt3FOdoAVlbBhtRXuNlxw+jHanAYzbsvAS6QOK\\/irGv73l0tapNiNYWU\\/4eet+m0fsImbkBtWeV+jZpDkc491ANe0Bxgud0eofU\\/3DL2N8lFVMg8l\\/9YwjZLdJinwJPDOfpL8fBjcA\\/O3wxmOGsKx0kl8wTg3\\/zwRPvZ3\\/PDFxEZdhGrfSh7F\\/WwB5TLZ5Dq1cZzF5T5IL2JYfvtdS+6UndemwaMt1NOtgxHTAD+KvMTUR6\\/YC0vKyOtKlI4A7+8lSlGYhYigRuMJ0EjsS+ZF16Gm6dEZEF0299Q\\/wLJEJMjUanK\\/k72N6kfjO7mLs8ilhTEo2oPGJP1iIzuZ7Ad\\/eTMd3I8Eve02wj2ZDWTdh4+jodmjS9cXNd\\/RrmyvNU8vpG3zTUJsgCfss6VXeRtTNE44OqR+Oa+P2A0KPc6ANdX\"}', '2017-09-15 09:55:54');
INSERT INTO `dili_lulu_wx_log` VALUES ('745', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuDVBwTgZXi6RKUkuw1pEsZk]]></FromUserName>\n<CreateTime>1505440553</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=754]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-15 09:55:54');
INSERT INTO `dili_lulu_wx_log` VALUES ('746', '1 原POST', '-{\"signature\":\"5b75a6b5a74e5ab2a871f1f03f63cca7021eda6d\",\"timestamp\":\"1505441654\",\"nonce\":\"2079070028\",\"openid\":\"oWX6OuDVBwTgZXi6RKUkuw1pEsZk\",\"encrypt_type\":\"aes\",\"msg_signature\":\"84db724d9c4bda1f84fb066bc4e4def8480716dd\"}', '2017-09-15 10:14:14');
INSERT INTO `dili_lulu_wx_log` VALUES ('747', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"ewvGDQSMG6L8x2\\/MBicKCkdNHpg2tseplhmbLE5WzTNc1zKvoo3X2Iq3DoOooyzcCR9+5mLhQizUG++T\\/8ECH0DOCLnRfkLfFowxQ4ZFrx\\/DhJ19jkUNpmjHeHFeHdNhLv3PLgJRBpD9b4zrujS7jnuDx0ktDuvWKPjhP0FaEmMCZum9YdiPlrl21gGiH3uiHleiCRNnQ22agLpEldlUdGy\\/6UL1RiD8gBXePmwpXbDH3eyMFaHt82rCydWS6Vqt\\/WmtZeW4+nah\\/euxdUqcsoKv\\/sM93Yi9xcgq2ddysENE6wyMuvBXO2HkYIXzbivuf94BcrV29uJ4aj+IfOU1s8HHYGy5qYIaBf5DqTZaQNX0KST3M4\\/9vrDo+wrPrpuZeyqdrNCHPGKeUJiFRqrJvYGy\\/QuYX+JH9Cl06AqWLjIONrZ1YWK8GYpD3tNALaK7qKvWxoJJ4f4cqKVybSsGqJKQkkD50p9HcFxfcj1I8uZYhKJCw1161ceSpOI\\/sjot\"}', '2017-09-15 10:14:14');
INSERT INTO `dili_lulu_wx_log` VALUES ('748', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuDVBwTgZXi6RKUkuw1pEsZk]]></FromUserName>\n<CreateTime>1505441654</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=754]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-15 10:14:14');
INSERT INTO `dili_lulu_wx_log` VALUES ('749', '1 原POST', '-{\"signature\":\"f212737b055ad650bc5dec43f87ab568b641ab82\",\"timestamp\":\"1505613264\",\"nonce\":\"97804179\",\"openid\":\"oWX6OuFCz49qxVMWXnJ9Sx_EK6f4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"1e7475e5d22aaf3d0de373633386a40f6373bec8\"}', '2017-09-17 09:54:25');
INSERT INTO `dili_lulu_wx_log` VALUES ('750', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"GqWmnvmYBOUiTmg6\\/1N2bsklNWs3inOATiGvznR6K7dLYnfJ0EGAY5M7u5j2ha2OK6X\\/DCE1yq3Adn7gEp68PttpqMqnc6qk60grmZVJYgZATY4A\\/4lVyISarmUJCXeakjRU6QjiUCxr19DfciWD3uvR7s3HGUu4pTH74B2dX6gHH3Phz6J5v5ROoeHWCOcD4ix76QEcUeCFlix5jJj5BRY1PLbMZ1AwITtRSgfwUgy22ysL\\/Ege8VTJPr9j92XOKbFUawg8mQwJCCgA+UTaWy9ouUmZZ6P8lzQ591euyZ+ajOsKZ4sSQ\\/S37\\/9MiVI3JTl1rc0LlHrJhu2Btx4URGS1N\\/NuE\\/7eWLqjc1BMAOL6cEbp0HzTw7UuD4dJUvf7Z0a01ExxIORvNXp8ta3a53qinYEf0\\/J+Xl1qZuEyGKI=\"}', '2017-09-17 09:54:25');
INSERT INTO `dili_lulu_wx_log` VALUES ('751', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuFCz49qxVMWXnJ9Sx_EK6f4]]></FromUserName>\n<CreateTime>1505613264</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-17 09:54:25');
INSERT INTO `dili_lulu_wx_log` VALUES ('752', '1 原POST', '-{\"signature\":\"7f704c139e474c4cdb3fe81efe66289fd1ff5bd6\",\"timestamp\":\"1505613282\",\"nonce\":\"1378206847\",\"openid\":\"oWX6OuFCz49qxVMWXnJ9Sx_EK6f4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"228f735ecba2a9f54ad111b8c70dbc7a84a1a413\"}', '2017-09-17 09:54:43');
INSERT INTO `dili_lulu_wx_log` VALUES ('753', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"kaof4RL5KF5hzJn0xqtccYeW8Cj7Cdxv6S4BvnFFkhZivWoVGjUwumnk8Ds09lR3GwX7CvAhevcHpNUSm5hCy\\/0vg8IFpjRTUU9W4ArHRsJPP3ZVvBPDqNTCI4SJ8LOq7rkihsAz18uxYp7tCRZge4bSOv1CPsS8biKaMqtZJIuiqO3kDZXZv\\/hvoivyGUoRjXR0Z+EWcJlCML1IfFfMTSDnTx6sR9erPGaWksJWERbUxH4DIEhIEh8fWh1Ck5zbj+nz6Emsst2FZdbyCFeijFLTj3R2p5N73HOCe+VINkV3pGwyUe3MFG0REn\\/SMRBUt7sUc6Zfnd6FXHOWR2USsUubQgsyvQJ4ihFRwEJbdNPgSepEsakenJFaLxvGr5gDFPffboQwoyeIXP7eeKVv3DvE6OcL9QxaQpCe0CQ5wukudxHiHUqbmzUGL2RNPtk6KS+Gl6T1HXSuGgn28OuI0jxaXl\\/FTMyWSU\\/1Z4zByxpQMfL7akmx4T7XBNpm\\/qlE\"}', '2017-09-17 09:54:43');
INSERT INTO `dili_lulu_wx_log` VALUES ('754', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuFCz49qxVMWXnJ9Sx_EK6f4]]></FromUserName>\n<CreateTime>1505613282</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=752]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-17 09:54:43');
INSERT INTO `dili_lulu_wx_log` VALUES ('755', '1 原POST', '-{\"signature\":\"0f116be3d1a9b0e212aed2f69b267ca8f6bca149\",\"timestamp\":\"1505615165\",\"nonce\":\"168409513\",\"openid\":\"oWX6OuFCz49qxVMWXnJ9Sx_EK6f4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"dd0ece3837c6439ccf4e7b687d0296d2598ff5c4\"}', '2017-09-17 10:26:05');
INSERT INTO `dili_lulu_wx_log` VALUES ('756', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"QVrqRw7EntTa3uaYE4yLtV2cOK88LiR9jx2aGtNRxKGHLHoioFr+Pj21ieBYhgjKKPtwnmhNglKhb4fkYJirRctBTkz\\/TP03TD5IRR9cXzeughs2R8bcoP7OzyF5Dg8xALRievudKUyVHNYmYZmM2Ebu31KflDCgxpPGk\\/wHKd+dIHeRFAcwVs\\/kGtZxx7JoIYfSdKpuhfHU5L+r+RrdmNB03RfxzQ37p08hlf6U+g0Xesknptkzm2o3evkab0SO3QqjdUDY0DqCbtS\\/OkvJJmbpLohaQvgzk3Pt4BElgV08u1EEsLKUsWVIoqfBFKuLkZDru6f03X8zoXN+DmH1BmSS5NUDK6yNaWZUWkMDdDzZoTINSHx5N54EfLyEp6Zn\\/EJL97IW86eeTjjBcbdod1V1bDZOGs1yo\\/nklJaF4abQoY+a2uC82h5h7IWhVXIHZqc+55\\/eui\\/1bbuF7hV43Au+3a+90kgyJcupyY7wwyRM78c4z7TNxGx7eF4dnTYG\"}', '2017-09-17 10:26:05');
INSERT INTO `dili_lulu_wx_log` VALUES ('757', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuFCz49qxVMWXnJ9Sx_EK6f4]]></FromUserName>\n<CreateTime>1505615165</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-17 10:26:05');
INSERT INTO `dili_lulu_wx_log` VALUES ('758', '1 原POST', '-{\"signature\":\"5656ef83a55a490856ea8a3b5c3853d4811a02d7\",\"timestamp\":\"1505643292\",\"nonce\":\"602956776\",\"openid\":\"oWX6OuEWl7pbnqmOsN-cFicl32Aw\",\"encrypt_type\":\"aes\",\"msg_signature\":\"f77ee7e449c4ad7c99b7b51683d1cf869cd0f2a5\"}', '2017-09-17 18:14:53');
INSERT INTO `dili_lulu_wx_log` VALUES ('759', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"PWIbpkMofET4UjVBu4JQNtZViJN5HfsCH0LZqr95wam0CYs0Isfz+HQeYfQVCrDMHFbWlwTzz6s7XDSNtcYbLdzPc6ahj9bNioW3OEj00Ina78fIxDtldcO\\/z9eGXgB2YfU2c8AjEatYdEaZGewc7QgTAb\\/B6nCGT8g391uaLTBdu25ws\\/XIJHEfTdPseJxbwO8+uELo\\/7TZZbKdOEOXFyum9yETeZtAKmrnSz502w+LEWnUj628DQzxH8Mm9GNHK\\/3l8fSfO09nVKuPSfBXKM1e7k8zTI6Hbz5UY\\/Dgj\\/WZ\\/W3MZcX69I8M4LX3PByteL1g6hZK8F7qeCLEzExmMne2fE2AKludat73055OQjyh0r7PGh7zUDdQhUTbXsYFVnHQbawpnycl7RLZlwF\\/hmCBkkI2WiD4rx+MIOYLlzlzIuAcd\\/fjWxys+pd2tmlzco88Kfh98tnmbO6uFQc31vfGp7+c+DWWtBOYMXhtj4NGcHs5XgnSnhSGlM91R6o3\"}', '2017-09-17 18:14:53');
INSERT INTO `dili_lulu_wx_log` VALUES ('760', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuEWl7pbnqmOsN-cFicl32Aw]]></FromUserName>\n<CreateTime>1505643292</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/list.asp?info_class_id=132]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-17 18:14:53');
INSERT INTO `dili_lulu_wx_log` VALUES ('761', '1 原POST', '-{\"signature\":\"862bb00cc8d38ab30b3fb07c6f37c80625df2d1c\",\"timestamp\":\"1505706383\",\"nonce\":\"247658064\",\"openid\":\"oWX6OuBpnOEkmODxbNHl34mLhEpI\",\"encrypt_type\":\"aes\",\"msg_signature\":\"d6bd1a480670287b377b694bcae88999e4b9d475\"}', '2017-09-18 11:46:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('762', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"VVJVvudruQRmDjYf1z4NNoGjwPcfsJvL\\/YLTKBHw3HFJOcdd0N0wN\\/cJYFACl+BD71tSqOwtu9I6ZEcxKO0AyJJGeaA+JRZ7xlRaTFPc2os43C87o4JXORr5dcEXz\\/4z0r4Iy5jDSOxsKnUG714eZuvh0ClWiWes7Pax6SMAP3Lk7YaEyp3D3rUkANCBnfumHtI5AWnnDWT5iUSgX8CCUbLRkihi3\\/rkST4kGBjH5W5l1DKY68jiOQYFg5Vba7IS4i8EmuDjSIWY6oAF5ads1EJUEKIpJBe0S8GqAFbB6ormSHQn8D4ItiZwdXWjcT8JTScg8WlMc4hloTFGpzhvFpqeX0qhoZ9Dt7ajwqCwYWVx8mpwTiPgxZBhe4jnqnn5NnjXqdzl93D67YrbGQPt2Z3MkoyCZAlq+NmaKoLoq7w=\"}', '2017-09-18 11:46:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('763', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuBpnOEkmODxbNHl34mLhEpI]]></FromUserName>\n<CreateTime>1505706383</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-18 11:46:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('764', '1 原POST', '-{\"signature\":\"5283b1ae8343e50b761d59ec3911d199d61baf44\",\"timestamp\":\"1505706397\",\"nonce\":\"606712536\",\"openid\":\"oWX6OuI3HwqrvpBzuftvbccwSHbY\",\"encrypt_type\":\"aes\",\"msg_signature\":\"d7660482e747874a01a1a1723d29d092c2620476\"}', '2017-09-18 11:46:37');
INSERT INTO `dili_lulu_wx_log` VALUES ('765', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"9zt8uGIHzdwzabxZwe5VoCBVlTealdg4LBv5SZ9NNvLND9J\\/ufQYtHdYnK+Ye7M8lsxqM82cIleCr0WwfAbdKvIJY2fb7JnFOC6DwbpeR8urRsySHKuIJuYspbZEnuwrQztwNMPyeE2bLdt7hi\\/4Y0StfJjspxanSo3p0moLaVqRMUFfbbH14Na4l38IiMmMkv8cbltbvWR+l1jL2q9v6lU\\/UdQsjxXl2FI7EL5\\/9lLp9iHYRZWZq7LwwfVNtRtb\\/C0DgevVM7vYwQRTHrQOjL\\/XtiLEBB\\/v2cvtHrJ4M0LN82SNBclwhMFUu3wKX1o7Tf\\/2WpVUpA39nf5fpl0dfB4N7szn2RW2WbIG+DA2Ugq5d4exASxn10y\\/670kF1AnXjKAXdgJCgfQ6kDwRZYvB+XMA0Sk8PYxCxL8Ol4VtKM=\"}', '2017-09-18 11:46:37');
INSERT INTO `dili_lulu_wx_log` VALUES ('766', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuI3HwqrvpBzuftvbccwSHbY]]></FromUserName>\n<CreateTime>1505706397</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-18 11:46:37');
INSERT INTO `dili_lulu_wx_log` VALUES ('767', '1 原POST', '-{\"signature\":\"4d6780c4b6e305b3ae3ceb12be11fa65b44425ae\",\"timestamp\":\"1505709360\",\"nonce\":\"278288904\",\"openid\":\"oWX6OuBVh5zY87JHrLjq8CaFOnjw\",\"encrypt_type\":\"aes\",\"msg_signature\":\"fd6584b78ecdd94d064799bbeb6127271538ed7f\"}', '2017-09-18 12:36:00');
INSERT INTO `dili_lulu_wx_log` VALUES ('768', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"BT6Khpi4lVmp1MWxIc7Of8T5PcsISvZL56lx9IcduTdWHvbjircXNqeKsbds9cD+y5fEvpsDJmD9bf1pU4+pOyFfpoSWFHeXQiiuvhUrn9bymDxm488gRtiG2eueiRS17+BbGLlcWDePokGzrsslW8bGbZGWJCLOwtgFtlw7SMidX3KyXQF471WPAEtiA5Cal\\/GQIjnayghYcz0CG3V4b4edb46pggMk5FB3zYkRBGphZZod8GN5IURZD+MWLtCvWJmwbZg4T8SZlSseEahprgBmXiR1V7ComTG2KRq5hsxccpVBMpjhhDoGrBLl4qvruIqy1\\/LMc6VpmOpt0NSEHnYKqta5W\\/JCZSgUlY0SzEf4DFOHMnbIx5Xvn3j1u1\\/sP5ufIVUQnm8WA+xRzBpkGstQ6TA+eX10\\/QCn0nil1rE=\"}', '2017-09-18 12:36:00');
INSERT INTO `dili_lulu_wx_log` VALUES ('769', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuBVh5zY87JHrLjq8CaFOnjw]]></FromUserName>\n<CreateTime>1505709360</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-18 12:36:00');
INSERT INTO `dili_lulu_wx_log` VALUES ('770', '1 原POST', '-{\"signature\":\"1e1effc1087303c56e48d18efa1582671324904f\",\"timestamp\":\"1505779343\",\"nonce\":\"769040313\",\"openid\":\"oWX6OuMYdYgYe3uqNx0Jx2cuDwr0\",\"encrypt_type\":\"aes\",\"msg_signature\":\"cd3bd0d5eb70a77b1a79726f230addb369fa466e\"}', '2017-09-19 08:02:24');
INSERT INTO `dili_lulu_wx_log` VALUES ('771', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"Tq92JaSnNEVo0MV7BEnL\\/JtEqh2Ik+QTiiObKkDGixPr9THOWHhWbBpbonyFN4VXtDMmiJfrftPvKbBKNbZIRc4y2sbDbV4cOe93Ce+Zjvmy1\\/iKq\\/S+A2wz2Q7cji9liYzLaz\\/Vh8x6clSNitRO6S6PqOOoxAGZrXyegtVXqvqSuTB+dIVzixeTZ3z61PvzKWLN+dF4vSB10k0Zza8wwsh2+5jkEULcM4tEp0QhXQr3ZZYVPecrVX8LPgel\\/gEjGKhfMArRviDntIFBTx1JGMdOuZ6blOrhkhFZ4xsvLE4TshgQ6YasybYoMvpp+3X0imgLno4IWH+e0hgA2LgfknXdLObN4eISX+6Bo7MVc\\/ly98FlcZG+SFZazVTkVTbwvpA7aAp0fKyoysgCemJg\\/PS6hIS3E417DtyU91\\/g0dtdNv2Yv12eXwk+SEDU2s\\/z1W6bNZVv01zBCTvv8bsVBA1PetvVi1WABowh\\/Xqdo8+\\/nUrwSPaYzwDrR\\/PcNQ0A\"}', '2017-09-19 08:02:24');
INSERT INTO `dili_lulu_wx_log` VALUES ('772', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuMYdYgYe3uqNx0Jx2cuDwr0]]></FromUserName>\n<CreateTime>1505779343</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=752]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-19 08:02:24');
INSERT INTO `dili_lulu_wx_log` VALUES ('773', '1 原POST', '-{\"signature\":\"da3c6d4b79e120e6c6019d07796ec9fda9ada364\",\"timestamp\":\"1505779404\",\"nonce\":\"433095521\",\"openid\":\"oWX6OuMYdYgYe3uqNx0Jx2cuDwr0\",\"encrypt_type\":\"aes\",\"msg_signature\":\"aa90582a877eaaa7eab82976bce5f94795013cf4\"}', '2017-09-19 08:03:25');
INSERT INTO `dili_lulu_wx_log` VALUES ('774', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"v\\/vvx54rfYBhkSDwsPk7P0DKqFvfgTB3oHBHrFWuG2QtgmTqgaDZZquJKtVJQYfRGriZOXDZDQVilB8C+k8+02E0xruK4BkDqV\\/JL+bskuj\\/Qkr8o6rcfDFsawzdavvnszJ28WlOhMgmqhg2mLmB5nbAN\\/Yn1neQtLBGWBQOLCuNP33HocUZLjv6hXvVffiEPKs3FgQU2URMxO7dyzYUYfphBNYhKy9ffqQXzNlzxVtGsefB88b+A5z5pFWgzVb+SN3RQCPJwR3OG\\/xnb8cDOYOByCeYpZBYhNih6SeT7D0aUrgLlhCa152GQrMCdSlhlK1Iz0gwkEVqq+d0VYOJ9YGQnSPl\\/+h+jelFFcicCqe6EKYFqm\\/8sRwG9Uq8NMV6zcySTnlWx\\/aSenwpJZmaK0jJtzBsd582gRdVbf2098BgZfR+SXXvsyUGSh6akxZYZZFkcDoYWMqWzfs5riH\\/FtKeXQdJ\\/CZLxcCWsKSeQM7J7s86SB3bvR05h7Y2PJGk\"}', '2017-09-19 08:03:25');
INSERT INTO `dili_lulu_wx_log` VALUES ('775', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuMYdYgYe3uqNx0Jx2cuDwr0]]></FromUserName>\n<CreateTime>1505779404</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=750]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-19 08:03:25');
INSERT INTO `dili_lulu_wx_log` VALUES ('776', '1 原POST', '-{\"signature\":\"d95de3320b31de4c055a53c698a9110a56fb34b3\",\"timestamp\":\"1505779411\",\"nonce\":\"382372003\",\"openid\":\"oWX6OuMYdYgYe3uqNx0Jx2cuDwr0\",\"encrypt_type\":\"aes\",\"msg_signature\":\"6f08cb75864df669be410b453eedbf152016062a\"}', '2017-09-19 08:03:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('777', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"EwNf7e7382CKovSfMi5ZS7uKYGIEPm3TpSVv786X5oWCivXgp0i99t3rc09\\/OclSo+zg3BXo2iHLZS0XedEsgNzD5GmxFiUfRW79n2fQ+b5qI+FabF8SYOHF4ONY64RVFTEZcYpEHzwCQ3No3o8tsKPT1+d7LWGMbIwHWvkw+oIqd+WSTVtKZWUONEZGPBMxrl0cRBnLqWWlGkMkUiPxgZoi0Odt1HtzP31yU10+z8ka3V5wUscB1nZ+XLwJ8f6\\/uzRtVIJAbmaUJ1ov9ifOE0y3IyaF\\/KhRj7Pg+lohOuL4hqJE8AkMk5X\\/XI8sEmtkqzXmrkXUKvBS\\/HxcuzEmtInCxuoLUMQGXPepdOGPGMXDlVhT1JSfAMnWz6C+0YJE5svMSgtTex2QiGCLScit1wlcV7f+rHuH7HH7paOqwwc\\/\\/NyC+AaoHxxeW\\/ARJe2bMLqVWId7Nl86YSVy1HRB84dtugU0pK3idzFKkWIgJa6lw\\/bp8UazPXLlWjgcV6RX\"}', '2017-09-19 08:03:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('778', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuMYdYgYe3uqNx0Jx2cuDwr0]]></FromUserName>\n<CreateTime>1505779411</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-19 08:03:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('779', '1 原POST', '-{\"signature\":\"d34d966bc18d691d1be6c6d8414848c05264ddb7\",\"timestamp\":\"1505779434\",\"nonce\":\"665940187\",\"openid\":\"oWX6OuMYdYgYe3uqNx0Jx2cuDwr0\",\"encrypt_type\":\"aes\",\"msg_signature\":\"a0b17bfad1a0e465f9fd0cb8cc2c5c5409863e9e\"}', '2017-09-19 08:03:54');
INSERT INTO `dili_lulu_wx_log` VALUES ('780', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"TKpV2pAKcj\\/Li+HHgxqMZuhuro8OBBkDJ9RatmlDOxlgPCubSc\\/tWGflhCD6H6VtmdP8syVCEwtwismlGU6dG6Nv1Mc8EuiRfLjV6vHkiLl3PJ3cCCYVXhQr+oFCNn+GQ\\/493Gq+MdNLmfKnq\\/R78zrYJGEY6zI7YNaxkXkBJSrUl3sMPxgRgk5jUtcqw9C\\/UZl4IO5WRK7Yujzcvy5uzgT41sdUwHKYDry4vcCDnEH1zXe\\/pteqfvuXsK5fwJB9sY9OaFWxbMx3QR\\/Ru8Ev+nzNExf6G+1KLg9S8aAwKBF3F7KaMoCtdfYBYDZhENyp+2dvSxcgU++0PHIrRt\\/rNldyyOLJdUauWf\\/5dU0EXhi5nJ5HMX8sP0B6\\/CAoIShbt5E32uRLQe+Z2LSTxMRXrvZGTIbrEgDJrPvAc0k0d9mOh1gXODFj1klEclnqhMAAvYaw8BiK2qEYKVJ9DUzZQJ\\/Od90ssFPT7EG2EKASxDq\\/DzClEfhj4d0B0q79ObKd\"}', '2017-09-19 08:03:54');
INSERT INTO `dili_lulu_wx_log` VALUES ('781', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuMYdYgYe3uqNx0Jx2cuDwr0]]></FromUserName>\n<CreateTime>1505779434</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=752]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-19 08:03:54');
INSERT INTO `dili_lulu_wx_log` VALUES ('782', '1 原POST', '-{\"signature\":\"7001799faa7d3582e9398b3d3c9c47d3a9f8b60a\",\"timestamp\":\"1505801137\",\"nonce\":\"806915199\",\"openid\":\"oWX6OuDVBwTgZXi6RKUkuw1pEsZk\",\"encrypt_type\":\"aes\",\"msg_signature\":\"8e16efeea0dbe01403afa6c0bcebdcf0ed7b3669\"}', '2017-09-19 14:05:37');
INSERT INTO `dili_lulu_wx_log` VALUES ('783', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"OmcKiYp45mVNt1hEgubjz5YbRfI6KaRjSo1agJt6vBDyH0xeUdvqpVjcWq\\/3sE\\/iMbapw+cbuw7TMq++y2xKoIhWFvC86bP5XlT9lrShVJFf8+eYmKmBhQZKKAn5dx60o456Z0VTBb68ramA5qsmDS5qJ1gwDv6xue8lRq2WX5wZXiL2CXKMw6OphdhOBlf+TOtUCcBIQTyJnuurl6Q2b\\/THCQoOSaS7kRFYNIqDIEXSqhW+dQPSAuWszTBXoJu2ESAhDwjFFy+aSCC0AatMcLQ7RFgeAKQWUaH50u+4DSokjOxZEUosG4MYfI4OnMJMBjzDox1ZC9UvxmE8tu+a95L+LzRtLO3V\\/TxzjOBTHyOeLj5W6\\/4fyJJoHALqWbzaMIdiQZadAsj4f1KUJczhijjJiQBiQoO0aeqYQ8J6tQWUkBEgtZ4hatKkmSR7GG7WM+D9a6qBJIv3PejkbUSR8bxMOcoxbBoSu5L9JjYVitEJYiVDixzJcIeL2Tqq1Xni\"}', '2017-09-19 14:05:37');
INSERT INTO `dili_lulu_wx_log` VALUES ('784', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuDVBwTgZXi6RKUkuw1pEsZk]]></FromUserName>\n<CreateTime>1505801137</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=754]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-19 14:05:37');
INSERT INTO `dili_lulu_wx_log` VALUES ('785', '1 原POST', '-{\"signature\":\"18ac1d41bea78f1bdb8edcca1b62560df608b65c\",\"timestamp\":\"1505801833\",\"nonce\":\"1436342368\",\"openid\":\"oWX6OuDVBwTgZXi6RKUkuw1pEsZk\",\"encrypt_type\":\"aes\",\"msg_signature\":\"7cb53da1a9f6a564e0c6d239112ca3d889c337d4\"}', '2017-09-19 14:17:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('786', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"hZT2KGmKeu6Q0uiW8fIxaNNHSjRQH+GUl4DM2MzUBkmdxKpuJw6XRNyvTbDInQVsxvdmC4b60y5X9kZhDkK38uBjhBsUtuHfSOpRR6ER8HVA9wTVkLnWj5THzQ1S7XrEaqGDFcZooGt\\/Ql2d0MZXQIbMC3zX6oeyEq7YOe5eZ+yILRXqCZ5oqzXLH4BjbD35LttpfGNvsf2MkCAQIs50GI5B\\/QNj+oMM9OSKMsiiRNjbPDLxfN1+zR+H4apZbzpXhELi\\/XlMsLltAeUB32TISsRMX\\/68rb0iRPbSuFaEiV5rhSIUWj09t5f9uhDgn2fJfIaKvKICI8czn8X\\/0d6x12rIMTE3k3T5J9ETFiTZGX2B5XkEqaLaYHTwHbLQVxxpEBww\\/xZ1axSnBuifAez5Jfcfvpki9da+lSe2wzuE7vprQFp\\/pr3\\/Qi6GuG\\/lr31GGgRMM91uuovIkUTNm6NrjCcusQnDpmyS5FfglLsLabB1zUiwZsVij1NC8RuKkTtO\"}', '2017-09-19 14:17:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('787', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuDVBwTgZXi6RKUkuw1pEsZk]]></FromUserName>\n<CreateTime>1505801833</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=754]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-19 14:17:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('788', '1 原POST', '-{\"signature\":\"8fa37bf87398b41cdd4f736b05e9b7d0030fe970\",\"timestamp\":\"1505876522\",\"nonce\":\"1643969382\",\"openid\":\"oWX6OuPT-PN9-Kx1P8nKNVrBYneQ\",\"encrypt_type\":\"aes\",\"msg_signature\":\"addc52fe98db03909eff2d42d8411302a11e7b19\"}', '2017-09-20 11:02:02');
INSERT INTO `dili_lulu_wx_log` VALUES ('789', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"RQYkPtfJirZtcBR+8Eu8x89kUY7aiJba7s6iqzXt2ZcpHhw\\/VJTGUzKG6OK+zfraGOweC\\/lfPX7x4lQAULZQofhyZLSN7+spHM0DlrKAvi6jzHD8KKE8w4kI+FCiTeswLjuzxGwCm1y7ZampWZwzfPKqC79efK+JJXz7bsHTg0Doj+qhOg1WB3zcGoo2gtt4IPxAYtwSIJ7DW6SG+pj+dUnTBwdhh0BpNEePhIyRT2xp4+Xy43NzEZa9mcZo2kXSABWgo5Kar6hhBwNyKIKafhc+ThrGBG0f6QVY\\/38RqdE8mFep4yY8j9E214\\/guWzUJjneTFkOmw5CygzgII7AIPqM2\\/kX\\/ZH+iPMgLZhf8uYwxjM0qB3lFONxBifxd6MMbTr1OJGkg8QEEuz2zQqyD5vRu8uF\\/H1oweYCsRxqhfU=\"}', '2017-09-20 11:02:02');
INSERT INTO `dili_lulu_wx_log` VALUES ('790', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuPT-PN9-Kx1P8nKNVrBYneQ]]></FromUserName>\n<CreateTime>1505876522</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-20 11:02:02');
INSERT INTO `dili_lulu_wx_log` VALUES ('791', '1 原POST', '-{\"signature\":\"ceb459bded59e21e28c4ea25d2b578ab7beaa4c3\",\"timestamp\":\"1505925536\",\"nonce\":\"1247636112\",\"openid\":\"oWX6OuIIccXbb31IDQyZ6NC38uok\",\"encrypt_type\":\"aes\",\"msg_signature\":\"18d3e061e433861b5fc05cf30d881826da06f054\"}', '2017-09-21 00:38:57');
INSERT INTO `dili_lulu_wx_log` VALUES ('792', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"qL7WhTcYex70aIC4EGtK+2DtVmOWqd1J0Uz9GeCEcuXsDSOnMv0WCh94UwOYUFXrjYI\\/b1FZHwikWk18qBC+pczuvTzhRS5NKfRypVevoSjg+dN8609zpYLuHXE5dhNfD6sMTgaxVg\\/uCA\\/I8ZX9GsVfLkhHy1jdGeaAU9eEuhR1P5BMTkqH3ylT5RiE\\/pun5tr95rjDriwLHD20yRNmLkBTD0fEiSTym+07RuTn7FEHj5x0Q0VY2lkLqNipQzg7Buf2vkRBiq\\/mqeK6XdrP6DTm1yLy1IwFs3JVCOhXjd0o9EaRr57zYCt6IEVDntsiMGeyq5boPaqiCQZi5cFdxWFziLlXazFcIS7Os8Bfz2MQN5B1aM\\/62Ko2pxiXYrbrlpwmzWbLCjSmgvYGB5433ANLYk9NNCBMwVyzLWDtnTQ=\"}', '2017-09-21 00:38:57');
INSERT INTO `dili_lulu_wx_log` VALUES ('793', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuIIccXbb31IDQyZ6NC38uok]]></FromUserName>\n<CreateTime>1505925536</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[unsubscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-21 00:38:57');
INSERT INTO `dili_lulu_wx_log` VALUES ('794', '1 原POST', '-{\"signature\":\"99e5fd3cb6c2918b05778cef6036261e4b1c8778\",\"timestamp\":\"1505967809\",\"nonce\":\"2069066262\",\"openid\":\"oWX6OuFzfDY8Y1egKbgdt2WgHrvA\",\"encrypt_type\":\"aes\",\"msg_signature\":\"7754835edfab011a324766251dca3e24d8a7b4c6\"}', '2017-09-21 12:23:29');
INSERT INTO `dili_lulu_wx_log` VALUES ('795', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"JIQmgnzCRL1Sg9fKJiXOeEI1yrakIh3e6MoY4eLNFv3LOa4VpBZ0f13ei648EOp9HTuVcZZUo1STZq1viQpcSTYJ7jBBaHpN3Sl9cFYopyGWGNEniPI0MBT7duKsP+gjlUKDbC6SHZ9ZfwTB0VG6G8U7hwIgcy3qiFYZiToT7ZueoqSE0vObHT1B4300as6fL+51HiggLfvwnDtaYnzUPpNa0NJKLS+KhnTOEmSl+8BDmoRh1H\\/TG69fBh3Bm5aPdlbDs18M+gMHgqfoG4kkXb1yU26zJz8NI15368+Gxhs\\/oog42qnoladSJddKbFPMyOr3P66MHBuohXETlKr9rZM9v02QIoHYJ8NGXTtRaYSgNMXojuPIrKdzIiJmw9EjPqtWzb594BMrfEdLf+N9pTjraI7R5OsuggGIPFwEOxY=\"}', '2017-09-21 12:23:29');
INSERT INTO `dili_lulu_wx_log` VALUES ('796', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuFzfDY8Y1egKbgdt2WgHrvA]]></FromUserName>\n<CreateTime>1505967809</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-21 12:23:29');
INSERT INTO `dili_lulu_wx_log` VALUES ('797', '1 原POST', '-{\"signature\":\"12a75dd6aed19ebfd4703ca2d8dc5a449f4a9c79\",\"timestamp\":\"1505992737\",\"nonce\":\"326402713\",\"openid\":\"oWX6OuDVBwTgZXi6RKUkuw1pEsZk\",\"encrypt_type\":\"aes\",\"msg_signature\":\"e465dcbf5fe71fc762ee37b0220243ccbf7148a0\"}', '2017-09-21 19:18:58');
INSERT INTO `dili_lulu_wx_log` VALUES ('798', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"0TjtZcJ88m9Uv7N9sWNBsnlUmPRTviXrdUclOSzRFkk4Ss7J\\/NdrT+pMA5OA+uSGjKQZeTf1F4fRLgDrFC1k3Nbw5QF+dqnPso4\\/zBlgSRXyUW++8mS9r+vVo7vLhK+A0DbCYR+tztf7wyFlk8Z1p6m05cs4K0QG32l9tvVyRPxTD8pG87S821b6hw1EP97dhQJL5M7KdKdIuzXd3MgooJOGcetqrM6aPna1sspKICmO3VXwTOGTonE66Q7Vyu+sEc\\/FNT7bOJ7v2Y+rSkt6n4sHIchNzOI0CRT1noHwJLJtISNctiIhUzdsabJfzeNJ9pmK8Edaa47lrGgQ3O4scGL+hhHUoXYp2qSsvDjOrXdehR7B7DJlpBIpGYd6C9Zfmd60652TiArRTJhjUOvX\\/W0pdb7N47wXsZ8yMLDRPlFgROPNpa\\/IGlCa2c9IXuKyd7sd+\\/ooPLkGqIhGeQB8KBPuReZPlzCgHRBEFNo0cL2woOrZSAowjWADF0YZYU0S\"}', '2017-09-21 19:18:58');
INSERT INTO `dili_lulu_wx_log` VALUES ('799', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuDVBwTgZXi6RKUkuw1pEsZk]]></FromUserName>\n<CreateTime>1505992737</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-21 19:18:58');
INSERT INTO `dili_lulu_wx_log` VALUES ('800', '1 原POST', '-{\"signature\":\"e9acb1abad7f7cbb75bbd1ccc5cbf07dc9a3e5dc\",\"timestamp\":\"1506059963\",\"nonce\":\"1022610458\",\"openid\":\"oWX6OuOX0iKYviELsBBIWCDlhT6c\",\"encrypt_type\":\"aes\",\"msg_signature\":\"301772d98cc3392124d510ed879027cfd64a2135\"}', '2017-09-22 13:59:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('801', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"nep2XwG7RDx6JoJtyIH1Fb67o72\\/JPq42qnSwqhsZHTNogiEPkVU7tNbBJ4i7Csr+VenoDEOK6Z4y7FvKiHbTxDNzxfAoMRL3RzAvRojcYovJsShKUJA1EhTHTzahpCaHxlCIjBgaY\\/UXw9Sfd4TCq2nFtMMKMjwc+0CBfJd\\/Ux8NT5Ocakx3zNjRUcI8fhwBIRBoX9M+ngQ6N8POosMk8Yug1+5SBZIxCS8uHRk+YwGM9HyskoqeSD1R8F8cxk3qLHAtto5Z42qHHwyZ1mlBjXecsHXEtVW8SMFhDyd7EzzPunm8iUkeEy+ycx0EOhB\\/6\\/PDc87vIoAu5eFjceRT2c9\\/KQ0ZjUFjmA2Mm\\/KaysaDgIQdSB3jCwkUOFz7x3acjwY9z7t6GeIMjtPRwGIPcF4H\\/jMYqK1RoAlD0ouNng=\"}', '2017-09-22 13:59:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('802', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuOX0iKYviELsBBIWCDlhT6c]]></FromUserName>\n<CreateTime>1506059963</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[]]></EventKey>\n</xml>=====0', '2017-09-22 13:59:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('803', '1 原POST', '-{\"signature\":\"0f5f48404ca55a8bc252a618e2b24910e3907779\",\"timestamp\":\"1506059973\",\"nonce\":\"89863081\",\"openid\":\"oWX6OuOX0iKYviELsBBIWCDlhT6c\",\"encrypt_type\":\"aes\",\"msg_signature\":\"063bcf03211de4010fb2807d3c5cf8edf1ebf1e3\"}', '2017-09-22 13:59:33');
INSERT INTO `dili_lulu_wx_log` VALUES ('804', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"lpPcmsMkV2sCA+4jyp27H\\/UQNkei7egYbVnyKgLvAfoni01Ufj8V28qzfeWznbuqZ5ImkzfNgtxthqEnV8Se8SEJ5rkWfGXuvHwoDeC1rwuMLn2QW9LcJYEFpm6WwmzxBUHMsl6UXeTNQm5kOs+NpTJSPYHu4mIV6GaeACYYL\\/4NP5zbBCbyL6AL4CAMj2xcpfIoPFTNSdkAvAEfISKI57Jr5lRw4dpzMRerReL+DmTq9Lft5FKje7dsKd2UjipRSerKezRYX4N+GfXGf0Uf3oX1i0bCaZnHszucKSPhNgofc6Vy51zc9\\/EdwvjZEnvsf0hJ9NCG\\/V\\/LdVzcwDrvVypSf6uTH1Qn3XRIfbuw0w2ObUU5ZUU\\/m4Na8yv2iWQ2iqinFlqngzSi89fyIOVW4CjQ9CdeRn6yYBk2L+LxeA9cl2EftwvhZtBmaEhm7KR+W1w3O+h4sP6dDs40NpVRWFi+CjrZ\\/KA0\\/6OfWG6WDDFRseZX9btEopTbh8zfSQJ3\"}', '2017-09-22 13:59:33');
INSERT INTO `dili_lulu_wx_log` VALUES ('805', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuOX0iKYviELsBBIWCDlhT6c]]></FromUserName>\n<CreateTime>1506059973</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=750]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-22 13:59:33');
INSERT INTO `dili_lulu_wx_log` VALUES ('806', '1 原POST', '-{\"signature\":\"4591623d7cc77dd811b8e48d21f12655136b6950\",\"timestamp\":\"1506060009\",\"nonce\":\"903668456\",\"openid\":\"oWX6OuOX0iKYviELsBBIWCDlhT6c\",\"encrypt_type\":\"aes\",\"msg_signature\":\"6df8dc5972501afd0da3f1deaf203160b94a2c46\"}', '2017-09-22 14:00:09');
INSERT INTO `dili_lulu_wx_log` VALUES ('807', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"7iQfkoHkHyFG6PNL08STujmLfR7RUvD1zXKMVHCgG66P\\/Si17\\/XTQWw46FGVMacY\\/SO90EnIAFi2aIXBtj\\/l+DB4r++POmBcIDkAA7SnrB+D7H7tmxhlz18uRaxkHbUfW+w2eYRpa+i5CbmefM62W9vmG8KUEhKXxOhU5PtTVrjKmL2kEZD0Z\\/3Hds+PPG2uaaAgFZcHJObBG+5ipmPxCdX\\/Sg5+lYk1TpYZ0L1tt\\/A0duTOmbxlbkopysjooSXQqyvZfDLa1dj46yb\\/jPErRBcQKCqblVGZeFIfygFInBXR4m7LhMqC73V0HcM5g0fnBYs4oV9tDrslXtdzC9oZBNN9mhl3u\\/\\/y9GT9wnKXjjmA\\/Tk4lEAoTexKcG6M1iBtcIJaz2vXjhoBtZ6jkGbus0ZZHzErHK2Qu1CA\\/SWIsqSgUTcCE2u7lebgb1JK\\/KJBYbXyHLfS3ZNj\\/AJi3C5fPGwe3gwo2UwrzWYd0Avftm51xQSFow9NOFGNus8Wnu9s\"}', '2017-09-22 14:00:09');
INSERT INTO `dili_lulu_wx_log` VALUES ('808', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuOX0iKYviELsBBIWCDlhT6c]]></FromUserName>\n<CreateTime>1506060009</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-09-22 14:00:09');
INSERT INTO `dili_lulu_wx_log` VALUES ('809', '1 原POST', '-[]', '2017-09-22 15:59:44');
INSERT INTO `dili_lulu_wx_log` VALUES ('810', '2 POST php:// INPUT XML', 'false', '2017-09-22 15:59:45');
INSERT INTO `dili_lulu_wx_log` VALUES ('811', '4 decryptMsg', '=====-40001', '2017-09-22 15:59:45');
INSERT INTO `dili_lulu_wx_log` VALUES ('812', '1 原POST', '-[]', '2017-09-22 16:06:41');
INSERT INTO `dili_lulu_wx_log` VALUES ('813', '2 POST php:// INPUT XML', 'false', '2017-09-22 16:06:42');
INSERT INTO `dili_lulu_wx_log` VALUES ('814', '4 decryptMsg', '=====-40001', '2017-09-22 16:06:42');
INSERT INTO `dili_lulu_wx_log` VALUES ('815', '1 原POST', '-[]', '2017-09-22 16:22:56');
INSERT INTO `dili_lulu_wx_log` VALUES ('816', '2 POST php:// INPUT XML', 'false', '2017-09-22 16:22:57');
INSERT INTO `dili_lulu_wx_log` VALUES ('817', '4 decryptMsg', '=====-40001', '2017-09-22 16:22:57');
INSERT INTO `dili_lulu_wx_log` VALUES ('818', '1 原POST', '-[]', '2017-09-22 17:05:56');
INSERT INTO `dili_lulu_wx_log` VALUES ('819', '2 POST php:// INPUT XML', 'false', '2017-09-22 17:05:56');
INSERT INTO `dili_lulu_wx_log` VALUES ('820', '4 decryptMsg', '=====-40001', '2017-09-22 17:05:56');
INSERT INTO `dili_lulu_wx_log` VALUES ('821', '1 原POST', '-[]', '2017-09-22 17:06:38');
INSERT INTO `dili_lulu_wx_log` VALUES ('822', '2 POST php:// INPUT XML', 'false', '2017-09-22 17:06:38');
INSERT INTO `dili_lulu_wx_log` VALUES ('823', '4 decryptMsg', '=====-40001', '2017-09-22 17:06:38');
INSERT INTO `dili_lulu_wx_log` VALUES ('824', '1 原POST', '-[]', '2017-09-22 17:08:37');
INSERT INTO `dili_lulu_wx_log` VALUES ('825', '1 原POST', '-[]', '2017-09-22 17:41:01');
INSERT INTO `dili_lulu_wx_log` VALUES ('826', '1 原POST', '-[]', '2017-10-10 16:39:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('827', '1 原POST', '-[]', '2017-10-10 16:40:09');
INSERT INTO `dili_lulu_wx_log` VALUES ('828', '1 原POST', '-{\"signature\":\"466b4a9aa0f5eed4a098af4bc6a1938a43e5d54f\",\"echostr\":\"11220195700958492607\",\"timestamp\":\"1507624863\",\"nonce\":\"526576036\"}', '2017-10-10 16:41:02');
INSERT INTO `dili_lulu_wx_log` VALUES ('829', '1 原POST', '-{\"signature\":\"f891870631981eab8692758cb196a51674e276bd\",\"timestamp\":\"1507625240\",\"nonce\":\"1748877762\",\"openid\":\"oWX6OuG16WByunBUJHlCvAVIudn0\",\"encrypt_type\":\"aes\",\"msg_signature\":\"5300d14fbc49d0fa2a791c2b2a8f94e0d896f0d4\"}', '2017-10-10 16:47:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('830', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"f\\/0WTcG7gsb5eUbWyFCI1vGQgI+6jUWJPdLKiRGxGB5lDOfzfh0Wdd+9W7s8Ph3OgJ+1TwCLLZv3nRWgZMneAqSzwi+SblQvqxlVjS+50MRFnSmR6iXLaCRiOsbMxHKMgI9vFixDQOVAd\\/JinkTGGJ1jFwmhNvK1XUeaga4Hrzfqh0wm89NNllp7s\\/4P2BymNNm3v0skm9NYTdi3kiKVmJKMQzbDnG3sH0lOQ5gz3mt9EmDY1E9iIpPbCGAQ1qTzUYnUuAjIj4G\\/nRaubWp2sBRAfBI9hSIy8TAVcKB9jAH2D\\/FkrIQ9a5h+efQvjNPswB5siL4I95iXg56Q+n\\/Uu15Ok0bTVzG3toLs55ajUvBqjbK7X\\/eIY3OooAY2B6i8AUTBJvDbUt24JP+uWl3QFHg5xORTYoUhrRVByaWiQiJ3hfIM30w515Rhz5La\\/cdm\\/+RL9HJRgWCgLJpwFu0hEcbDGqB2t4nhnLRMRLXUGdoLi9XrxyF7GD8msr7ZjZow\"}', '2017-10-10 16:47:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('831', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuG16WByunBUJHlCvAVIudn0]]></FromUserName>\n<CreateTime>1507625239</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[http://m.hmw1.com/detail.asp?infoid=750]]></EventKey>\n<MenuId>420387647</MenuId>\n</xml>=====0', '2017-10-10 16:47:20');
INSERT INTO `dili_lulu_wx_log` VALUES ('832', '1 原POST', '-{\"signature\":\"3e87950721bbf5fa8013b62826b2b9ac40d7a28c\",\"echostr\":\"12287716554740595698\",\"timestamp\":\"1507625330\",\"nonce\":\"589222731\"}', '2017-10-10 16:48:50');
INSERT INTO `dili_lulu_wx_log` VALUES ('833', '1 原POST', '-{\"signature\":\"072374c7f14926d6e25fc524cc0bd112fd9ea62d\",\"echostr\":\"15497963598589566847\",\"timestamp\":\"1507625502\",\"nonce\":\"3242333279\"}', '2017-10-10 16:51:42');
INSERT INTO `dili_lulu_wx_log` VALUES ('834', '1 原POST', '-{\"signature\":\"d3831342eef8e66386e482430e702e36b13885a2\",\"echostr\":\"3000727197651341279\",\"timestamp\":\"1507625607\",\"nonce\":\"2702916555\"}', '2017-10-10 16:53:27');
INSERT INTO `dili_lulu_wx_log` VALUES ('835', '1 原POST', '-{\"signature\":\"e730655ebaeb3c2be8125ea67136b98c548569fc\",\"timestamp\":\"1507625771\",\"nonce\":\"836299852\",\"openid\":\"oWX6OuNf-7UflNKyw84qfjkmGe8s\",\"encrypt_type\":\"aes\",\"msg_signature\":\"0faec433d2cca88f50299be9d4c64ab3eb7382bc\"}', '2017-10-10 16:56:11');
INSERT INTO `dili_lulu_wx_log` VALUES ('836', '2 POST php:// INPUT XML', '{\"ToUserName\":\"gh_62f9724b7e1f\",\"Encrypt\":\"zO2ROL9wvIkydjbb1zea4p4lGBPmUoKZE+dtQr5jGy0Dr\\/rqiPUfyn\\/XhfEtZeCZd5hQSGWd54zOVBmOofHkGOt2SctCmh2M7Ettt+rgwLec3LXdVlc8bfjDy6woUNiUTQ44sahL9hDwikK\\/vCeaHOxaD3HT68ZtzbetxgvggoBWbAF4U4GzR0xZUpyrQI8F3gQRonbuwLTH8j0lmTLF0SMpmqfBX10pSDSYbJ18oSGjFtJ6QReGs7wA+a8lAWf9ENg9MKjIlv+Gsu8i9xTnXbKIbQmIyNHHUPSIXChyFGx0ht0arojsgD8wg3dRNaTEJiORMk11fmUTU6goWA6JZSbRcqcSEMYBCabZ+4xXmxw4kBJFtvguIaOvuBPZqvIIngLgZpGxMAsaezYBbtmse5SjjOXTPk6Dy5z7Sr5YgQKXF8gRXg5cU24tYHFm87ORiXvbLMTRuYyhmvww7ZXMow==\"}', '2017-10-10 16:56:11');
INSERT INTO `dili_lulu_wx_log` VALUES ('837', '4 decryptMsg', '<xml><ToUserName><![CDATA[gh_62f9724b7e1f]]></ToUserName>\n<FromUserName><![CDATA[oWX6OuNf-7UflNKyw84qfjkmGe8s]]></FromUserName>\n<CreateTime>1507625771</CreateTime>\n<MsgType><![CDATA[text]]></MsgType>\n<Content><![CDATA[嗯嗯，好的，谢谢]]></Content>\n<MsgId>6475203381475172770</MsgId>\n</xml>=====0', '2017-10-10 16:56:11');
INSERT INTO `dili_lulu_wx_log` VALUES ('838', '1 原POST', '-[]', '2017-10-10 16:57:22');
INSERT INTO `dili_lulu_wx_log` VALUES ('839', '1 原POST', '-{\"echostr\":\"3\"}', '2017-10-10 16:58:04');
INSERT INTO `dili_lulu_wx_log` VALUES ('840', '1 原POST', '-{\"signature\":\"94905ae76435ed0cde04381d22e2c3a26b90599d\",\"echostr\":\"5019859729514413015\",\"timestamp\":\"1507625938\",\"nonce\":\"4286830099\"}', '2017-10-10 16:58:57');
INSERT INTO `dili_lulu_wx_log` VALUES ('841', '1 原POST', '-{\"signature\":\"c4fbf5b002c9ad694108f6ca59e14c4056984466\",\"echostr\":\"12367421283858579455\",\"timestamp\":\"1507626991\",\"nonce\":\"1749377416\"}', '2017-10-10 17:16:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('842', '1 原POST', '-{\"signature\":\"c78082a288941f9a403696be646c6a3509e1f6ae\",\"timestamp\":\"1507627307\",\"nonce\":\"165817991\",\"openid\":\"oWX6OuHT9qbzt-FPx3BtGS_MuYL4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"bb0f7ff7ffe740bd5a8f7592810edce8fa612718\"}', '2017-10-10 17:21:46');
INSERT INTO `dili_lulu_wx_log` VALUES ('843', '1 原POST', '-{\"signature\":\"a982fa418e59668b4509e1f12949e365f0837462\",\"timestamp\":\"1507628128\",\"nonce\":\"1944596389\",\"openid\":\"oWX6OuNf-7UflNKyw84qfjkmGe8s\",\"encrypt_type\":\"aes\",\"msg_signature\":\"443fa8b713604e05e42116ea98b3567bc661da67\"}', '2017-10-10 17:35:28');
INSERT INTO `dili_lulu_wx_log` VALUES ('844', '1 原POST', '-{\"signature\":\"1fb841956ad6ee0e89641aecf3a9387b23dcf0f0\",\"timestamp\":\"1507647751\",\"nonce\":\"1814184091\",\"openid\":\"oWX6OuK5gZeScY2oHrOmNEDDbXDE\",\"encrypt_type\":\"aes\",\"msg_signature\":\"88d2e66eae0e2af54ea963102e60632061e42a88\"}', '2017-10-10 23:02:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('845', '1 原POST', '-{\"signature\":\"746fd3426901bb9b314e10455e5eb9074ec03d02\",\"timestamp\":\"1507689464\",\"nonce\":\"1483777850\",\"openid\":\"oMCinwVfH8RcCLprfCG5F9f1HowU\"}', '2017-10-11 10:37:44');
INSERT INTO `dili_lulu_wx_log` VALUES ('846', '1 原POST', '-{\"signature\":\"8b6bf8ec911086d2391ae12f600feb8d6027095b\",\"timestamp\":\"1507723550\",\"nonce\":\"1123070939\",\"openid\":\"oWX6OuJ4spM4OpTCxCVPDXVZcpEg\",\"encrypt_type\":\"aes\",\"msg_signature\":\"1e37cdf14d7dc3d6d24d96f2a2742534e6538f67\"}', '2017-10-11 20:05:49');
INSERT INTO `dili_lulu_wx_log` VALUES ('847', '1 原POST', '-{\"signature\":\"1326842aca9cfaf29ad3a0728c882a51322bf6cf\",\"timestamp\":\"1507773466\",\"nonce\":\"441474174\",\"openid\":\"oWX6OuJje1ln0KB6mtQqe4ykJ9ls\",\"encrypt_type\":\"aes\",\"msg_signature\":\"bde79217d7530d6e1210a031c8cce7c7f7ada449\"}', '2017-10-12 09:57:46');
INSERT INTO `dili_lulu_wx_log` VALUES ('848', '1 原POST', '-{\"signature\":\"ef4d50cdd17b09dde3fb2fa30ab5fdc1ece03d87\",\"timestamp\":\"1507773477\",\"nonce\":\"2018634074\",\"openid\":\"oWX6OuJje1ln0KB6mtQqe4ykJ9ls\",\"encrypt_type\":\"aes\",\"msg_signature\":\"36d11ae2c3073bd3c835363f8310329def447a78\"}', '2017-10-12 09:57:57');
INSERT INTO `dili_lulu_wx_log` VALUES ('849', '1 原POST', '-{\"signature\":\"1369b96df99781f53f278168845633f4dc79e4e8\",\"timestamp\":\"1507773489\",\"nonce\":\"1982007795\",\"openid\":\"oWX6OuJje1ln0KB6mtQqe4ykJ9ls\",\"encrypt_type\":\"aes\",\"msg_signature\":\"0251a46d88a297a75b6bf291fc728c68bf52e1c0\"}', '2017-10-12 09:58:09');
INSERT INTO `dili_lulu_wx_log` VALUES ('850', '1 原POST', '-{\"signature\":\"3498ad1d031b8c530a8c35068815510f6b935891\",\"timestamp\":\"1507773511\",\"nonce\":\"1326509545\",\"openid\":\"oWX6OuJje1ln0KB6mtQqe4ykJ9ls\",\"encrypt_type\":\"aes\",\"msg_signature\":\"2729be8dd54f8d4b43c6d3a473b72f626735748a\"}', '2017-10-12 09:58:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('851', '1 原POST', '-{\"signature\":\"e4096eebb670a2675b52acf1b72c7bf3dc064057\",\"timestamp\":\"1507776688\",\"nonce\":\"161497302\",\"openid\":\"oWX6OuJje1ln0KB6mtQqe4ykJ9ls\",\"encrypt_type\":\"aes\",\"msg_signature\":\"132ddf6c34b82ea10aee64fd9e5376dd35212db6\"}', '2017-10-12 10:51:28');
INSERT INTO `dili_lulu_wx_log` VALUES ('852', '1 原POST', '-{\"signature\":\"80404b50564ad7f5f89649094bb092cc4ae696c2\",\"timestamp\":\"1507782259\",\"nonce\":\"1565733144\",\"openid\":\"oWX6OuJ79Q6W0wT6cSYVJddEjyRw\",\"encrypt_type\":\"aes\",\"msg_signature\":\"d552e8b46c6e78062fafe4ba59818f1cc8fc6ac2\"}', '2017-10-12 12:24:19');
INSERT INTO `dili_lulu_wx_log` VALUES ('853', '1 原POST', '-{\"signature\":\"c2d8a714d0d80ee1558881713293262485c62c80\",\"timestamp\":\"1507782267\",\"nonce\":\"79953689\",\"openid\":\"oWX6OuJ79Q6W0wT6cSYVJddEjyRw\",\"encrypt_type\":\"aes\",\"msg_signature\":\"d1c322250f26ea945c907ae0fc5b9418357d857c\"}', '2017-10-12 12:24:27');
INSERT INTO `dili_lulu_wx_log` VALUES ('854', '1 原POST', '-{\"signature\":\"73722536468fc1b02894b1d7f2bc5c611803f0ca\",\"timestamp\":\"1507784219\",\"nonce\":\"574587034\",\"openid\":\"oWX6OuH58mK1XSEpRiaz3z_3fYBU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"f6f102909ab5d5521f595336f561c8ae47a0bca2\"}', '2017-10-12 12:56:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('855', '1 原POST', '-{\"signature\":\"1517e49a031f7174168851f59b2ed89045f92cba\",\"timestamp\":\"1507793903\",\"nonce\":\"27977945\",\"openid\":\"oWX6OuOgEOoTHUlvZraM8tISnBNU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"8f8dc8047c05197ad37288eb1de12d77f63fb5cf\"}', '2017-10-12 15:38:23');
INSERT INTO `dili_lulu_wx_log` VALUES ('856', '1 原POST', '-{\"signature\":\"d52f27d60cb589a9592d19d0e1887a0c3d6cf546\",\"timestamp\":\"1507793918\",\"nonce\":\"1313040460\",\"openid\":\"oWX6OuOgEOoTHUlvZraM8tISnBNU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"0f8c35b8fcad9f45f0190bac1cd22f04b1f2c715\"}', '2017-10-12 15:38:38');
INSERT INTO `dili_lulu_wx_log` VALUES ('857', '1 原POST', '-{\"signature\":\"df498809ac7d5a8f52d35175809db8db3c29c896\",\"timestamp\":\"1507803756\",\"nonce\":\"880826278\",\"openid\":\"oWX6OuCqdpj0FQf-z-r-4M7gu6-M\",\"encrypt_type\":\"aes\",\"msg_signature\":\"55394f04d9a9c5c9e7b5741b5ce95389a6e2bbcf\"}', '2017-10-12 18:22:35');
INSERT INTO `dili_lulu_wx_log` VALUES ('858', '1 原POST', '-{\"signature\":\"d5b507725fdb8d21b85f445bc45438919e84e977\",\"timestamp\":\"1507804032\",\"nonce\":\"1170700164\",\"openid\":\"oWX6OuCqdpj0FQf-z-r-4M7gu6-M\",\"encrypt_type\":\"aes\",\"msg_signature\":\"b2aedc9f23bf8ff3dca80f4112bcc70e7317a8a4\"}', '2017-10-12 18:27:12');
INSERT INTO `dili_lulu_wx_log` VALUES ('859', '1 原POST', '-{\"signature\":\"6f384888948f471a9804de29f8188239c3d35205\",\"timestamp\":\"1507895552\",\"nonce\":\"368808229\",\"openid\":\"oWX6OuJD2497WlYuYJxHCiQJajXc\",\"encrypt_type\":\"aes\",\"msg_signature\":\"866b11148e2cdddf400755d1c4f858c4b3fd4288\"}', '2017-10-13 19:52:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('860', '1 原POST', '-{\"signature\":\"f69764a989c22cb5284e6b0d54f0b9b23dae9ad0\",\"timestamp\":\"1507938913\",\"nonce\":\"1571475606\",\"openid\":\"oWX6OuPKyy17w8t5FbZviBzYwk1o\",\"encrypt_type\":\"aes\",\"msg_signature\":\"b04104de6bc985bcdfd8f67ada8afd7fa1ba9b05\"}', '2017-10-14 07:55:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('861', '1 原POST', '-{\"signature\":\"d2901bb5227ac009853c86239ba591b2ac1ecb78\",\"timestamp\":\"1507944737\",\"nonce\":\"279362277\",\"openid\":\"oWX6OuD3DuRVGhuEQJamSx179J1o\",\"encrypt_type\":\"aes\",\"msg_signature\":\"fbc18a887e244ccd248feee43d8b7d996fd926e5\"}', '2017-10-14 09:32:17');
INSERT INTO `dili_lulu_wx_log` VALUES ('862', '1 原POST', '-{\"signature\":\"db34d7e2455deddfe7ca275a44cafbf56fc6a70d\",\"timestamp\":\"1507945439\",\"nonce\":\"47241946\",\"openid\":\"oWX6OuN0vdQQ7EjsOEEGQuFyIok4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"58e360353ebd4625b7fc9ab56d17e0ce31b9b2c4\"}', '2017-10-14 09:43:59');
INSERT INTO `dili_lulu_wx_log` VALUES ('863', '1 原POST', '-{\"signature\":\"3789e8a1d4bc9d248091644680e6b54a95a00e92\",\"timestamp\":\"1507945444\",\"nonce\":\"126125525\",\"openid\":\"oWX6OuN0vdQQ7EjsOEEGQuFyIok4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"e5d7e7b762d1f545b4df3837a4ced181c6af6a21\"}', '2017-10-14 09:44:04');
INSERT INTO `dili_lulu_wx_log` VALUES ('864', '1 原POST', '-{\"signature\":\"623e8fcf29fce0d3abf0502a0a1f1975490c8adc\",\"timestamp\":\"1507946338\",\"nonce\":\"524303731\",\"openid\":\"oWX6OuN0vdQQ7EjsOEEGQuFyIok4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"a0f293689893f445b998a2688c9be95209b05a92\"}', '2017-10-14 09:58:57');
INSERT INTO `dili_lulu_wx_log` VALUES ('865', '1 原POST', '-{\"signature\":\"28053e541bf23479b43815ac60be61d3d2da0ae9\",\"timestamp\":\"1507946426\",\"nonce\":\"311679934\",\"openid\":\"oWX6OuN0vdQQ7EjsOEEGQuFyIok4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"7581c4ab16cd20d13150995c878b1e4e55ec4eb2\"}', '2017-10-14 10:00:26');
INSERT INTO `dili_lulu_wx_log` VALUES ('866', '1 原POST', '-{\"signature\":\"b2a4fab89c74155ec0ca8702d5490b31d7f1c230\",\"timestamp\":\"1507947975\",\"nonce\":\"651817331\",\"openid\":\"oWX6OuN0vdQQ7EjsOEEGQuFyIok4\",\"encrypt_type\":\"aes\",\"msg_signature\":\"a6cd3f6e21bb7085cb5ed28644e3ef4101511b10\"}', '2017-10-14 10:26:15');
INSERT INTO `dili_lulu_wx_log` VALUES ('867', '1 原POST', '-{\"signature\":\"27955b506d7fe51356cc77b381de651ee906c29c\",\"timestamp\":\"1507959553\",\"nonce\":\"1418031193\",\"openid\":\"oWX6OuFii64C7NgGEydidiUCGK-s\",\"encrypt_type\":\"aes\",\"msg_signature\":\"71302bce3817360f30341efb19c2f68d5265bd47\"}', '2017-10-14 13:39:13');
INSERT INTO `dili_lulu_wx_log` VALUES ('868', '1 原POST', '-{\"signature\":\"3859a23eb9f0c6e1c26d203b71166ab24ff89867\",\"timestamp\":\"1507973291\",\"nonce\":\"1802013126\",\"openid\":\"oWX6OuAeVHuLv_MQbNakhzCdcZFE\",\"encrypt_type\":\"aes\",\"msg_signature\":\"4cc016e033d74291750ec853b0d07708514675e0\"}', '2017-10-14 17:28:10');
INSERT INTO `dili_lulu_wx_log` VALUES ('869', '1 原POST', '-{\"signature\":\"4da566450e718e9c18e00633c036be3bf26f5448\",\"timestamp\":\"1508112870\",\"nonce\":\"2034675928\",\"openid\":\"oWX6OuCqdpj0FQf-z-r-4M7gu6-M\",\"encrypt_type\":\"aes\",\"msg_signature\":\"2dd5a0d603c1e36d8b65db5f6d06f392dc96cf16\"}', '2017-10-16 08:14:30');
INSERT INTO `dili_lulu_wx_log` VALUES ('870', '1 原POST', '-{\"signature\":\"67bdb125fe885ece69b8b76dfcda19b712653d52\",\"timestamp\":\"1508112958\",\"nonce\":\"750890393\",\"openid\":\"oWX6OuCqdpj0FQf-z-r-4M7gu6-M\",\"encrypt_type\":\"aes\",\"msg_signature\":\"5a3c7bdeb20ee5a5d0e8aa5333576c0003f8efb4\"}', '2017-10-16 08:15:58');
INSERT INTO `dili_lulu_wx_log` VALUES ('871', '1 原POST', '-{\"signature\":\"5d662866206d4300168341dc1d97981b23e3dcf0\",\"timestamp\":\"1508130238\",\"nonce\":\"847269451\",\"openid\":\"oWX6OuJXHiUpWGNg3JrIe0EPSjY0\",\"encrypt_type\":\"aes\",\"msg_signature\":\"9a38fcf1ef3d0824e715c93317eada1e7144aaf0\"}', '2017-10-16 13:03:58');
INSERT INTO `dili_lulu_wx_log` VALUES ('872', '1 原POST', '-{\"signature\":\"03ff56ac8c81dc8648234daf82fc290c2f210a30\",\"timestamp\":\"1508147191\",\"nonce\":\"984225468\",\"openid\":\"oWX6OuLCg-ktNPWzntvnXmdX82BM\",\"encrypt_type\":\"aes\",\"msg_signature\":\"7f9cbee180c8bba1933823ea0675588fd6801fdd\"}', '2017-10-16 17:46:31');
INSERT INTO `dili_lulu_wx_log` VALUES ('873', '1 原POST', '-{\"signature\":\"a0ba67ed2df50d3368de083a6c89ae81bebcc3dc\",\"timestamp\":\"1508147199\",\"nonce\":\"129098213\",\"openid\":\"oWX6OuLCg-ktNPWzntvnXmdX82BM\",\"encrypt_type\":\"aes\",\"msg_signature\":\"2f1f5478fed61860badd50e53bd96a271def287b\"}', '2017-10-16 17:46:38');
INSERT INTO `dili_lulu_wx_log` VALUES ('874', '1 原POST', '-{\"signature\":\"9f30e4a7c0540246a866113f24fa010fe15800a2\",\"timestamp\":\"1508147239\",\"nonce\":\"272977027\",\"openid\":\"oWX6OuLCg-ktNPWzntvnXmdX82BM\",\"encrypt_type\":\"aes\",\"msg_signature\":\"14d3b636c6de651aea8422a41c8d772b096a593f\"}', '2017-10-16 17:47:18');
INSERT INTO `dili_lulu_wx_log` VALUES ('875', '1 原POST', '-{\"signature\":\"39b80335e019ee9d9cdc15921b79562e655e96de\",\"timestamp\":\"1508147308\",\"nonce\":\"2066036119\",\"openid\":\"oWX6OuLCg-ktNPWzntvnXmdX82BM\",\"encrypt_type\":\"aes\",\"msg_signature\":\"3b9f6878d6320d68b09f057118129b67d54e19d0\"}', '2017-10-16 17:48:28');
INSERT INTO `dili_lulu_wx_log` VALUES ('876', '1 原POST', '-{\"signature\":\"7da8e52ad640239a63f988f73e29be434337125d\",\"timestamp\":\"1508147348\",\"nonce\":\"1858214769\",\"openid\":\"oWX6OuLCg-ktNPWzntvnXmdX82BM\",\"encrypt_type\":\"aes\",\"msg_signature\":\"aed1018bb005fd73270841e50197bfaff931dd9c\"}', '2017-10-16 17:49:07');
INSERT INTO `dili_lulu_wx_log` VALUES ('877', '1 原POST', '-{\"signature\":\"6f02d5957efbb9d2ab84bfc1f1a5af7956caa22a\",\"timestamp\":\"1508147370\",\"nonce\":\"531966265\",\"openid\":\"oWX6OuLCg-ktNPWzntvnXmdX82BM\",\"encrypt_type\":\"aes\",\"msg_signature\":\"4ba3345b63ac444983404b4fbbf3f91cc7923f37\"}', '2017-10-16 17:49:30');
INSERT INTO `dili_lulu_wx_log` VALUES ('878', '1 原POST', '-{\"signature\":\"6e13941229ba6c8cac603f41eddc8eefc2518872\",\"timestamp\":\"1508147386\",\"nonce\":\"247593113\",\"openid\":\"oWX6OuLCg-ktNPWzntvnXmdX82BM\",\"encrypt_type\":\"aes\",\"msg_signature\":\"5e6fee5bc244ade97f29120f0c71182be6512dfb\"}', '2017-10-16 17:49:45');
INSERT INTO `dili_lulu_wx_log` VALUES ('879', '1 原POST', '-{\"signature\":\"b3ff5e27304a99d53906d87fd42452457dcec458\",\"timestamp\":\"1508213324\",\"nonce\":\"1727684450\",\"openid\":\"oWX6OuOWEKBByNUFQrZY6xLUURDU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"ff94f97be42427bcbf66488c8a8af849c4c9dcb3\"}', '2017-10-17 12:08:44');
INSERT INTO `dili_lulu_wx_log` VALUES ('880', '1 原POST', '-{\"signature\":\"ed2afa164718d339cf906a88c642e72e85555be1\",\"timestamp\":\"1508213332\",\"nonce\":\"978915887\",\"openid\":\"oWX6OuOWEKBByNUFQrZY6xLUURDU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"eae28b55eb13401cf75744b92fd10e5706c9f108\"}', '2017-10-17 12:08:52');
INSERT INTO `dili_lulu_wx_log` VALUES ('881', '1 原POST', '-{\"signature\":\"182d7c40b26f5ece33854c014bbd726d7b516031\",\"timestamp\":\"1508213373\",\"nonce\":\"1166487929\",\"openid\":\"oWX6OuOWEKBByNUFQrZY6xLUURDU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"85df6b88529e2fe66a174f54449b61a78809b69a\"}', '2017-10-17 12:09:32');
INSERT INTO `dili_lulu_wx_log` VALUES ('882', '1 原POST', '-{\"signature\":\"2064b04d51bc75d73ad97c16ac540367d2b77a33\",\"timestamp\":\"1508213503\",\"nonce\":\"1042190241\",\"openid\":\"oWX6OuOWEKBByNUFQrZY6xLUURDU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"aaa336e0a1b14ecae2e9031b458e7c8fb8eebac8\"}', '2017-10-17 12:11:43');
INSERT INTO `dili_lulu_wx_log` VALUES ('883', '1 原POST', '-{\"signature\":\"ddb811ab4265bbcee05526bdc0483c864ef79e20\",\"timestamp\":\"1508213626\",\"nonce\":\"1883593656\",\"openid\":\"oWX6OuOWEKBByNUFQrZY6xLUURDU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"575740eaefa3500a7bc5d7d6920ac8a82b468c4e\"}', '2017-10-17 12:13:46');
INSERT INTO `dili_lulu_wx_log` VALUES ('884', '1 原POST', '-{\"signature\":\"f199c91b480b40e61447adfb3627163f832d16fc\",\"timestamp\":\"1508213636\",\"nonce\":\"159975589\",\"openid\":\"oWX6OuOWEKBByNUFQrZY6xLUURDU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"71816cf1e0df8842a2ccb0af49af6ad534399bf0\"}', '2017-10-17 12:13:56');
INSERT INTO `dili_lulu_wx_log` VALUES ('885', '1 原POST', '-{\"signature\":\"e781be16539d0ce5fc7492d2b61d14bcbff97b71\",\"timestamp\":\"1508213641\",\"nonce\":\"1799294643\",\"openid\":\"oWX6OuOWEKBByNUFQrZY6xLUURDU\",\"encrypt_type\":\"aes\",\"msg_signature\":\"fdd042534696123d4ca76ef28ac789ac3160f1a1\"}', '2017-10-17 12:14:01');

-- ----------------------------
-- Table structure for `dili_menus`
-- ----------------------------
DROP TABLE IF EXISTS `dili_menus`;
CREATE TABLE `dili_menus` (
  `menu_id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(20) NOT NULL,
  `method_name` varchar(30) NOT NULL,
  `menu_name` varchar(20) NOT NULL,
  `menu_level` tinyint(2) unsigned DEFAULT '0',
  `menu_parent` tinyint(10) unsigned DEFAULT '0',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_menus
-- ----------------------------
INSERT INTO `dili_menus` VALUES ('1', 'system', 'home', '系统', '0', '0');
INSERT INTO `dili_menus` VALUES ('2', 'system', 'home', '后台首页', '1', '1');
INSERT INTO `dili_menus` VALUES ('3', 'system', 'home', '后台首页', '2', '2');
INSERT INTO `dili_menus` VALUES ('4', 'setting', 'site', '系统设置', '1', '1');
INSERT INTO `dili_menus` VALUES ('5', 'setting', 'site', '站点设置', '2', '4');
INSERT INTO `dili_menus` VALUES ('6', 'setting', 'backend', '后台设置', '2', '4');
INSERT INTO `dili_menus` VALUES ('7', 'system', 'password', '修改密码', '2', '4');
INSERT INTO `dili_menus` VALUES ('8', 'system', 'cache', '更新缓存', '2', '4');
INSERT INTO `dili_menus` VALUES ('9', 'model', 'view', '模型管理', '1', '1');
INSERT INTO `dili_menus` VALUES ('10', 'model', 'view', '内容模型管理', '2', '9');
INSERT INTO `dili_menus` VALUES ('11', 'category', 'view', '分类模型管理', '2', '9');
INSERT INTO `dili_menus` VALUES ('12', 'plugin', 'view', '扩展管理', '1', '1');
INSERT INTO `dili_menus` VALUES ('13', 'plugin', 'view', '插件管理', '2', '12');
INSERT INTO `dili_menus` VALUES ('14', 'role', 'view', '权限管理', '1', '1');
INSERT INTO `dili_menus` VALUES ('15', 'role', 'view', '用户组管理', '2', '14');
INSERT INTO `dili_menus` VALUES ('16', 'user', 'view', '用户管理', '2', '14');
INSERT INTO `dili_menus` VALUES ('17', 'content', 'view', '内容管理', '0', '0');
INSERT INTO `dili_menus` VALUES ('18', 'content', 'view', '内容管理', '1', '17');
INSERT INTO `dili_menus` VALUES ('19', 'category_content', 'view', '分类管理', '1', '17');
INSERT INTO `dili_menus` VALUES ('20', 'module', 'run', '插件', '0', '0');
INSERT INTO `dili_menus` VALUES ('21', 'database', 'index', '数据库管理', '1', '1');
INSERT INTO `dili_menus` VALUES ('22', 'database', 'index', '数据库备份', '2', '21');
INSERT INTO `dili_menus` VALUES ('23', 'database', 'recover', '数据库还原', '2', '21');
INSERT INTO `dili_menus` VALUES ('24', 'database', 'optimize', '数据库优化', '2', '21');
INSERT INTO `dili_menus` VALUES ('25', 'feedback', 'index', '留言', '2', '22');

-- ----------------------------
-- Table structure for `dili_models`
-- ----------------------------
DROP TABLE IF EXISTS `dili_models`;
CREATE TABLE `dili_models` (
  `id` smallint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `perpage` varchar(2) NOT NULL DEFAULT '10',
  `hasattach` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `built_in` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `thumb_preferences` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_models
-- ----------------------------
INSERT INTO `dili_models` VALUES ('3', 'feedback', '留言', '10', '0', '0', null);
INSERT INTO `dili_models` VALUES ('2', 'wuye', '物业', '20', '0', '0', null);

-- ----------------------------
-- Table structure for `dili_model_fields`
-- ----------------------------
DROP TABLE IF EXISTS `dili_model_fields`;
CREATE TABLE `dili_model_fields` (
  `id` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(40) NOT NULL,
  `model` smallint(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) DEFAULT NULL,
  `length` smallint(10) unsigned DEFAULT NULL,
  `values` tinytext NOT NULL,
  `width` smallint(10) unsigned NOT NULL,
  `height` smallint(10) unsigned NOT NULL,
  `rules` tinytext NOT NULL,
  `ruledescription` tinytext NOT NULL,
  `searchable` tinyint(1) unsigned NOT NULL,
  `listable` tinyint(1) unsigned NOT NULL,
  `order` int(5) unsigned DEFAULT NULL,
  `editable` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`model`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_model_fields
-- ----------------------------
INSERT INTO `dili_model_fields` VALUES ('4', 'jdfenlei_id', '基地分类', '3', 'select_from_model', '5', '1,2,3,4', '0', '0', 'required', '', '1', '1', '0', '1');
INSERT INTO `dili_model_fields` VALUES ('3', 'title', '标题', '2', 'input', '255', '', '0', '0', 'required', '', '1', '1', '0', '1');
INSERT INTO `dili_model_fields` VALUES ('5', 'mobile', '手机号', '3', 'input', '50', '', '0', '0', 'required', '', '0', '1', '0', '1');
INSERT INTO `dili_model_fields` VALUES ('6', 'name', '姓名', '3', 'input', '50', '', '0', '0', '', '', '0', '0', '0', '0');
INSERT INTO `dili_model_fields` VALUES ('7', 'huodongfenlei', '活动分类', '3', 'radio_from_model', '0', '', '0', '0', '', '', '0', '0', '0', '0');
INSERT INTO `dili_model_fields` VALUES ('8', 'renshu', '人数', '3', 'int', '5', '', '0', '0', '', '', '0', '0', '0', '0');
INSERT INTO `dili_model_fields` VALUES ('9', 'content', '备注', '3', 'input', '1000', '', '0', '0', '', '', '0', '0', '0', '0');
INSERT INTO `dili_model_fields` VALUES ('10', 'created', '创建日期', '3', 'datetime', '0', '', '0', '0', '', '', '0', '0', '0', '0');
INSERT INTO `dili_model_fields` VALUES ('11', 'ip_address', 'ip', '3', 'input', '50', '', '0', '0', '', '', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `dili_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `dili_plugins`;
CREATE TABLE `dili_plugins` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `version` varchar(5) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `author` varchar(20) NOT NULL,
  `link` varchar(100) NOT NULL,
  `copyrights` varchar(100) NOT NULL,
  `access` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_plugins
-- ----------------------------

-- ----------------------------
-- Table structure for `dili_rights`
-- ----------------------------
DROP TABLE IF EXISTS `dili_rights`;
CREATE TABLE `dili_rights` (
  `right_id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
  `right_name` varchar(30) DEFAULT NULL,
  `right_class` varchar(30) DEFAULT NULL,
  `right_method` varchar(30) DEFAULT NULL,
  `right_detail` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`right_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_rights
-- ----------------------------
INSERT INTO `dili_rights` VALUES ('1', '密码修改', 'system', 'password', null);
INSERT INTO `dili_rights` VALUES ('2', '更新缓存', 'system', 'cache', null);
INSERT INTO `dili_rights` VALUES ('3', ' 站点设置', 'setting', 'site', null);
INSERT INTO `dili_rights` VALUES ('4', '后台设置', 'setting', 'backend', null);
INSERT INTO `dili_rights` VALUES ('5', '插件管理[列表]', 'plugin', 'view', null);
INSERT INTO `dili_rights` VALUES ('6', '添加插件', 'plugin', 'add', null);
INSERT INTO `dili_rights` VALUES ('7', '修改插件', 'plugin', 'edit', null);
INSERT INTO `dili_rights` VALUES ('8', '卸载插件', 'plugin', 'del', null);
INSERT INTO `dili_rights` VALUES ('9', '导出插件', 'plugin', 'export', null);
INSERT INTO `dili_rights` VALUES ('10', '导入插件', 'plugin', 'import', null);
INSERT INTO `dili_rights` VALUES ('11', '激活插件', 'plugin', 'active', null);
INSERT INTO `dili_rights` VALUES ('12', '禁用插件', 'plugin', 'deactive', null);
INSERT INTO `dili_rights` VALUES ('13', '运行插件', 'module', 'run', null);
INSERT INTO `dili_rights` VALUES ('14', '内容模型管理[列表]', 'model', 'view', null);
INSERT INTO `dili_rights` VALUES ('15', '添加内容模型', 'model', 'add', null);
INSERT INTO `dili_rights` VALUES ('16', '修改内容模型', 'model', 'edit', null);
INSERT INTO `dili_rights` VALUES ('17', '删除内容模型', 'model', 'del', null);
INSERT INTO `dili_rights` VALUES ('18', '内容模型字段管理[列表]', 'model', 'fields', null);
INSERT INTO `dili_rights` VALUES ('19', '添加内容模型字段', 'model', 'add_filed', null);
INSERT INTO `dili_rights` VALUES ('20', '修改内容模型字段', 'model', 'edit_field', null);
INSERT INTO `dili_rights` VALUES ('21', '删除内容模型字段', 'model', 'del_field', null);
INSERT INTO `dili_rights` VALUES ('22', '分类模型管理[列表]', 'category', 'view', null);
INSERT INTO `dili_rights` VALUES ('23', '添加分类模型', 'category', 'add', null);
INSERT INTO `dili_rights` VALUES ('24', '修改分类模型', 'category', 'edit', null);
INSERT INTO `dili_rights` VALUES ('25', '删除分类模型', 'category', 'del', null);
INSERT INTO `dili_rights` VALUES ('26', '分类模型字段管理[列表]', 'category', 'fields', null);
INSERT INTO `dili_rights` VALUES ('27', '添加分类模型字段', 'category', 'add_filed', null);
INSERT INTO `dili_rights` VALUES ('28', '修改分类模型字段', 'category', 'edit_field', null);
INSERT INTO `dili_rights` VALUES ('29', '删除分类模型字段', 'category', 'del_field', null);
INSERT INTO `dili_rights` VALUES ('30', '内容管理[列表]', 'content', 'view', null);
INSERT INTO `dili_rights` VALUES ('31', '添加内容[表单]', 'content', 'form', 'add');
INSERT INTO `dili_rights` VALUES ('32', '修改内容[表单]', 'content', 'form', 'edit');
INSERT INTO `dili_rights` VALUES ('33', '添加内容[动作]', 'content', 'save', 'add');
INSERT INTO `dili_rights` VALUES ('34', '修改内容[动作]', 'content', 'save', 'edit');
INSERT INTO `dili_rights` VALUES ('35', '删除内容', 'content', 'del', null);
INSERT INTO `dili_rights` VALUES ('36', '分类管理[列表]', 'category_content', 'view', null);
INSERT INTO `dili_rights` VALUES ('37', '添加分类[表单]', 'category_content', 'form', 'add');
INSERT INTO `dili_rights` VALUES ('38', '修改分类[表单]', 'category_content', 'form', 'edit');
INSERT INTO `dili_rights` VALUES ('39', '添加分类[动作]', 'category_content', 'save', 'add');
INSERT INTO `dili_rights` VALUES ('40', '修改分类[动作]', 'category_content', 'save', 'edit');
INSERT INTO `dili_rights` VALUES ('41', '删除分类', 'category_content', 'del', null);
INSERT INTO `dili_rights` VALUES ('42', '用户组管理[列表]', 'role', 'view', null);
INSERT INTO `dili_rights` VALUES ('43', '添加用户组', 'role', 'add', null);
INSERT INTO `dili_rights` VALUES ('44', '修改用户组', 'role', 'edit', null);
INSERT INTO `dili_rights` VALUES ('45', '删除用户组', 'role', 'del', null);
INSERT INTO `dili_rights` VALUES ('46', '用户管理[列表]', 'user', 'view', null);
INSERT INTO `dili_rights` VALUES ('47', '添加用户', 'user', 'add', null);
INSERT INTO `dili_rights` VALUES ('48', '修改用户', 'user', 'edit', null);
INSERT INTO `dili_rights` VALUES ('49', '删除用户', 'user', 'del', null);
INSERT INTO `dili_rights` VALUES ('50', '数据库备份', 'database', 'index', null);
INSERT INTO `dili_rights` VALUES ('51', '数据库还原', 'database', 'recover', null);
INSERT INTO `dili_rights` VALUES ('52', '数据库优化', 'database', 'optimize', null);
INSERT INTO `dili_rights` VALUES ('53', '留言', 'feedback', 'index', null);

-- ----------------------------
-- Table structure for `dili_roles`
-- ----------------------------
DROP TABLE IF EXISTS `dili_roles`;
CREATE TABLE `dili_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `rights` varchar(255) NOT NULL,
  `models` varchar(255) NOT NULL,
  `category_models` varchar(255) NOT NULL,
  `plugins` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_roles
-- ----------------------------
INSERT INTO `dili_roles` VALUES ('1', 'root', '', '', '', '');

-- ----------------------------
-- Table structure for `dili_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `dili_sessions`;
CREATE TABLE `dili_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_sessions
-- ----------------------------
INSERT INTO `dili_sessions` VALUES ('eccd154f5e5f6c3a8f66601938d497ba', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '1500878245', 'a:2:{s:9:\"user_data\";s:0:\"\";s:3:\"uid\";s:1:\"1\";}');
INSERT INTO `dili_sessions` VALUES ('c1d96d9459a0ae848cb75169cdf87ea9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '1501037226', 'a:2:{s:9:\"user_data\";s:0:\"\";s:3:\"uid\";s:1:\"1\";}');
INSERT INTO `dili_sessions` VALUES ('32532c86039d41fecf84b256b7e61862', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '1502014047', '');
INSERT INTO `dili_sessions` VALUES ('5261ea2eef3f9eead4a0c866d1baa02e', '127.0.0.1', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; WOW64; Trident/6.0; MASMJS)', '1502340358', '');
INSERT INTO `dili_sessions` VALUES ('fa7d9e0fdab1f2e966a9ac76347fd45b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.137 YaBrowser/17.4.1.919 Yowser/2.5', '1502350448', '');
INSERT INTO `dili_sessions` VALUES ('c09a0f122a377d19facfd8720b244052', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.0; rv:34.0) Gecko/20100101 Firefox/34.0', '1504964525', '');
INSERT INTO `dili_sessions` VALUES ('252677a2e539c94e5ca0c4601fd0d89b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.0; rv:34.0) Gecko/20100101 Firefox/34.0', '1504965679', '');
INSERT INTO `dili_sessions` VALUES ('c9a326d52e6387fff89af0316da7d71b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.0; rv:34.0) Gecko/20100101 Firefox/34.0', '1504966660', '');
INSERT INTO `dili_sessions` VALUES ('a8991d374ba90ac1a1cffb994ce1fb55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.0; rv:34.0) Gecko/20100101 Firefox/34.0', '1504967676', '');
INSERT INTO `dili_sessions` VALUES ('27916ba3a4b8d262a9caf0b542b56c81', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.0; rv:34.0) Gecko/20100101 Firefox/34.0', '1504968652', '');
INSERT INTO `dili_sessions` VALUES ('c586dbfe2071b448d4566147a941b92d', '127.0.0.1', 'Opera/9.80 (Windows NT 6.0) Presto/2.12.388 Version/12.14', '1507658087', '');

-- ----------------------------
-- Table structure for `dili_site_settings`
-- ----------------------------
DROP TABLE IF EXISTS `dili_site_settings`;
CREATE TABLE `dili_site_settings` (
  `site_name` varchar(50) DEFAULT NULL,
  `site_domain` varchar(50) DEFAULT NULL,
  `site_logo` varchar(50) DEFAULT NULL,
  `site_icp` varchar(50) DEFAULT NULL,
  `site_terms` text,
  `site_stats` varchar(200) DEFAULT NULL,
  `site_footer` varchar(500) DEFAULT NULL,
  `site_status` tinyint(1) DEFAULT '1',
  `site_close_reason` varchar(200) DEFAULT NULL,
  `site_keyword` varchar(200) DEFAULT NULL,
  `site_description` varchar(200) DEFAULT NULL,
  `site_theme` varchar(20) DEFAULT NULL,
  `attachment_url` varchar(50) DEFAULT NULL,
  `attachment_dir` varchar(20) DEFAULT NULL,
  `attachment_type` varchar(50) DEFAULT NULL,
  `attachment_maxupload` varchar(20) DEFAULT NULL,
  `thumbs_preferences` varchar(500) DEFAULT '[]'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_site_settings
-- ----------------------------
INSERT INTO `dili_site_settings` VALUES ('物业管理系统', 'http://www.dili.com/', 'images/logo.gif', '', '', '', '', '1', '网站维护升级中......', '物业管理系统', '物业管理系统', 'default', null, 'attachments', '*.jpg;*.gif;*.png;*.doc', '2097152', '[]');

-- ----------------------------
-- Table structure for `dili_throttles`
-- ----------------------------
DROP TABLE IF EXISTS `dili_throttles`;
CREATE TABLE `dili_throttles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_throttles
-- ----------------------------

-- ----------------------------
-- Table structure for `dili_u_c_aaa`
-- ----------------------------
DROP TABLE IF EXISTS `dili_u_c_aaa`;
CREATE TABLE `dili_u_c_aaa` (
  `classid` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(5) unsigned NOT NULL DEFAULT '0',
  `level` int(2) unsigned NOT NULL DEFAULT '1',
  `path` varchar(50) DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_u_c_aaa
-- ----------------------------

-- ----------------------------
-- Table structure for `dili_u_m_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `dili_u_m_feedback`;
CREATE TABLE `dili_u_m_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_user` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `update_user` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `jdfenlei_id` int(5) NOT NULL DEFAULT '0',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `huodongfenlei` int(10) NOT NULL DEFAULT '0',
  `renshu` int(5) NOT NULL DEFAULT '0',
  `content` varchar(1000) NOT NULL DEFAULT '',
  `created` varchar(100) NOT NULL DEFAULT '',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_u_m_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `dili_u_m_wuye`
-- ----------------------------
DROP TABLE IF EXISTS `dili_u_m_wuye`;
CREATE TABLE `dili_u_m_wuye` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_user` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `update_user` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_u_m_wuye
-- ----------------------------
INSERT INTO `dili_u_m_wuye` VALUES ('1', '1500099238', '1500099238', '1', '1', '0');
INSERT INTO `dili_u_m_wuye` VALUES ('2', '1500099245', '1500099245', '1', '1', '0');
INSERT INTO `dili_u_m_wuye` VALUES ('3', '1500099267', '1500099267', '1', '1', '0');
INSERT INTO `dili_u_m_wuye` VALUES ('4', '1500099340', '1500099340', '1', '1', '111');

-- ----------------------------
-- Table structure for `dili_validations`
-- ----------------------------
DROP TABLE IF EXISTS `dili_validations`;
CREATE TABLE `dili_validations` (
  `k` varchar(20) DEFAULT NULL,
  `v` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dili_validations
-- ----------------------------
INSERT INTO `dili_validations` VALUES ('required', '必填');
INSERT INTO `dili_validations` VALUES ('valid_email', 'E-mail格式');
