/*
 Navicat Premium Data Transfer

 Source Server         : hello
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : jd

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 13/01/2019 13:57:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alreadyjoinchild
-- ----------------------------
DROP TABLE IF EXISTS `alreadyjoinchild`;
CREATE TABLE `alreadyjoinchild`  (
  `id` int(11) NOT NULL,
  `noticeid` int(11) NULL DEFAULT NULL,
  `starname` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `babys` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `childId` int(11) NULL DEFAULT NULL,
  `headpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isAuth` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `height` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alreadyjoinchild
-- ----------------------------
INSERT INTO `alreadyjoinchild` VALUES (12, 23, '童星角色名', '对应参加得萌娃', 53, 'url', '萌娃姓名', '1881-03-06', '福建三明', '0', '1', '150cm');

-- ----------------------------
-- Table structure for childinvite
-- ----------------------------
DROP TABLE IF EXISTS `childinvite`;
CREATE TABLE `childinvite`  (
  `contacter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `babyid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of childinvite
-- ----------------------------
INSERT INTO `childinvite` VALUES ('卢永福', '544544541', 'cudh');
INSERT INTO `childinvite` VALUES ('吴同岳', '18814137350', '455');

-- ----------------------------
-- Table structure for enroll
-- ----------------------------
DROP TABLE IF EXISTS `enroll`;
CREATE TABLE `enroll`  (
  `babyid` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `noticeid` int(11) NULL DEFAULT NULL,
  `nstarid` int(11) NULL DEFAULT NULL,
  `contacts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contactmode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `intergal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT 7,
  PRIMARY KEY (`babyid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enroll
-- ----------------------------
INSERT INTO `enroll` VALUES (123, '面议', 23, 56, '父亲名', '110', NULL, '25', '报名成功', '0', 7);

-- ----------------------------
-- Table structure for gehotnotice
-- ----------------------------
DROP TABLE IF EXISTS `gehotnotice`;
CREATE TABLE `gehotnotice`  (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `people` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` int(30) NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gehotnotice
-- ----------------------------
INSERT INTO `gehotnotice` VALUES (213, '热门通告', '三明', '25', 30, 'url');

-- ----------------------------
-- Table structure for getbanner
-- ----------------------------
DROP TABLE IF EXISTS `getbanner`;
CREATE TABLE `getbanner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of getbanner
-- ----------------------------
INSERT INTO `getbanner` VALUES (1, 'hncfjdv', 'https://www.baidu.com/img/bd_logo1.png');

-- ----------------------------
-- Table structure for getchilddetail
-- ----------------------------
DROP TABLE IF EXISTS `getchilddetail`;
CREATE TABLE `getchilddetail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weight` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `height` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shoesize` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nationality` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lookstyle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `speciality` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shotexp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `showexp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `awardexp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cardmode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isAuth` int(2) NOT NULL,
  `istuijian` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dramas` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cardmodes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `arts` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imgid` int(11) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lifes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `award` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isCollection` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of getchilddetail
-- ----------------------------
INSERT INTO `getchilddetail` VALUES (1, '小呆瓜', '20kg', '120cm', '41码', '1994-06-44', '福建三明', '1', '国籍', ' chydfgvh.jpg', '可爱', '你好', 'ww', 'ww', 'ww', 'ww', 1, 'dfhd', 'ddc', 'dcjd', 'dscc', 23, 'http://img5.imgtn.bdimg.com/it/u=49764040,3750999451&fm=26&gp=0.jpg', 'duf', 'dcc', 'dghd', '1');
INSERT INTO `getchilddetail` VALUES (2, '吴同月', '30kg', '130cm', '40码', '1994-07-44', '广东', '0', '国籍', '对方V发个', '发V方便', '肥东人', 'ddc', 'ddd', 'ddd', 'dd', 0, 'xs', 'sds', 'ssds', 'sds', 54, 'sdsds', 'dsds', 'dsdsd', 'dsds', '1');

-- ----------------------------
-- Table structure for getenrollchildpricetype
-- ----------------------------
DROP TABLE IF EXISTS `getenrollchildpricetype`;
CREATE TABLE `getenrollchildpricetype`  (
  `noticeid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `equalpay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `vip_style` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT 7,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of getenrollchildpricetype
-- ----------------------------
INSERT INTO `getenrollchildpricetype` VALUES (122, 12, '小天鹅', '片酬', '520', 'vip', 7);

-- ----------------------------
-- Table structure for getfilterchild
-- ----------------------------
DROP TABLE IF EXISTS `getfilterchild`;
CREATE TABLE `getfilterchild`  (
  `height` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(1) NOT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cardmode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nationatily` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lookstyle` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `speciality` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `video` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isAuth` int(2) NOT NULL,
  `weight` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of getfilterchild
-- ----------------------------
INSERT INTO `getfilterchild` VALUES ('120cm', 1, '广东广州', '1', '国籍', '逗比', '才艺', '8', '是', 1, '吴同岳', '1885-15-11', 0, '15kg', 'url1');
INSERT INTO `getfilterchild` VALUES ('100cm', 0, '福建三明', '0', '中国', '可爱', '善于演出', '9', '否', 2, '录用山', '1558-11-15', 0, '16kg', 'url2');

-- ----------------------------
-- Table structure for getheadtiao
-- ----------------------------
DROP TABLE IF EXISTS `getheadtiao`;
CREATE TABLE `getheadtiao`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of getheadtiao
-- ----------------------------
INSERT INTO `getheadtiao` VALUES (1, '请问啊你好你好你好啊');
INSERT INTO `getheadtiao` VALUES (2, '新年快乐啊');

-- ----------------------------
-- Table structure for gethomenav
-- ----------------------------
DROP TABLE IF EXISTS `gethomenav`;
CREATE TABLE `gethomenav`  (
  `id` int(11) NOT NULL COMMENT '分类id',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ico地址',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名',
  `data` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '子分类',
  `data_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '子分类名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gethomenav
-- ----------------------------
INSERT INTO `gethomenav` VALUES (12, 'baidu.com', '首页导航', '通告', '无');
INSERT INTO `gethomenav` VALUES (344, 'wsd', '设法', '活动', '无');
INSERT INTO `gethomenav` VALUES (3453, 'dfd', '地方', '童星', '无');
INSERT INTO `gethomenav` VALUES (1212, 'edwd', '单位', '附近', '无');
INSERT INTO `gethomenav` VALUES (433, 'dcd', '曾多次', '更多', '无');

-- ----------------------------
-- Table structure for getnoticedetail
-- ----------------------------
DROP TABLE IF EXISTS `getnoticedetail`;
CREATE TABLE `getnoticedetail`  (
  `id` int(11) NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `film` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` int(5) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT 7,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of getnoticedetail
-- ----------------------------
INSERT INTO `getnoticedetail` VALUES (12, 'url', '美丽的，通告', '影视组讯', '35673', '广东广州', '固戍', '内容', 30, 7);

-- ----------------------------
-- Table structure for getnoticedetailbabys
-- ----------------------------
DROP TABLE IF EXISTS `getnoticedetailbabys`;
CREATE TABLE `getnoticedetailbabys`  (
  `id` int(11) NOT NULL,
  `headpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isPart` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isCollection` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of getnoticedetailbabys
-- ----------------------------
INSERT INTO `getnoticedetailbabys` VALUES (12, 'url', 'true', 'true', NULL);

-- ----------------------------
-- Table structure for getnoticedetailjob
-- ----------------------------
DROP TABLE IF EXISTS `getnoticedetailjob`;
CREATE TABLE `getnoticedetailjob`  (
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(3) NULL DEFAULT NULL,
  `height` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `equalpay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT 7,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of getnoticedetailjob
-- ----------------------------
INSERT INTO `getnoticedetailjob` VALUES ('job', 12, '童星职位', '1', 100, '120cm', '面议', '520', 7);

-- ----------------------------
-- Table structure for getnoticefiltercondition
-- ----------------------------
DROP TABLE IF EXISTS `getnoticefiltercondition`;
CREATE TABLE `getnoticefiltercondition`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of getnoticefiltercondition
-- ----------------------------
INSERT INTO `getnoticefiltercondition` VALUES (30, '3-6');
INSERT INTO `getnoticefiltercondition` VALUES (30, '6-9');
INSERT INTO `getnoticefiltercondition` VALUES (28, '平面设计');
INSERT INTO `getnoticefiltercondition` VALUES (28, '影视组讯');
INSERT INTO `getnoticefiltercondition` VALUES (28, '短视频');
INSERT INTO `getnoticefiltercondition` VALUES (28, '火山短视频');
INSERT INTO `getnoticefiltercondition` VALUES (29, '110-130');
INSERT INTO `getnoticefiltercondition` VALUES (29, '130-140');
INSERT INTO `getnoticefiltercondition` VALUES (29, '140-160');
INSERT INTO `getnoticefiltercondition` VALUES (30, '3-6');
INSERT INTO `getnoticefiltercondition` VALUES (30, '1-3');
INSERT INTO `getnoticefiltercondition` VALUES (27, '女');
INSERT INTO `getnoticefiltercondition` VALUES (27, '男');

-- ----------------------------
-- Table structure for getnoticefilterplace
-- ----------------------------
DROP TABLE IF EXISTS `getnoticefilterplace`;
CREATE TABLE `getnoticefilterplace`  (
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of getnoticefilterplace
-- ----------------------------
INSERT INTO `getnoticefilterplace` VALUES ('广州', '美丽的公告');
INSERT INTO `getnoticefilterplace` VALUES ('三明', '很好的公告');
INSERT INTO `getnoticefilterplace` VALUES ('广州', '文明的公告');
INSERT INTO `getnoticefilterplace` VALUES ('广州', '澳源公告');

-- ----------------------------
-- Table structure for getnoticelist
-- ----------------------------
DROP TABLE IF EXISTS `getnoticelist`;
CREATE TABLE `getnoticelist`  (
  `id` int(11) NOT NULL,
  `placeTop` int(3) NOT NULL DEFAULT 1,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `talk_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `film` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `people` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `endtime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` int(6) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of getnoticelist
-- ----------------------------
INSERT INTO `getnoticelist` VALUES (28, 1, '大型演出', '面议', '影视组讯', '三明', '30', '2018-01-1', 30, '1', '1-3', '0', '类型');
INSERT INTO `getnoticelist` VALUES (29, 0, '小型演出', '片酬', '短视频', '三明', '25', '2019-02-25', 26, '2', '3-6', '0', '身高');
INSERT INTO `getnoticelist` VALUES (27, 1, '中型演出', '免费', '短视频', '广州', '15', '43657843', 23, '3', '6-9', '1', '性别');
INSERT INTO `getnoticelist` VALUES (1, 0, '恰恰舞', '面议', '影视组讯', '广州', '14', '43553456', 20, '5', '9-10', '0', NULL);
INSERT INTO `getnoticelist` VALUES (30, 1, '广场舞', '付费', '平面设计', '北京', '14', '54466456', 54, '4', '3-6', '0', '年龄');

-- ----------------------------
-- Table structure for getotherrdchildauthor
-- ----------------------------
DROP TABLE IF EXISTS `getotherrdchildauthor`;
CREATE TABLE `getotherrdchildauthor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(3) NOT NULL,
  `isAuth` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `height` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weight` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of getotherrdchildauthor
-- ----------------------------
INSERT INTO `getotherrdchildauthor` VALUES (1, '知名', 'url', '1994-11-06', '童星萌萌的', 0, '234', '123cm', '65kg');

-- ----------------------------
-- Table structure for getotherrdchildrec
-- ----------------------------
DROP TABLE IF EXISTS `getotherrdchildrec`;
CREATE TABLE `getotherrdchildrec`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(3) NOT NULL,
  `isAuth` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `height` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weight` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of getotherrdchildrec
-- ----------------------------
INSERT INTO `getotherrdchildrec` VALUES (1, '童星推荐', 'url', '1994-11-06', '童星萌萌的', 0, '234', '123cm', '65kg');

-- ----------------------------
-- Table structure for getotherrdchildtoday
-- ----------------------------
DROP TABLE IF EXISTS `getotherrdchildtoday`;
CREATE TABLE `getotherrdchildtoday`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of getotherrdchildtoday
-- ----------------------------
INSERT INTO `getotherrdchildtoday` VALUES (1, '今日推荐', 'url', '1994-11-06', '童星萌萌的');

-- ----------------------------
-- Table structure for getotherrdchildxiao
-- ----------------------------
DROP TABLE IF EXISTS `getotherrdchildxiao`;
CREATE TABLE `getotherrdchildxiao`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(3) NOT NULL,
  `isAuth` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `height` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weight` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of getotherrdchildxiao
-- ----------------------------
INSERT INTO `getotherrdchildxiao` VALUES (1, '小', 'url', '1994-11-06', '童星萌萌的', 0, '234', '123cm', '65kg');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (2, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('9704986ccd219617674e7901451bd78f426d32f1f56f0cd6ca9428dd3d17dd1e6588d5d74018196f', 1, 1, 'MyApp', '[]', 0, '2018-12-18 11:00:47', '2018-12-18 11:00:47', '2019-12-18 11:00:47');
INSERT INTO `oauth_access_tokens` VALUES ('0b0325e670c106dee73e104f4a80ddfc774e125be6058ee0eb4af30249624ad211aa2bcfe2afc2c2', 1, 1, 'MyApp', '[]', 0, '2018-12-18 10:58:45', '2018-12-18 10:58:45', '2019-12-18 10:58:45');
INSERT INTO `oauth_access_tokens` VALUES ('c257228fb971814638e4824c58662f12444f70236801e6d27aea9a9cafd9ae869193eb53452e8b98', 1, 1, 'MyApp', '[]', 0, '2018-12-18 11:02:15', '2018-12-18 11:02:15', '2019-12-18 11:02:15');
INSERT INTO `oauth_access_tokens` VALUES ('bc79c58ccc158b3632c8959eb5a5d637a6ee2a51358ccecea112f1ba9605f8534877d2b68642551d', 1, 1, 'MyApp', '[]', 0, '2018-12-18 11:02:35', '2018-12-18 11:02:35', '2019-12-18 11:02:35');
INSERT INTO `oauth_access_tokens` VALUES ('4051fc323ff2b9a5d54c988bf4756028940fc1442faa2a05d6e6a937ac9a5e744ebd2cc728a08c7c', 1, 1, 'MyApp', '[]', 0, '2018-12-18 11:02:44', '2018-12-18 11:02:44', '2019-12-18 11:02:44');
INSERT INTO `oauth_access_tokens` VALUES ('70d1dce764c4fb514fe5d3f9621e3ca22973a0847fb1e333394373ecfac0180a3f5afe225532464b', 1, 1, 'MyApp', '[]', 0, '2018-12-18 11:03:04', '2018-12-18 11:03:04', '2019-12-18 11:03:04');
INSERT INTO `oauth_access_tokens` VALUES ('be207fa5ee001878b4f677f223311674c48345848a166f11454ee554c015240df0572309b74deaa5', 1, 1, 'MyApp', '[]', 0, '2018-12-18 11:03:27', '2018-12-18 11:03:27', '2019-12-18 11:03:27');
INSERT INTO `oauth_access_tokens` VALUES ('22a3422831463d24d53c2e770e5c3178747b88d185558ed7cd567884c0ed83fe4dc3cbb8deb124cb', 1, 1, 'MyApp', '[]', 0, '2018-12-18 11:03:43', '2018-12-18 11:03:43', '2019-12-18 11:03:43');
INSERT INTO `oauth_access_tokens` VALUES ('a17be9af3df3f413b982393d6800a3ffc967cc03f6675c6ea112044ebfe209b68f409e980abbc1b4', 16, 1, 'MyApp', '[]', 0, '2018-12-21 01:58:49', '2018-12-21 01:58:49', '2019-12-21 01:58:49');
INSERT INTO `oauth_access_tokens` VALUES ('a32f0b1453329f162476202624923831f4a4c476c4bb40bd462a267d2222629208105c2991fbb27d', 17, 1, 'MyApp', '[]', 0, '2018-12-21 02:01:14', '2018-12-21 02:01:14', '2019-12-21 02:01:14');
INSERT INTO `oauth_access_tokens` VALUES ('ffcd43971cf95bbc761549adbf30d2e6e5a7798a49dac9d435326dbc36a7c2f0799807b57500e976', 17, 1, 'MyApp', '[]', 0, '2018-12-21 02:03:05', '2018-12-21 02:03:05', '2019-12-21 02:03:05');
INSERT INTO `oauth_access_tokens` VALUES ('013db2f1aeefd080ccef896181c29bfaf29a613524907faef4ba3eb40122157e908e3636d4001346', 17, 1, 'MyApp', '[]', 0, '2018-12-21 02:03:30', '2018-12-21 02:03:30', '2019-12-21 02:03:30');
INSERT INTO `oauth_access_tokens` VALUES ('b63fbe52d76d2d56af7fbfa0b10ae2d0bcd3a6bb8b17619c4e55ba864835c4fa429d4e070de7e735', 17, 1, 'MyApp', '[]', 0, '2018-12-21 02:04:35', '2018-12-21 02:04:35', '2019-12-21 02:04:35');
INSERT INTO `oauth_access_tokens` VALUES ('406f5d764ebb719a1545e53d80d3b181a5235356aed8675eb836a329ab4d1555874f6e078c4d81ef', 17, 1, 'MyApp', '[]', 0, '2018-12-21 02:04:52', '2018-12-21 02:04:52', '2019-12-21 02:04:52');
INSERT INTO `oauth_access_tokens` VALUES ('ea7ca574cb6e11c37c285709fbb0c3d486efb04eb2813f56d80582f20bf08a9fb1875f132417ff00', 17, 1, 'MyApp', '[]', 0, '2018-12-21 02:04:52', '2018-12-21 02:04:52', '2019-12-21 02:04:52');
INSERT INTO `oauth_access_tokens` VALUES ('6471e3801930334f7b3e964cf01d503d2f5f8c42901553bcf04a691cdba24635de64f8c325770849', 17, 1, 'MyApp', '[]', 0, '2018-12-21 02:13:07', '2018-12-21 02:13:07', '2019-12-21 02:13:07');
INSERT INTO `oauth_access_tokens` VALUES ('5ef7cb0baf50a34e99e635a4f01f789ece079bb07bed26928b20a2925637c532d5c978582a2b2134', 17, 1, 'MyApp', '[]', 0, '2018-12-21 02:13:43', '2018-12-21 02:13:43', '2019-12-21 02:13:43');
INSERT INTO `oauth_access_tokens` VALUES ('cb0dd22c1b173491b4633e8a49ae2ea35f8e0714ccd4bdc559bda44e914d7310a21d89cba0108c92', 17, 1, 'MyApp', '[]', 0, '2018-12-21 03:17:31', '2018-12-21 03:17:31', '2019-12-21 03:17:31');
INSERT INTO `oauth_access_tokens` VALUES ('69389cecf3dabd6b2b8f45920f155ae600e2177f704522a30fd5fd8c0ea5e83b548ee8ef02b968ea', 17, 1, 'MyApp', '[]', 0, '2018-12-21 03:17:56', '2018-12-21 03:17:56', '2019-12-21 03:17:56');
INSERT INTO `oauth_access_tokens` VALUES ('d881db4b26be11fa63422615475e6f6ae7515119dd8b4f00d11f2b9d15ff48ae3048f6e5ab7a0d11', 17, 1, 'MyApp', '[]', 0, '2018-12-21 03:40:34', '2018-12-21 03:40:34', '2019-12-21 03:40:34');
INSERT INTO `oauth_access_tokens` VALUES ('63032c31286225a0e8bf9956ce4478399a250c8caecb8c6b2fc5ef81c84c64af4ebed2a7f67d14dc', 17, 1, 'MyApp', '[]', 0, '2018-12-21 03:40:59', '2018-12-21 03:40:59', '2019-12-21 03:40:59');
INSERT INTO `oauth_access_tokens` VALUES ('35ffc4d9aafd5b2a8634defbde852fb4fe379f94ca8059508f82131d3666340d4318a44dcbdf4495', 17, 1, 'MyApp', '[]', 0, '2018-12-21 03:41:22', '2018-12-21 03:41:22', '2019-12-21 03:41:22');
INSERT INTO `oauth_access_tokens` VALUES ('9e6a0c609261b72e50bdaa4e369ed8e3e55b6587a75a03af5e9dedf1086f9a9c448272d120c00d77', 17, 1, 'MyApp', '[]', 0, '2018-12-21 03:50:47', '2018-12-21 03:50:47', '2019-12-21 03:50:47');
INSERT INTO `oauth_access_tokens` VALUES ('45bd951032363716ef242f872e2f9048c92635007797de7ac4c4c97817a4d20a2a9cc09afb634d38', 17, 1, 'MyApp', '[]', 0, '2018-12-21 03:50:54', '2018-12-21 03:50:54', '2019-12-21 03:50:54');
INSERT INTO `oauth_access_tokens` VALUES ('bcf6afbeae03ff2b0e6d03f8204698036a70a2916034f2dbdcab5d9891de9ba8e8fdfc950e69a5cc', 17, 1, 'MyApp', '[]', 0, '2018-12-21 04:02:52', '2018-12-21 04:02:52', '2019-12-21 04:02:52');
INSERT INTO `oauth_access_tokens` VALUES ('7fa7e19d960f990d9838c3a1cba83b2c30c9989fd043205d313002fd1ada28fbcb7383e3c10665b0', 17, 1, 'MyApp', '[]', 0, '2018-12-21 04:03:24', '2018-12-21 04:03:24', '2019-12-21 04:03:24');
INSERT INTO `oauth_access_tokens` VALUES ('80c38c3e085b4968e9db180fc849075ef6f340878d67dc18798e2f784b6446a45c5b0347893ec74c', 17, 1, 'MyApp', '[]', 0, '2018-12-21 05:39:35', '2018-12-21 05:39:35', '2019-12-21 05:39:35');
INSERT INTO `oauth_access_tokens` VALUES ('dc6e9964ec7e649800a7d1c0943a65adebb211f0ad9cc819f1b6261de6a1947434dc2821aa5a0029', 17, 1, 'MyApp', '[]', 0, '2018-12-21 05:39:43', '2018-12-21 05:39:43', '2019-12-21 05:39:43');
INSERT INTO `oauth_access_tokens` VALUES ('4ba25bf2f313eb86fa7523e2f0b7a2d941b1a08a2178b60ebf7d3cbc8a0a39aabe342f994cc1ff0c', 17, 1, 'MyApp', '[]', 0, '2018-12-21 05:42:01', '2018-12-21 05:42:01', '2019-12-21 05:42:01');
INSERT INTO `oauth_access_tokens` VALUES ('de8d96ed44ac2a0830d1a2aa038f31beb6f81b957003e42332be6f3736fa20bce703ee9c83bce0bd', 17, 1, 'MyApp', '[]', 0, '2018-12-21 05:42:12', '2018-12-21 05:42:12', '2019-12-21 05:42:12');
INSERT INTO `oauth_access_tokens` VALUES ('7d60e2dfa9d1f3781a7f091881b32022a67272a4349c764c399f410a980ef413cb89ff3890245d19', 17, 1, 'MyApp', '[]', 0, '2018-12-21 05:42:38', '2018-12-21 05:42:38', '2019-12-21 05:42:38');
INSERT INTO `oauth_access_tokens` VALUES ('942125fd3b69e6236452030a06983c052cb96062956ca083631a85fb8f66d46247a6cd525915aa1f', 17, 1, 'MyApp', '[]', 0, '2018-12-21 05:43:20', '2018-12-21 05:43:20', '2019-12-21 05:43:20');
INSERT INTO `oauth_access_tokens` VALUES ('d99c47ef2c0dd8e0bea9659b421ea754d9a27ee64b698eb4254dad8fe4ed4eb1b30309f97df26f75', 17, 1, 'MyApp', '[]', 0, '2018-12-21 05:45:53', '2018-12-21 05:45:53', '2019-12-21 05:45:53');
INSERT INTO `oauth_access_tokens` VALUES ('b69a6c1818f6d4c20f7f8a553302b214f618d08c59df8543c3daf79a490eb41351404b78ae12d21d', 17, 1, 'MyApp', '[]', 0, '2018-12-21 05:48:06', '2018-12-21 05:48:06', '2019-12-21 05:48:06');
INSERT INTO `oauth_access_tokens` VALUES ('1faa2adc368a6ef44c01d11d32498d79a234eaa064313736de66fdcd20b910bfa0af033eec88e51f', 17, 1, 'MyApp', '[]', 0, '2018-12-21 05:49:15', '2018-12-21 05:49:15', '2019-12-21 05:49:15');
INSERT INTO `oauth_access_tokens` VALUES ('b1a0ab17b7efff287e760d99fb78ab326c9451fc7c1fb7fa44cbf1ce548e71ffb731bdfca25a0697', 17, 1, 'MyApp', '[]', 0, '2018-12-21 06:43:36', '2018-12-21 06:43:36', '2019-12-21 06:43:36');
INSERT INTO `oauth_access_tokens` VALUES ('36775ff7bf1feddd5e4155d0a4436514be581ea688899d11a164aeba12329898f895841726cd19a0', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:16:02', '2018-12-21 08:16:02', '2019-12-21 08:16:02');
INSERT INTO `oauth_access_tokens` VALUES ('b5bc1b6e7bf9cfa8bef5958fdce166fe7209ae990d05bf1709b35eac25ed103beead613ddaf9d93b', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:17:12', '2018-12-21 08:17:12', '2019-12-21 08:17:12');
INSERT INTO `oauth_access_tokens` VALUES ('6a5a3410474e246a124c2cb8b1d48a18c8a630f3bf1c2a8649730754cf4189dd044c87e026b7c8cc', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:19:05', '2018-12-21 08:19:05', '2019-12-21 08:19:05');
INSERT INTO `oauth_access_tokens` VALUES ('b94af0e3240c184a001e1d9a7ba58c306be131d00c91e53fc7f01c5f13e3dbf2edbccca85838d81f', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:21:10', '2018-12-21 08:21:10', '2019-12-21 08:21:10');
INSERT INTO `oauth_access_tokens` VALUES ('b6198319c5be5f1929179a65136cc8bab4c74800664001958d6182f8c8e2d652213d7be52a24ad57', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:22:40', '2018-12-21 08:22:40', '2019-12-21 08:22:40');
INSERT INTO `oauth_access_tokens` VALUES ('7ccb5508f40def2b7ff728d6dda9f879a5c496b2177b37dec111df0f14a99679f5438e9e9f48726b', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:23:08', '2018-12-21 08:23:08', '2019-12-21 08:23:08');
INSERT INTO `oauth_access_tokens` VALUES ('75b4490f5de16afa419d39027febad3d52079ae2b6efc98022ae56cb8020a2d6abe5946b6883e174', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:23:50', '2018-12-21 08:23:50', '2019-12-21 08:23:50');
INSERT INTO `oauth_access_tokens` VALUES ('3098052b9c6b00fb3ff87b6951ce632b1b4b58a9cb081c5abbfba8315352bf402678acc2445e3fb8', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:24:44', '2018-12-21 08:24:44', '2019-12-21 08:24:44');
INSERT INTO `oauth_access_tokens` VALUES ('d0689ab215ccdc622b9dca5c4d7fe1cf4ef54ff514f6685c034d4644ea5724ef4b1882f72c9a394f', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:25:42', '2018-12-21 08:25:42', '2019-12-21 08:25:42');
INSERT INTO `oauth_access_tokens` VALUES ('cbb34abc868e93dbf7075c3d17b98a027ace12519bc06714cac0791e5fcf6d7b58497d5832605caf', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:26:41', '2018-12-21 08:26:41', '2019-12-21 08:26:41');
INSERT INTO `oauth_access_tokens` VALUES ('5e388362a185e93975cf579d6b2212b4779ed0f60903104040caf203fa1234451871d147d23d896a', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:27:17', '2018-12-21 08:27:17', '2019-12-21 08:27:17');
INSERT INTO `oauth_access_tokens` VALUES ('622cdbc0e65c00086fe33ac222801c53b84a6522362707ff81f5d6516e7ab5f7161e67da47792b65', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:28:07', '2018-12-21 08:28:07', '2019-12-21 08:28:07');
INSERT INTO `oauth_access_tokens` VALUES ('51cd39835ddf40c333c07fef177b8ca942cc620b1f42397afda8387df305d5602179040a3df06b84', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:30:32', '2018-12-21 08:30:32', '2019-12-21 08:30:32');
INSERT INTO `oauth_access_tokens` VALUES ('a63fbf0f2248d82d76ee87376498428baa313b2ab5f20b151fbd871477827a80a5eafcd92cbdebec', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:30:53', '2018-12-21 08:30:53', '2019-12-21 08:30:53');
INSERT INTO `oauth_access_tokens` VALUES ('c0cf48ad91a17eb445435005c1983e7017f445a5dca527a343889d0b5892ede9ec86d843ab8a43bd', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:31:09', '2018-12-21 08:31:09', '2019-12-21 08:31:09');
INSERT INTO `oauth_access_tokens` VALUES ('d18eaeba66075333a69ae33a75749fbffcdd0fc546a69d17f782a2c9bc1e96404080b8d200b9d6de', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:31:56', '2018-12-21 08:31:56', '2019-12-21 08:31:56');
INSERT INTO `oauth_access_tokens` VALUES ('88e55dbc3c05df94d9a0af6873f704b68b85a4829c88d738ec05a1e21a2af246131cfab086fac9b9', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:32:53', '2018-12-21 08:32:53', '2019-12-21 08:32:53');
INSERT INTO `oauth_access_tokens` VALUES ('c7a74e6f8d10d1f9159a3563cc04a4630b49c74c5356c6b54014cb2b26cda04c30d83b682b0891fe', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:35:00', '2018-12-21 08:35:00', '2019-12-21 08:35:00');
INSERT INTO `oauth_access_tokens` VALUES ('80451100963ccb61d1a6799c247f6728de023b83c53f46a054fedb59c195e8c73f0b7ddaa2e3846f', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:44:30', '2018-12-21 08:44:30', '2019-12-21 08:44:30');
INSERT INTO `oauth_access_tokens` VALUES ('64d285b8d263b9b43e62d12f345e33e7da23ac95a95884559e5eb9f840af43eba4aead2a7df72722', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:46:05', '2018-12-21 08:46:05', '2019-12-21 08:46:05');
INSERT INTO `oauth_access_tokens` VALUES ('06a3054f64f5713a88643716e1fadc48bf0cd5516ee382d9aa41bc5df28ad92c676bfd6398203faf', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:55:00', '2018-12-21 08:55:00', '2019-12-21 08:55:00');
INSERT INTO `oauth_access_tokens` VALUES ('26d48ec959a6392b0a91e7564261f41be45921f58059e9f0e983876638abd71d6836d447e0dcee15', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:56:36', '2018-12-21 08:56:36', '2019-12-21 08:56:36');
INSERT INTO `oauth_access_tokens` VALUES ('0fe13cc520385d2d84e371bb5e8cffcc3eb75b8cfe985800679b5e2cc773102551d5ca5b145d4f0b', 17, 1, 'MyApp', '[]', 0, '2018-12-21 08:57:52', '2018-12-21 08:57:52', '2019-12-21 08:57:52');
INSERT INTO `oauth_access_tokens` VALUES ('536724725aefcd41f2b6ec018349abba115ceec51f171daf940a933006061ea5da4a227be7280b7d', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:00:06', '2018-12-21 09:00:06', '2019-12-21 09:00:06');
INSERT INTO `oauth_access_tokens` VALUES ('34305c6bffe3d880797b04847ed146a55042042b52555892da295614d306a4fd09764b561e66dcf0', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:01:35', '2018-12-21 09:01:35', '2019-12-21 09:01:35');
INSERT INTO `oauth_access_tokens` VALUES ('5401a47e447d5e473cc568e95351fa6bbf2da9c70f9f4481ea9adea8311a776cc109962c85c387be', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:03:59', '2018-12-21 09:03:59', '2019-12-21 09:03:59');
INSERT INTO `oauth_access_tokens` VALUES ('57e60605b897b47b7be5a778927fc020610338a9f01fecfb3aa8f1f72a1312d0d0c940ee36a7cd6c', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:04:44', '2018-12-21 09:04:44', '2019-12-21 09:04:44');
INSERT INTO `oauth_access_tokens` VALUES ('b4113afd8bc25588a9058399cce68d91b4b7c125cbebd4b23710586e2c6666b8f2c5a5b52a0ad002', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:05:39', '2018-12-21 09:05:39', '2019-12-21 09:05:39');
INSERT INTO `oauth_access_tokens` VALUES ('afd20c3945512c79473121a8a1f8bdc969345431530e8d58e5eb1461a12b4ba24e4c17e684c00cfe', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:06:14', '2018-12-21 09:06:14', '2019-12-21 09:06:14');
INSERT INTO `oauth_access_tokens` VALUES ('5c6f84939531567a17823dc7ae74e45352a7f2452334759dac4a8c2ba148258957966f66e3c0c6b1', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:07:13', '2018-12-21 09:07:13', '2019-12-21 09:07:13');
INSERT INTO `oauth_access_tokens` VALUES ('e8eb969c514ff6521792393b81c71ae9630285996c88ab0f2aa57c391a1759ef17eef87ce5def606', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:08:26', '2018-12-21 09:08:26', '2019-12-21 09:08:26');
INSERT INTO `oauth_access_tokens` VALUES ('745445d58713585df94456c9c1950a4d2deb6b6716fa852083306330f76ae7967e39f2f489ce7c9a', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:09:11', '2018-12-21 09:09:11', '2019-12-21 09:09:11');
INSERT INTO `oauth_access_tokens` VALUES ('22c100b5fe904ac8b7fee2c8574ef0ab7064df4f786de19b90d4a39d9bf6889bd98742db219326d6', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:10:36', '2018-12-21 09:10:36', '2019-12-21 09:10:36');
INSERT INTO `oauth_access_tokens` VALUES ('d7b20a12abc1728fe7eb69608f25b08011bb48bcaf77ba7739caa05e7dd6e5840374debf70b05033', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:11:27', '2018-12-21 09:11:27', '2019-12-21 09:11:27');
INSERT INTO `oauth_access_tokens` VALUES ('16f373e7fd43a3f2c357e9c94ecf9ef237618c642aa987dc3213f9dd03c3f9170c29b22c3ac9089a', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:12:27', '2018-12-21 09:12:27', '2019-12-21 09:12:27');
INSERT INTO `oauth_access_tokens` VALUES ('850e1c361891ff7a209fe7b0a73e02ff211b19ea29e6a3dfb6057b976f11695c327def93c47c2508', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:13:25', '2018-12-21 09:13:25', '2019-12-21 09:13:25');
INSERT INTO `oauth_access_tokens` VALUES ('e437ceb990e5f565844d42da2ba5a32ecef184acf808cabcdf0871656b3995acab5c6e5f8304b397', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:13:54', '2018-12-21 09:13:54', '2019-12-21 09:13:54');
INSERT INTO `oauth_access_tokens` VALUES ('6edf264ddf50ecaf4f65eed31e75f4aae6eb3c718cb23535b2036e67b66bff128dc69f0c2675c65d', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:15:08', '2018-12-21 09:15:08', '2019-12-21 09:15:08');
INSERT INTO `oauth_access_tokens` VALUES ('c43b5151a7db3d6468b838cce520163adfdeb70d6186d424087490cc684a454a2709b4ba1b14293e', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:33:35', '2018-12-21 09:33:35', '2019-12-21 09:33:35');
INSERT INTO `oauth_access_tokens` VALUES ('266d5e2957803a0f403b81ea0d298284983b41764e22f06d68a499434d5438a91071286e8a1638f3', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:35:26', '2018-12-21 09:35:26', '2019-12-21 09:35:26');
INSERT INTO `oauth_access_tokens` VALUES ('a876a4f61145ad6282abe7bedb610d696e9a79f5cc291a32e1352ee43f111767f232011255301ae3', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:36:23', '2018-12-21 09:36:23', '2019-12-21 09:36:23');
INSERT INTO `oauth_access_tokens` VALUES ('90fb0365d7a8dc72c6ab1e97ed1a6c4b76547f2cb5f442bd44ea1a92ec40a2345dd67d93f26c25e9', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:37:25', '2018-12-21 09:37:25', '2019-12-21 09:37:25');
INSERT INTO `oauth_access_tokens` VALUES ('33636d357efe8f831724559fbbde9159458a92cf2b40228c90ad7ac56d25cc549e8d133a3b2a4fe7', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:38:12', '2018-12-21 09:38:12', '2019-12-21 09:38:12');
INSERT INTO `oauth_access_tokens` VALUES ('c6316604015f13db9e1cab9bff685cdf8125db6329a84ba0db641fab82bd21b804883295582c0e54', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:39:53', '2018-12-21 09:39:53', '2019-12-21 09:39:53');
INSERT INTO `oauth_access_tokens` VALUES ('ae035100f4b888131ed8e177a0a44bb3937901c60177126ab0b2a3d352ec6b7e491804572404f310', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:40:44', '2018-12-21 09:40:44', '2019-12-21 09:40:44');
INSERT INTO `oauth_access_tokens` VALUES ('2a2b047c5ece86ce0eb6cff5688b28047a72491c8a0275718c4ad55a262ee08e7cba8fbd7a49cbc6', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:41:34', '2018-12-21 09:41:34', '2019-12-21 09:41:34');
INSERT INTO `oauth_access_tokens` VALUES ('e42755da8a0db43c46f9af2fd8ca4061f21d96789c440643ff24dcc338543e7d219fe5c67c753e3e', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:42:14', '2018-12-21 09:42:14', '2019-12-21 09:42:14');
INSERT INTO `oauth_access_tokens` VALUES ('4e73c02eed0f15c45a4bf64c9187666ad5be24ed10666a343fee5b6dd8b44f42f3d0d02a28d23f1e', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:43:52', '2018-12-21 09:43:52', '2019-12-21 09:43:52');
INSERT INTO `oauth_access_tokens` VALUES ('c366ebf63465642222b060be04fdb77de4ee60deacf6f47e7b616b6b789acbaaab098ec32ae59daa', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:44:33', '2018-12-21 09:44:33', '2019-12-21 09:44:33');
INSERT INTO `oauth_access_tokens` VALUES ('b022c420f6f25d6e0cfbc7dd802ea3f8f2ea7c5ac482058dc78edbd8e20a0fc5d86dddedde4d26c3', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:47:42', '2018-12-21 09:47:42', '2019-12-21 09:47:42');
INSERT INTO `oauth_access_tokens` VALUES ('13e8af1478ff8359d42f88bfe72b2a96a2301efa6e99d97aac62f764654ceaf9c478af20eb7ab7f8', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:48:19', '2018-12-21 09:48:19', '2019-12-21 09:48:19');
INSERT INTO `oauth_access_tokens` VALUES ('295c887a8e80e3c11b8b2a3d72f60a6f7d8ebc2756989661d97c59cbbaf5453511be2c172c0f65d2', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:53:40', '2018-12-21 09:53:40', '2019-12-21 09:53:40');
INSERT INTO `oauth_access_tokens` VALUES ('c0d447d290fcd451a19679441078e1b71b21f33b5a40f6d63dc86fd4ce7bd2a84344c79c26367cd8', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:54:22', '2018-12-21 09:54:22', '2019-12-21 09:54:22');
INSERT INTO `oauth_access_tokens` VALUES ('4dd8ced032c1fb7249be19d6c9140040d9ea2d59bcdd5cff5662ca1ffb4bd83c15e211e3f8beae90', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:55:03', '2018-12-21 09:55:03', '2019-12-21 09:55:03');
INSERT INTO `oauth_access_tokens` VALUES ('5737d49655e5ab72727079b8a3a4a727e7ff68ce45732a6f055735befd1007595ab9171631aca941', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:56:07', '2018-12-21 09:56:07', '2019-12-21 09:56:07');
INSERT INTO `oauth_access_tokens` VALUES ('8771f8d635612b4ce6432a00aacded0c955920e9e6a5bd6c9985f57b2f299988c10b4b561b3763cc', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:56:37', '2018-12-21 09:56:37', '2019-12-21 09:56:37');
INSERT INTO `oauth_access_tokens` VALUES ('a55d01b6d31f757fe58ae9db4cad0e859acedd046efe56a47b860a6f75696e0eb39b0933183fc049', 17, 1, 'MyApp', '[]', 0, '2018-12-21 09:58:29', '2018-12-21 09:58:29', '2019-12-21 09:58:29');
INSERT INTO `oauth_access_tokens` VALUES ('c5b220e2029cd3cd8ecfbe9441e0174213fbf28e2ec60765291703cf485e43feed83ab8d71d540dc', 17, 1, 'MyApp', '[]', 0, '2018-12-21 10:16:03', '2018-12-21 10:16:03', '2019-12-21 10:16:03');
INSERT INTO `oauth_access_tokens` VALUES ('4958e18a7232bbd21733c23adf0f52f7a90b731885b32c79e9a4527670d7a0d4a9ee2aeac3292eaf', 17, 1, 'MyApp', '[]', 0, '2018-12-21 10:17:15', '2018-12-21 10:17:15', '2019-12-21 10:17:15');
INSERT INTO `oauth_access_tokens` VALUES ('c4c103c543bb5406bb37b426c8abf2079b3fc000abb9b0026d274d8664a6bf6839cb11d5e3fc94f4', 17, 1, 'MyApp', '[]', 0, '2018-12-21 10:17:21', '2018-12-21 10:17:21', '2019-12-21 10:17:21');
INSERT INTO `oauth_access_tokens` VALUES ('8db9d8309570d6bdb6db15f9e72042c6b112e84b1d417393873baac13e36d82d5216d2fad384e2e9', 17, 1, 'MyApp', '[]', 0, '2018-12-21 10:42:20', '2018-12-21 10:42:20', '2019-12-21 10:42:20');
INSERT INTO `oauth_access_tokens` VALUES ('79caee90fdf14a4870c8974688110bdd8a974147139bc1ce8f7070dfa652c64490f7d0fd2e900f83', 17, 1, 'MyApp', '[]', 0, '2018-12-21 10:42:37', '2018-12-21 10:42:37', '2019-12-21 10:42:37');
INSERT INTO `oauth_access_tokens` VALUES ('324af17c7fa9d16a2a5cc6c782238b77cfc2834290cf8f391ad8ce856ed351906787c667929622ef', 17, 1, 'MyApp', '[]', 0, '2018-12-21 10:43:25', '2018-12-21 10:43:25', '2019-12-21 10:43:25');
INSERT INTO `oauth_access_tokens` VALUES ('985a0f7e39499fe52f34b23ebd969b95f4f0031115d26313ee8c016199026d00b3287bf8f874bfce', 17, 1, 'MyApp', '[]', 0, '2018-12-21 10:43:42', '2018-12-21 10:43:42', '2019-12-21 10:43:42');
INSERT INTO `oauth_access_tokens` VALUES ('b2b1b7e90bafaa76a616778bda9ff055e5f11438d36d56784e5d913a99e0d36959e1dd83ca521020', 17, 1, 'MyApp', '[]', 0, '2018-12-21 10:43:45', '2018-12-21 10:43:45', '2019-12-21 10:43:45');
INSERT INTO `oauth_access_tokens` VALUES ('1701f464375d9c5683122f7e56c7773635f763b111ecb61140aa4ebcb971a2f2c2a50d5fe2b46eb8', 17, 1, 'MyApp', '[]', 0, '2018-12-21 10:57:29', '2018-12-21 10:57:29', '2019-12-21 10:57:29');
INSERT INTO `oauth_access_tokens` VALUES ('2384627107b2494f6e1fff24a5ca3062508bfdf1ad04ccb37027dc68983571f4749c76d221e6fd74', 17, 1, 'MyApp', '[]', 0, '2018-12-21 10:59:45', '2018-12-21 10:59:45', '2019-12-21 10:59:45');
INSERT INTO `oauth_access_tokens` VALUES ('b59323956f794ff544136e16abd814cc4554b802154885b2ca15d3ad46024518ae5610a6f4d9f95c', 17, 1, 'MyApp', '[]', 0, '2018-12-21 13:21:57', '2018-12-21 13:21:57', '2019-12-21 13:21:57');
INSERT INTO `oauth_access_tokens` VALUES ('ca7a8a5d3fd6153824ce1c7b30d556c2b79f0b9581f4bc27c1d338ceb6b990887d6fbb0c8b9ee4a1', 17, 1, 'MyApp', '[]', 0, '2018-12-21 14:55:45', '2018-12-21 14:55:45', '2019-12-21 14:55:45');
INSERT INTO `oauth_access_tokens` VALUES ('8dd2cad51db99365fab9387e81ee0b72caccbf86f1f31b5febf528914159ea3e49d2ee0f6af7d46f', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:22:50', '2018-12-22 00:22:50', '2019-12-22 00:22:50');
INSERT INTO `oauth_access_tokens` VALUES ('6349b701bd1e7d0f725640c13f6c5263fbd5df0fc8702b4337f71c46ed58b158b95b74240286e1ff', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:25:50', '2018-12-22 00:25:50', '2019-12-22 00:25:50');
INSERT INTO `oauth_access_tokens` VALUES ('679fd9dfc7caec8759f1af5361f37b981f1ba74e241daa82dd10b883241f6ddbd0d39f0c0841c1f4', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:27:33', '2018-12-22 00:27:33', '2019-12-22 00:27:33');
INSERT INTO `oauth_access_tokens` VALUES ('0d96f99c2879eae994e1ec6409a5d3bf42825fbbc02aaae9d0874c8ccc19a0e7d1c69b8c38d22327', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:29:01', '2018-12-22 00:29:01', '2019-12-22 00:29:01');
INSERT INTO `oauth_access_tokens` VALUES ('c22f21fa897b544bf75546078223c0ba20d2f774e6a15c10c005682b0ca542d2aa92364c83a7a1de', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:31:04', '2018-12-22 00:31:04', '2019-12-22 00:31:04');
INSERT INTO `oauth_access_tokens` VALUES ('f1a552618a704e53beb463125cda24921cfc25094287a67edb7ab7a5ae4fee2bcddaf5595918f5f6', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:34:48', '2018-12-22 00:34:48', '2019-12-22 00:34:48');
INSERT INTO `oauth_access_tokens` VALUES ('4d7295244f2befd8681a7f4e5e7a2390fef296805f3eadaabd59eda54376979282dbb984036aa1d6', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:35:38', '2018-12-22 00:35:38', '2019-12-22 00:35:38');
INSERT INTO `oauth_access_tokens` VALUES ('ad224954826ca5242baad03ee67b4ff610ff7599b8e91436e46e8eafac7dfff6ba4d40dda78ef148', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:36:50', '2018-12-22 00:36:50', '2019-12-22 00:36:50');
INSERT INTO `oauth_access_tokens` VALUES ('8ef600b547e12b23884365bc9e0a88f44df063b23404dd2206cf7ddb250d1f4ca6a37648d7202f16', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:38:16', '2018-12-22 00:38:16', '2019-12-22 00:38:16');
INSERT INTO `oauth_access_tokens` VALUES ('48df87347fcc132316f433bcd795f8b645f733ea123deecb0dfb56c87f3eadca2ce606b84314192e', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:41:29', '2018-12-22 00:41:29', '2019-12-22 00:41:29');
INSERT INTO `oauth_access_tokens` VALUES ('3409c2c0a156aeb0acdb2cb38d80e550dea16024c9336c0e190822d576746a9f78c889c206521cd8', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:42:10', '2018-12-22 00:42:10', '2019-12-22 00:42:10');
INSERT INTO `oauth_access_tokens` VALUES ('e41bc3c66ff79b2febef57945de06d02dd05e32a289f48b3ec43a32cd331db246df4551e8fae1894', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:43:04', '2018-12-22 00:43:04', '2019-12-22 00:43:04');
INSERT INTO `oauth_access_tokens` VALUES ('308af72676c820cc5506dee260403068117a059aa497633c90100363fd14c9b12a81c3888d73c664', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:44:36', '2018-12-22 00:44:36', '2019-12-22 00:44:36');
INSERT INTO `oauth_access_tokens` VALUES ('f6d39d51dc7b0db95d54ebf02c667cdef7f5b623e87e3a1e39d722268f9112c7ac5a20b9c868534b', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:47:19', '2018-12-22 00:47:19', '2019-12-22 00:47:19');
INSERT INTO `oauth_access_tokens` VALUES ('fd56a1d8f257a2625c6244de79e0546eed4b6a65ef2b1f7fa6baa75e718fe1e1032a52b3d6474a90', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:48:10', '2018-12-22 00:48:10', '2019-12-22 00:48:10');
INSERT INTO `oauth_access_tokens` VALUES ('80ea6f117de1d5a8e0b3ecf931f9aad4958fe59381bf822f7bf0d5a13135be6219d1b7f2331cf63a', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:50:06', '2018-12-22 00:50:06', '2019-12-22 00:50:06');
INSERT INTO `oauth_access_tokens` VALUES ('f94c30cf43130d675f5042bcbffaae9a18d89ecefdc546707b7acc2a12cc5138767d59cdcb71a7f7', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:50:27', '2018-12-22 00:50:27', '2019-12-22 00:50:27');
INSERT INTO `oauth_access_tokens` VALUES ('bd3e6fa8e03e1793844c552ea57dc75245cb108b74873dc57d7da24cd287ee09197d4ddc09dcd096', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:51:00', '2018-12-22 00:51:00', '2019-12-22 00:51:00');
INSERT INTO `oauth_access_tokens` VALUES ('b55ab984303f81b9a2d1791f0f2165f72447a30ccf50f9d6c98d65674d3d393a597e49723364f31b', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:51:34', '2018-12-22 00:51:34', '2019-12-22 00:51:34');
INSERT INTO `oauth_access_tokens` VALUES ('229b9fc47f7478b7673aad8adb27a1203ace9981d570b3a5e38cb2fea9532517baccf8d8ef7bc24a', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:53:57', '2018-12-22 00:53:57', '2019-12-22 00:53:57');
INSERT INTO `oauth_access_tokens` VALUES ('1eaa58454da6c05c0d15c51f2292fe1844c98358ea279ec11b2a089dd89b65a70885f3a9f31e3f19', 17, 1, 'MyApp', '[]', 0, '2018-12-22 00:54:33', '2018-12-22 00:54:33', '2019-12-22 00:54:33');
INSERT INTO `oauth_access_tokens` VALUES ('9199d39a8dae418e5b9a11d21e2f6ce756aca412aec9b76b436f67e6e9c2b684641bbaaab8ab7bd4', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:05:03', '2018-12-22 01:05:03', '2019-12-22 01:05:03');
INSERT INTO `oauth_access_tokens` VALUES ('7b5b60cd7fe72c08ab3a3961b50111cfcd42a8cf569fdb7b13d5858ccafdd4317bc15b74dd7c51fe', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:10:23', '2018-12-22 01:10:23', '2019-12-22 01:10:23');
INSERT INTO `oauth_access_tokens` VALUES ('a61678986aeebae2dcf28200f4b19fdc44bccdfc4235eaaf715df03c74d15bddd5d9dcf94a4d796b', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:11:13', '2018-12-22 01:11:13', '2019-12-22 01:11:13');
INSERT INTO `oauth_access_tokens` VALUES ('a1432f1ff2e512d25e5077ff7fe7517c657f6a9c235deb7d1cffe49e30801e523acc1eef3b67aef5', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:12:22', '2018-12-22 01:12:22', '2019-12-22 01:12:22');
INSERT INTO `oauth_access_tokens` VALUES ('644324c8826cd2adc182a6ffdf54cdce108d46161cd735fba0b48ac04e4bc5006140a3b4d7a62684', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:12:57', '2018-12-22 01:12:57', '2019-12-22 01:12:57');
INSERT INTO `oauth_access_tokens` VALUES ('481dbd1fff164b25636b1d92d88d845710fd24699c7e31df45623d48a84cd3d3cd9f8f080eb1a00b', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:13:53', '2018-12-22 01:13:53', '2019-12-22 01:13:53');
INSERT INTO `oauth_access_tokens` VALUES ('caf2970362da04f9628e2fb1d252cce2e5cf056840952371e16a70687a401c61ec6b807ab6be0a24', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:15:00', '2018-12-22 01:15:00', '2019-12-22 01:15:00');
INSERT INTO `oauth_access_tokens` VALUES ('d63c9210fa04378939544555c29abfa58738bbc83513f6818d9e07e0d19402a38d0765b93ffdd25b', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:16:19', '2018-12-22 01:16:19', '2019-12-22 01:16:19');
INSERT INTO `oauth_access_tokens` VALUES ('6cb8032a208d1f6785d9a40e64f5f046519ddc15ce21d18c2ef5960fc095d10b98ee9423a1c6f17d', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:16:58', '2018-12-22 01:16:58', '2019-12-22 01:16:58');
INSERT INTO `oauth_access_tokens` VALUES ('c611a549fd7bffe11786454deee0701a0fa92382d734c237a4416c66629c5e84459525900bb2f41e', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:18:05', '2018-12-22 01:18:05', '2019-12-22 01:18:05');
INSERT INTO `oauth_access_tokens` VALUES ('e4cc0d2352bea08665625f8d2c97813f5f4eec692cc2c05f4dde9e3235ff962ae69b1e740e1e7cd4', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:19:03', '2018-12-22 01:19:03', '2019-12-22 01:19:03');
INSERT INTO `oauth_access_tokens` VALUES ('774ff461db9f9bbdb4b557a5a780fa383c422ce2a29e41d3723a6a31077b5e1742e4bea7ce03cc29', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:23:31', '2018-12-22 01:23:31', '2019-12-22 01:23:31');
INSERT INTO `oauth_access_tokens` VALUES ('d6b902694d0a3635539458cd211b7be585d21b12bf64a17744ea4d5b384150c83cc55da4afbd413d', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:24:49', '2018-12-22 01:24:49', '2019-12-22 01:24:49');
INSERT INTO `oauth_access_tokens` VALUES ('92b5efa9bc09d859a9fec7b691cb704590c61b392cfa7e8ee736da2742cc123f9460c5840228ca4b', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:25:39', '2018-12-22 01:25:39', '2019-12-22 01:25:39');
INSERT INTO `oauth_access_tokens` VALUES ('c01c69aaefd97eb5682c1b581006956a3505c0e826a0231ab0f76b7ae0587883d2e8ed0212844be2', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:26:13', '2018-12-22 01:26:13', '2019-12-22 01:26:13');
INSERT INTO `oauth_access_tokens` VALUES ('c05dcdb2768956364c5ee76059610cafc081a1a1fbd7d6a7246950b65456ee5093d8cb848c03c328', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:26:56', '2018-12-22 01:26:56', '2019-12-22 01:26:56');
INSERT INTO `oauth_access_tokens` VALUES ('2c0a042905924a41b1ca808ee33ab89e2d14a0f88daf6bb5b05760338fd67ed8d3dc45fa1d5dbf37', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:27:55', '2018-12-22 01:27:55', '2019-12-22 01:27:55');
INSERT INTO `oauth_access_tokens` VALUES ('dd5379cd00564673bfdbc0882821d620031387054ecbf816cd010a9245ec6b363fb74a5d965b9220', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:29:30', '2018-12-22 01:29:30', '2019-12-22 01:29:30');
INSERT INTO `oauth_access_tokens` VALUES ('7c11072d7e0cb6ae4abdb6270e11730de22fb6cbcb4f656b16b9a65585934af29f909a481fb7905a', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:30:17', '2018-12-22 01:30:17', '2019-12-22 01:30:17');
INSERT INTO `oauth_access_tokens` VALUES ('1e4908bb59c85be72dcb1667d4d4e8dec8bbb83164cd8f2045d8245a9e8343ac3b078b8033ad4c02', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:32:49', '2018-12-22 01:32:49', '2019-12-22 01:32:49');
INSERT INTO `oauth_access_tokens` VALUES ('9a418ef62e4c272b0b6ef818d5693471f2bdcd57ef2a7c463a12a88b4bba496b3c24545f8ea0e760', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:37:03', '2018-12-22 01:37:03', '2019-12-22 01:37:03');
INSERT INTO `oauth_access_tokens` VALUES ('8e490676f7fde859f0183e350e22535d0cac35eb8cdc6f1c891e936b99ed6aff562c2989ebe846c2', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:37:47', '2018-12-22 01:37:47', '2019-12-22 01:37:47');
INSERT INTO `oauth_access_tokens` VALUES ('639f6b08f6821d33ee2a28fb3651c51a085247e519ca731c991eba6a4bf2a98f3f797c262630dff6', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:41:55', '2018-12-22 01:41:55', '2019-12-22 01:41:55');
INSERT INTO `oauth_access_tokens` VALUES ('59ac76d154d9ffe7a0857ef05e4ed47d4ced576d87db551671baf8c058ac81d3feae8fa07bdea6d4', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:42:48', '2018-12-22 01:42:48', '2019-12-22 01:42:48');
INSERT INTO `oauth_access_tokens` VALUES ('0a6ea2ee6b0ba4adfd139b3f78dbfc2c7e27ba36c91f1ab8163d9c84a5986e7124f2974e069d4736', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:43:57', '2018-12-22 01:43:57', '2019-12-22 01:43:57');
INSERT INTO `oauth_access_tokens` VALUES ('262fd0ae01881b601380d46184031713aa84bb9f3a723913b052c618f15c4db3d2d94af0df7fb646', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:44:40', '2018-12-22 01:44:40', '2019-12-22 01:44:40');
INSERT INTO `oauth_access_tokens` VALUES ('71490cb621db94a6aa5d531d4ec430bb5f8f07a063489f4a470f3aaf4883f231135447612e2a3d42', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:44:57', '2018-12-22 01:44:57', '2019-12-22 01:44:57');
INSERT INTO `oauth_access_tokens` VALUES ('a18576e2a54f8b942a0e356331df826fd56d91034c05925bb97fc599fdc7d4568bfc8374ab39d8df', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:45:46', '2018-12-22 01:45:46', '2019-12-22 01:45:46');
INSERT INTO `oauth_access_tokens` VALUES ('46a9a3a484752182443b7f6e3f2f6c31f84ca245799fd1683354e80de9dfe97ed49835930a9edf08', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:46:59', '2018-12-22 01:46:59', '2019-12-22 01:46:59');
INSERT INTO `oauth_access_tokens` VALUES ('15600d9480c722b595144d75afbeef1c87035cdbfa78a5a3024290b239a67c81b2e26acb743ecf47', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:48:09', '2018-12-22 01:48:09', '2019-12-22 01:48:09');
INSERT INTO `oauth_access_tokens` VALUES ('fe6fd7e5df0322b64605feaac9668f629f6a4bfaa146391a8e9b8a4a11e9c352b9c0db4840faca7a', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:48:24', '2018-12-22 01:48:24', '2019-12-22 01:48:24');
INSERT INTO `oauth_access_tokens` VALUES ('2e0e73c0661e2aed6ce3a0738e06b6f2b9e935c175c8ef1a03abfe5005ee0d1b896c3deea34c0642', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:51:55', '2018-12-22 01:51:55', '2019-12-22 01:51:55');
INSERT INTO `oauth_access_tokens` VALUES ('4e212c4cfcc8704b6396173b468c9904e92bd0ed4d09e740db6ca261cdd736fa9f7a1680119b338a', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:52:24', '2018-12-22 01:52:24', '2019-12-22 01:52:24');
INSERT INTO `oauth_access_tokens` VALUES ('ffbb0eacc57791bfd70ef352285b2388cf2f3e3472a70b44ed3ac479a6fcd077e2c3b72adc42ae21', 17, 1, 'MyApp', '[]', 0, '2018-12-22 01:53:11', '2018-12-22 01:53:11', '2019-12-22 01:53:11');
INSERT INTO `oauth_access_tokens` VALUES ('d5023446ca0fa5dff23512cd30d41d1745c6fc854c3b4a8000821cf9ddfe709fef7b3c740856a0f3', 17, 1, 'MyApp', '[]', 0, '2018-12-22 02:08:31', '2018-12-22 02:08:31', '2019-12-22 02:08:31');
INSERT INTO `oauth_access_tokens` VALUES ('1825eb7acd39a05b4d261f7dd0efb7c716ab57dd60181168d79ab7adb5cf2573df27c4ba089420f7', 17, 1, 'MyApp', '[]', 0, '2018-12-22 02:09:12', '2018-12-22 02:09:12', '2019-12-22 02:09:12');
INSERT INTO `oauth_access_tokens` VALUES ('4c0394da036eb7f6c76bef096ba17be591d14744cc25e07bf1a635323d9771f90f7b1cd1d0f2dec8', 17, 1, 'MyApp', '[]', 0, '2018-12-22 02:53:19', '2018-12-22 02:53:19', '2019-12-22 02:53:19');
INSERT INTO `oauth_access_tokens` VALUES ('4eb10a37af97cb02c67af483aadb711f691833cf2a7d780e718686e8af6724d2d76483bab8ec408e', 17, 1, 'MyApp', '[]', 0, '2018-12-22 02:55:08', '2018-12-22 02:55:08', '2019-12-22 02:55:08');
INSERT INTO `oauth_access_tokens` VALUES ('cf42ff1f7ce81a3ae59473c27e7cdf536e7a0527936ea71efdc37ffee875dddd7207640617d4293e', 17, 1, 'MyApp', '[]', 0, '2018-12-22 02:56:01', '2018-12-22 02:56:01', '2019-12-22 02:56:01');
INSERT INTO `oauth_access_tokens` VALUES ('f89f0dbdbb41e7f0248d811a7cb40f7b60f3ea94044796fbad86582247c66fcc364790d4b4ab816d', 17, 1, 'MyApp', '[]', 0, '2018-12-22 02:58:21', '2018-12-22 02:58:21', '2019-12-22 02:58:21');
INSERT INTO `oauth_access_tokens` VALUES ('32771ed192260570968d0e1a8d138f79aca345b101f16822eac138460d760985d6a7d2e34d616965', 17, 1, 'MyApp', '[]', 0, '2018-12-22 02:59:50', '2018-12-22 02:59:50', '2019-12-22 02:59:50');
INSERT INTO `oauth_access_tokens` VALUES ('5d2ffd68b421eb3ceb348d4a4d4b1f9243e828f9279e0d30a20e4c97040d258e145f409b007f429a', 17, 1, 'MyApp', '[]', 0, '2018-12-22 03:00:12', '2018-12-22 03:00:12', '2019-12-22 03:00:12');
INSERT INTO `oauth_access_tokens` VALUES ('6051370badd3fd27fb56b8f47ed9e62843ecd912e3aa452e147a9e89e3d7d7290b5325a0449ef6ca', 17, 1, 'MyApp', '[]', 0, '2018-12-22 03:00:27', '2018-12-22 03:00:27', '2019-12-22 03:00:27');
INSERT INTO `oauth_access_tokens` VALUES ('af892532263b45c323b8c832e29594340e0014e397bfb6cfb2c07c3db6a96ac306b3f69b5c7ec3df', 17, 1, 'MyApp', '[]', 0, '2018-12-22 03:17:23', '2018-12-22 03:17:23', '2019-12-22 03:17:23');
INSERT INTO `oauth_access_tokens` VALUES ('3fb688901f1a3f14a56688282ae6090577cdf916333e0baeee73495c4248e1471f74636c6efb5956', 17, 1, 'MyApp', '[]', 0, '2018-12-22 03:18:19', '2018-12-22 03:18:19', '2019-12-22 03:18:19');
INSERT INTO `oauth_access_tokens` VALUES ('2c5458d02065252c1ef7fdaeecb935fe4805a335fdf1dbe28f5623f0135dafeb87e2d23652456fd2', 17, 1, 'MyApp', '[]', 0, '2018-12-22 03:19:09', '2018-12-22 03:19:09', '2019-12-22 03:19:09');
INSERT INTO `oauth_access_tokens` VALUES ('9e1003d1305ac1edca3dc4539b049f0ddfd493662835e94fd22f5bd8346299fd41bd6a11530511d0', 17, 1, 'MyApp', '[]', 0, '2018-12-22 03:21:24', '2018-12-22 03:21:24', '2019-12-22 03:21:24');
INSERT INTO `oauth_access_tokens` VALUES ('fa5e91e5047503d7ca50cfd842488aed4c0b62f99c7665d4fe235edcc60275f2c2eae0395bf96165', 17, 1, 'MyApp', '[]', 0, '2018-12-22 03:24:11', '2018-12-22 03:24:11', '2019-12-22 03:24:11');
INSERT INTO `oauth_access_tokens` VALUES ('a476d2404403d1fd7f624c6f2b19b56d58afe3da520a9277a04a77fd382d7c202960cb926afddbe9', 17, 1, 'MyApp', '[]', 0, '2018-12-22 03:25:02', '2018-12-22 03:25:02', '2019-12-22 03:25:02');
INSERT INTO `oauth_access_tokens` VALUES ('334b56c8801488a540c617049dddcb478dbe38a7dc9b7501036813146bddd5fad2cb474eabbce063', 17, 1, 'MyApp', '[]', 0, '2018-12-22 03:51:44', '2018-12-22 03:51:44', '2019-12-22 03:51:44');
INSERT INTO `oauth_access_tokens` VALUES ('fb2f0847c4fcc18a95f9631e34f57a06ab8121cf3d5cdb8a8cdae82f0f4d0f521c81542e626361bf', 17, 1, 'MyApp', '[]', 0, '2018-12-22 03:52:36', '2018-12-22 03:52:36', '2019-12-22 03:52:36');
INSERT INTO `oauth_access_tokens` VALUES ('b06440f8a378aac42d56d9a657551c06a9ad289ce499418fab2dda25af4ef994bad105e3c5bb471d', 17, 1, 'MyApp', '[]', 0, '2018-12-22 04:01:32', '2018-12-22 04:01:32', '2019-12-22 04:01:32');
INSERT INTO `oauth_access_tokens` VALUES ('0f571f7a8b8377d4c40efb0cd7bdedc03256413c3b1bb32390966750fe088fc849cecf2a4ea5c686', 17, 1, 'MyApp', '[]', 0, '2018-12-22 04:04:06', '2018-12-22 04:04:06', '2019-12-22 04:04:06');
INSERT INTO `oauth_access_tokens` VALUES ('a7ec4a598091ebf539faf99cbf591eeaad74b65564385fce37752ca0c51cbe25ec75d84e43a0d504', 17, 1, 'MyApp', '[]', 0, '2018-12-22 04:07:26', '2018-12-22 04:07:26', '2019-12-22 04:07:26');
INSERT INTO `oauth_access_tokens` VALUES ('8d7ef6f17722e9c615c9a60a050241c41b353737b8a448bc0235da807e59af6c77e99f4c280db27f', 17, 1, 'MyApp', '[]', 0, '2018-12-22 04:08:13', '2018-12-22 04:08:13', '2019-12-22 04:08:13');
INSERT INTO `oauth_access_tokens` VALUES ('d4888cf46c311c6cb895e345366fea0da71283ffbbd617e12e96b90fee2b9d929a776da4b71238f5', 17, 1, 'MyApp', '[]', 0, '2018-12-22 04:08:51', '2018-12-22 04:08:51', '2019-12-22 04:08:51');
INSERT INTO `oauth_access_tokens` VALUES ('6b950d58527ca4c26b28f56551baa3e5e305d53b807a6efa53aa016a40a57fd1af5ee60bc82d9cef', 17, 1, 'MyApp', '[]', 0, '2018-12-22 04:09:15', '2018-12-22 04:09:15', '2019-12-22 04:09:15');
INSERT INTO `oauth_access_tokens` VALUES ('33a4aa5ae31011232fe9325a442b6fc5ea2d30e54e7cac18204505363fd373e009c7dfb03c785e70', 17, 1, 'MyApp', '[]', 0, '2018-12-22 04:26:01', '2018-12-22 04:26:01', '2019-12-22 04:26:01');
INSERT INTO `oauth_access_tokens` VALUES ('19cf443bc75a72be413aa3b22364f386aaf9869e630d7dc088401532a66411fd4494b3758d25b6c4', 17, 1, 'MyApp', '[]', 0, '2018-12-22 04:30:18', '2018-12-22 04:30:18', '2019-12-22 04:30:18');
INSERT INTO `oauth_access_tokens` VALUES ('c9bbc0ed6ec8da1d98957f25d0220a87a4c8c91e8e0988aa3e3bb70a8489d573125f11d24cc55a0a', 17, 1, 'MyApp', '[]', 0, '2018-12-22 05:23:30', '2018-12-22 05:23:30', '2019-12-22 05:23:30');
INSERT INTO `oauth_access_tokens` VALUES ('01c883b6c4e1bbe8743a32ec476d6ae17b576afdc12cdc7b2d1d217eaea1337069b523ee2d461df2', 17, 1, 'MyApp', '[]', 0, '2018-12-22 05:28:39', '2018-12-22 05:28:39', '2019-12-22 05:28:39');
INSERT INTO `oauth_access_tokens` VALUES ('554f007d28a94678436023cbcd6a3cb5ae090bbe0d913bb131aab7c5874e6bd7e15ee6a275d1e579', 17, 1, 'MyApp', '[]', 0, '2018-12-22 05:29:24', '2018-12-22 05:29:24', '2019-12-22 05:29:24');
INSERT INTO `oauth_access_tokens` VALUES ('9cbac8073cce15703459fdf8efb0fe431992706e7a8904e7a4ee5346f686235a779898bdbe34d0a9', 17, 1, 'MyApp', '[]', 0, '2018-12-22 05:30:01', '2018-12-22 05:30:01', '2019-12-22 05:30:01');
INSERT INTO `oauth_access_tokens` VALUES ('222cee261b23d567298ff8f0ae7da05dda022f6b68d394b99a919b8515098d2d484474799d0e33a9', 17, 1, 'MyApp', '[]', 0, '2018-12-22 05:30:44', '2018-12-22 05:30:44', '2019-12-22 05:30:44');
INSERT INTO `oauth_access_tokens` VALUES ('bc4afefa5ba80808bd6a917ed3c571165a37ec74f992cc99e9605d04a800cfefd2d116e3c700519a', 17, 1, 'MyApp', '[]', 0, '2018-12-22 05:33:05', '2018-12-22 05:33:05', '2019-12-22 05:33:05');
INSERT INTO `oauth_access_tokens` VALUES ('65bd5ee81813c8176309fdde44d4f99fb3f5e996128682a67a00adff756aa06a69b9d2b8c57ca172', 17, 1, 'MyApp', '[]', 0, '2018-12-22 06:08:52', '2018-12-22 06:08:52', '2019-12-22 06:08:52');
INSERT INTO `oauth_access_tokens` VALUES ('4095eeae77fa8af76bb3b25b6ed88cc4542e61bc346e380c39e2327569b1d15347905117f227c99b', 17, 1, 'MyApp', '[]', 0, '2018-12-22 06:38:01', '2018-12-22 06:38:01', '2019-12-22 06:38:01');
INSERT INTO `oauth_access_tokens` VALUES ('122be4977a852a180f0bad2a041b447b5ad3bf273b11cfaa5a069b731d649b786833a3b8ac24ca73', 17, 1, 'MyApp', '[]', 0, '2018-12-22 06:38:28', '2018-12-22 06:38:28', '2019-12-22 06:38:28');
INSERT INTO `oauth_access_tokens` VALUES ('e9ee117fe0977a7f82b8a26cd1378172ea9e68414e7ed2e810c70a8d6cc2c5948619ed6840b0336f', 17, 1, 'MyApp', '[]', 0, '2018-12-22 06:40:48', '2018-12-22 06:40:48', '2019-12-22 06:40:48');
INSERT INTO `oauth_access_tokens` VALUES ('1b4b8c0ecb676e2550fdaa6b08f580c9c57e7ed91099a78ff181aa7512a61200f6dbde4fb7a32d55', 17, 1, 'MyApp', '[]', 0, '2018-12-22 06:41:43', '2018-12-22 06:41:43', '2019-12-22 06:41:43');
INSERT INTO `oauth_access_tokens` VALUES ('927ca4b53fe3cce227ea486a9cce6136915f1c7cc9faeaf829177daa7cd971a9aecb40d10e29c4a5', 17, 1, 'MyApp', '[]', 0, '2018-12-22 06:43:25', '2018-12-22 06:43:25', '2019-12-22 06:43:25');
INSERT INTO `oauth_access_tokens` VALUES ('c22cd3f791741c2e4d1c6f5dab5cbf23b38daa2aaeb56c3de3c65a29a2f6f27a14c92ad53b1114a3', 17, 1, 'MyApp', '[]', 0, '2018-12-22 06:43:50', '2018-12-22 06:43:50', '2019-12-22 06:43:50');
INSERT INTO `oauth_access_tokens` VALUES ('c7be15c542759f73da2d3861e2b1888b72a87da886459597f3806f2eef8908956f8594dbe7823f9b', 17, 1, 'MyApp', '[]', 0, '2018-12-22 06:45:48', '2018-12-22 06:45:48', '2019-12-22 06:45:48');
INSERT INTO `oauth_access_tokens` VALUES ('9ba174b75702681dfe90302566a0bd0d40f06a99191c1a5113a84147523638a872f5efd4f186243a', 17, 1, 'MyApp', '[]', 0, '2018-12-22 06:46:45', '2018-12-22 06:46:45', '2019-12-22 06:46:45');
INSERT INTO `oauth_access_tokens` VALUES ('59407b2fbb2673ec71d7a6c9f36617256952a984d83b50d8e506c25f9c044ec46590a0927fd7d654', 17, 1, 'MyApp', '[]', 0, '2018-12-22 06:48:59', '2018-12-22 06:48:59', '2019-12-22 06:48:59');
INSERT INTO `oauth_access_tokens` VALUES ('aa956cae2ace8bf2abd888dd5ce9b460ce7c40786809735c09c48405de927f9aa8df6b03a0ab2b5b', 17, 1, 'MyApp', '[]', 0, '2018-12-22 06:49:42', '2018-12-22 06:49:42', '2019-12-22 06:49:42');
INSERT INTO `oauth_access_tokens` VALUES ('3fd4334df34995fb8b5a25a3c7b6500e4ca76013ff8f5b6f499bc8a6b75cb6505473be9d10815331', 17, 1, 'MyApp', '[]', 0, '2018-12-22 06:52:15', '2018-12-22 06:52:15', '2019-12-22 06:52:15');
INSERT INTO `oauth_access_tokens` VALUES ('6d300f419aec9a69d089dcbffcc10fb788eb6516a4bc758e3f3c6678118ea927f78295fdae9a4097', 17, 1, 'MyApp', '[]', 0, '2018-12-22 06:53:08', '2018-12-22 06:53:08', '2019-12-22 06:53:08');
INSERT INTO `oauth_access_tokens` VALUES ('7f9e47abb5c21618f55b4015bd2073a35eb5a9a3a576c112a42976ae9c0bf064b370b3ee5ca48df0', 17, 1, 'MyApp', '[]', 0, '2018-12-22 07:00:29', '2018-12-22 07:00:29', '2019-12-22 07:00:29');
INSERT INTO `oauth_access_tokens` VALUES ('184f01bc127aec11798a2b67809616e54f57b3b2abe27c49f2eb8b6a3944bb3314da4713582e474b', 17, 1, 'MyApp', '[]', 0, '2018-12-22 07:00:52', '2018-12-22 07:00:52', '2019-12-22 07:00:52');
INSERT INTO `oauth_access_tokens` VALUES ('13f7d3c3cb8fa8b8d4880fdfa758d62c4e91f9cb6fafb874445d324df8190e2d89a623fae2ca012d', 17, 1, 'MyApp', '[]', 0, '2018-12-22 07:01:44', '2018-12-22 07:01:44', '2019-12-22 07:01:44');
INSERT INTO `oauth_access_tokens` VALUES ('a2b53e5c5261b9e486f1334b182d1a591bf372dd8475e692c75e4578fb19d36fe80e2438fb0b469a', 17, 1, 'MyApp', '[]', 0, '2018-12-22 07:02:08', '2018-12-22 07:02:08', '2019-12-22 07:02:08');
INSERT INTO `oauth_access_tokens` VALUES ('c489b79291a1ce14f0ec47acf0010e7c2173e2316e3d858ae79fd4e4ac212ec38fb3c19be828e2e9', 17, 1, 'MyApp', '[]', 0, '2018-12-22 07:02:52', '2018-12-22 07:02:52', '2019-12-22 07:02:52');
INSERT INTO `oauth_access_tokens` VALUES ('c0027d147e22a301762cb1b1d80aba53417274ae8742b2af293f7f31788ddcb29f1f5b25d373cdd4', 17, 1, 'MyApp', '[]', 0, '2018-12-22 07:04:04', '2018-12-22 07:04:04', '2019-12-22 07:04:04');
INSERT INTO `oauth_access_tokens` VALUES ('18fa61380b0ea12cf27763a17f14266753f1784c53b4c5d6e1675cd709499f84b27f959f10720de6', 17, 1, 'MyApp', '[]', 0, '2018-12-22 07:04:35', '2018-12-22 07:04:35', '2019-12-22 07:04:35');
INSERT INTO `oauth_access_tokens` VALUES ('4f404ab8ab377c4097aa368f9cef02804cd695413d2156be3a40799927347653ac1257146dfb57ea', 17, 1, 'MyApp', '[]', 0, '2018-12-22 07:09:52', '2018-12-22 07:09:52', '2019-12-22 07:09:52');
INSERT INTO `oauth_access_tokens` VALUES ('71b6555ce6a2955b4249656ebd62022a756984d20cb62f8d53a52fa0afa8875bd3dfb16e8b98a138', 17, 1, 'MyApp', '[]', 0, '2018-12-22 07:10:44', '2018-12-22 07:10:44', '2019-12-22 07:10:44');
INSERT INTO `oauth_access_tokens` VALUES ('6d281e6df951b6aec096459ef370545b14b2496396201727e839cf9abab6fb0c76dd45bd258f898a', 17, 1, 'MyApp', '[]', 0, '2018-12-22 07:11:54', '2018-12-22 07:11:54', '2019-12-22 07:11:54');
INSERT INTO `oauth_access_tokens` VALUES ('23621c307af67bc90d4b5f82f3a49fc1db1bb1d99b4e0d17d4441096de11fbc1e30595f065a5ac48', 17, 1, 'MyApp', '[]', 0, '2018-12-22 07:14:08', '2018-12-22 07:14:08', '2019-12-22 07:14:08');
INSERT INTO `oauth_access_tokens` VALUES ('3a2e5b06ca8d3a94b5bfe6afa01058f0c3905207e05d5891dbbf46ebb9636ca68a664618eefa76c4', 17, 1, 'MyApp', '[]', 0, '2018-12-22 07:15:42', '2018-12-22 07:15:42', '2019-12-22 07:15:42');
INSERT INTO `oauth_access_tokens` VALUES ('0f4c63f979c6598d2560eed49ca282236fe835b66bb8de2e9fda4385f01f304c26b1a1bccf1e9907', 17, 1, 'MyApp', '[]', 0, '2018-12-22 11:35:30', '2018-12-22 11:35:30', '2019-12-22 11:35:30');
INSERT INTO `oauth_access_tokens` VALUES ('7e1ce9c86a2126e43db9618dcd4cb7554c644b5d2155a046bc7ea1491db867e74409f884ba4c1638', 17, 1, 'MyApp', '[]', 0, '2018-12-22 11:36:32', '2018-12-22 11:36:32', '2019-12-22 11:36:32');
INSERT INTO `oauth_access_tokens` VALUES ('79360c1ed7bbfd9dc8022cc403c2765d92ba038cc21e3cb3014e05294f9ed49604b7f6d947912de2', 17, 1, 'MyApp', '[]', 0, '2018-12-22 11:37:20', '2018-12-22 11:37:20', '2019-12-22 11:37:20');
INSERT INTO `oauth_access_tokens` VALUES ('136bf4ade7ceb06535987fdbcac30ec09e2551fbc6ac4ec5971f354f1c92688a7969ad337bec6aaf', 17, 1, 'MyApp', '[]', 0, '2018-12-22 11:38:23', '2018-12-22 11:38:23', '2019-12-22 11:38:23');
INSERT INTO `oauth_access_tokens` VALUES ('45e6680ae2fd77192f263ac377d25ecd1f4abc5fcfed27dfa11bd73d22eb4000fe32ef11e3824c0c', 17, 1, 'MyApp', '[]', 0, '2018-12-22 11:38:49', '2018-12-22 11:38:49', '2019-12-22 11:38:49');
INSERT INTO `oauth_access_tokens` VALUES ('68d35925a629dd9a3dbafe40ffcafc8e56a7e0708a566200a865c4982e9a1da6b49023693b8b9742', 17, 1, 'MyApp', '[]', 0, '2018-12-22 11:40:02', '2018-12-22 11:40:02', '2019-12-22 11:40:02');
INSERT INTO `oauth_access_tokens` VALUES ('1c063ce7c716dafa6b29635f3eae67b757e8e16f5633184787a0c0ade291b9dbf466d13c1d253a19', 17, 1, 'MyApp', '[]', 0, '2018-12-22 11:42:26', '2018-12-22 11:42:26', '2019-12-22 11:42:26');
INSERT INTO `oauth_access_tokens` VALUES ('16666dad5244d6f1bbf7c73695e78483fbcc64bff61cae51cb31623560d1736d164e7515e1d1c201', 17, 1, 'MyApp', '[]', 0, '2018-12-22 14:07:48', '2018-12-22 14:07:48', '2019-12-22 14:07:48');
INSERT INTO `oauth_access_tokens` VALUES ('1d15c8221e580dfeece086e90838bb1dae987f6f6a9e5eb164b0551e1127f4acd017e1d93ea08809', 17, 1, 'MyApp', '[]', 0, '2018-12-22 14:49:50', '2018-12-22 14:49:50', '2019-12-22 14:49:50');
INSERT INTO `oauth_access_tokens` VALUES ('1e324960965cb5dde6c88057818e6f3cc3766d8a8aa44e652b9696a80c50dc99e030643685a823b9', 17, 1, 'MyApp', '[]', 0, '2018-12-22 14:51:09', '2018-12-22 14:51:09', '2019-12-22 14:51:09');
INSERT INTO `oauth_access_tokens` VALUES ('4fddc9b4d0d3df6063170bbbf464667088cdab22e52cb77993dcc623869e110b536a53d3941f05d2', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:06:27', '2018-12-22 15:06:27', '2019-12-22 15:06:27');
INSERT INTO `oauth_access_tokens` VALUES ('39234910e071b414d204f554f84ed6cfca6eceddd34357efffeecbd18397633a6ffe620a3c8f1b4a', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:09:36', '2018-12-22 15:09:36', '2019-12-22 15:09:36');
INSERT INTO `oauth_access_tokens` VALUES ('b4678ab006b076fc5247ca499c6e48dc3701435f81eb993b0c53beec4b9aedf441ca0de1086a214b', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:12:24', '2018-12-22 15:12:24', '2019-12-22 15:12:24');
INSERT INTO `oauth_access_tokens` VALUES ('3ca61b0e0e9076c43422857b98a90afc7cb62faa8989fe6311fe1fc96852668c3255de6543151cd7', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:13:25', '2018-12-22 15:13:25', '2019-12-22 15:13:25');
INSERT INTO `oauth_access_tokens` VALUES ('3e39c35dae743665b4818a385ae7475f093698eb0ff529eb22d959944b112dc39da5c5bab11659c3', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:20:17', '2018-12-22 15:20:17', '2019-12-22 15:20:17');
INSERT INTO `oauth_access_tokens` VALUES ('546fa58ecd356b6f71232c2908fd45a870ca87303c1a3c57b422813ba00da22437f1d44f831c7eeb', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:25:34', '2018-12-22 15:25:34', '2019-12-22 15:25:34');
INSERT INTO `oauth_access_tokens` VALUES ('0a20c5b787b51ccdc4a3c4c7df1591623fe7db027cae1045a382bb3f7e18c8c39b53f22a3934564c', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:31:14', '2018-12-22 15:31:14', '2019-12-22 15:31:14');
INSERT INTO `oauth_access_tokens` VALUES ('452eb7133b3d0c9c8fc3d509b7a79ec5bba9ecef3c30135774cfdc3663a1d7bab3e97ff3590afddf', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:37:09', '2018-12-22 15:37:09', '2019-12-22 15:37:09');
INSERT INTO `oauth_access_tokens` VALUES ('6a98daa0b2cf48f873583112506f5b5d02aed4b2caf8c932a9899474a33f5bf79513d25a10bfda03', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:38:13', '2018-12-22 15:38:13', '2019-12-22 15:38:13');
INSERT INTO `oauth_access_tokens` VALUES ('7f04b573120c1c694875ad327b9f8e46f9d91c9ec3c88a2e2ac048230d1b86f070467821452906cf', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:45:12', '2018-12-22 15:45:12', '2019-12-22 15:45:12');
INSERT INTO `oauth_access_tokens` VALUES ('29c3efcee52330c74f8c59c2c7e05d157eaa2b3a038ef45ded70cf85c5d8320470d4054c981846d8', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:45:29', '2018-12-22 15:45:29', '2019-12-22 15:45:29');
INSERT INTO `oauth_access_tokens` VALUES ('bdc2544ab528c8562462138eb26b2c7c43f135804190551411f3656ccf080eabb49ada080a199f42', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:46:57', '2018-12-22 15:46:57', '2019-12-22 15:46:57');
INSERT INTO `oauth_access_tokens` VALUES ('aa6ad87ce5a2dbd39972c2b0d6d6bbe7f9261222dca95321569c8ac6610c9f73f3394e65795ac2a2', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:48:28', '2018-12-22 15:48:28', '2019-12-22 15:48:28');
INSERT INTO `oauth_access_tokens` VALUES ('8099117cc57ed1524a1ba0d29858068af1b8603ac00a288de7c17d608297fe85c3e6130cc880ba87', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:50:14', '2018-12-22 15:50:14', '2019-12-22 15:50:14');
INSERT INTO `oauth_access_tokens` VALUES ('0c68923e77aa693a4a1e6b3c3b6029ccd804f6ee8a6096b211f73d832a712cecbee2d29d0a174134', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:55:57', '2018-12-22 15:55:57', '2019-12-22 15:55:57');
INSERT INTO `oauth_access_tokens` VALUES ('d61efd362b0480ca46a9718707a879b17b31c1e6aad694052e22acc8a21b1b23a73378d6bb2c5c6d', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:58:03', '2018-12-22 15:58:03', '2019-12-22 15:58:03');
INSERT INTO `oauth_access_tokens` VALUES ('8b06749c4faf299f7f8aded356878dec76470bcd60eb8677641b91033c079ae39f77a67be26dcff8', 17, 1, 'MyApp', '[]', 0, '2018-12-22 15:58:40', '2018-12-22 15:58:40', '2019-12-22 15:58:40');
INSERT INTO `oauth_access_tokens` VALUES ('21c795bc875abbfdd2b55c9bc2aaea9dfe7e594304a4e42c8192864c5e6132150d5b30ae2dd9cf93', 17, 1, 'MyApp', '[]', 0, '2018-12-22 16:01:15', '2018-12-22 16:01:15', '2019-12-22 16:01:15');
INSERT INTO `oauth_access_tokens` VALUES ('5e85c4a499b5c90cb57437cb4534f0a366a1ecb88f39e943abe271bc89ba53f07e4dda63400ce738', 17, 1, 'MyApp', '[]', 0, '2018-12-22 16:05:59', '2018-12-22 16:05:59', '2019-12-22 16:05:59');
INSERT INTO `oauth_access_tokens` VALUES ('fec4a6afef8ecc4f995b5cb5cd20bf2fa870080c805f7025fce74896c828030917f0bd39c969f3b2', 17, 1, 'MyApp', '[]', 0, '2018-12-22 16:06:38', '2018-12-22 16:06:38', '2019-12-22 16:06:38');
INSERT INTO `oauth_access_tokens` VALUES ('29d398326dfbdc34bc64d6f663920629a0efee1b811e03a7151943aa3a4f732bf799caac1e7f3ec6', 17, 1, 'MyApp', '[]', 0, '2019-01-05 01:16:10', '2019-01-05 01:16:10', '2020-01-05 01:16:10');
INSERT INTO `oauth_access_tokens` VALUES ('55cbf19b0bd2cd04e0231e2c78bf1b7131278398d7a3e6aad6329c2d786158d7df458fc041a32ea4', 17, 1, 'MyApp', '[]', 0, '2019-01-05 05:02:26', '2019-01-05 05:02:26', '2020-01-05 05:02:26');
INSERT INTO `oauth_access_tokens` VALUES ('f5496d3d8b95047ac8c3a0d89cea8b452b38bafe9ccb2645aee2cb374e4f74409667865dc6c0e46c', 17, 1, 'MyApp', '[]', 0, '2019-01-05 05:03:15', '2019-01-05 05:03:15', '2020-01-05 05:03:15');
INSERT INTO `oauth_access_tokens` VALUES ('b3f288d8e96286918eb17e7b469a0a2f4b17259da39d15cdfe36a45bf2d87f10ed442f6e9a59a052', 17, 1, 'MyApp', '[]', 0, '2019-01-05 05:03:39', '2019-01-05 05:03:39', '2020-01-05 05:03:39');
INSERT INTO `oauth_access_tokens` VALUES ('5e2964a0dfc2d44ea7a89342deb6ab1b73c9e815bb62b67a4eb51ffc2f9dae9b2431f996fc9beecf', 17, 1, 'MyApp', '[]', 0, '2019-01-05 06:41:34', '2019-01-05 06:41:34', '2020-01-05 06:41:34');
INSERT INTO `oauth_access_tokens` VALUES ('153b089a6aed44161bf15874782502ec18635befcd6bb7bf09aa36a5177bcebdf59056ee120a0e4a', 17, 1, 'MyApp', '[]', 0, '2019-01-05 06:42:11', '2019-01-05 06:42:11', '2020-01-05 06:42:11');
INSERT INTO `oauth_access_tokens` VALUES ('8bd01658f8dcd7e6ff47f0729384c0a6a50533e099e6b89224dd923738a5d6df0cfbcfbc75646cb3', 17, 1, 'MyApp', '[]', 0, '2019-01-09 07:34:45', '2019-01-09 07:34:45', '2020-01-09 07:34:45');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'Laravel Personal Access Client', 'Idu8hMAlR7AcQKPwXyFOHT3AMAVs9QhExHpzeyEL', 'http://localhost', 1, 0, 0, '2018-12-18 10:33:20', '2018-12-18 10:33:20');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'Laravel Password Grant Client', 'vqqntsvtrjFJzZtCARCy87aTYEmQbaboFLgVb9Ra', 'http://localhost', 0, 1, 0, '2018-12-18 10:33:20', '2018-12-18 10:33:20');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_personal_access_clients_client_id_index`(`client_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2018-12-18 10:33:20', '2018-12-18 10:33:20');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for recommendchild
-- ----------------------------
DROP TABLE IF EXISTS `recommendchild`;
CREATE TABLE `recommendchild`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isAuth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `height` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weight` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(3) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recommendchild
-- ----------------------------
INSERT INTO `recommendchild` VALUES (12, '吴同岳', '男', '1994-06-11', '0', '180cm', '20kg', 'baidu.com', 6);
INSERT INTO `recommendchild` VALUES (13, '录用山', '女', '2001-05-65', '1', '120cm', '25kg', 'baidu.com', 5);

-- ----------------------------
-- Table structure for test_user
-- ----------------------------
DROP TABLE IF EXISTS `test_user`;
CREATE TABLE `test_user`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(11) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_user
-- ----------------------------
INSERT INTO `test_user` VALUES ('test0', 100, '男', 123);
INSERT INTO `test_user` VALUES ('test2', 19, '男', 1234);
INSERT INTO `test_user` VALUES ('test1', 93, '女', 12356);

-- ----------------------------
-- Table structure for test_user_join
-- ----------------------------
DROP TABLE IF EXISTS `test_user_join`;
CREATE TABLE `test_user_join`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `join_id` int(11) NULL DEFAULT NULL,
  `is_handsome` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_user_join
-- ----------------------------
INSERT INTO `test_user_join` VALUES ('join0', 17, '男', 123, 'yes');
INSERT INTO `test_user_join` VALUES ('join1', 1, '女', 1239, 'no');
INSERT INTO `test_user_join` VALUES ('join2', 20, '不男不女', 1234, 'yes');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `type` int(5) NOT NULL DEFAULT 0 COMMENT '\r\n1普通会员,2商家,3合伙人',
  `unreads` int(255) NULL DEFAULT 0 COMMENT '\r\n未读消息数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (17, '18814137320', '$2y$10$wynU2PDaDuagVQGkVN9SNeuNPtY7MBkro4ECif9NiPsV0g1GyAQMi', ' ', '2018-12-21 02:01:13', '2018-12-21 02:01:13', 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
