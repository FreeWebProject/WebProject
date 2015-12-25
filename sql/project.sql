/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2015-12-24 18:03:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(64) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `age` char(64) DEFAULT NULL,
  `birthday` varchar(128) DEFAULT NULL,
  `hobby` varchar(64) DEFAULT NULL,
  `education` varchar(32) DEFAULT '',
  `phone` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `self` longtext,
  `sex` varchar(32) DEFAULT NULL,
  `dateType` datetime DEFAULT NULL,
  `state` varchar(4) DEFAULT NULL COMMENT '用户状态：0表示正常，1表示已经被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('4028628151c37f060151c37ff05e0000', 'user1', '123456', null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('4028628151c37f060151c381aa9a0001', 'user2', '12345', null, null, null, null, null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for `userandusertype`
-- ----------------------------
DROP TABLE IF EXISTS `userandusertype`;
CREATE TABLE `userandusertype` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `userId` varchar(32) DEFAULT NULL,
  `typeId` varchar(32) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userandusertype
-- ----------------------------
INSERT INTO `userandusertype` VALUES ('4028628151c216930151c21aaaa70002', '4028628151a4a6c50151a4b6c6d70002', '2', 'user3');
INSERT INTO `userandusertype` VALUES ('4028628151c216930151c21aaad70003', '4028628151a4a6c50151a4b6c6d70003', '2', 'user4');
INSERT INTO `userandusertype` VALUES ('4028628151c216930151c21ac6190004', '4028628151a4a6c50151a4a840b40000', '4', 'user1');
INSERT INTO `userandusertype` VALUES ('4028628151c216930151c21ac6640005', '4028628151a4a6c50151a4b6c6d70001', '4', 'user2');
INSERT INTO `userandusertype` VALUES ('4028628151c216930151c21ac6720006', '4028628151a4a6c50151a4b6c6d70002', '4', 'user3');
INSERT INTO `userandusertype` VALUES ('40289e8851ba69cc0151ba6a59040003', '4028628151a4a6c50151a4a840b40000', '3', 'user1');
INSERT INTO `userandusertype` VALUES ('40289e8851ba69cc0151ba6a59540004', '4028628151a4a6c50151a4b6c6d70001', '3', 'user2');
INSERT INTO `userandusertype` VALUES ('40289e8851ba69cc0151ba6a66590005', '4028628151a4a6c50151a4b6c6d70003', '3', 'user4');
INSERT INTO `userandusertype` VALUES ('40289e8851ba69cc0151ba6a75f60006', '4028628151a4a6c50151a4b6c6d70002', '3', 'user3');
INSERT INTO `userandusertype` VALUES ('40289e8851ba6d7f0151ba6e3b3c0004', '4028628151a4a6c50151a4b6c6d70002', '1', 'user3');
INSERT INTO `userandusertype` VALUES ('40289e8851ba6d7f0151ba6e3b590005', '4028628151a4a6c50151a4b6c6d70003', '1', 'user4');
INSERT INTO `userandusertype` VALUES ('40289e8851ba6d7f0151ba6fd9fa0006', '4028628151a4a6c50151a4a840b40000', '2', 'user1');
INSERT INTO `userandusertype` VALUES ('40289e8851ba6d7f0151ba6fda420007', '4028628151a4a6c50151a4b6c6d70001', '2', 'user2');

-- ----------------------------
-- Table structure for `usertype`
-- ----------------------------
DROP TABLE IF EXISTS `usertype`;
CREATE TABLE `usertype` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `typeId` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertype
-- ----------------------------
INSERT INTO `usertype` VALUES ('4028628151c3e0040151c3e0974e0000', '管理员', '1', '0');
INSERT INTO `usertype` VALUES ('4028628151c3e0040151c3e0c4c70001', '教师', '2', '0');
INSERT INTO `usertype` VALUES ('4028628151c3e0040151c3e0eba10002', '校长', '3', '0');
INSERT INTO `usertype` VALUES ('4028628151c3e34a0151c3e3f8650000', '学生', '4', '0');
