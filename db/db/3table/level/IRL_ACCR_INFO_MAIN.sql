drop table if exists IRL_ACCR_INFO_MAIN;
/*==============================================================*/
/* Table: IRL_ACCR_INFO_MAIN                                           */
/*==============================================================*/
create table IRL_ACCR_INFO_MAIN
(
    IRL_SEQ_NO varchar(50) not null comment '序号  ',
    SYSTEM_ID varchar(20) default '10' comment '系统ID',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    INT_CLASS varchar(20) not null comment '利息分类 IRL_INT_ROLL.INT_CLASS',
    ACCR_DATE varchar(8) not null comment '计提日期',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    BRANCH varchar(20) comment '机构代码',
    SOURCE_TYPE varchar(10) comment '渠道 FM_CHANNEL.CHANNEL',
    CCY varchar(3) not null comment '币种',
    INT_ACCRUED Decimal(17,2) comment '累计计提利息（结息周期内累计计提金额）',
    INT_ACCRUED_CTD Decimal(17,2) comment '计提日计提利息',
    INT_ACCRUED_CALC_CTD Decimal(25,10) comment '计提日计提原金额（实际计算金额）',
    INT_ACCRUED_DIFF Decimal(15,10) comment '计提金额差额',
    TAX_ACCRUED Decimal(17,2) comment '结息周期内利息税累计金额',
    TAX_ACCRUED_CTD Decimal(17,2) comment '计提日利息税',
    TAX_ACCRUED_CALC_CTD Decimal(25,10) comment '计提日利息税原金额（实际计算金额）',
    TAX_ACCRUED_DIFF Decimal(15,10) comment '利息税差额',
    TAX_TYPE varchar(3) comment '税率类型  IRL_INT_TYPE.INT_TAX_TYPE',
    TAX_RATE Decimal(15,8) comment '税率',
    CLIENT_NO varchar(20) comment '客户号',
    CLIENT_TYPE varchar(3) comment '客户类型',
    TRAN_SOURCE varchar(6) not null comment '交易发起方',
    ACCOUNTING_STATUS varchar(3) comment '核算状态',
    PROFIT_CENTRE varchar(12) comment '利润中心 FM_PROFIT_CENTRE.PROFIT_CENTRE',
    SOURCE_MODULE varchar(10) comment '模块',
    BUSINESS_UNIT varchar(10) comment '帐套',
    AGG Decimal(38,2) comment '积数',
    INT_AMT Decimal(17,2) comment '利息金额',
    MONTH_BASIS varchar(3) comment '月基准 ACT:实际天数 30D:每月30天',
    YEAR_BASIS varchar(3) comment '年基准天数 360天 365天',
    REFERENCE varchar(50) comment '交易参考号',
    REMARK varchar(200) comment '备注,修改印鉴卡关联添加描述',
    REVERSAL varchar(1) comment '冲正标志 Y:是 N:否',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    INT_CALC_BAL varchar(3) comment '计息方式 MB_ATTR_VALUE.INT_CALC_TYPE',
    GL_POSTED varchar(1) comment '过账标志 Y:是 N:否',
    COMPANY varchar(20) comment '法人代码',
    OTH_REFERENCE varchar(50) comment '对方交易参考号',
    INT_TYPE varchar(3) comment '利率类型 IRL_INT_TYPE.INT_TAX_TYPE',
    ACTUAL_RATE Decimal(15,8) comment '行内利率',
    FLOAT_RATE Decimal(15,8) comment '浮动利率',
    REAL_RATE Decimal(15,8) comment '执行利率',
    ACCT_SPREAD_RATE Decimal(15,8) comment '分户级浮动百分点',
    ACCT_PERCENT_RATE Decimal(5,2) comment '分户浮动百分比',
    ACCT_FIXED_RATE Decimal(15,8) comment '分户级固定利率',
    AGREE_CHANGE_TYPE varchar(1) comment '协议变动方式',
    AGREE_FIXED_RATE Decimal(15,8) comment '协议固定利率',
    AGREE_PERCENT_RATE Decimal(5,2) comment '协议浮动百分比',
    AGREE_SPREAD_RATE Decimal(15,8) comment '协议浮动百分点',
    SPLIT_RATE_FLAG varchar(1) comment '利率分段标志',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    TD_INT_NUM_DAYS varchar(5) comment '当期累计计息天数',
    TD_LAST_ACCR_DATE varchar(8) comment '当期上一计提日',
    primary  key (IRL_SEQ_NO)
);
alter table IRL_ACCR_INFO_MAIN comment '计提流水表 undefined';

drop index IRL_ACCR_INFO_MAIN_IND1 on IRL_ACCR_INFO_MAIN;
/*==============================================================*/
/* Index: IRL_ACCR_INFO_MAIN_IND1                                           */
/*==============================================================*/
create index IRL_ACCR_INFO_MAIN_IND1 on IRL_ACCR_INFO_MAIN (
    INTERNAL_KEY
);