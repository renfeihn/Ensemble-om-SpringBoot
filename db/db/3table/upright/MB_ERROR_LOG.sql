drop table if exists MB_ERROR_LOG;
/*==============================================================*/
/* Table: MB_ERROR_LOG                                           */
/*==============================================================*/
create table MB_ERROR_LOG
(
    SEQ_NO varchar(50) not null comment '错误序号',
    ERROR_KEY varchar(100) comment '错误数据的KEY值，多个主键时拼接',
    ERROR_DATE varchar(8) comment '出错会计日期',
    JOB_ID varchar(30) comment 'JOB编号',
    CALLING_PROCESS varchar(100) comment '错误类名',
    PROCESS_NAME varchar(100) comment '错误方法名',
    ERROR_NO varchar(11) comment '错误编号',
    TRAN_DATETIME varchar(17) comment '交易时间',
    SOURCE_MODULE varchar(10) comment '模块名',
    ERR_MSG varchar(4000) comment '错误信息',
    COMPANY varchar(20) comment '法人',
    primary  key (SEQ_NO)
);
alter table MB_ERROR_LOG comment '核心EOD错误日志表 undefined';