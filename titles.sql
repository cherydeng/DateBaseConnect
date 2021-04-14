/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost
 Source Database       : titles

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : utf-8

 Date: 04/14/2021 19:53:37 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Books`
-- ----------------------------
DROP TABLE IF EXISTS `Books`;
CREATE TABLE `Books` (
  `ISBN` varchar(10) DEFAULT NULL,
  `BookName` varchar(20) DEFAULT NULL,
  `version` varchar(5) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
--  Records of `Books`
-- ----------------------------
BEGIN;
INSERT INTO `Books` VALUES ('001', '数学建模与应用', '1.2', '2020', '41.2'), ('002', '考研英语阅读60篇', '2.3', '2021', '20.9'), ('003', 'JavaWeb开发技术', '2.4', '2009', '10.9'), ('004', '浪潮之巅', '8.2', '2020', '89.2'), ('005', '数据库技术与应用', '1.2', '2020', '20.1');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
