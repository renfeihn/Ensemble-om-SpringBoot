drop table if exists DC_STAGE_INT;
/*==============================================================*/
/* Table: DC_STAGE_INT                                           */
/*==============================================================*/
create table DC_STAGE_INT
(
    ISSUE_YEAR varchar(4) not null comment '发行年度',
    PROD_TYPE varchar(50) not null comment '产品类型',
    CCY varchar(3) not null comment '币种',
    STAGE_CODE varchar(50) not null comment '期次代码',
    SEQ_NO varchar(50) not null comment '序号',
    EVENT_TYPE varchar(50) comment '事件类型',
    INT_CALC_TYPE varchar(50) comment '计息方式',
    INT_TYPE varchar(3) comment '利率类型',
    ACTUAL_RATE Decimal(15,8) comment '行内利率',
    FLOAT_RATE Decimal(15,8) comment '浮动利率',
    REAL_RATE Decimal(15,8) comment '执行利率',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    STAGE_PROD_CLASS varchar(4) comment '期次产品分类',
    primary  key (STAGE_CODE,SEQ_NO)
);
alter table DC_STAGE_INT comment '期次管理利率信息表 undefined';