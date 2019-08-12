drop table if exists TB_CASH_JOURNAL;
/*==============================================================*/
/* Table: TB_CASH_JOURNAL                                           */
/*==============================================================*/
create table TB_CASH_JOURNAL
(
    CASH_JOURNAL_ID varchar(30) not null comment '现金流水ID',
    TRAILBOX_ID varchar(30) not null comment '尾箱代号',
    BRANCH varchar(20) not null comment '机构',
    CCY varchar(3) not null comment '币种',
    PAR_VALUE_ID varchar(20) comment '券别代号',
    CASH_NUM varchar(15) comment '数量',
    AMT Decimal(17,2) not null comment '金额',
    PAY_REC varchar(1) not null comment '收付标志 取值： P：付 R：收',
    PROGRAM_ID varchar(20) comment '交易代码',
    TRAN_DESC varchar(100) comment '交易描述',
    USER_ID varchar(30) comment '交易柜员',
    CHECK_USER_ID varchar(30) comment '复核柜员',
    TRAN_DATE varchar(8) comment '交易日期',
    TIME_STAMP varchar(17) comment '交易时间戳',
    REMARK varchar(200) comment '备注',
    CHANNEL_SEQ_NO varchar(50) comment '渠道流水号',
    REFERENCE varchar(50) comment '交易参考号',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (CASH_JOURNAL_ID)
);
alter table TB_CASH_JOURNAL comment '尾箱现金更新流水表 undefined';