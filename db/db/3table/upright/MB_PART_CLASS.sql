drop table if exists MB_PART_CLASS;
/*==============================================================*/
/* Table: MB_PART_CLASS                                           */
/*==============================================================*/
create table MB_PART_CLASS
(
    PART_CLASS varchar(20) not null comment '指标分类',
    PART_CLASS_DESC varchar(100) not null comment '指标分类描述',
    PART_CLASS_LEVEL varchar(10) comment '指标分类层级',
    PARENT_PART_CLASS varchar(20) comment '上级指标分类',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PART_CLASS)
);
alter table MB_PART_CLASS comment '指标分类定义表 undefined';