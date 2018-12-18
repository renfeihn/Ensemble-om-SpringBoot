drop table if exists MB_PART_CTL;
/*==============================================================*/
/* Table: MB_PART_CTL                                           */
/*==============================================================*/
create table MB_PART_CTL
(
    TRAN_TYPE varchar(10) not null comment '交易类型',
    CHANNEL_TYPE varchar(20) not null comment '渠道类型',
    ASSEMBLE_TYPE varchar(20) not null comment '组件类型',
    ASSEMBLE_ID varchar(50) not null comment '组件ID',
    STATUS varchar(3) not null comment '状态 A:有效 E:失效',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    PROD_TYPE varchar(50) comment '产品类型',
    EVENT_TYPE varchar(50) comment '事件类型 MB_EVENT_CLASS.EVENT_CLASS',
    AMT_TYPE varchar(10) comment '金额类型',
    EXPRESSION varchar(500) comment '表达式',
    ORIG_EVENT_TYPE varchar(50) comment '源事件类型 ',
    primary  key (TRAN_TYPE,CHANNEL_TYPE,ASSEMBLE_TYPE,ASSEMBLE_ID,PROD_TYPE,EVENT_TYPE,AMT_TYPE)
);
alter table MB_PART_CTL comment '指标控制表 undefined';