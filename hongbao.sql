/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : hongbao

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 03/09/2019 19:02:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_no` varchar(34) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account_name` varchar(66) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account_type` tinyint(2) UNSIGNED DEFAULT NULL,
  `currency_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` varchar(43) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `username` varchar(66) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `balance` decimal(10, 3) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for account_log
-- ----------------------------
DROP TABLE IF EXISTS `account_log`;
CREATE TABLE `account_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `trade_no` varchar(34) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `log_no` varchar(34) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account_no` varchar(34) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `target_account_no` varchar(34) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` varchar(42) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `target_user_id` varchar(42) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `amount` decimal(10, 3) DEFAULT NULL,
  `balance` decimal(10, 3) DEFAULT NULL,
  `change_type` tinyint(2) DEFAULT NULL,
  `change_flag` tinyint(2) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `decs` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for red_envelope_goods
-- ----------------------------
DROP TABLE IF EXISTS `red_envelope_goods`;
CREATE TABLE `red_envelope_goods`  (
  `id` int(11) NOT NULL,
  `envelope_no` varchar(33) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `envelope_type` tinyint(2) DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `blessing` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `amount` decimal(10, 3) DEFAULT NULL,
  `amount_one` decimal(10, 3) DEFAULT NULL,
  `quantity` int(8) DEFAULT NULL,
  `remain_amount` decimal(10, 3) DEFAULT NULL,
  `remain_quantity` int(8) DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `order_type` tinyint(2) DEFAULT NULL,
  `pay_status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for red_envelope_item
-- ----------------------------
DROP TABLE IF EXISTS `red_envelope_item`;
CREATE TABLE `red_envelope_item`  (
  `id` int(11) NOT NULL,
  `item_no` int(11) DEFAULT NULL,
  `envelope_no` varchar(33) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `recv_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `recv_user_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `amount` decimal(10, 3) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `remain_amount` decimal(10, 3) DEFAULT NULL,
  `account_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pay_status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
