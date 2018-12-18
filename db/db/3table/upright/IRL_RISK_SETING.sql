drop table if exists IRL_RISK_SETING;
/*==============================================================*/
/* Table: IRL_RISK_SETING                                           */
/*==============================================================*/
create table IRL_RISK_SETING
(
    IRL_SEQ_NO varchar(50) not null comment '序号',
    PROD_TYPE varchar(50) not null comment '产品类型',
    CCY varchar(3) not null comment '币种',
    BALANCE Decimal(17,2) not null comment '余额',
    PERIOD_FREQ varchar(2) comment '频率类型',
    DAY_NUM varchar(5) comment '每期天数',
    MIN_SPREAD_RATE Decimal(15,8) comment '浮动点数下限',
    MAX_SPREAD_RATE Decimal(15,8) comment '浮动点数上限',
    MIN_SPREAD_PERCENT Decimal(5,2) comment '浮动百分比下限',
    MAX_SPREAD_PERCENT Decimal(5,2) comment '浮动百分比上限',
    MIN_BRANCH_RATE Decimal(15,8) comment '行内利率下限',
    MAX_BRANCH_RATE Decimal(15,8) comment '行内利率上限',
    MIN_INT_RATE Decimal(15,8) comment '执行利率下限',
    MAX_INT_RATE Decimal(15,8) comment '执行利率上限',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table IRL_RISK_SETING comment '利率风险设置表 undefined';