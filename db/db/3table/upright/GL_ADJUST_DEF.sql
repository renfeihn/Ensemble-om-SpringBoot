drop table if exists GL_ADJUST_DEF;
/*==============================================================*/
/* Table: GL_ADJUST_DEF                                           */
/*==============================================================*/
create table GL_ADJUST_DEF
(
    SEQ_NO varchar(50) not null comment '序号',
    COMPLETE_FLAG varchar(1) not null comment '是否调整完毕',
    PERIOD_FREQ varchar(2) not null comment '结转频率',
    FC_ADJUST_FLAG varchar(1) not null comment '外币结转方式',
    FX_CODE varchar(3) not null comment '外汇交易编码',
    ADJUST_DATE varchar(8) not null comment '结转日',
    NEXT_ADJUST_DATE varchar(8) not null comment '下一结转日',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    COMPANY varchar(20) comment '法人代码',
    primary  key (SEQ_NO)
);
alter table GL_ADJUST_DEF comment '损益结转定义表 undefined';