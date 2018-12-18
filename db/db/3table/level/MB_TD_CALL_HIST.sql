drop table if exists MB_TD_CALL_HIST;
/*==============================================================*/
/* Table: MB_TD_CALL_HIST                                           */
/*==============================================================*/
create table MB_TD_CALL_HIST
(
    INTERNAL_KEY Decimal(15) not null comment '账户主键',
    NOTICE_DATE varchar(8) not null comment '通知日期',
    NOTICE_CCY varchar(3) not null comment '通知币种',
    NOTICE_AMT Decimal(17,2) not null comment '通知金额',
    NOTICE_DRAW_DATE varchar(8) comment '通知支取日期',
    NOTICE_NO varchar(30) not null comment '通知号',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    ACCT_CCY varchar(3) comment '账户币种',
    ACCT_SEQ_NO varchar(8) comment '账户序列号，采用顺序数字，表示在同一账号、账户类型、币种下的不同子账户，比如定期存款序列号',
    USER_ID varchar(30) comment '交易柜员',
    DEL_FLAG varchar(1) comment '记录状态',
    UNCHAIN_USER_ID varchar(30) comment '解约柜员',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY,NOTICE_DATE,NOTICE_CCY,NOTICE_NO)
);
alter table MB_TD_CALL_HIST comment '通知存款预约信息 undefined';