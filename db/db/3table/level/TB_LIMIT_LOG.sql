drop table if exists TB_LIMIT_LOG;
/*==============================================================*/
/* Table: TB_LIMIT_LOG                                           */
/*==============================================================*/
create table TB_LIMIT_LOG
(
    SEQ_NO varchar(50) not null comment '序号',
    OPER_TYPE varchar(1) comment '限额维护类型',
    TX_CODE varchar(20) comment '交易代码',
    BRANCH varchar(20) comment '交易机构',
    CCY varchar(3) comment '币种',
    DOC_TYPE varchar(10) comment '凭证类型',
    USER_ID varchar(30) comment '操作柜员',
    OPER_DATE varchar(8) comment '操作时间',
    OLD_HIGH_LIMIT Decimal(17,2) comment '修改前上限',
    NEW_HIGH_LIMIT Decimal(17,2) comment '修改后上限',
    OLD_LOW_LIMIT Decimal(17,2) comment '修改前下限',
    NEW_LOW_LIMIT Decimal(17,2) comment '修改后下限',
    OLD_AMT Decimal(17,2) comment '修改前金额',
    NEW_AMT Decimal(17,2) comment '修改后金额',
    TYPE_LIMIT varchar(1) comment '限额类型',
    REFERENCE varchar(50) comment '交易参考号',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (SEQ_NO)
);
alter table TB_LIMIT_LOG comment '限额维护流水 undefined';