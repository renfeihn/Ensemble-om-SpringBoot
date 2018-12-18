drop table if exists TB_VOUCHER_DEF;
/*==============================================================*/
/* Table: TB_VOUCHER_DEF                                           */
/*==============================================================*/
create table TB_VOUCHER_DEF
(
    DOC_TYPE varchar(10) not null comment '凭证类型',
    DOC_TYPE_DESC varchar(50) not null comment '类型描述',
    VOUCHER_BILL_IND varchar(1) not null comment '凭证票据标识 取值列表： V: 凭证 C：票据',
    DOC_CLASS varchar(3) not null comment '凭证种类 PBK：存折 CHK：支票 DCT：存单 CRD：卡 CFT：存款证明 BNK：银行票据 COL：托收票据 DFT：银行汇票 TCH：旅行支票 BAT：银行承兑汇票 CAT：商业承兑汇票 CHQ：支票 OTH：其他 SCV：印鉴',
    BRANCH_RESTRAINT varchar(1) not null comment '是否限制机构使用 Y：是 N：否 默认值为N',
    ALLOW_DISTR varchar(1) not null comment '允许调拨标志 默认值 :  N  Y：允许 N：不允许',
    IN_CONTRAL varchar(1) not null comment '总行入库标志 默认值 :  N  Y：是 N：否',
    HAVE_NUMBER varchar(1) not null comment '是否有号 Y：有号码 N：没有号码 默认值 :  Y ',
    PROFIT_CENTRE varchar(12) comment '利润中心',
    PREFIX_REQ varchar(1) not null comment '前缀标志 默认值 :  N  Y：有前缀 N：没有前缀',
    IS_CHEQUE_BOOK varchar(1) not null comment '是否支票标记 默认值 :  N  Y：是 N：否',
    USE_BY_ORDER varchar(1) not null comment '是否按顺序使用 Y：是 N：否 默认值 :  N ',
    TC_DENOM_GROUP varchar(8) comment '有价单证固定面额组',
    ALLOW_CHEQUE_DENOM varchar(1) comment '有价单证是否固定面额标志 Y：是 N：否 默认值为N',
    OTHER_BANK_FLAG varchar(1) not null comment '他行票据标记 Y：是 N：否 默认值为N',
    VOUCHER_LENGTH Decimal(20,0) comment '凭证号长度',
    LAST_CHANGE_DATE varchar(8) comment '上次修改日期',
    LAST_CHANGE_USER_ID varchar(30) comment '上次修改柜员',
    START_DATE varchar(8) comment '生效日期',
    EXPIRE_DATE varchar(8) comment '失效日期',
    USER_ID varchar(30) comment '柜员号',
    STATUS varchar(3) not null comment '批准状态 E-已录入但未批准 A-已批准 默认为A',
    CHECK_USER_ID varchar(30) comment '复核柜员',
    VOU_LOST_DAYS varchar(5) comment '口挂天数',
    COMMISSION_VOU_LOST_DAYS varchar(5) comment '代办人口挂天数',
    DEPOSIT_TYPE varchar(5) comment '存款类型 S-储蓄 C-往来 T-定期',
    IS_CASH_CHEQUE varchar(1) comment '是否现金支票标记 默认值 : ‘N’',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (DOC_TYPE)
);
alter table TB_VOUCHER_DEF comment '凭证类型定义表 undefined';