/*
Navicat MySQL Data Transfer

Source Server         : Testblog
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : easyproject

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2020-05-27 14:48:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for submenu
-- ----------------------------
DROP TABLE IF EXISTS `submenu`;
CREATE TABLE `submenu` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `mid` int(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  CONSTRAINT `submenu_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `mainmenu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of submenu
-- ----------------------------
INSERT INTO `submenu` VALUES ('101', '用户列表', '/user', '100');
INSERT INTO `submenu` VALUES ('102', '设备', '/device', '100');
INSERT INTO `submenu` VALUES ('202', '数据', '/visualization', '200');
