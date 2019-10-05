/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : eshop

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 05/10/2019 13:24:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `sales` int(11) NOT NULL DEFAULT '0',
  `img_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of item
-- ----------------------------
BEGIN;
INSERT INTO `item` VALUES (1, 'Iphone11', 8888.00, 'Apple最新款的Iphone手机', 11, 'http://img2015.zdface.com/20190923/51af2fa41a8806dcb4f89cfaf31ab6bc.jpg');
INSERT INTO `item` VALUES (2, 'Mate 30 Pro', 9999.00, 'HUAWEI Mate 30 Pro', 12, 'http://img0.imgtn.bdimg.com/it/u=3250252378,1064498148&fm=11&gp=0.jpg');
COMMIT;

-- ----------------------------
-- Table structure for item_stock
-- ----------------------------
DROP TABLE IF EXISTS `item_stock`;
CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of item_stock
-- ----------------------------
BEGIN;
INSERT INTO `item_stock` VALUES (1, 89, 1);
INSERT INTO `item_stock` VALUES (2, 188, 2);
COMMIT;

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` varchar(30) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_price` double(10,2) NOT NULL DEFAULT '0.00',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `amount` int(255) NOT NULL DEFAULT '0',
  `order_price` double(10,2) NOT NULL DEFAULT '0.00',
  `promo_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of order_info
-- ----------------------------
BEGIN;
INSERT INTO `order_info` VALUES ('2019100500005000', 10, 9999.00, 2, 1, 9999.00, 2);
INSERT INTO `order_info` VALUES ('2019100500005100', 10, 9999.00, 2, 1, 9999.00, 2);
INSERT INTO `order_info` VALUES ('2019100500005200', 10, 6666.00, 2, 1, 6666.00, 2);
INSERT INTO `order_info` VALUES ('2019100500005300', 10, 6666.00, 1, 1, 6666.00, 1);
INSERT INTO `order_info` VALUES ('2019100500005400', 10, 6666.00, 1, 1, 6666.00, 1);
INSERT INTO `order_info` VALUES ('2019100500005500', 10, 999.00, 1, 1, 999.00, 1);
INSERT INTO `order_info` VALUES ('2019100500005600', 10, 1999.00, 2, 1, 1999.00, 2);
INSERT INTO `order_info` VALUES ('2019100500005700', 10, 9999.00, 2, 1, 9999.00, 0);
INSERT INTO `order_info` VALUES ('2019100500005800', 10, 9999.00, 2, 1, 9999.00, 0);
INSERT INTO `order_info` VALUES ('2019100500005900', 10, 999.00, 1, 1, 999.00, 1);
COMMIT;

-- ----------------------------
-- Table structure for promo
-- ----------------------------
DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promo_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `start_date` datetime NOT NULL,
  `item_id` int(11) NOT NULL,
  `promo_item_price` double(10,2) NOT NULL,
  `end_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of promo
-- ----------------------------
BEGIN;
INSERT INTO `promo` VALUES (1, 'Iphone抢购', '2019-10-03 16:00:44', 1, 999.00, '2019-10-10 16:11:31');
COMMIT;

-- ----------------------------
-- Table structure for sequence_info
-- ----------------------------
DROP TABLE IF EXISTS `sequence_info`;
CREATE TABLE `sequence_info` (
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `current_value` int(255) NOT NULL DEFAULT '0',
  `step` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sequence_info
-- ----------------------------
BEGIN;
INSERT INTO `sequence_info` VALUES ('order_info', 60, 1);
COMMIT;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `gender` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 男性  0 女性',
  `age` int(11) NOT NULL DEFAULT '0',
  `telephone` varchar(255) NOT NULL DEFAULT '',
  `register_mode` varchar(255) NOT NULL DEFAULT '' COMMENT 'phone,wechat,alipay',
  `third_party_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
BEGIN;
INSERT INTO `user_info` VALUES (1, 'Jack', 1, 30, '18685951461', 'wechat', '001');
INSERT INTO `user_info` VALUES (10, '流年', 1, 30, '18824237233', 'byphone', '');
INSERT INTO `user_info` VALUES (11, '1', 1, 10, '18824237200', 'byphone', '');
COMMIT;

-- ----------------------------
-- Table structure for user_password
-- ----------------------------
DROP TABLE IF EXISTS `user_password`;
CREATE TABLE `user_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrpt_password` varchar(128) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_password
-- ----------------------------
BEGIN;
INSERT INTO `user_password` VALUES (1, 'spc234uionsfe', 1);
INSERT INTO `user_password` VALUES (8, '4QrcOUm6Wau+VuBX8g+IPg==', 10);
INSERT INTO `user_password` VALUES (9, 'lueSGJZetyySpUndWjMBEg==', 11);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
