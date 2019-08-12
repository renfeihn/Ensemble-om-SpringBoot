drop table if exists MB_IMPOUND_TRAN_INFO;
/*==============================================================*/
/* Table: MB_IMPOUND_TRAN_INFO                                           */
/*==============================================================*/
create table MB_IMPOUND_TRAN_INFO
(
    AGREEMENT_ID varchar(30) not null comment '协议编号',
    INTERNAL_KEY Decimal(15) comment '扣划账户主键',
    BENEFIT_INTERNAL_KEY Decimal(15) comment '转入账户主键',
    AMT_TYPE varchar(10) comment '金额类型',
    CCY varchar(3) comment '币种',
    TRANSFER_AMT Decimal(17,2) comment '扣划金额',
    TRANSFER_BALANCE Decimal(17,2) comment '未扣划余额',
    TRAN_DATE varchar(8) not null comment '交易日期',
    NARRATIVE varchar(300) comment '摘要',
    USER_ID varchar(30) comment '交易柜员',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AGREEMENT_ID,TRAN_DATE)
);
alter table MB_IMPOUND_TRAN_INFO comment '周期性扣划流水表 undefined';