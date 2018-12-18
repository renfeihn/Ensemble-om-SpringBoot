drop table if exists MB_BATCH_WRN_DETAILS;
/*==============================================================*/
/* Table: MB_BATCH_WRN_DETAILS                                           */
/*==============================================================*/
create table MB_BATCH_WRN_DETAILS
(
    BATCH_NO varchar(50) not null comment '批处理号',
    SEQ_NO varchar(50) not null comment '序号',
    BASE_ACCT_NO varchar(150) comment '账号',
    CONTRACT_NO varchar(50) comment '合同号',
    PROD_TYPE varchar(50) comment '产品类型',
    BRANCH varchar(20) comment '机构代码',
    CCY varchar(3) comment '币种',
    LOAN_AMT Decimal(17,2) comment '核销本金金额',
    ACCT_CLOSE_DATE varchar(8) comment '关闭日期',
    ACCT_CLOSE_REASON varchar(200) comment '关闭原因',
    ERROR_DESC varchar(4000) comment '未生成分录原因',
    TRAN_STATUS varchar(3) comment '状态 S:成功 F:失败',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    primary  key (BATCH_NO,SEQ_NO)
);
alter table MB_BATCH_WRN_DETAILS comment '批量核销明细表 undefined';