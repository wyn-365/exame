/*
Navicat MySQL Data Transfer

Source Server         : loclhost_
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : online_exam

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2019-12-28 04:02:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lesson
-- ----------------------------
DROP TABLE IF EXISTS `lesson`;
CREATE TABLE `lesson` (
  `taotiid` int(11) NOT NULL AUTO_INCREMENT,
  `lessonname` varchar(255) DEFAULT NULL,
  `createtime` date DEFAULT NULL,
  `teacherid` int(11) DEFAULT NULL,
  PRIMARY KEY (`taotiid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lesson
-- ----------------------------
INSERT INTO `lesson` VALUES ('3', '语文', '2019-08-12', '1');
INSERT INTO `lesson` VALUES ('4', '数学', '2019-08-13', '6');
INSERT INTO `lesson` VALUES ('5', '英语', '2019-08-24', '5');

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `taotiid` int(11) DEFAULT NULL,
  `optiona` varchar(255) DEFAULT NULL,
  `optionb` varchar(255) DEFAULT NULL,
  `optionc` varchar(255) DEFAULT NULL,
  `optiond` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', '语文难不难？', '单选', '3', '难', '不难', '一般般', '很简单', 'A');
INSERT INTO `questions` VALUES ('2', '语文为什么难？', '多选', '3', '老师太凶了', '看不懂文言文', '我是理科男', '情商不高', 'A,B,C');
INSERT INTO `questions` VALUES ('3', '以下哪些是柳宗元的诗？', '多选', '3', '捕蛇者说', '静夜思', '永州八记', '咏鹅', 'A,C');
INSERT INTO `questions` VALUES ('4', '柳宗元被贬在哪里的时候作了很多诗？', '单选', '3', '永州', '长沙', '南昌', '柳州', 'A');
INSERT INTO `questions` VALUES ('5', '历史上最快的人的是谁？', '单选', '3', '曹操', '张飞', '关羽', '刘备', 'A');
INSERT INTO `questions` VALUES ('6', '《静夜思》是谁写的？', '单选', '3', '柳宗元', '周敦颐', '老子', '李白', 'D');
INSERT INTO `questions` VALUES ('7', '《爱莲说》是谁写的？', '单选', '3', '柳宗元', '周敦颐', '李白', '陶渊明', 'B');
INSERT INTO `questions` VALUES ('8', '以下哪个词语是形容友情的？', '单选', '3', '情意绵绵', '情同手足', '海枯石烂', '天涯海角', 'B');
INSERT INTO `questions` VALUES ('9', '1+1等于多少？', '单选', '4', '1', '2', '3', '4', 'B');
INSERT INTO `questions` VALUES ('10', '2+2等于多少？', '单选', '4', '1', '2', '3', '4', 'D');
INSERT INTO `questions` VALUES ('11', '11+11等于多少？', '单选', '4', '11', '33', '22', '44', 'C');
INSERT INTO `questions` VALUES ('12', '66+66等于多少？', '单选', '4', '132', '145', '142', '162', 'A');
INSERT INTO `questions` VALUES ('13', '77+11等于多少？', '单选', '4', '22', '33', '88', '143', 'C');
INSERT INTO `questions` VALUES ('14', '6+1等于多少？', '单选', '4', '1', '3', '5', '7', 'D');
INSERT INTO `questions` VALUES ('15', '比3小的数是？', '多选', '4', '1', '2', '3', '4', 'A,B');
INSERT INTO `questions` VALUES ('16', '比5大的数是？', '多选', '4', '2', '4', '6', '8', 'C,D');
INSERT INTO `questions` VALUES ('17', 'my是什么意思？', '单选', '5', '你的', '我的', '你们的', '我们的', 'B');
INSERT INTO `questions` VALUES ('18', 'he是什么意思？', '单选', '5', '你', '我', '他', '她', 'C');
INSERT INTO `questions` VALUES ('19', 'her是什么意思？', '单选', '5', '你', '我', '他', '她', 'D');
INSERT INTO `questions` VALUES ('20', 'I是第几人称？', '单选', '5', '第一人称', '第二人称', '第三人称', '第四人称', 'A');
INSERT INTO `questions` VALUES ('21', 'want是什么意思？', '单选', '5', '想要', '得到', '我们', '全部', 'A');
INSERT INTO `questions` VALUES ('22', 'love是什么意思？', '单选', '5', '恨', '爱', '交', '加', 'B');
INSERT INTO `questions` VALUES ('23', '以下哪些是第三人称', '多选', '5', 'he', 'her', 'we', 'I', 'A,B');
INSERT INTO `questions` VALUES ('24', '以下哪些是打招呼用语？', '多选', '5', 'hi', 'hey', 'like', 'would', 'A,B');
INSERT INTO `questions` VALUES ('25', '1', '单选', '2', '1', '1', '1', '1', 'A');

-- ----------------------------
-- Table structure for stu_examresult
-- ----------------------------
DROP TABLE IF EXISTS `stu_examresult`;
CREATE TABLE `stu_examresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taotiid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `radioscores` int(11) DEFAULT NULL,
  `checkscores` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_examresult
-- ----------------------------
INSERT INTO `stu_examresult` VALUES ('1', '3', '1', '30', '20', '50', '2019-08-14 03:27:09');
INSERT INTO `stu_examresult` VALUES ('2', '4', '1', '60', '40', '100', '2019-08-14 03:29:58');
INSERT INTO `stu_examresult` VALUES ('3', '4', '1', '60', '40', '100', '2019-08-14 03:31:21');
INSERT INTO `stu_examresult` VALUES ('4', '3', '1', '0', '0', '0', '2019-08-14 03:31:58');
INSERT INTO `stu_examresult` VALUES ('5', '3', '1', '30', '0', '30', '2019-08-14 03:36:38');
INSERT INTO `stu_examresult` VALUES ('6', '3', '1', '0', '0', '0', '2019-08-18 14:28:41');
INSERT INTO `stu_examresult` VALUES ('7', '4', '1', '0', '0', '0', '2019-08-18 14:31:19');
INSERT INTO `stu_examresult` VALUES ('8', '4', '1', '10', '40', '50', '2019-08-18 22:46:32');
INSERT INTO `stu_examresult` VALUES ('9', '3', '1', '20', '0', '20', '2019-08-20 11:10:50');
INSERT INTO `stu_examresult` VALUES ('10', '3', '1', '20', '0', '20', '2019-08-21 14:17:33');
INSERT INTO `stu_examresult` VALUES ('11', '4', 'qq', '0', '0', '0', '2019-08-24 00:09:24');
INSERT INTO `stu_examresult` VALUES ('12', '3', 'qq', '0', '0', '0', '2019-08-24 11:30:51');
INSERT INTO `stu_examresult` VALUES ('13', '5', 'z', '10', '0', '10', '2019-08-29 16:11:49');
INSERT INTO `stu_examresult` VALUES ('14', '5', 'z', '0', '0', '0', '2019-09-02 10:37:16');
INSERT INTO `stu_examresult` VALUES ('15', '5', '1', '0', '0', '0', '2019-09-02 14:20:11');
INSERT INTO `stu_examresult` VALUES ('16', '4', '1', '0', '0', '0', '2019-09-03 08:55:11');
INSERT INTO `stu_examresult` VALUES ('17', '5', 't', '0', '0', '0', '2019-09-03 11:10:28');
INSERT INTO `stu_examresult` VALUES ('18', '4', '1', '0', '0', '0', '2019-09-03 11:42:41');
INSERT INTO `stu_examresult` VALUES ('19', '4', '1', '20', '0', '20', '2019-10-16 00:20:44');
INSERT INTO `stu_examresult` VALUES ('20', '3', '1', '0', '0', '0', '2019-12-28 03:05:15');
INSERT INTO `stu_examresult` VALUES ('21', '3', '1', '0', '0', '0', '2019-12-28 03:18:11');
INSERT INTO `stu_examresult` VALUES ('22', null, '1', '0', '0', '0', '2019-12-28 03:18:51');
INSERT INTO `stu_examresult` VALUES ('23', '3', '1', '0', '0', '0', '2019-12-28 03:21:19');

-- ----------------------------
-- Table structure for stu_information
-- ----------------------------
DROP TABLE IF EXISTS `stu_information`;
CREATE TABLE `stu_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `stuid` varchar(255) DEFAULT NULL,
  `stuname` varchar(255) DEFAULT NULL,
  `stutime` date DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_information
-- ----------------------------
INSERT INTO `stu_information` VALUES ('1', '1', '12580', '小明', '2020-08-19', '男');
INSERT INTO `stu_information` VALUES ('2', '4', '44', '4', '2019-08-14', '女');
INSERT INTO `stu_information` VALUES ('3', 'qq', '12548', 'qq', '2019-08-01', '男');
INSERT INTO `stu_information` VALUES ('4', 'z', '12580', '小良', '2019-08-27', '男');
INSERT INTO `stu_information` VALUES ('5', 't', '88', 't', '2019-09-26', '男');
INSERT INTO `stu_information` VALUES ('6', '88', '88', '88', '2019-09-17', '女');
INSERT INTO `stu_information` VALUES ('7', '5', '5', '5', '2019-12-20', '男');

-- ----------------------------
-- Table structure for teacher_information
-- ----------------------------
DROP TABLE IF EXISTS `teacher_information`;
CREATE TABLE `teacher_information` (
  `teacherid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `worknumber` int(11) DEFAULT NULL,
  `teachername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`teacherid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_information
-- ----------------------------
INSERT INTO `teacher_information` VALUES ('1', '2', '35', '888');
INSERT INTO `teacher_information` VALUES ('5', '12', '12', '小王老师');
INSERT INTO `teacher_information` VALUES ('6', 'zz', '1880', '小刚');
INSERT INTO `teacher_information` VALUES ('7', '3', '3', '3');

-- ----------------------------
-- Table structure for t_login
-- ----------------------------
DROP TABLE IF EXISTS `t_login`;
CREATE TABLE `t_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roles` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_login
-- ----------------------------
INSERT INTO `t_login` VALUES ('1', 'stu', '1', '42f358141cb1cf52698321c4757cb1df');
INSERT INTO `t_login` VALUES ('2', 'teacher', '2', '90603233889d506c54ee6c64e8c32809');
INSERT INTO `t_login` VALUES ('3', 'admin', 'a', 'f0f23d286418ef693cdcd6ec596c848c');
INSERT INTO `t_login` VALUES ('4', 'admin', 'aa', 'bb635755dde30240dac2be915e96d8d5');
INSERT INTO `t_login` VALUES ('5', 'admin', 'aaa', '394145f53893a2d32ae51a03695357cd');
INSERT INTO `t_login` VALUES ('14', 'teacher', '12', '368c1f01f44cce007578d5ef30fe8c38');
INSERT INTO `t_login` VALUES ('15', 'stu', '4', '6115c6a3def0867c7e5b24db3cf68a60');
INSERT INTO `t_login` VALUES ('16', 'stu', 'qq', 'cfbad21392b1476f0cd3e9c8ae6b637b');
INSERT INTO `t_login` VALUES ('20', 'stu', 'z', '12d23dd62e8505de0d336aa197c8752d');
INSERT INTO `t_login` VALUES ('21', 'teacher', 'zz', 'ef2123a8e3bd8a83e88eb68800012a64');
INSERT INTO `t_login` VALUES ('22', 'stu', 't', 'b8dd60d31e52f8054e0466c89fd2122a');
INSERT INTO `t_login` VALUES ('23', 'stu', '88', 'b1060369c269a7a585ed5eb696277ad4');
INSERT INTO `t_login` VALUES ('24', 'stu', '5', 'd84a58196eca1c135900800418f08ba0');
INSERT INTO `t_login` VALUES ('25', 'teacher', '3', '14df581791e67958249740bc87648dff');
