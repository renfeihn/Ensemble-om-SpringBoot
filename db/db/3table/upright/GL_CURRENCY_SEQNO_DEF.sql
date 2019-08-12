drop table if exists GL_CURRENCY_SEQNO_DEF;
/*==============================================================*/
/* Table: GL_CURRENCY_SEQNO_DEF                                           */
/*==============================================================*/
create table GL_CURRENCY_SEQNO_DEF
(
    CCY varchar(3) not null comment '币种',
    GL_SEQ_NO varchar(8) not null comment '总账序列号',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    COMPANY varchar(20) comment '法人代码',
    primary  key (CCY)
);
alter table GL_CURRENCY_SEQNO_DEF comment '币种序号定义表 undefined';