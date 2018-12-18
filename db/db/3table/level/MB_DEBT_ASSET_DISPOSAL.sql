drop table if exists MB_DEBT_ASSET_DISPOSAL;
/*==============================================================*/
/* Table: MB_DEBT_ASSET_DISPOSAL                                           */
/*==============================================================*/
create table MB_DEBT_ASSET_DISPOSAL
(
    DISPOSAL_SEQ_NO varchar(50) not null comment '处置序列号',
    DEBT_ASSET_NO varchar(50) not null comment '抵债资产编号',
    DEBT_ASSET_NAME varchar(200) not null comment '抵债资产名称',
    CLIENT_NO varchar(20) not null comment '客户号',
    MATERIALS_TYPE varchar(1) not null comment '抵债物资类别 ',
    CERTIFICATE_TYPE varchar(1) not null comment '产权证明种类',
    DEBT_ASSET_FAIR_VALUE Decimal(17,2) not null comment '抵债资产公允价值',
    DEBT_ASSET_UNIT varchar(10) comment '抵债资产单位',
    DEBT_ASSET_QUANTITY varchar(15) comment '抵债资产数量',
    LOAN_IMPAIRMENT_LOSS Decimal(17,2) comment '贷款减值损失',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    NONOPERATING_INCOME Decimal(17,2) comment '营业外收入',
    ASSETS_DISPOSAL_TYPE varchar(1) comment '抵债资产处置类型',
    REALIZATION_AMT Decimal(17,2) comment '抵债资产减值金额变现金额',
    ASSETS_DISPOSAL_IND varchar(1) comment '抵债资产是否处置完毕',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    DISPOSAL_FEE_AMT Decimal(17,2) comment '处置费',
    COMPANY varchar(20) comment '法人代码',
    primary  key (DISPOSAL_SEQ_NO)
);
alter table MB_DEBT_ASSET_DISPOSAL comment '抵债资产处置表 undefined';