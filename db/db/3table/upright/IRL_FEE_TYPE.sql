drop table if exists IRL_FEE_TYPE;
/*==============================================================*/
/* Table: IRL_FEE_TYPE                                           */
/*==============================================================*/
create table IRL_FEE_TYPE
(
    FEE_TYPE varchar(8) not null comment '费用类型 ',
    FEE_DESC varchar(50) not null comment '费用类型描述',
    PROD_GRP varchar(20) not null comment '产品组 ',
    FEE_MODE varchar(2) not null comment '收费方式  ',
    BOUNDARY_AMT_ID varchar(30) comment '缺口计算金额编码  收费方式为S、T必输',
    FEE_AMT_ID varchar(30) comment '费用计算金额编码  收费方式为R、B必输',
    BOUNDARY_DESC varchar(100) comment '缺口描述',
    CCY_FLAG varchar(3) not null comment '收费币种标识  ',
    MB_CCY_TYPE varchar(3) comment '目标收费币种  当收费币种标识为S时该字段才起作用',
    CONVERT_FLAG varchar(2) comment '折算标志  ',
    BO_IND varchar(1) not null comment '日终/联机标志',
    DIS_TYPE varchar(20) not null comment '折扣方式 ',
    COMPANY varchar(20) comment '法人代码',
    TAX_TYPE varchar(3) comment '税率类型',
    FEE_ITEM varchar(10) comment '费用项目代码',
    AMORTIZE_DAY varchar(2) comment '摊销日',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    AMORTIZE_MONTH varchar(2) comment '摊销月',
    PROFIT_AMORTIZE_FLAG varchar(1) comment '是否需要摊销',
    AMORTIZE_PERIOD_FREQ varchar(2) comment '摊销频率',
    AMORTIZE_TIME varchar(2) comment '摊销时间',
    PROFIT_ALLOT_FLAG varchar(1) comment '是否需要分润',
    OPEN_BRANCH_PERCENT Decimal(15,8) comment '账户行比例,记录百分数',
    TRAN_BRANCH_PERCENT Decimal(15,8) comment '交易行比例,记录百分数',
    primary  key (FEE_TYPE)
);
alter table IRL_FEE_TYPE comment '费用类型表 undefined';