drop table if exists MB_TRANSFER_AMT_DETAIL;
/*==============================================================*/
/* Table: MB_TRANSFER_AMT_DETAIL                                           */
/*==============================================================*/
create table MB_TRANSFER_AMT_DETAIL
(
    TRF_AMT_SEQ_NO varchar(30) not null comment '主键',
    TRANSFER_SEQ_NO varchar(30) not null comment '主键',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    AMT_TYPE varchar(10) not null comment '金额类型',
    PACK_DATE varchar(8) not null comment '封包日期',
    TRAN_DATE varchar(8) comment '交易日期',
    COPE_AMOUNT Decimal(17,2) not null comment '应付行内金额',
    OVER_AMOUNT Decimal(17,2) not null comment '剩余金额',
    LAST_CHANGE_DATE varchar(8) not null comment '最后变更日期 ',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (TRF_AMT_SEQ_NO)
);
alter table MB_TRANSFER_AMT_DETAIL comment '金额明细登记表 undefined';