drop table if exists MB_AGREEMENT_PACKAGE;
/*==============================================================*/
/* Table: MB_AGREEMENT_PACKAGE                                           */
/*==============================================================*/
create table MB_AGREEMENT_PACKAGE
(
    AGREEMENT_ID varchar(30) not null comment '协议编号,费用套餐签约协议编号',
    PACKAGE_ID varchar(10) not null comment '套餐代码',
    CLIENT_NO varchar(20) not null comment '客户号',
    EFFECT_DATE varchar(8) not null comment '生效日期',
    END_DATE varchar(8) not null comment '终止日期',
    FEE_AMT Decimal(17,2) comment '费用金额',
    CHARGE_WAY varchar(1) comment '收费方式',
    PACKAGE_PERIOD_FREQ varchar(2) comment '套餐频率',
    DEAL_DAY varchar(2) comment '处理日',
    NEXT_DEAL_DATE varchar(8) comment '下一处理日',
    CHARGE_PERIOD_FREQ varchar(2) comment '收费频率',
    CHARGE_DAY varchar(2) comment '收费日',
    NEXT_CHARGE_DATE varchar(8) comment '下一收费日期',
    CHARGE_TO_INTERNAL_KEY Decimal(15) comment '收费账户标识符',
    CHARGE_TO_BASE_ACCT_NO varchar(150) comment '收费账号',
    CHARGE_TO_PROD_TYPE varchar(50) comment '收费账户产品类型',
    CHARGE_TO_CCY varchar(3) comment '收费账户币种',
    CHARGE_TO_ACCT_SEQ_NO varchar(8) comment '收费账户序号',
    CHARGE_REASON_CODE varchar(6) comment '收费账户用途',
    AVAIL_NUM varchar(5) comment '可用抵扣次数',
    AVAIL_AMT Decimal(17,2) comment '可用抵扣金额',
    USER_ID varchar(30) not null comment '交易柜员',
    TRAN_BRANCH varchar(20) not null comment '交易机构',
    TRAN_DATE varchar(8) not null comment '交易日期',
    LAST_CHANGE_USER_ID varchar(30) comment '上次修改柜员',
    LAST_CHANGE_DATE varchar(8) comment '上次修改日期',
    CHANNEL_SEQ_NO varchar(50) comment '渠道流水号',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AGREEMENT_ID)
);
alter table MB_AGREEMENT_PACKAGE comment '费用套餐签约表 undefined';