/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50633
Source Host           : localhost:3306
Source Database       : ajaxtest

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2016-11-27 19:50:33
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('Other','Email','Tel') DEFAULT NULL,
  `contact` text,
  `student` int(11) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `student` (`student`),
  CONSTRAINT `student` FOREIGN KEY (`student`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` text COMMENT 'Student Details',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

