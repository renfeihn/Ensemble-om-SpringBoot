drop table if exists FM_GAP_TYPE;
/*==============================================================*/
/* Table: FM_GAP_TYPE                                           */
/*==============================================================*/
create table FM_GAP_TYPE
(
    GAP_TYPE varchar(5) not null comment '敞口类型',
    CCY varchar(3) comment '币种',
    GAP_TYPE_DESC varchar(20) not null comment '敞口类型描述',
    WORKING_DAYS varchar(1) not null default 'N'   comment '是否工作日',
    GAP_START varchar(1) not null comment '敞口开始日期',
    PROD_GROUP varchar(1) comment '所属模块',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (GAP_TYPE)
);
alter table FM_GAP_TYPE comment '敞口类型定义表 undefined';