/*
Navicat MySQL Data Transfer

Source Server         : lo
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : 2

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2019-06-30 11:41:57
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `pay_order`
-- ----------------------------
DROP TABLE IF EXISTS `pay_order`;
CREATE TABLE `pay_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `close_date` bigint(20) NOT NULL,
  `create_date` bigint(20) NOT NULL,
  `is_auto` int(11) NOT NULL,
  `notify_url` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `param` varchar(255) DEFAULT NULL,
  `pay_date` bigint(20) NOT NULL,
  `pay_id` varchar(255) DEFAULT NULL,
  `pay_url` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `really_price` double NOT NULL,
  `return_url` varchar(255) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_order
-- ----------------------------

-- ----------------------------
-- Table structure for `pay_qrcode`
-- ----------------------------
DROP TABLE IF EXISTS `pay_qrcode`;
CREATE TABLE `pay_qrcode` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pay_url` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for `setting`
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `vkey` varchar(255) NOT NULL,
  `vvalue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vkey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES ('user', 'admin');
INSERT INTO `setting` VALUES ('pass', 'admin');
INSERT INTO `setting` VALUES ('notifyUrl', 'http://c.88bb.top:8090/example/notify.php');
INSERT INTO `setting` VALUES ('returnUrl', 'http://c.88bb.top:8090/example/return.php');
INSERT INTO `setting` VALUES ('key', '33');
INSERT INTO `setting` VALUES ('jkstate', '0');
INSERT INTO `setting` VALUES ('close', '2');
INSERT INTO `setting` VALUES ('payQf', '1');
INSERT INTO `setting` VALUES ('wxpay', 'wxp://f2f10wW8WwVRvbNzDz8bHTRxWk9GFdzr4Y3r');

-- ----------------------------
-- Table structure for `tmp_price`
-- ----------------------------
DROP TABLE IF EXISTS `tmp_price`;
CREATE TABLE `tmp_price` (
  `price` varchar(255) NOT NULL,
  `oid` varchar(255) NOT NULL,
  PRIMARY KEY (`price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_price
-- ----------------------------
INSERT INTO `tmp_price` VALUES ('10-1', '201906301106354284');
INSERT INTO `tmp_price` VALUES ('13-1', '201906301106236126');
