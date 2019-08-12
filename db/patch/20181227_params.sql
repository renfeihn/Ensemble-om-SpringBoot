/*
Navicat MySQL Data Transfer

Source Server         : EnsembleOm
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-12-27 17:48:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for om_page_classification
-- ----------------------------
DROP TABLE IF EXISTS `om_page_classification`;
CREATE TABLE `om_page_classification` (
  `department` varchar(10) NOT NULL,
  `page_class` varchar(10) NOT NULL,
  `attr_key` varchar(30) NOT NULL,
  PRIMARY KEY (`department`,`page_class`,`attr_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
