drop table if exists MB_PB_CONTENT;
/*==============================================================*/
/* Table: MB_PB_CONTENT                                           */
/*==============================================================*/
create table MB_PB_CONTENT
(
    INTERNAL_KEY Decimal(15) not null comment '账户主键',
    TRAN_DATE varchar(8) comment '交易日期',
    SEQ_NO varchar(50) comment '交易序号',
    PAGE_NO varchar(10) comment '打印页',
    LINE_NO varchar(10) comment '打印行',
    ACTUAL_AMT Decimal(17,2) comment '实际金额',
    CCY varchar(3) comment '币种',
    CERT_NO varchar(8) comment '凭证号',
    TRAN_COMMENT varchar(50) comment '交易描述',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table MB_PB_CONTENT comment '存折打印信息表 undefined';