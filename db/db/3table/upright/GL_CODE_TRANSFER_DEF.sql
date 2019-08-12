drop table if exists GL_CODE_TRANSFER_DEF;
/*==============================================================*/
/* Table: GL_CODE_TRANSFER_DEF                                           */
/*==============================================================*/
create table GL_CODE_TRANSFER_DEF
(
    SEQ_NO varchar(50) not null comment '序号',
    OUT_SUBJECT_CODE varchar(20) not null comment '转出科目',
    IN_SUBJECT_CODE varchar(20) not null comment '转入科目',
    OUT_BRANCH varchar(20) not null comment '转出机构',
    IN_BRANCH varchar(20) not null comment '转入机构',
    TRANSFER_FLAG varchar(1) not null comment '是否划转',
    PERIOD_FREQ varchar(2) not null comment '划转频率',
    TRANSFER_PROP Decimal(11,0) not null comment '划转比例',
    TRANSFER_DATE varchar(8) not null comment '划转日期',
    NEXT_TRANSFER_DATE varchar(8) not null comment '下一划转日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (SEQ_NO)
);
alter table GL_CODE_TRANSFER_DEF comment '科目划转定义表 undefined';