/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost
 Source Database       : Goods

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : utf-8

 Date: 04/14/2021 19:53:21 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `vote`
-- ----------------------------
DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `price` float(10,1) DEFAULT NULL,
  `number` int DEFAULT NULL,
  `maker` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
--  Records of `vote`
-- ----------------------------
BEGIN;
INSERT INTO `vote` VALUES ('1', '可口可乐', '碳酸饮料', '2.5', '250', '可口可乐公司'), ('2', '康师傅冰红茶', '饮料', '2.0', '270', '康师傅'), ('4', '康师傅绿茶', '饮料', '2.5', '55', '康师傅'), ('6', '雪碧', '碳酸饮料', '3.0', '433', '可口可乐公司'), ('7', '康师傅牛肉面', '方便面', '2.0', '456', '康师傅'), ('8', '美年达(橙味)', '碳酸饮料', '3.0', '700', '百事公司'), ('9', '百事可乐', '碳酸饮料', '3.0', '450', '百事公司'), ('10', '哇哈哈', '饮料', '1.5', '200', '哇哈哈'), ('11', '优乐美', '饮料', '1.0', '100', '优乐美'), ('12', '康师傅茉莉清茶', '饮料', '2.5', '55', '康师傅'), ('13', '康师傅矿泉水', '饮用品', '1.0', '1000', '康师傅'), ('14', '康师傅酸梅汤', '饮料', '3.0', '550', '康师傅'), ('16', '康师傅香辣面', '方便面', '2.0', '300', '康师傅'), ('17', '王老吉', '茶饮料', '3.0', '60', '王老吉');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
