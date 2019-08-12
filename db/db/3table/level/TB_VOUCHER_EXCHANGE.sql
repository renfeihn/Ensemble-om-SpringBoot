drop table if exists TB_VOUCHER_EXCHANGE;
/*==============================================================*/
/* Table: TB_VOUCHER_EXCHANGE                                           */
/*==============================================================*/
create table TB_VOUCHER_EXCHANGE
(
    EXCHANGE_ID varchar(30) not null comment '交接ID',
    DOC_TYPE varchar(10) not null comment '凭证类型',
    PREFIX varchar(10) comment '凭证前缀',
    START_NO varchar(50) comment '凭证起始号码',
    END_NO varchar(50) comment '凭证终止号码',
    SUM varchar(15) comment '凭证数量',
    CCY varchar(3) comment '币种',
    AMT Decimal(17,2) comment '面额',
    REFERENCE varchar(50) comment '交易参考号',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table TB_VOUCHER_EXCHANGE comment '尾箱交接凭证信息表 undefined';