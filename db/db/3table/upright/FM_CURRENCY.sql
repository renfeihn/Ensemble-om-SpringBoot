drop table if exists FM_CURRENCY;
/*==============================================================*/
/* Table: FM_CURRENCY                                           */
/*==============================================================*/
create table FM_CURRENCY
(
    CCY varchar(3) not null comment '币种',
    CCY_DESC varchar(20) not null comment '名称',
    DECI_PLACES varchar(50) not null comment '小数位',
    DAY_BASIS varchar(5) not null comment '基准天数 3.60365366E8',
    ROUND_TRUNC varchar(1) not null comment '舍入',
    QUOTE_TYPE varchar(1) not null comment '牌价类型',
    INTEGER_DESC varchar(20) not null comment '整数描述',
    DECI_DESC varchar(15) comment '小数描述',
    WEEKEND_1 varchar(3) comment '周末1 ',
    WEEKEND_2 varchar(3) comment '周末2 ',
    POSITION_LIMIT Decimal(17,2) comment '净头寸限额',
    PAY_ADVICE_DAYS varchar(5) not null comment '付/收款通知日 0-99',
    FIXING_DAYS varchar(5) comment '固定日期 0-99',
    SPOT_DATE varchar(8) comment '即期日期',
    CCY_GROUP varchar(1) comment '是否货币组',
    CCY_GROUP_CODE varchar(3) comment '货币组代码 货币中CCY_GROUP 为Y的货币代码',
    CCY_SYMBOL varchar(3) comment '符号',
    CCY_INT_CODE varchar(3) comment '内部码',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CCY)
);
alter table FM_CURRENCY comment '币种基本信息表 undefined';