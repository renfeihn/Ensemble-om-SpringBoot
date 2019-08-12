drop table if exists IRL_INT_ROLL;
/*==============================================================*/
/* Table: IRL_INT_ROLL                                           */
/*==============================================================*/
create table IRL_INT_ROLL
(
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    INT_CLASS varchar(20) not null comment '利息分类',
    EFFECT_DATE varchar(8) not null comment '生效日期',
    NEW_INT_TYPE varchar(3) comment '新利率类型',
    NEW_SPREAD_RATE Decimal(15,8) comment '新浮动点数',
    NEW_REAL_RATE Decimal(15,8) comment '新执行利率',
    NEW_SPREAD_PERCENT Decimal(5,2) comment '新利率浮动百分比',
    NEW_INT_APPL_TYPE varchar(1) comment '新利率启用方式',
    NEW_RATE_EFFECT_TYPE varchar(1) comment '新利率生效方式',
    NEW_NEXT_ROLL_DATE varchar(8) comment '新利率变更日期',
    NEW_ROLL_FREQ varchar(2) comment '新利率变更周期',
    NEW_ROLL_DAY varchar(2) comment '新利率变更日',
    USER_ID varchar(30) comment '交易柜员',
    APPROVAL_STATUS varchar(1) comment '复核标志',
    APPR_USER_ID varchar(30) comment '复核柜员',
    TRAN_DATE varchar(8) comment '交易日期',
    IS_EFFECT varchar(1) comment '是否已生效',
    COMPANY varchar(20) comment '法人代码',
    SYSTEM_ID varchar(20) not null comment '系统ID',
    IS_RETRY varchar(1) comment '是否重算',
    TRAN_TIMESTAMP varchar(17) not null comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    CALC_BY_INT varchar(1) default 'N' comment 'Y: 按正常利率浮动
N:不按正常利率浮动',
    ORDER_NO varchar(50) comment '预约编号',
    NEW_REAL_TAX_RATE Decimal(15,8) comment '税率固定浮动',
    NEW_SPREAD_TAX_RATE Decimal(15,8) comment '税率浮动百分点',
    NEW_SPREAD_TAX_PERCENT Decimal(15,8) comment '税率浮动百分比',
    IS_TAX varchar(1) not null comment '是否税信息',
    primary  key (INTERNAL_KEY,INT_CLASS,EFFECT_DATE,TRAN_TIMESTAMP,IS_TAX)
);
alter table IRL_INT_ROLL comment '利率变更信息表 undefined';