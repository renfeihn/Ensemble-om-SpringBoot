drop table if exists FM_SEQ_TYPE_DTL;
/*==============================================================*/
/* Table: FM_SEQ_TYPE_DTL                                           */
/*==============================================================*/
create table FM_SEQ_TYPE_DTL
(
    SEQ_TYPE varchar(3) not null comment '序列类型代码(类似于编号值)',
    SEQ_RESET_PARAM varchar(50) not null comment '序列重置参数',
    START_NO varchar(50) not null comment '开始号',
    END_NO varchar(50) not null comment '结束号',
    LAST_NO varchar(50) comment '最后使用号',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (SEQ_TYPE,SEQ_RESET_PARAM)
);
alter table FM_SEQ_TYPE_DTL comment '序列类型详细信息表 undefined';