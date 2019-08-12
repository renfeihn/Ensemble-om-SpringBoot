drop table if exists TR_RULE_TRANS;
/*==============================================================*/
/* Table: TR_RULE_TRANS                                           */
/*==============================================================*/
create table TR_RULE_TRANS
(
    RULE_CODE varchar(6) not null comment '规则代码',
    PROGRAM_ID varchar(20) not null comment '交易代码',
    TRAN_DESC varchar(100) not null comment '交易名称',
    SEQ_NO varchar(50) not null comment '交易序号',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table TR_RULE_TRANS comment '交易引导列表定义表 undefined';