drop table if exists RC_LIST_CHECK_RULE;
/*==============================================================*/
/* Table: RC_LIST_CHECK_RULE                                           */
/*==============================================================*/
create table RC_LIST_CHECK_RULE
(
    LIST_TYPE varchar(12) not null comment '名单类型代码',
    EVENT_FORBID_IND varchar(1) not null comment '事件禁止标识',
    FORBID_EVENTS varchar(200) not null comment '禁止事件集合',
    CHANNEL_FORBID_IND varchar(1) not null comment '渠道禁止标识',
    FORBID_CHANNELS varchar(200) not null comment '禁止渠道集合',
    FORBID_TERM varchar(5) comment '禁止期限，整数',
    FORBID_TERM_TYPE varchar(1) comment '禁止期限单位  FM_PERIOD_FREQ.DAY_MTH',
    VERIFY_FLAG varchar(12) not null comment '是否核实后禁止',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    CHECK_TYPE varchar(2) not null comment '约束类型',
    SERVICES_FORBID_IND varchar(1) not null comment '接口禁止标识：I ：包含  E：排除',
    FORBID_SERVICES varchar(200) not null comment '禁止期限，整数',
    primary  key (LIST_TYPE)
);
alter table RC_LIST_CHECK_RULE comment '定义每个名单类型对应的检查规则 undefined';