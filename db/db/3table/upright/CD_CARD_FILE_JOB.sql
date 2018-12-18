drop table if exists CD_CARD_FILE_JOB;
/*==============================================================*/
/* Table: CD_CARD_FILE_JOB                                           */
/*==============================================================*/
create table CD_CARD_FILE_JOB
(
    BATCH_JOB_NO varchar(50) not null comment '制卡文件批次号',
    FILE_FLAG varchar(1) not null comment '文件类型 ',
    BRANCH varchar(20) comment '机构代码',
    PROD_TYPE varchar(50) not null comment '产品类型',
    TRAN_DATE varchar(8) not null comment '交易日期',
    OFFICER varchar(30) comment '操作柜员',
    CARD_NUM varchar(10) not null comment '制卡数量',
    CARD_NO_FROM varchar(50) comment '起始卡号',
    CARD_NO_THRU varchar(50) comment '截止卡号',
    APPLY_NO varchar(15) comment '申请编号',
    APPLY_DATE varchar(8) comment '申请日期',
    STATUS varchar(3) not null comment '状态',
    FILE_NAME varchar(500) comment '文件名称',
    FILE_PATH varchar(512) comment '文件路径',
    START_TIME varchar(30) comment '起始时间',
    END_TIME varchar(30) comment '终止时间',
    REMARK varchar(200) comment '备注，用来描述制卡原因，比如正常制卡，补换卡等',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    MAKE_CARD_TYPE varchar(4) comment '制卡类型',
    primary  key (BATCH_JOB_NO,FILE_FLAG)
);
alter table CD_CARD_FILE_JOB comment '制卡文件与清单信息表 undefined';