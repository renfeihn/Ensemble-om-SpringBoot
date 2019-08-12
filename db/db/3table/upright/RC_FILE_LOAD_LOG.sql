drop table if exists RC_FILE_LOAD_LOG;
/*==============================================================*/
/* Table: RC_FILE_LOAD_LOG                                           */
/*==============================================================*/
create table RC_FILE_LOAD_LOG
(
    BATCH_NO varchar(50) not null comment '批次号',
    FILE_NAME varchar(500) comment '文件名称',
    LOAD_DATE varchar(8) comment '导入日期',
    START_TIME varchar(30) comment '开始时间',
    END_TIME varchar(30) comment '结束时间',
    LOAD_STATUS varchar(1) comment '状态：P-待导入 Z-导入中 S-导入成功 F-导入失败 ',
    USER_ID varchar(30) comment '操作柜员',
    TOTAL_NUM varchar(10) comment '总记录数量',
    LOAD_TYPE varchar(1) comment '导入方式： M-手动 A-自动',
    REFERENCE varchar(50) comment '交易参考号',
    ERROR_DESC varchar(4000) comment '失败原因',
    STATUS varchar(3) comment '状态：P-待处理 Z-处理中 S-成功 F-失败',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (BATCH_NO)
);
alter table RC_FILE_LOAD_LOG comment '名单导入日志表 undefined';