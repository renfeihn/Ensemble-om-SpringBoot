drop table if exists MB_CHEQUE_DUD;
/*==============================================================*/
/* Table: MB_CHEQUE_DUD                                           */
/*==============================================================*/
create table MB_CHEQUE_DUD
(
    DUD_SEQ_NO varchar(50) not null comment '空头序号',
    CLIENT_NO varchar(20) not null comment '客户号',
    BASE_ACCT_NO varchar(150) not null comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '币种',
    ACCT_SEQ_NO varchar(8) comment '账户序号',
    DOC_TYPE varchar(10) not null comment '凭证类型',
    PREFIX varchar(10) comment '前缀',
    VOUCHER_NO varchar(50) not null comment '凭证号',
    TRAN_DATE varchar(8) not null comment '交易日期',
    TRAN_AMT Decimal(17,2) comment '空头金额',
    IS_FICTITIOUS varchar(1) comment '是否空头',
    RETURN_REASON varchar(200) comment '退票原因',
    REMARK varchar(200) comment '备注',
    USER_ID varchar(30) comment '经办柜员',
    LAST_CHANGE_DATE varchar(8) comment '上次修改日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table MB_CHEQUE_DUD comment '空头支票登记簿 undefined';