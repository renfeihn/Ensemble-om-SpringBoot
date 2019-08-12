drop table if exists MB_DB_TABLE_LOG;
/*==============================================================*/
/* Table: MB_DB_TABLE_LOG                                           */
/*==============================================================*/
create table MB_DB_TABLE_LOG
(
    TABLE_NAME varchar(30) comment '表名',
    COLUMN_NAME varchar(100) comment '列名',
    COLUMN_VALUE varchar(500) comment '列值',
    DATA_PRIMARY_KEY varchar(100) comment '数据主键，多主键时拼接',
    PROGRAM_ID varchar(20) comment '交易码',
    MESSAGE_TYPE varchar(4) comment '服务类型',
    MESSAGE_CODE varchar(6) comment '服务代码',
    REFERENCE varchar(50) comment '交易参考号',
    CHANNEL_SEQ_NO varchar(50) comment '渠道流水号',
    USER_ID varchar(30) comment '使用柜员',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    UPD_SQL varchar(4000) comment '修改的SQL语句'
);
alter table MB_DB_TABLE_LOG comment '表字段修改日志表 undefined';