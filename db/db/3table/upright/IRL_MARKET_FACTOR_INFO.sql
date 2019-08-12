drop table if exists IRL_MARKET_FACTOR_INFO;
/*==============================================================*/
/* Table: IRL_MARKET_FACTOR_INFO                                           */
/*==============================================================*/
create table IRL_MARKET_FACTOR_INFO
(
    IRL_SEQ_NO varchar(50) not null comment '指数序号',
    MARKET_TYPE varchar(3) not null comment '市场指数类型代码',
    MARKET_VALUE Decimal(17,2) not null comment '指数值',
    EFFECT_DATE varchar(8) not null comment '生效日期',
    END_DATE varchar(8) comment '失效日期',
    FAC_STATUS varchar(3) comment '状态',
    REMARK varchar(200) comment '备注',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (IRL_SEQ_NO)
);
alter table IRL_MARKET_FACTOR_INFO comment '市场指数信息表 undefined';