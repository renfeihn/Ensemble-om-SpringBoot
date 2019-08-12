drop table if exists MB_SETTLE_ACCT_MAPPING;
/*==============================================================*/
/* Table: MB_SETTLE_ACCT_MAPPING                                           */
/*==============================================================*/
create table MB_SETTLE_ACCT_MAPPING
(
    SETTLE_ACCT_CLASS varchar(3) not null comment '结算账户分类',
    EVENT_TYPE varchar(50) not null comment '事件类型',
    PAY_REC_IND varchar(3) not null comment '收付款方向，可以配置ALL',
    AMT_TYPE_LIST varchar(200) not null comment '金额类型集合，支持配置多个，逗号分隔',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (SETTLE_ACCT_CLASS,EVENT_TYPE)
);
alter table MB_SETTLE_ACCT_MAPPING comment '结算账户分类映射表 undefined';