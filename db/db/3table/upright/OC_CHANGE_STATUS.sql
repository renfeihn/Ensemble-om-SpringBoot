drop table if exists OC_CHANGE_STATUS;
/*==============================================================*/
/* Table: OC_CHANGE_STATUS                                           */
/*==============================================================*/
create table OC_CHANGE_STATUS
(
    CHANGE_BRANCH varchar(20) not null comment '交换机构',
    CHANGE_REGION varchar(4) not null comment '交换地区 ',
    CHANGE_DATE varchar(8) comment '交换日期',
    CHANGE_SESSION varchar(2) comment '交换场次',
    PRE_CHANGE_DATE varchar(8) comment '上一交换日期',
    PRE_CHANGE_SESSION varchar(2) comment '上一交换场次',
    STATUS varchar(3) comment '状态',
    PRE_STATUS varchar(3) comment '上一交换状态',
    PRE_SESSION_STATUS varchar(3) comment '上一场次状态 ',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    JUMP_SESSION_FLAG varchar(1) comment '跳场报盘标志 ',
    GC_FILE_FLAG varchar(1) comment '是否产生报盘文件',
    JUMP_DONE_FLAG varchar(1) comment '跳场收妥标记',
    OPEN_CLOSE_STATUS varchar(1) comment '同城开关状态',
    primary  key (CHANGE_BRANCH,CHANGE_REGION)
);
alter table OC_CHANGE_STATUS comment '同城票交交换机构状态表 undefined';