drop table if exists TB_TRAILBOX_PLAN;
/*==============================================================*/
/* Table: TB_TRAILBOX_PLAN                                           */
/*==============================================================*/
create table TB_TRAILBOX_PLAN
(
    ALLOT_ID varchar(30) not null comment '计划ID',
    START_DATE varchar(8) not null comment '起始日期',
    END_DATE varchar(8) not null comment '终止日期',
    BRANCH varchar(20) not null comment '机构',
    PLAN_STATUS varchar(1) comment '计划状态 取值： N：未生效； Y：已生效； 默认为N',
    ALLOT_USER_ID varchar(30) comment '创建柜员',
    PLAN_DATE varchar(8) comment '创建日期',
    REMARK varchar(200) comment '备注',
    REFERENCE varchar(50) comment '交易参考号',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (ALLOT_ID)
);
alter table TB_TRAILBOX_PLAN comment '尾箱日分配计划表 undefined';