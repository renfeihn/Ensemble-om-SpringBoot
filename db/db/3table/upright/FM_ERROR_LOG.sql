drop table if exists FM_ERROR_LOG;
/*==============================================================*/
/* Table: FM_ERROR_LOG                                           */
/*==============================================================*/
create table FM_ERROR_LOG
(
    SEQ_NO varchar(50) not null comment 'NUMBER  VARCHAR2(50) 序列号  序列号',
    ERROR_DATE varchar(8) comment '出错会计日期',
    CALLING_PROCESS varchar(100) comment '错误类名',
    PROCESS_NAME varchar(100) comment '错误方法名',
    ERROR_NO varchar(11) comment '错误编号',
    TRAN_DATE varchar(8) comment '当前日期',
    MODULE varchar(10) comment '模块名',
    ERR_MSG varchar(4000) comment '错误信息',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (SEQ_NO)
);
alter table FM_ERROR_LOG comment '错误日志表 undefined';