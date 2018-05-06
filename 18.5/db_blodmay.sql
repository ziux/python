/*
Navicat MySQL Data Transfer

Source Server         : ss
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : db_blodmay

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2018-05-01 11:47:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_article`
-- ----------------------------
DROP TABLE IF EXISTS `tb_article`;
CREATE TABLE `tb_article` (
  `id` int(11) NOT NULL,
  `typeID` int(11) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `phTime` varchar(30) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_article
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_articletype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_articletype`;
CREATE TABLE `tb_articletype` (
  `id` int(11) NOT NULL,
  `typeName` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_articletype
-- ----------------------------
INSERT INTO `tb_articletype` VALUES ('1', '个人日记', '记录一天所发生的事情');
INSERT INTO `tb_articletype` VALUES ('2', '个人随想', '记录心里所想');
INSERT INTO `tb_articletype` VALUES ('3', '人生感悟', '记录生活中所发生的事情');
INSERT INTO `tb_articletype` VALUES ('4', '网络编程', '记录工作中的经验');
INSERT INTO `tb_articletype` VALUES ('6', '随笔', '随笔写下生活中的点点滴滴');

-- ----------------------------
-- Table structure for `tb_consumer`
-- ----------------------------
DROP TABLE IF EXISTS `tb_consumer`;
CREATE TABLE `tb_consumer` (
  `id` int(11) NOT NULL,
  `account` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` char(5) DEFAULT NULL,
  `QQNumber` int(11) DEFAULT NULL,
  `mainPage` varchar(50) DEFAULT NULL,
  `interest` varchar(50) DEFAULT NULL,
  `eMail` varchar(50) DEFAULT NULL,
  `manageLevel` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_consumer
-- ----------------------------
INSERT INTO `tb_consumer` VALUES ('1', 'tsoft', '111', '*****', '男', '100310063', 'http://***oft.com', '读书，音乐，跳舞', 'wy9wy***@163.com', '高级');
INSERT INTO `tb_consumer` VALUES ('93', '00', '000000', '00', '女', '1020', '5555', '211', '88@**.com', '普通');
INSERT INTO `tb_consumer` VALUES ('72', 'wy8wy', '98989898', '程式猎人', '男', '100310063', 'http://***oft.com', '看书，写字', 'wy9wy***@163.com', '普通');
INSERT INTO `tb_consumer` VALUES ('73', 'wy7wy', '98989898', '一只鱼', '男', '100310063', 'http://***oft.com', '看书，写字', 'wy9wy***@163.com', '普通');
INSERT INTO `tb_consumer` VALUES ('74', 'wy6wy', '98989898', 'May', '女', '100310063', 'http://***oft.com', '看书，写字', 'wy9wy***@163.com', '普通');
INSERT INTO `tb_consumer` VALUES ('75', 'wy5wy', '98989898', '键盘', '女', '100310063', 'hhttp://***oft.com', '看书，写字', 'wy9wy***@163.com', '普通');
INSERT INTO `tb_consumer` VALUES ('76', 'wy4wy', '98989898', '鼠标', '女', '100310063', 'http://***oft.com', '看书，写字', 'wy9wy***@163.com', '普通');
INSERT INTO `tb_consumer` VALUES ('77', 'wy3wy', '98989898', '中华', '女', '100310063', 'http://***oft.comft.com', '看书，写字', 'wy9wy***@163.com', '普通');
INSERT INTO `tb_consumer` VALUES ('78', 'wy2wy', '98989898', '血色天空', '女', '100310063', 'hhttp://***oft.comft.com', '看书，写字', 'wy9wy***@163.com', '普通');
INSERT INTO `tb_consumer` VALUES ('79', 'wy1wy', '98989898', '蓝色海洋', '女', '100310063', 'hhttp://***oft.com', '看书，写字', 'wy9wy***@163.com', '普通');
INSERT INTO `tb_consumer` VALUES ('80', 'wy20wy', '98989898', '洋洋', '女', '100310063', 'htthttp://***oft.comft.com', '看书，写字', 'wy9wy***@163.com', '普通');
INSERT INTO `tb_consumer` VALUES ('81', 'wy19wy', '98989898', '妞妞', '女', '100310063', 'htthttp://***oft.comft.com', '看书，写字', 'wy9wy***@163.com', '普通');
INSERT INTO `tb_consumer` VALUES ('82', 'wy18wy', '98989898', '彬彬', '女', '100310063', 'htthttp://***oft.comoft.com', '看书，写字', 'wy9wy***@163.com', '普通');
INSERT INTO `tb_consumer` VALUES ('83', 'wy17wy', '98989898', '蓬蓬', '女', '100310063', 'htthttp://***oft.comft.com', '看书，写字', 'wy9wy***@163.com', '普通');
INSERT INTO `tb_consumer` VALUES ('84', 'wy16wy', '98989898', '多多', '女', '100310063', 'httphttp://***oft.comsoft.com', '看书，写字', 'wy9wy***@163.com', '普通');
INSERT INTO `tb_consumer` VALUES ('85', 'wy15wy', '98989898', '少少', '女', '100310063', 'hthttp://***oft.comoft.com', '看书，写字', 'wy9wy***@163.com', '普通');
INSERT INTO `tb_consumer` VALUES ('86', 'wy14wy', '98989898', '芊芊', '女', '100310063', 'httphttp://***oft.comft.com', '看书，写字', 'wy9wy***@163.com', '普通');

-- ----------------------------
-- Table structure for `tb_discuss`
-- ----------------------------
DROP TABLE IF EXISTS `tb_discuss`;
CREATE TABLE `tb_discuss` (
  `id` int(11) NOT NULL,
  `discussTitle` varchar(30) DEFAULT NULL,
  `discussContent` varchar(255) DEFAULT NULL,
  `discussTime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_discuss
-- ----------------------------
INSERT INTO `tb_discuss` VALUES ('2', 'Eclipse简述', '在深入学习Eclipse之前，首先对Eclipse做一个简单的了解。Eclipse是一个成熟的可扩展的Java开发工具。它的平台体系结构是在插件概念的基础上构建的，插件是Eclipse平台最具特色的特征之一，也是其区别于其他开发工具的特征之一。学习了本章之后，读者将对Eclipse有一个初步的了解，为后面的深入学习作个铺垫。', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('3', 'Eclipse的发展', 'Eclipse是一种可扩展的开放源代码IDE。2001年11月，由IBM公司捐出价值4,000万美元的源代码组建了Eclipse联盟，并由该联盟负责这种工具的后续开发。\r\n这个在IBM支持下的开发源代码项目经过一定时间的发展和完善后，目前已经被广大用户所接受。\r\n发展初期，Eclipse作为IDE阵营中的一个新成员，它必须证明自己可以被所有人都接受。同时还需要其他的开发工具能够对它进行技术支持。这一期间很多人对它的前景看好，也有些人对它不报希望。就是在这样的争论声中Eclipse得到了快速的发展。\r\n随着', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('4', '帮助系统', 'Eclipse提供了强大的帮助系统，它可以实现浏览、查询和打印文档的功能。该帮助系统以书籍的形式存在，操作用户可以通过帮助系统学习如果操作Eclipse；也可以通过其搜索引擎查找到所需要的帮助信息；还可以通过上下文帮助了解当前正在使用的某一功能的帮助信息。', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('5', '调试系统', 'Eclipse内置一个Java调试器，它可以帮助用户检测和诊断本地运行或远程运行的程序中的错误。调试器提供了设置断点、暂时挂起和恢复已启动的程序、单步执行代码和检查变量的内容等标准测试功能。\r\n调试器采用的是客户机／服务器设计，因此，操作用户可以调试在本地工作站上运行的程序，也可以调试在网络中的其他系统上远程运行的程序。调试器服务器与要调试的的程序在同一个系统上运行。这可以是在工作站上启动的程序（本地调试），也可以是通过网络访问的计算机上启动的程序（远程调试）。\r\n', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('8', 'NetBeans', 'NetBeans是SUN公司开发的一款开放源码的Java集成开发环境，适用于各种客户机和Web应用。开发人员可以利用NetBeans构建桌面、Web或移动应用。同时，通过NetBeans和开发的API的模块化结构，第三方能够非常轻松的扩展或集成NetBeans平台。', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('9', '团队协作', '在工程项目管理过程中，随着项目的不断扩大，涉及到的开放人员也在不断的增加，这样常常会遇到同一时间有两个或多个开发人员在修改同一源文件，这样就会造成某些资源的丢失，而文件则保存为最后被修改的状态..\r\nEclipse中引入了CVS（Concurrent Versions System，CVS）并发版本控制系统来对项目开发中涉及到的资源进行统一的资源管理。CVS在实现版本控制的同时，还可以为团队开发提供灵活、方便的选择。在项目开发过程中，将项目资料存放在CVS服务器中，任何时候，团队的成员都可以根据服务器中的', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('11', '类 String', 'String 类包括的方法有：检查序列的单个字符；比较字符串；搜索字符串；提取子字符串；创建字符串副本，在该副本中，所有的字符都被转换为大写或小写形式。大小写映射基于 Character 类指定的 Unicode Standard 版本。 \r\n\r\nJava 语言提供对字符串串联符号（\"+\"）和其他对象到字符串的转换的特殊支持。字符串串联是通过 StringBuilder（或 StringBuffer）类及其 append 方法实现的。字符串转换是通过 toString 方法实现的，该方法由 Object ', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('12', '连接数据库技术', '几乎所有在Internet上看到的Web应用程序都需要访问数据库。而数据库则是用于存储各种信息，例如客户信息、订单信息、产品信息甚至论坛的讨论信息，从这里可以看到所有需要在服务器重启时仍不丢失、又复杂到不能用纯文本文件进行处理的信息。目前，有许多种数据库在工业中发挥着作用。然而在众多数据库中，关系数据库是最常用的。关系数据库引擎有着各种各样的形式和大小，从简单的、功能有限的个人数据库到复杂的、能够处理大量当前用户的数据库，这些复杂的数据库支持将事务分布到多个服务器上，并能够对搜索算法进行极大的优化。尽管它', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('14', 'JDBC驱动管理器', 'JDBC驱动管理器的作用就是在JDBC运行结构上提供最基础的指引功能。即当一个JDBC API程序进行数据库调用时，会选择一个正确的JDBC驱动程序进行连接。', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('16', 'JavaBean的技术介绍', '什么是JavaBean？它是一种Java类，通过封装属性和方法成为具有独立功能、可重复使用的并且可以与其他们控件通讯的组件对象。\r\nJavaBean被组织成为数据包（Package）以便进行管理。JavaBean的结构必须满足一定的命名约定。这些约定由Sun和其他几个大公司\r\n制订，称为JavaBean API。只要遵守JavaBean API的命名约定，就可以开发出可重用且独立的Java组件。在JSP中，使用bean标签集合，JSP开发者不需要编写任何代码就能利用Java强大的功能为页面添加动态元素。\r', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('17', '可见的Bean', '可见的Bean顾名思义就是可以显示出来的Bean，通过属性接口接收数据并将显示数据信息，这就是可见Bean的功能。', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('21', '实现Serializable Interface', '在Java里面可以将JavaBean类以当前状态存入文件中，而且可以通过网络传递给别的机器。Java的这一功能被称为Serializable。为了使Serializable成为可能，必须在相应的类上实现Serializable Interface。也就是说，如果对JavaBean实现了Serializable Interface，那么在保存或向网络传递某种状态时会比其他技术更为便利。', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('23', '开 发 环 境', '硬件平台：\r\n	CPU：P4 1.8GHz\r\n	内存：256MB以上\r\n软件平台：\r\n	操作系统：Windows 2000 Server\r\n	数据库：SQL Server2000\r\n	开发工具包：JDK 1.4.2\r\n	JSP服务器：Tomcat 5.0\r\n	浏览器：IE 5.0，推荐使用IE6.0\r\n', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('24', '设计与分析', '设计网站论坛时，首先应该区别是普通用户登录还是管理员登录。如果以普通用户登陆，那么该用户只有查看和回复留言的权限。如果以管理员登录，则除具有查看或回复权限外，还具有管理论坛的权限。\r\n在用户发表留言后，将显示出该用户的用户名，性别、留言内容和留言时间等内容。如果某个留言有回复内容，则显示出是谁回复了该篇留言及回复内容。\r\n另外，本例还可在页面中显示当前的系统时间和访问量等数据。\r\n', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('25', '技 术 要 点', '通过视图将各个表中的数据联系起来，可以对数据进行效率更高的操作。\r\n使用脚本语言（JavaScript）实现系统当前时间的显示、用户登录时的录入信息控制、系统提示。\r\n通过application对象实现网站访问量的统计。并通过标签<marquee>实现访问量的滚动显示。\r\n通过标签<marquee>实现滚动显示当前的访问量。\r\n通过刷新top.jsp来提供用户登录后的权限。\r\n', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('26', '公告标题', '公告内容、公告内容', '2007年12月17日 星期一');
INSERT INTO `tb_discuss` VALUES ('6', '平台运行时', '平台运行时（Platform Runtime）是负责管理、发现和启动已经安装的插件，它整体现了Eclipse体系结构的核心，即如何动态发现、装入和运行插件。\r\n当用户启动并使用Eclipse开发应用程序时，平台运行引擎就会启动，它在plugin.xml文件中查找插件的声明，在各个插件的文件夹下都有plugin.xml文件，而这些插件的文件夹都位于\\eclipse\\plugins\\文件夹下。Eclipse平台运行时根据这些文件，在启动时就构建一个插件注册表。根据这个插件注册表，给定的插件就可以知道哪些插件希', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('7', 'JBuilder', 'JBuilder是Borland公司开发的一种商业软件，一直受到业界人士关注和好评，它满足了很多方面的应用，是曾经风靡一时的跨平台Java开发工具。JBuilder以其友好的界面在业界受到广泛的赞誉，它是纯Java开发环境，适合企业的J2EE开发。缺点也是极为明显的，它将各种工具集成在一起，势必造成对机器硬件的要求较高，比较占内存，运行速度自然很慢，很多开发者对此望而却步。', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('13', 'JDBC驱动程序', 'JDBC驱动的作用是当JDBC API制作的程序进行数据调用时，实际地连接数据库并进行相应的处理。JDBC驱动提供JDBC API的接口类。JDBC驱动一般来说都包含在数据库当中，也有一些是由软件商个别提供的，而其中也有免费提供的。', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('15', 'JavaBean的产生', '在因特网、企业网和各种网络发展的形式下，人们对在各种专用处理器中运行的语言的需求日益增强。在这种情况下，Sun公司以其开放标准公布了Java及其工作方法。虽然Java有其特有的优点，但是，Java也有自己没有解决的问题。这主要表现在以下3方面：\r\n1．Java是作为能够提供可重用对象的面向对象的技术来招揽客户的，它确实能使用户建立可重用的对象，但是却没有管理这些对象之间交互作用的规划或者标准。\r\n2．管当前的Java组件模型运行得很好，但是在传送真正的可重用性与相互操作性上仍比较受限制。\r\n3．Java中', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('19', 'JavaBean的形式和要素', 'JavaBean是一种组件技术，所以JavaBean将内部的动作封装起来，看不到它的运行机制，它只提供最小限度的属性接口供外壳控制应用。JavaBean为了提供组件的功能，必须满足以下3种条件：\r\n拥有一个无参数的构造函数（NO Parameter，Constructor）。\r\n实现serializabel interface。\r\n必须提供Property Interface属性接口。\r\n', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('20', '拥有一个无参数', 'JavaBean要有无参数的构造函数。无参数构造函数是指在利用new生成新的类的时候不必提供特别的参数即可产生类。\r\n无参数构造函数是JSP Container在自动使用JavaBean的时候参考的构造函数。即，当我们想要接收表单数据的时候，将用户输入的信息存储到名为FormBean的Beans里面进行处理。在这种情况下JSP Container将自动生成FormBean的实体。此时JSP Container就是使用FormBean的无参数构造函数生成实体，再根据用户输入值变换实体的。\r\n如果以Examp', '2007年10月22日 星期一');
INSERT INTO `tb_discuss` VALUES ('18', '不可见的Bean', '不可见的Bean就是不显示的Bean，在程序内部起作用。不可见的Bean在JSP程序中往往用来执行对数据库的操作和封装事务逻辑等操作，这样可以很好的将业务逻辑和前台程序相分离，使系统更健壮更灵活。由此像这种功能的Bean就是一个组件，且因为是不可见的，称之为不可见的Bean。\r\n不可见的Bean分为DataBean（数据Bean）和ActionBean（功能Bean），DataBean是用于存储必要数据的Beans，而ActionBean是运用DataBean上存储的数据进行特定作业的Beans。程序人员', '2007年10月22日 星期一');

-- ----------------------------
-- Table structure for `tb_friend`
-- ----------------------------
DROP TABLE IF EXISTS `tb_friend`;
CREATE TABLE `tb_friend` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `QQNumber` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_friend
-- ----------------------------
INSERT INTO `tb_friend` VALUES ('28', '伟高', '14141', '书稿质量等级的评定采用评分制，由质量部门进行评定。');
INSERT INTO `tb_friend` VALUES ('3', '龙儿', '100310063', 'VC编程高手');
INSERT INTO `tb_friend` VALUES ('4', '程式猎人', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('5', '城中狼1', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('6', '城中狼2', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('7', '城中狼3', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('8', '城中狼4', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('9', '城中狼5', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('10', '城中狼6', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('11', '城中狼7', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('12', '城中狼8', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('13', '城中狼9', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('14', '城中狼0', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('15', '城中狼10', '303****', 'JSP?程高手');
INSERT INTO `tb_friend` VALUES ('17', '城中狼12', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('18', '城中狼13', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('19', '城中狼14', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('20', '城中狼15', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('21', '城中狼16', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('22', '城中狼17', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('23', '城中狼18', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('24', '城中狼19', '303****', 'JSP編程高手');
INSERT INTO `tb_friend` VALUES ('25', '城中狼20', '303****', 'JSP編程高手');

-- ----------------------------
-- Table structure for `tb_photo`
-- ----------------------------
DROP TABLE IF EXISTS `tb_photo`;
CREATE TABLE `tb_photo` (
  `id` int(11) NOT NULL,
  `photoAddress` varchar(50) DEFAULT NULL,
  `photoDescription` varchar(50) DEFAULT NULL,
  `phtoTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_photo
-- ----------------------------
INSERT INTO `tb_photo` VALUES ('18', 'file/17.jpg', '飞鹰', '2007年12月17日 星期一');
INSERT INTO `tb_photo` VALUES ('14', 'file/13.JPG', '凤凰山', '2007年10月22日 星期一');
INSERT INTO `tb_photo` VALUES ('16', 'file/15.JPG', '岛', '2007年10月22日 星期一');
INSERT INTO `tb_photo` VALUES ('17', 'file/16.JPG', '雕塑', '2007年10月22日 星期一');
INSERT INTO `tb_photo` VALUES ('9', 'file/8.JPG', '小狗3', '2007年10月22日 星期一');

-- ----------------------------
-- Table structure for `tb_restore`
-- ----------------------------
DROP TABLE IF EXISTS `tb_restore`;
CREATE TABLE `tb_restore` (
  `id` int(11) NOT NULL,
  `articleId` int(11) DEFAULT NULL,
  `reAccount` varchar(50) DEFAULT NULL,
  `reTitle` varchar(50) DEFAULT NULL,
  `reContent` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_restore
-- ----------------------------
INSERT INTO `tb_restore` VALUES ('7', '1', '1', '文章不错', '文章写的很不错');

-- ----------------------------
-- Table structure for `tb_vote`
-- ----------------------------
DROP TABLE IF EXISTS `tb_vote`;
CREATE TABLE `tb_vote` (
  `id` int(11) NOT NULL,
  `voteName` varchar(20) DEFAULT NULL,
  `voteNumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_vote
-- ----------------------------
INSERT INTO `tb_vote` VALUES ('10', 'Java编程', '0');
INSERT INTO `tb_vote` VALUES ('11', 'VB编程', '0');
INSERT INTO `tb_vote` VALUES ('12', 'VC编程', '2');
INSERT INTO `tb_vote` VALUES ('14', 'VF', '2');
INSERT INTO `tb_vote` VALUES ('13', 'PB编程', '1');
