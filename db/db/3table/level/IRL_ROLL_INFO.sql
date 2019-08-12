drop table if exists IRL_ROLL_INFO;
/*==============================================================*/
/* Table: IRL_ROLL_INFO                                           */
/*==============================================================*/
create table IRL_ROLL_INFO
(
    SYSTEM_ID varchar(20) not null comment '系统ID',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    INT_CLASS varchar(20) not null comment '利息分类',
    CHANGE_DATE varchar(8) not null comment '修改日期',
    INT_TYPE varchar(3) comment '利率类型 ',
    SPREAD_RATE Decimal(15,8) comment '浮动点数',
    REAL_RATE Decimal(15,8) comment '执行利率',
    ACTUAL_RATE Decimal(15,8) comment '行内利率',
    SPREAD_PERCENT Decimal(5,2) comment '利率浮动百分比',
    INT_APPL_TYPE varchar(1) comment '利率启用方式',
    RATE_EFFECT_TYPE varchar(1) comment '利率生效方式',
    NEXT_ROLL_DATE varchar(8) comment '下一个利率变更日期',
    ROLL_FREQ varchar(2) comment '利率变更周期',
    ROLL_DAY varchar(2) comment '利率变更日',
    NEW_INT_TYPE varchar(3) comment '新利率类型',
    NEW_SPREAD_RATE Decimal(15,8) comment '新浮动点数',
    NEW_REAL_RATE Decimal(15,8) comment '新执行利率',
    NEW_ACTUAL_RATE Decimal(15,8) comment '新行内利率',
    NEW_SPREAD_PERCENT Decimal(5,2) comment '新利率浮动百分比',
    NEW_INT_APPL_TYPE varchar(1) comment '新利率启用方式',
    NEW_RATE_EFFECT_TYPE varchar(1) comment '新利率生效方式',
    NEW_NEXT_ROLL_DATE varchar(8) comment '新利率变更日期',
    NEW_ROLL_FREQ varchar(2) comment '新利率变更周期',
    NEW_ROLL_DAY varchar(2) comment '新利率变更日',
    USER_ID varchar(30) comment '交易柜员',
    COMPANY varchar(20) comment '法人代码',
    IS_RETRY varchar(1) comment '是否重算',
    TRAN_TIMESTAMP varchar(17) not null comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    CALC_BY_INT varchar(1) default 'N' comment 'Y: 按正常利率浮动
N:不按正常利率浮动',
    NEW_REAL_TAX_RATE Decimal(15,8) comment '税率固定浮动',
    NEW_SPREAD_TAX_RATE Decimal(15,8) comment '税率浮动百分点',
    NEW_SPREAD_TAX_PERCENT Decimal(15,8) comment '税率浮动百分比',
    IS_TAX varchar(1) not null comment '是否税信息',
    primary  key (INTERNAL_KEY,INT_CLASS,CHANGE_DATE,TRAN_TIMESTAMP,IS_TAX)
);
alter table IRL_ROLL_INFO comment '利率变更流水表  undefined';