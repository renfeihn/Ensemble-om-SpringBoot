drop table if exists MB_FILE_TABLE_DEF;
/*==============================================================*/
/* Table: MB_FILE_TABLE_DEF                                           */
/*==============================================================*/
create table MB_FILE_TABLE_DEF
(
    SEQ_NO varchar(50) not null comment '序号',
    SQL_ID varchar(30) not null comment 'sqlID',
    FILE_TEMPALTE_ID varchar(20) not null comment '文件转换模板ID',
    FILE_NAME varchar(500) not null comment '文件名',
    FILE_PATH varchar(512) not null comment '文件路径',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (SEQ_NO)
);
alter table MB_FILE_TABLE_DEF comment '根据配置属性生成数据文件 undefined';