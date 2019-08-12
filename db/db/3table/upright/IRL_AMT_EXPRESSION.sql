drop table if exists IRL_AMT_EXPRESSION;
/*==============================================================*/
/* Table: IRL_AMT_EXPRESSION                                           */
/*==============================================================*/
create table IRL_AMT_EXPRESSION
(
    EXPRESS_ID varchar(30) not null comment '表达式编码',
    EXPRESSION varchar(500) not null comment '表达式',
    EXPRESSION_DESC varchar(500) not null comment '表达式描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (EXPRESS_ID)
);
alter table IRL_AMT_EXPRESSION comment '金额计算表达式信息表 undefined';