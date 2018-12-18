drop table if exists MB_LG_TRAN_DETAIL;
/*==============================================================*/
/* Table: MB_LG_TRAN_DETAIL                                           */
/*==============================================================*/
create table MB_LG_TRAN_DETAIL
(
    SEQ_NO varchar(50) not null comment '明细流水号',
    INTERNAL_KEY Decimal(15) comment '保函主键',
    REFERENCE varchar(50) comment '保函参考号',
    TRAN_FLAG varchar(4) comment '交易标志  PAID：赔付  UNDO：赔付撤销',
    ACCT_FLAG varchar(6) comment '账户标志  BACK：备款账户  SETTLE：结算账户  BOND：保证金账户  LOAN：垫款账户',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_SEQ_NO varchar(8) comment '账号序列号',
    ACCT_CCY varchar(3) comment '账号币种',
    PROD_TYPE varchar(50) comment '产品类型',
    ACCT_INTERNAL_KEY varchar(50) comment '账号KEY值',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    TRAN_DATE varchar(8) comment '交易日期',
    USER_ID varchar(30) comment '操作柜员',
    REMARK varchar(200) comment '备注',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (SEQ_NO)
);
alter table MB_LG_TRAN_DETAIL comment '保函交易流水明细表 undefined';