drop table if exists GL_REVAL_HISTORY;
/*==============================================================*/
/* Table: GL_REVAL_HISTORY                                           */
/*==============================================================*/
create table GL_REVAL_HISTORY
(
    BRANCH varchar(20) comment '机构代码',
    CCY varchar(3) comment '币种',
    BASE_RATE Decimal(15,8) comment '基础汇率',
    CCY_BAL Decimal(20,8) comment '外币原币种余额',
    CNY_BAL Decimal(20,8) comment '折人民币余额',
    BASE_BAL Decimal(20,8) comment '本币余额',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    GL_REVAL_CODE varchar(20) comment '重估科目',
    GL_CODE_EXP varchar(50) comment '科目',
    PROFIT_LOSS_AMT Decimal(17,2) comment '损益金额',
    COMPANY varchar(20) comment '法人代码'
);
alter table GL_REVAL_HISTORY comment '损益评估信息表 undefined';