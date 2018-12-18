drop table if exists CIF_CLIENT_CONF_INFO;
/*==============================================================*/
/* Table: CIF_CLIENT_CONF_INFO                                           */
/*==============================================================*/
create table CIF_CLIENT_CONF_INFO
(
    SEQ_NO varchar(50) not null comment '序号',
    CLIENT_NO varchar(20) not null comment '客户号',
    INFO_TYPE varchar(3) comment '保密信息类型',
    CCY varchar(3) comment '币种',
    AMOUNT Decimal(17,2) comment '金额',
    DETAILS varchar(60) comment '明细',
    CREATION_DATE varchar(8) comment '创建日期',
    CREATION_USER_ID varchar(30) comment '创建柜员',
    LAST_CHANGE_DATE varchar(8) comment '更新日期',
    LAST_CHANGE_USER_ID varchar(30) comment '更新用户',
    MON_OTHER_INC Decimal(17,2) comment '月其它收入',
    MON_HOUSEHOLD_INC Decimal(17,2) comment '家庭月收入',
    CASH Decimal(17,2) comment '现金',
    STOCK Decimal(17,2) comment '股份/股票',
    PREMISES Decimal(17,2) comment '房产',
    ASSET Decimal(17,2) comment '资产',
    LIABILITIES Decimal(17,2) comment '负债',
    EXPENSES Decimal(17,2) comment '支出',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (SEQ_NO)
);
alter table CIF_CLIENT_CONF_INFO comment '客户保密信息 undefined';