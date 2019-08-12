drop table if exists TB_ATM_CASH_REG;
/*==============================================================*/
/* Table: TB_ATM_CASH_REG                                           */
/*==============================================================*/
create table TB_ATM_CASH_REG
(
    TRAILBOX_ID varchar(30) not null comment 'ATM尾箱编号',
    SOURCE_REF_NO varchar(50) not null comment '流水号',
    TRAN_TYPE varchar(10) not null comment '交易类型',
    TRAN_DATE varchar(8) not null comment '交易日期',
    CCY varchar(3) not null comment '币种',
    ADD_AMT Decimal(17,2) not null comment '加钞金额',
    ATM_STATUS varchar(2) not null comment '处理状态  01:未确认 02：已确认 03：已清机',
    BRANCH varchar(20) comment '交易分行',
    ADD_USER_ID varchar(30) comment '加钞柜员',
    CLEAR_USER_ID varchar(30) comment '清机柜员',
    ADD_MONEY_DATE varchar(8) comment '加钞确认日期',
    CLEAR_MONEY_DATE varchar(8) comment '清机确认日期',
    REAL_CLEAR_AMT Decimal(17,2) comment '实际清机金额',
    CLEAR_AMT Decimal(17,2) comment '清机原有尾箱金额',
    C_AMT Decimal(17,2) comment 'c端上送金额',
    SHTG_AMT Decimal(17,2) comment '长短款金额',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    ADD_MOVE_ID varchar(30),
    CLEAN_MOVE_ID varchar(30)
);
alter table TB_ATM_CASH_REG comment 'amt加钞、清机流水表 undefined';