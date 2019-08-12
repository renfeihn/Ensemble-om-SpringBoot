drop table if exists GL_BATCH_HEADER_ATTACH;
/*==============================================================*/
/* Table: GL_BATCH_HEADER_ATTACH                                           */
/*==============================================================*/
create table GL_BATCH_HEADER_ATTACH
(
    BATCH_NO varchar(50) not null comment '批量业务编号',
    ACCT_NO varchar(150) comment '账号',
    BRANCH varchar(20) comment '分行',
    CLIENT_NO varchar(20) comment '客户号',
    GL_CODE varchar(20) comment '科目代码',
    PROFIT_CENTRE varchar(12) comment '利润中心',
    SEQ_NO varchar(50) comment '序号',
    DR_CR varchar(2) not null comment '借贷标记 C-贷，D-借',
    CCY varchar(3) comment '币种',
    AMOUNT Decimal(17,2) comment '金额',
    BATCH_STATUS varchar(3) comment '批处理状态 A        Accepted D        Deleted  O        Open     P        Posted',
    TRAN_DATE varchar(8) comment '交易日期',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table GL_BATCH_HEADER_ATTACH comment '总行记账总行账户信息表 undefined';