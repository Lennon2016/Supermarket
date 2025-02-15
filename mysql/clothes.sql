/*
 Navicat Premium Data Transfer

 Source Server         : dwk
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : clothes

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 17/10/2022 14:15:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for adv
-- ----------------------------
DROP TABLE IF EXISTS `adv`;
CREATE TABLE `adv`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of adv
-- ----------------------------
INSERT INTO `adv` VALUES (2, '广告2', '广告', 'images/22.jpg', '#');
INSERT INTO `adv` VALUES (7, '广告3', '广告3', 'images/2.jpg', '#');
INSERT INTO `adv` VALUES (3, '广告4', '广告2', 'images/33.jpg', '#');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (29, 21, 3, 1);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `old_price` float(11, 2) NULL DEFAULT 0.00,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '连衣裙   ', '1', 98, '超漂亮的连衣裙', 597.00, 'images/连衣裙.jpg');
INSERT INTO `goods` VALUES (7, '夹克', '1', 399, '太平鸟夹克', 499.00, 'images/6.jpg');
INSERT INTO `goods` VALUES (6, '外套', '1', 599, '波司登', 799.00, 'images/5.jpg');
INSERT INTO `goods` VALUES (2, '上衣', '1', 399, 'LAGOGO女上衣', 499.00, 'images/4.jpg');
INSERT INTO `goods` VALUES (8, '裙子', '1', 399, '超漂亮的裙子', 400.00, 'images/7.jpg');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (26, 10, 1, 1);
INSERT INTO `orders` VALUES (25, 10, 1, 1);
INSERT INTO `orders` VALUES (23, 10, 2, 1);
INSERT INTO `orders` VALUES (24, 10, 3, 1);
INSERT INTO `orders` VALUES (17, 10, 3, 1);
INSERT INTO `orders` VALUES (19, 10, 4, 1);
INSERT INTO `orders` VALUES (29, 21, 7, 1);
INSERT INTO `orders` VALUES (30, 21, 7, 2);
INSERT INTO `orders` VALUES (31, 22, 7, 1);

-- ----------------------------
-- Table structure for pay
-- ----------------------------
DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pay
-- ----------------------------
INSERT INTO `pay` VALUES (1, '支付宝');
INSERT INTO `pay` VALUES (2, '微信支付');
INSERT INTO `pay` VALUES (3, '财付通');
INSERT INTO `pay` VALUES (4, '银联支付');
INSERT INTO `pay` VALUES (5, '百度钱包');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (20, 'qwwq', '123456', '18637336376', '男', '123456', '河北', NULL);
INSERT INTO `user` VALUES (21, '123', '123', '15326485978', '0', '123456789@qq.com', '台湾省', NULL);
INSERT INTO `user` VALUES (22, 'yiersan', '123456', '13425345673', '男', '12345678@qq.com', '北京', NULL);
INSERT INTO `user` VALUES (23, 'wer', '123', '15326485978', '男', '123456789@qq.com', '泉州市', NULL);

-- ----------------------------
-- Table structure for wenzhang
-- ----------------------------
DROP TABLE IF EXISTS `wenzhang`;
CREATE TABLE `wenzhang`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wenzhang
-- ----------------------------
INSERT INTO `wenzhang` VALUES (1, '天猫双11', '全网一折起！！！', '马云', '2022-06-30 16:37:02');
INSERT INTO `wenzhang` VALUES (2, '京东618', '全网二折起！！！', '刘强东', '2022-06-30 16:37:03');
INSERT INTO `wenzhang` VALUES (3, '淘宝618', '全网二折起！！！', '云', '2022-10-17 14:05:05');
INSERT INTO `wenzhang` VALUES (4, '淘宝双11', '全网一折起！！！', '云', '2022-10-17 14:05:07');

SET FOREIGN_KEY_CHECKS = 1;
