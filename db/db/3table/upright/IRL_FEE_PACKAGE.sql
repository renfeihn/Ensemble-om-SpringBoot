drop table if exists IRL_FEE_PACKAGE;
/*==============================================================*/
/* Table: IRL_FEE_PACKAGE                                           */
/*==============================================================*/
create table IRL_FEE_PACKAGE
(
    PACKAGE_ID varchar(10) not null comment '套餐代码',
    PACKAGE_DESC varchar(150) not null comment '套餐描述',
    PACKAGE_TYPE varchar(5) not null comment '套餐类型',
    PACKAGE_MODE varchar(5) not null comment '套餐模式',
    PACKAGE_CCY varchar(3) not null comment '套餐币种',
    PACKAGE_FEE_TYPE varchar(8) comment '套餐费费用类型',
    SETTLE_CCY varchar(3) comment '结算币种',
    SETTLE_AMT Decimal(17,2) comment '结算金额',
    PACKAGE_PERIOD_FREQ varchar(2) comment '套餐频率',
    DEAL_DAY varchar(2) comment '处理日',
    NEXT_DEAL_DATE varchar(8) comment '下一处理日',
    PACKAGE_AMT Decimal(17,2) comment '可抵扣金额',
    PACKAGE_NUM Decimal(10,0) comment '可抵扣笔数',
    PROCESS_MODE varchar(5) comment '剩余费用处理方式',
    PROCESS_ORDER varchar(5) comment '抵扣顺序',
    CLIENT_TYPE varchar(3) comment '客户类型',
    PACKAGE_STATUS varchar(2) not null comment '套餐状态 ',
    EFFECT_DATE varchar(8) not null comment '生效日期',
    END_DATE varchar(8) not null comment '终止日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PACKAGE_ID)
);
alter table IRL_FEE_PACKAGE comment '费用套餐表 undefined';