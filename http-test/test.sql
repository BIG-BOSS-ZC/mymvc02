/*
Navicat MySQL Data Transfer

Source Server         : msql8.18
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-01-13 16:50:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `money` decimal(20,2) NOT NULL DEFAULT '0.00',
  `role` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indexname` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'admin', 'admin', '0.00', 'admin');
INSERT INTO `account` VALUES ('3', 'redmi', 'k30', '0.00', '');
INSERT INTO `account` VALUES ('4', 'vivo', 'nex333', '5099.00', '');
INSERT INTO `account` VALUES ('5', 'oppo', 'opporeno', '3299.00', '');
INSERT INTO `account` VALUES ('6', 'vivo', 'nex444', '5555.00', '');
INSERT INTO `account` VALUES ('10', 'vivo', 'vivox30', '1010.00', '');
INSERT INTO `account` VALUES ('12', 'mi', 'mialpha', '1010.00', '');
INSERT INTO `account` VALUES ('13', 'huawei', 'hw11111', '1010.00', '');
INSERT INTO `account` VALUES ('14', 'oppo', 'ace3000', '1010.00', '');

-- ----------------------------
-- Table structure for advice
-- ----------------------------
DROP TABLE IF EXISTS `advice`;
CREATE TABLE `advice` (
  `name` varchar(12) NOT NULL,
  `money` double(12,2) DEFAULT NULL,
  `miaoshu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=396 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of advice
-- ----------------------------
INSERT INTO `advice` VALUES ('屠龙刀', '666.00', '一刀30万', '1', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '38.88', '一刀10万', '2', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '3', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '4', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '5', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '6', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '7', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '8', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '9', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '10', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '11', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '12', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '13', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '14', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '15', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '16', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '17', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '18', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '19', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '20', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '21', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '22', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '23', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '24', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '25', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '26', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '27', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '28', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '29', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '30', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '31', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '32', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '33', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '34', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '35', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '36', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '37', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '38', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '39', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '40', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '41', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '42', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '43', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '44', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '45', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '46', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '47', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '48', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '49', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '50', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '51', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '52', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '53', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '54', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '55', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '56', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '57', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '58', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '59', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '60', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '61', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '62', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '63', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '64', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '65', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '66', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '67', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '68', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '69', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '70', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '71', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '72', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '73', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '74', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '75', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '76', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '77', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '78', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '79', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '80', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '81', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '82', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '83', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '84', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '85', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '86', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '87', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '88', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '89', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '90', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '91', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '92', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '93', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '94', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '95', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '96', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '97', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '98', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '99', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '100', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '101', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '102', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '103', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '104', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '105', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '106', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '107', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '108', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '109', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '110', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '111', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '112', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '113', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '114', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '115', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '116', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '117', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '118', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '119', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '120', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '121', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '122', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '123', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '124', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '125', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '126', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '127', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '128', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '129', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '130', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '131', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '132', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '133', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '134', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '135', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '136', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '137', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '138', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '139', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '140', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '141', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '142', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '143', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '144', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '145', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '146', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '147', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '148', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '149', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '150', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '151', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '152', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '153', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '154', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '155', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '156', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '157', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '158', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '159', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '160', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '161', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '162', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '163', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '164', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '165', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '166', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '167', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '168', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '169', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '170', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '171', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '172', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '173', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '174', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '175', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '176', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '177', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '178', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '179', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '180', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '181', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '182', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '183', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '184', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '185', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '186', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '187', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '188', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '189', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '190', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '191', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '192', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '193', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '194', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '195', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '196', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '197', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '198', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '199', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '200', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '201', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '202', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '203', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '204', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '205', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '206', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '207', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '208', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '209', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '210', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '211', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '212', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '213', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '214', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '215', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '216', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '217', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '218', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '219', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '220', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '221', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '222', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '223', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '224', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '225', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '226', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '227', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '228', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '229', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '230', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '231', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '232', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '233', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '234', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '235', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '236', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '237', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '238', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '239', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '240', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '241', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '242', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '243', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '244', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '245', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '246', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '247', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '248', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '249', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '250', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '251', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '252', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '253', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '254', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '255', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '256', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '257', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '258', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '259', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '260', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '261', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '262', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '263', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '264', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '265', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '266', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '267', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '268', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '269', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '270', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '271', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '272', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '273', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '274', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '275', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '276', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '277', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '278', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '279', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '280', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '281', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '282', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '283', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '284', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '285', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '286', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '287', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '288', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '289', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '290', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '291', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '292', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '293', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '294', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '295', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '296', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '297', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '298', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '299', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '300', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '301', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '302', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '303', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '304', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '305', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '306', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '307', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '308', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '309', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '310', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '311', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '312', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '313', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '314', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '315', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '316', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '317', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '318', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '319', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '320', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '321', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '322', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '323', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '324', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '325', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '326', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '327', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '328', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '329', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '330', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '331', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '332', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '333', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '334', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '335', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '336', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '337', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '338', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '339', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '340', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '341', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '342', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '343', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '344', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '345', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '346', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '347', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '348', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '349', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '350', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '351', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '352', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '353', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '354', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '355', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '356', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '357', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '358', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '359', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '360', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '361', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '362', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '363', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '364', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '365', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '366', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '367', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '368', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '369', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '370', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '371', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '372', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '373', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '374', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '375', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '376', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '377', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '378', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '379', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '380', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '381', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '382', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '383', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '384', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '385', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '386', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '387', '1');
INSERT INTO `advice` VALUES ('屠猪刀', '28.88', '一刀10万', '388', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '389', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '390', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '391', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '392', '1');
INSERT INTO `advice` VALUES ('屠狗刀', '18.88', '一刀0.5万', '393', '1');
INSERT INTO `advice` VALUES ('ikkkk', '666.00', '一刀30万', '394', '1');
INSERT INTO `advice` VALUES ('iphone x', '2999.00', 'out of style', '395', '1');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `isbn` int(10) NOT NULL,
  `price` double(10,2) NOT NULL,
  `stock` int(10) NOT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '28.00', '49');
INSERT INTO `book` VALUES ('2', '39.00', '59');
INSERT INTO `book` VALUES ('3', '22.80', '10');

-- ----------------------------
-- Table structure for bookuser
-- ----------------------------
DROP TABLE IF EXISTS `bookuser`;
CREATE TABLE `bookuser` (
  `id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `money` double(20,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of bookuser
-- ----------------------------
INSERT INTO `bookuser` VALUES ('1', 'liuzhonglin', '2.00');

-- ----------------------------
-- Table structure for test1
-- ----------------------------
DROP TABLE IF EXISTS `test1`;
CREATE TABLE `test1` (
  `id` varchar(20) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of test1
-- ----------------------------
INSERT INTO `test1` VALUES ('3', 'rrttt');
INSERT INTO `test1` VALUES ('5', 'ttrds');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '刘忠林');
INSERT INTO `user` VALUES ('2', '蔡徐坤');
INSERT INTO `user` VALUES ('3', '三星');
INSERT INTO `user` VALUES ('4', '老四');
INSERT INTO `user` VALUES ('5', '老wu');
INSERT INTO `user` VALUES ('6', 'one');
INSERT INTO `user` VALUES ('7', '二');
INSERT INTO `user` VALUES ('8', 'three');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `hobbit` varchar(100) DEFAULT NULL,
  `birthday` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'aaa', '123456', '男', '17671797482', '66667@qq.com', 'sleep', null);
INSERT INTO `userinfo` VALUES ('2', '魏无羡', '666666', '男', '17677778888', '66666@cql.com', 'music', '2020-01-13 00:00:00');
INSERT INTO `userinfo` VALUES ('3', 'hhh', '434523', '女', '17666666666', 'gcg@ee.com', 'v vv', '2020-01-13 00:00:00');
