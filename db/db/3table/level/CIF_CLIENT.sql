drop table if exists CIF_CLIENT;
/*==============================================================*/
/* Table: CIF_CLIENT                                           */
/*==============================================================*/
create table CIF_CLIENT
(
    CLIENT_KEY Decimal(15) not null comment '关系客户内部键',
    CLIENT_NO varchar(20) comment '客户号',
    CLIENT_TYPE varchar(3) comment '客户类型',
    CATEGORY_TYPE varchar(3) comment '客户细类',
    CLIENT_GRP varchar(20) comment '客户组',
    CLIENT_SHORT varchar(30) not null comment '客户简称',
    CH_CLIENT_NAME varchar(200) comment '关联方中文名称',
    CLIENT_NAME varchar(200) comment '客户名称',
    NAME_SUFFIX varchar(5) comment '客户名后缀',
    CLIENT_MNEMONIC varchar(8) comment '助记名称',
    CLIENT_ALIAS varchar(72) comment '别名',
    ADDRESS varchar(140) comment '地址',
    ACCT_EXEC varchar(30) comment '客户经理',
    COUNTRY_LOC varchar(3) comment '国籍',
    STATE_LOC varchar(10) comment '省、州  FM_STATE.STATE',
    CLIENT_CITY varchar(8) comment '城市代码',
    COUNTRY_CITIZEN varchar(3) comment '居住国家',
    COUNTRY_RISK varchar(3) comment '风险控制国家',
    CTRL_BRANCH varchar(20) comment '控制分行 ',
    PROFIT_CENTRE varchar(12) comment '利润中心 FM_PROFIT_CENTRE.PROFIT_CENTRE',
    CLASS_1 varchar(6) comment '分类1',
    CLASS_2 varchar(6) comment '分类2',
    CLASS_3 varchar(6) comment '分类3',
    CLASS_4 varchar(6) comment '分类4',
    CLASS_5 varchar(6) comment '分类5',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    INTERNAL_IND varchar(1) comment '是否为内部客户 ',
    TAXABLE_IND varchar(1) comment '是否收税 ',
    CLIENT_SPREAD Decimal(15,8) comment '客户汇率优惠比例',
    RISK_WEIGHT Decimal(5,2) comment '风险权重',
    STATUS_INFO varchar(80) comment '状态描述',
    CLIENT_STATUS varchar(3) comment '客户状态',
    TRAN_STATUS varchar(3) comment '状态 S:成功 F:失败',
    CLOSED_DATE varchar(8) comment '关闭日期',
    CLIENT_INDICATOR varchar(1) not null comment '客户标识 ',
    DISTRICT varchar(10) comment '区号 FM_DIST_CODE.DIST_CODE',
    POSTAL_CODE varchar(6) comment '邮政编码',
    CONTROL_DEPT varchar(40) comment '部门',
    SOURCE_TYPE varchar(10) comment '渠道 FM_CHANNEL.CHANNEL',
    WRITTEN_LANGUAGE varchar(1) comment '书写语言 FM_LANGUAGE.LANGUAGE',
    SPOKEN_LANGUAGE varchar(1) comment '交流语言 FM_LANGUAGE.LANGUAGE',
    PRINT_LANGUAGE varchar(1) comment '打印语言 FM_LANGUAGE.LANGUAGE',
    INLAND_OFFSHORE varchar(1) comment '境内境外 ',
    TEMP_CLIENT varchar(1) comment '是否为临时客户',
    PEP_IND varchar(1) comment '资料不全标识',
    INFO_LACK varchar(1) comment 'PEP标识',
    CLASS_LEVEL varchar(4) default '01' comment '综合评级  参数定义表：CIF_CLASS_LEVEL',
    CLASS_LEVEL_DATE varchar(8) comment '评级日期',
    OLD_CLIENT_NO varchar(20) comment '原系统客户号  CIF_CLIENT.CLIENT_NO',
    CREATION_USER_ID varchar(30) comment '创建柜员',
    CREATION_DATE varchar(8) comment '创建日期',
    LAST_CHANGE_USER_ID varchar(30) comment '上次修改柜员',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    BLACKLIST_IND varchar(1) comment '是否黑名单客户',
    COMPANY varchar(20) comment '法人代码',
    INDUSTRY varchar(20) comment '通用行业代码 CIF_INDUSTRY.INDUSTRY',
    BUSINESS varchar(6) comment '行业代码',
    CR_RATING varchar(4) comment '客户等级 客户信用等级 001:1级 002:2级 003:3级 004:4级',
    VOUCHER_TYPE varchar(1) comment '开票类型 0:普通发票 1:专用发票 2:不开票',
    TAXPAYER_TYPE varchar(2) comment '纳税人类型',
    IS_FORMAL varchar(1) comment '是否弱实名客户',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    TAX_ORG_TYPE varchar(1) comment '税收机构类型:1-消极非金融机构、2-其他非金融机构',
    TAX_FLAG varchar(1) comment '税收居民标识 1.中国税收居民
 2.非居民3.既是中国税收居民又是其他国家（地区）税收居民
',
    TAX_COUNTRY varchar(3) comment '税收居民国 ',
    TAXPAYER_ID varchar(30) comment '纳税人识别号',
    UNPROVIDE_ID_REASON varchar(1) comment '未提供识别号原因  1.居民国（地区）不发放纳税人识别号2.账户持有人未能取得纳税人识别号',
    TAX_REMARK varchar(100) comment '备注',
    primary  key (CLIENT_KEY)
);
alter table CIF_CLIENT comment '客户信息表 undefined';

drop index CIF_CLIENT_NO_IND on CIF_CLIENT;
/*==============================================================*/
/* Index: CIF_CLIENT_NO_IND                                           */
/*==============================================================*/
create unique index CIF_CLIENT_NO_IND on CIF_CLIENT (
    CLIENT_NO
);