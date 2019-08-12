drop table if exists MB_FILE_DIR;
/*==============================================================*/
/* Table: MB_FILE_DIR                                           */
/*==============================================================*/
create table MB_FILE_DIR
(
    FILE_TYPE varchar(20) not null comment '文件类型',
    FILE_DESC varchar(300) comment '描述',
    FILE_SND_DIR varchar(300) comment '发送文件的存放路径',
    FILE_REC_DIR varchar(300) comment '接收文件的存放路径',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (FILE_TYPE)
);
alter table MB_FILE_DIR comment '核心文件路径配置表 undefined';