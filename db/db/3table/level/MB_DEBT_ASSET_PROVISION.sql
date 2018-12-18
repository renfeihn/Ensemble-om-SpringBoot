drop table if exists MB_DEBT_ASSET_PROVISION;
/*==============================================================*/
/* Table: MB_DEBT_ASSET_PROVISION                                           */
/*==============================================================*/
create table MB_DEBT_ASSET_PROVISION
(
    PROVISION_SEQ_NO varchar(50) not null comment '拨备序列号',
    DEBT_ASSET_NO varchar(50) not null comment '抵债资产编号',
    PROVISION_DATE varchar(8) not null comment '拨备日期',
    PROVISION_AMT Decimal(17,2) not null comment '拨备金额',
    DEBT_ASSET_FAIR_VALUE Decimal(17,2) not null comment '抵债资产公允价值',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (PROVISION_SEQ_NO)
);
alter table MB_DEBT_ASSET_PROVISION comment '抵债资产拨备计提表 undefined';