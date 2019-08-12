drop table if exists TB_TRAILBOX_PLAN_DETAIL;
/*==============================================================*/
/* Table: TB_TRAILBOX_PLAN_DETAIL                                           */
/*==============================================================*/
create table TB_TRAILBOX_PLAN_DETAIL
(
    ALLOT_ID varchar(30) not null comment '计划ID',
    TRAILBOX_ID varchar(30) not null comment '尾箱ID',
    USER_ID varchar(30) not null comment '柜员',
    USE_STATUS varchar(1) not null comment '使用状态 取值： Y已使用； N未使用； 默认为N',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (ALLOT_ID,TRAILBOX_ID)
);
alter table TB_TRAILBOX_PLAN_DETAIL comment '尾箱日分配计划明细表 undefined';