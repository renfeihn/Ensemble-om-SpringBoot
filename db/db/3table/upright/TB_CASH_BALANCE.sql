drop table if exists TB_CASH_BALANCE;
/*==============================================================*/
/* Table: TB_CASH_BALANCE                                           */
/*==============================================================*/
create table TB_CASH_BALANCE
(
    TRAILBOX_ID varchar(30) not null comment '尾箱代号',
    BRANCH varchar(20) not null comment '机构',
    CCY varchar(3) not null comment '币种',
    AMT Decimal(17,2) not null comment '金额',
    UPDATE_DATE varchar(8) comment '更新日期',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (TRAILBOX_ID,CCY)
);
alter table TB_CASH_BALANCE comment '尾箱现金余额表 undefined';