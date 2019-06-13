/*
Navicat MySQL Data Transfer

Source Server         : myDatabase
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : week10

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-03-08 18:02:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(45) DEFAULT NULL,
  `price` double(11,0) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `flag` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('11', '512', '2', '1a', '2');
INSERT INTO `book` VALUES ('10', '124', '123', 'sd', '1');
INSERT INTO `book` VALUES ('3', '123', '12', 'dfa', '2');
INSERT INTO `book` VALUES ('4', '今天的风儿喧嚣', '32', 'ssd', '2');
INSERT INTO `book` VALUES ('5', '12', '12', 'sadf', '2');
INSERT INTO `book` VALUES ('6', '4', '41', 'sd', '1');
INSERT INTO `book` VALUES ('7', '今天的风儿喧嚣', '1', 'at', '1');
INSERT INTO `book` VALUES ('8', '家书', '24', 'as2', '1');
INSERT INTO `book` VALUES ('9', 'sdfa', '125', 'ys', '2');
INSERT INTO `book` VALUES ('12', 'we', '1', 'as', '1');
INSERT INTO `book` VALUES ('13', 'aas', '4', 'sdf', '3');
