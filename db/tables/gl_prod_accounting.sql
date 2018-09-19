/*
Navicat MySQL Data Transfer

Source Server         : ensemble
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-09-19 14:27:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gl_prod_accounting
-- ----------------------------
DROP TABLE IF EXISTS `gl_prod_accounting`;
CREATE TABLE `gl_prod_accounting` (
  `PROD_TYPE` varchar(50) NOT NULL COMMENT '产品类型 取值于MB_PROD_TYPE.PROD_TYPE',
  `ACCOUNTING_STATUS` varchar(3) NOT NULL COMMENT '核算状态 MB_ACCOUNTING_STATUS.ACCOUNTING_STATUS',
  `PROFIT_CENTRE` varchar(12) DEFAULT NULL COMMENT '利润中心 FM_PROFIT_CENTRE.PROFIT_CENTRE 取值FM_PROFIT_CENTRE_TBL.PROFIT_CENTRE',
  `BUSINESS_UNIT` varchar(10) DEFAULT NULL COMMENT '帐套',
  `GL_CODE_A` varchar(20) DEFAULT NULL COMMENT '资产科目代码 AC_SUBJECT.SUBJECT_CODE',
  `GL_CODE_L` varchar(20) DEFAULT NULL COMMENT '负债科目代码 AC_SUBJECT.SUBJECT_CODE',
  `GL_CODE_INT_E` varchar(20) DEFAULT NULL COMMENT '利息支出科目代码 AC_SUBJECT.SUBJECT_CODE',
  `GL_CODE_INT_PAY` varchar(20) DEFAULT NULL COMMENT '应付利息科目代码 AC_SUBJECT.SUBJECT_CODE',
  `GL_CODE_INT_I` varchar(20) DEFAULT NULL COMMENT '利息收入科目代码 AC_SUBJECT.SUBJECT_CODE',
  `GL_CODE_INT_REC` varchar(20) DEFAULT NULL COMMENT '应收利息科目代码 AC_SUBJECT.SUBJECT_CODE',
  `GL_CODE_INT_ACR` varchar(20) DEFAULT NULL COMMENT '应计利息科目代码 AC_SUBJECT.SUBJECT_CODE',
  `GL_CODE_ODP_I` varchar(20) DEFAULT NULL COMMENT '罚息收入科目代码 AC_SUBJECT.SUBJECT_CODE',
  `GL_CODE_ODP_REC` varchar(20) DEFAULT NULL COMMENT '应收罚息科目代码 AC_SUBJECT.SUBJECT_CODE ',
  `GL_CODE_ODP_ACR` varchar(20) DEFAULT NULL COMMENT '应计罚息科目代码 AC_SUBJECT.SUBJECT_CODE',
  `GL_CODE_ODI_I` varchar(20) DEFAULT NULL COMMENT '复利收入科目代码 AC_SUBJECT.SUBJECT_CODE ',
  `GL_CODE_ODI_REC` varchar(20) DEFAULT NULL COMMENT '应收利息科目代码 AC_SUBJECT.SUBJECT_CODE',
  `GL_CODE_ODI_ACR` varchar(20) DEFAULT NULL COMMENT '应计利息科目代码 AC_SUBJECT.SUBJECT_CODE',
  `GL_CODE_A_LOSS` varchar(20) DEFAULT NULL COMMENT '资产损失科目代码 AC_SUBJECT.SUBJECT_CODE ',
  `GL_CODE_ADJUST` varchar(20) DEFAULT NULL COMMENT '调整科目代码 AC_SUBJECT.SUBJECT_CODE',
  `TRAN_TIMESTAMP` varchar(17) DEFAULT NULL COMMENT '交易时间戳',
  `TRAN_TIME` decimal(11,0) DEFAULT NULL COMMENT '交易时间',
  PRIMARY KEY (`PROD_TYPE`,`ACCOUNTING_STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品科目表';

-- ----------------------------
-- Records of gl_prod_accounting
-- ----------------------------
INSERT INTO `gl_prod_accounting` VALUES ('101', 'ALL', null, null, '81020201', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('102', 'ALL', null, null, '81020401', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('103', 'ALL', null, null, '81021401', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('104', 'ALL', null, null, '81020901', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('105', 'ALL', null, null, '81021001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('106', 'ALL', null, null, '81020301', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('107', 'ALL', null, null, '81021701', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('121', 'ALL', null, null, '81022201', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('122', 'ALL', null, null, '81021101', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('123', 'ALL', null, null, '81021301', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('201', 'ALL', null, null, '81023401', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('202', 'ALL', null, null, '81023301', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('204', 'ALL', null, null, '81022801', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('209', 'ALL', null, null, '81022801', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('216', 'ALL', null, null, '81023501', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('303', 'ALL', null, null, '81020101', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('304', 'ALL', null, null, '81020101', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('308', 'ALL', null, null, '81020101', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('309', 'ALL', null, null, '81020101', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('401', 'ALL', null, null, '81021601', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('511', 'ALL', null, null, '81023501', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('512', 'ALL', null, null, '81023501', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('513', 'ALL', null, null, '81021901', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL100', 'FY', '99', '9901', '1303010101', null, null, null, '810501', null, null, '810501', null, null, '810501', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL100', 'FYJ', '99', '9901', '1303010101', null, null, null, '810501', null, null, '810501', null, null, '810501', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL100', 'WRN', '99', '9901', '810901', null, null, null, '810902', null, null, '810902', null, null, '810902', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL100', 'YUQ', '99', '9901', '1303010101', null, null, null, '6011010101', '1132010101', '1133010101', '6011010101', '1132010101', '1133010101', '6011010101', '1132010101', '1133010101', '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL100', 'ZHC', '99', '9901', '1303010101', null, null, null, '6011010101', '1132010101', '1133010101', '6011010101', null, null, '6011010101', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL200', 'FY', '99', '9901', '3003020101', null, null, null, '712202', null, null, '712202', null, null, '712202', null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL200', 'FYJ', '99', '9901', '3003020101', null, null, null, '712202', null, null, '712202', null, null, '712202', null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL200', 'YUQ', '99', '9901', '3003020101', null, null, null, '712202', '2241030110', '712202', '712202', '2241030110', '712202', '712202', '2241030110', '712202', null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL200', 'ZHC', '99', '9901', '3003020101', null, null, null, '712202', '2241030110', '712202', '712202', '2241030110', '712202', '712202', '2241030110', '712202', null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL201', 'FY', '99', '9901', '3003020101', null, null, null, '712302', null, null, '712302', null, null, '712302', null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL201', 'FYJ', '99', '9901', '3003020101', null, null, null, '712302', null, null, '712302', null, null, '712302', null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL201', 'YUQ', '99', '9901', '3003020101', null, null, null, '712302', null, null, '712302', null, null, '712302', null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL201', 'ZHC', '99', '9901', '3003020101', null, null, null, '712302', null, null, '712302', null, null, '712302', null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL300', 'FY', '99', '9901', '1301010101', null, null, null, '810501', null, null, '810501', null, null, '810501', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL300', 'FYJ', '99', '9901', '1301010101', null, null, null, '810501', null, null, '810501', null, null, '810501', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL300', 'WRN', '99', '9901', '810901', null, null, null, '810902', null, null, '810902', null, null, '810902', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL300', 'YUQ', '99', '9901', '1301010101', null, null, null, '6011070101', '1132010101', '1133010101', '6011010101', '1132010101', '1133010101', '6011070101', '1132010101', '1133010101', '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL300', 'ZHC', '99', '9901', '1301010101', null, null, null, '6011070101', null, '1301010102', null, null, null, null, null, null, null, '1301010102', null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL301', 'FY', '99', '9901', '1301010101', null, null, null, '810501', null, null, '810501', null, null, '810501', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL301', 'FYJ', '99', '9901', '1301010101', null, null, null, '810501', null, null, '810501', null, null, '810501', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL301', 'WRN', '99', '9901', '810901', null, null, null, '810902', null, null, '810902', null, null, '810902', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL301', 'YUQ', '99', '9901', '1301010101', null, null, null, '6011070101', '1132010101', '1133010101', '6011010101', '1132010101', '1133010101', '6011070101', '1132010101', '1133010101', '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL301', 'ZHC', '99', '9901', '1301010101', null, null, null, '6011070101', null, '1301010102', null, null, null, null, null, null, null, '1301010102', null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL302', 'ZHC', '99', '9901', '1111020101', null, null, null, '6011060101', null, '1301010102', null, null, null, null, null, null, null, '1301010102', null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL303', 'ZHC', '99', '9901', '2111020101', null, null, null, '6011070101', null, '1301010102', null, null, null, null, null, null, null, '1301010102', null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL400', 'FY', '99', '9901', '1303060101', null, null, null, '810501', null, null, '810501', null, null, '810501', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL400', 'FYJ', '99', '9901', '1303060101', null, null, null, '810501', null, null, '810501', null, null, '810501', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL400', 'WRN', '99', '9901', '810901', null, null, null, '810902', null, null, '810902', null, null, '810902', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL400', 'YUQ', '99', '9901', '1303060101', null, null, null, '6011060101', '1132010301', '1133010301', '6011060101', '1132010301', '1133010301', '6011060101', '1132010301', '1133010301', '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL400', 'ZHC', '99', '9901', '1303060101', null, null, null, '6011060101', '1132010301', '1133010301', '6011060101', null, null, '6011060101', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL500', 'FY', '99', '9901', '1303010101', null, null, null, '810501', null, null, '810501', null, null, '810501', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL500', 'FYJ', '99', '9901', '1303010101', null, null, null, '810501', null, null, '810501', null, null, '810501', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL500', 'WRN', '99', '9901', '810901', null, null, null, '810902', null, null, '810902', null, null, '810902', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL500', 'YUQ', '99', '9901', '1303010101', null, null, null, '6011010101', '1132010101', '1133010101', '6011010101', '1132010101', '1133010101', '6011010101', '1132010101', '1133010101', '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL500', 'ZHC', '99', '9901', '1303010101', null, null, null, '6011010101', '1132010101', '1133010101', '6011010101', null, null, '6011010101', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL600', 'FY', '99', '9901', '1303010101', null, null, null, '810501', null, null, '810501', null, null, '810501', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL600', 'FYJ', '99', '9901', '1303010101', null, null, null, '810501', null, null, '810501', null, null, '810501', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL600', 'WRN', '99', '9901', '810901', null, null, null, '810902', null, null, '810902', null, null, '810902', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL600', 'YUQ', '99', '9901', '1303010101', null, null, null, '6011010101', '1132010101', '1133010101', '6011010101', '1132010101', '1133010101', '6011010101', '1132010101', '1133010101', '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL600', 'ZHC', '99', '9901', '1303010101', null, null, null, '6011010101', '1132010101', '1133010101', '6011010101', null, null, '6011010101', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL601', 'FY', '99', '9901', '712301', null, null, null, '712302', null, null, '712302', null, null, '712302', null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL601', 'FYJ', '99', '9901', '712301', null, null, null, '712302', null, null, '712302', null, null, '712302', null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL601', 'YUQ', '99', '9901', '712301', null, null, null, '712302', null, null, '712302', null, null, '712302', null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL601', 'ZHC', '99', '9901', '712301', null, null, null, '712302', null, null, '712302', null, null, '712302', null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL700', 'FY', '99', '9901', '1303010101', null, null, null, '810501', null, null, '810501', null, null, '810501', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL700', 'FYJ', '99', '9901', '1303010101', null, null, null, '810501', null, null, '810501', null, null, '810501', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL700', 'WRN', '99', '9901', '810901', null, null, null, '810902', null, null, '810902', null, null, '810902', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL700', 'YUQ', '99', '9901', '1303010101', null, null, null, '6011010101', '1132010101', '1133010101', '6011010101', '1132010101', '1133010101', '6011010101', '1132010101', '1133010101', '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL700', 'ZHC', '99', '9901', '1303010101', null, null, null, '6011010101', '1132010101', '1133010101', '6011010101', null, null, '6011010101', null, null, '1304020201', null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL801', 'ALL', null, null, '711801', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL802', 'ALL', null, null, '711801', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL803', 'ALL', null, null, '711801', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL804', 'ALL', null, null, '711801', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL805', 'ALL', null, null, '711801', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL806', 'ALL', null, null, '711801', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('CL807', 'ALL', null, null, '711801', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('DC101', 'ALL', '99', '9901', null, '2011040101', '6411040101', '2231010101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('DC201', 'ALL', '99', '9901', null, '2011030101', '6411020101', '2231010101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('FTE01', 'ALL', '99', '9901', null, '2011010101', '6411010101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('FTF01', 'ALL', '99', '9901', null, '2011020101', '6411030101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('FTI01', 'ALL', '99', '9901', null, '2011020101', '6411030101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('FTN01', 'ALL', '99', '9901', null, '2011010101', '6411010101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('FTU01', 'ALL', '99', '9901', null, '2011010101', '6411010101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('I101', 'ALL', '99', '9901', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('I102', 'ALL', '99', '9901', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('L01', 'ALL', '99', '9901', null, null, null, null, '6021100101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('L10', 'ALL', '99', '9901', null, null, null, null, '6021100101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('MM101', 'ALL', '99', '9901', null, '3005100101', '6412040101', '2231010105', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('MM102', 'ALL', '99', '9901', null, '3005070101', null, null, '6012030101', '1132020301', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('MM201', 'ALL', '99', '9901', null, '2003010101', '6412020201', '2231010104', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('MM202', 'ALL', '99', '9901', null, '1302010101', null, null, '6012020101', '1132020201', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('N101', 'ALL', '99', '9901', '1003020101', null, null, null, '6012010101', null, '1133020101', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('N102', 'ALL', '99', '9901', '1003010101', null, null, null, '6012010101', null, '1133020101', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('N103', 'ALL', '99', '9901', '1011010101', null, null, null, '6012020101', null, '1133020201', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('N104', 'ALL', '99', '9901', '1011010201', null, null, null, '6012020101', null, '1133020201', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('N105', 'ALL', '99', '9901', '3010020101', null, null, null, '6012030101', null, '1133050101', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('NRA01', 'ALL', '99', '9901', null, '2011010101', '6411010101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('R01', 'ALL', '99', '9999', null, null, null, null, '6021070101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('R02', 'ALL', '99', '9901', null, null, null, null, '6021100101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('R03', 'ALL', '99', '9999', null, null, null, null, '6021070101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('R06', 'ALL', '99', '9901', null, null, null, null, '6021010101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('R07', 'ALL', '99', '9901', null, null, null, null, '6021010101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('R08', 'ALL', '99', '9901', null, null, null, null, '6021010101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('R09', 'ALL', '99', '9901', null, null, null, null, '6021010101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB101', 'ALL', '99', '9901', null, '2011020101', '6411030101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB103', 'ALL', '99', '9901', null, '2011020101', '6411030101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB121', 'ALL', '99', '9901', null, '2011020101', '6411030101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB131', 'ALL', '99', '9901', null, '2011040101', '6411040101', '2231010101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB151', 'ALL', '99', '9901', null, '2011040101', '6411040101', '2231010101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB152', 'ALL', '99', '9901', null, '2011040301', '6411040101', '2231010101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB154', 'ALL', '99', '9901', null, '2011050201', '6411050101', '2231010101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB157', 'ALL', '99', '9901', null, '2011040201', '6411040101', '2231010101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB159', 'ALL', '99', '9901', null, '2011020201', '6411040101', '2231010101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB161', 'ALL', '99', '9901', null, '2011040101', '6411040101', '2231010101', null, null, null, null, null, null, null, null, null, null, null, '20170316154447', '1489650287');
INSERT INTO `gl_prod_accounting` VALUES ('RB171', 'ALL', '99', '9901', null, '2011040101', '6411040101', '2231010101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB201', 'ALL', '99', '9901', null, '2011010101', '6411010101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB251', 'ALL', '99', '9901', null, '2011030101', '6411020101', '2231010101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB253', 'ALL', '99', '9901', null, '2011030101', '6411020101', '2231010101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB255', 'ALL', '99', '9901', null, '2011050101', '6411050101', '2231010101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB301', 'ALL', '99', '9901', null, '2012010201', '6412020101', '2231010104', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB303', 'ALL', '99', '9901', null, '2011020101', '6411030101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB304', 'ALL', '99', '9901', null, '2011020101', '6411030101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB351', 'ALL', '99', '9901', null, '2012010201', '6412020101', '2231010104', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB361', 'ALL', '99', '9901', null, '2011030101', '6411010101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB402', 'ALL', '99', '9901', '2271030101', '6411100101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB502', 'ALL', '99', '9901', null, '2011010101', '6411010101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB552', 'ALL', '99', '9901', null, '2011030101', '6411010101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB601', 'ALL', '99', '9901', null, '2011010101', '6411010101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB701', 'ALL', '99', '9901', null, '2011020101', '6411030101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('RB702', 'ALL', '99', '9901', null, '2011020101', '6411030101', '2231010102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('TYC01', 'ALL', '99', '9901', null, '2011030101', '6411020101', '2231010101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V01', 'ALL', '99', '9901', null, null, null, null, '6021100101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V02', 'ALL', '99', '9901', null, null, null, null, '6021100101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V03', 'ALL', '99', '9901', null, null, null, null, '6021050101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V05', 'ALL', '99', '9901', null, null, null, null, '6021100101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V06', 'ALL', '99', '9901', null, null, null, null, '6021100101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V09', 'ALL', '99', '9901', null, null, null, null, '6021100101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V10', 'ALL', '99', '9901', null, null, null, null, '6021100101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V101', 'ALL', '99', '9901', null, '2003010101', '6412020201', '2231010105', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V102', 'ALL', '99', '9901', null, '2004010101', '6412010101', '2231010106', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V105', 'ALL', '99', '9901', null, '3010020101', '6412040101', '2231010108', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V11', 'ALL', '99', '9901', null, null, null, null, '6021100101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V12', 'ALL', '99', '9901', null, null, null, null, '6021050101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V14', 'ALL', '99', '9901', null, null, null, null, '6021090101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V15', 'ALL', '99', '9901', null, null, null, null, '6021090101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V16', 'ALL', '99', '9901', null, null, null, null, '6021090101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V17', 'ALL', '99', '9901', null, null, null, null, '6021090101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V18', 'ALL', '99', '9901', null, null, null, null, '6021090101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V23', 'ALL', '99', '9901', null, null, null, null, '6021090101', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `gl_prod_accounting` VALUES ('V25', 'ALL', '99', '9901', null, null, null, null, '6021090101', null, null, null, null, null, null, null, null, null, null, null, null);
