drop table if exists MB_SETTLE_INFO;
/*==============================================================*/
/* Table: MB_SETTLE_INFO                                           */
/*==============================================================*/
create table MB_SETTLE_INFO
(
    REFERENCE varchar(50) not null comment '交易参考号',
    SEQ_NO varchar(50) not null comment '交易序号',
    TRAN_DATE varchar(8) not null comment '交易日期',
    EFFECT_DATE varchar(8) default NULL  comment '生效日期',
    DR_BRANCH varchar(20) default NULL  comment '借方交易机构',
    CR_BRANCH varchar(20) default NULL  comment '贷方交易机构',
    TRAN_AMT Decimal(17,2) default NULL   comment '交易金额',
    TRAN_TYPE varchar(10) default NULL  comment '交易类型',
    EVENT_TYPE varchar(50) default NULL  comment '事件类型',
    SETTLE_FLG varchar(1) default NULL  comment '借贷标志',
    COMPANY varchar(20) default NULL  comment '法人代码',
    TRAN_TIME Decimal(11,0) default NULL  comment '交易时间',
    TRAN_TIMESTAMP varchar(17) default NULL  comment '交易时间戳',
    ROUTER_KEY varchar(100) default NULL  comment '分库路由关键字',
    TRAN_CCY varchar(3) comment '交易币种  FM_CURRENCY.CCY',
    REVERSAL varchar(1) comment '冲正标志',
    DIFF_COMPANY varchar(1) comment '是否多法人标示',
    primary  key (REFERENCE,SEQ_NO)
);
alter table MB_SETTLE_INFO comment '清算信息登记表 undefined';