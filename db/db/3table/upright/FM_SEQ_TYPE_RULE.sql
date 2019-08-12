drop table if exists FM_SEQ_TYPE_RULE;
/*==============================================================*/
/* Table: FM_SEQ_TYPE_RULE                                           */
/*==============================================================*/
create table FM_SEQ_TYPE_RULE
(
    SEQ_TYPE varchar(3) not null comment '序号类型',
    RULE_TYPE varchar(100) not null comment '规则类型',
    START_NO varchar(50) not null comment '开始号',
    END_NO varchar(50) not null comment '终止号',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table FM_SEQ_TYPE_RULE comment '序列规则定义表 undefined';