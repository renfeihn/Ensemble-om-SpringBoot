drop table if exists GL_BRANCH;
/*==============================================================*/
/* Table: GL_BRANCH                                           */
/*==============================================================*/
create table GL_BRANCH
(
    BRANCH varchar(20) not null comment '机构',
    BRANCH_NAME varchar(100) not null comment '机构名称',
    BRANCH_SHORT varchar(20) not null comment '机构简称',
    HIERARCHY_CODE varchar(5) comment '机构层级 取值 FM_BANK_HIERARCHY.HIERARCHY_CODE',
    ATTACHED_TO varchar(20) comment '所属机构 取值 FM-BRANCH_TBL.BRANCH',
    INTERNAL_CLIENT varchar(12) comment '内部客户号 默认等于机构号',
    LOCAL_CCY varchar(3) comment '本地币种 取值FM_CURRENCY.CCY',
    BASE_CCY varchar(3) comment '基本币种 取值FM_CURRENCY.CCY',
    PROFIT_CENTRE varchar(12) comment '利润中心 取值 FM_PROFIT_CENTRE_TBL.PROFIT_CENTRE',
    COUNTRY varchar(3) comment '所属国家 取值FM_COUNTRY.COUNTRY',
    STATE varchar(10) comment '所在地区(省/州) 取值FM_STATE.STATE',
    CITY varchar(8) comment '所在城市 取值 FM_CITY.CITY',
    DISTRICT varchar(10) comment '区号',
    POSTAL_CODE varchar(6) comment '邮编',
    CHEQUE_ISSUING_BRANCH varchar(1) default 'N' comment '是否签发支票 Y:支票发行行 N:非支票发行行 默认值：‘N’',
    TRAN_BR_IND varchar(1) default 'Y' comment '是否为交易分行 Y:交易行 N:非交易行 默认值：‘N’',
    SUB_BRANCH_CODE varchar(20) comment '分行代码 默认为空',
    CNY_BUSINESS_UNIT varchar(10) comment '业务单元(人民币) 取值 FM_BUSINESS_UNIT.BUSINESS_UNIT',
    HKD_BUSINESS_UNIT varchar(10) comment '业务单元(港币) 取值 FM_BUSINESS_UNIT.BUSINESS_UNIT',
    FX_ORGAN_CODE varchar(12) default '0' comment '外汇金融机构代码',
    PBOC_FUND_CHECK_FALG varchar(1) comment '人行备付金检查标志 Y/N  Y:检查余额 N:不检查余额',
    CCY_CTRL_BRANCH varchar(20) comment '结售汇平盘机构 取值 FM_BRANCH_TBL.BRANCH',
    EOD_IND varchar(1) default 'N' comment '日终标识 Y-日终状态 N-营业状态',
    STATUS varchar(3) default 'A' comment '状态 A-有效 C-关闭',
    IP_ADDR varchar(100) comment '机构IP地址',
    COMPANY varchar(20) comment '公司代码',
    FTA_CODE varchar(10) comment '自贸区代码',
    FTA_FLAG varchar(1) comment '是否自贸区机构: Y：是自贸区  N：不是自贸区',
    VOUCHER_USER_CONTRAL varchar(1) default 'Y' comment '是否限制凭证入库柜员',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    primary  key (BRANCH)
);
alter table GL_BRANCH comment '机构信息表 undefined';