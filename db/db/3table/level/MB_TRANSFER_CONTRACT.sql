drop table if exists MB_TRANSFER_CONTRACT;
/*==============================================================*/
/* Table: MB_TRANSFER_CONTRACT                                           */
/*==============================================================*/
create table MB_TRANSFER_CONTRACT
(
    CONTRACT_ID varchar(30) not null comment '合同ID',
    CONTRACT_NO varchar(50) not null comment '合同号',
    CONTRACT_AMT Decimal(17,2) not null comment '合同金额',
    FLOAT_AMOUNT Decimal(17,2) comment '折溢价总额 折溢价=结算金额-发行金额',
    CCY varchar(3) comment '币种',
    FLOAT_CALC_FLAG varchar(1) comment '折溢价计算方式',
    TRAN_DATE varchar(8) comment '交易日期',
    CREATE_DATE varchar(8) comment '创建日期',
    AGREEMENT_STATUS varchar(3) not null comment '协议状态   ',
    PROD_TYPE varchar(50) comment '产品类型',
    PACK_DATE varchar(8) comment '封包日期',
    SALE_DATE varchar(8) comment '发行日期',
    BACK_DATE varchar(8) comment '赎回日期',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    APPROVAL_STATUS varchar(1) comment '复核标志',
    CONTRACT_TYPE varchar(1) not null comment '合同类型',
    TRANSFER_TYPE varchar(1) comment '转让类型',
    INT_FLAG varchar(1) comment '利息转出标识',
    ODP_FLAG varchar(1) comment '罚息转出标识',
    ODI_FLAG varchar(1) comment '复利转出标识',
    TRAN_BRANCH varchar(20) not null comment '交易支行 FM_BRANCH.BRANCH',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    APPR_USER_ID varchar(30) comment '复核柜员',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    OPTION_TYP varchar(3) comment '操作类型',
    BATCH_NO varchar(50) comment '批处理号',
    PACK_REFERENCE varchar(50) comment '封包流水号',
    SALE_REFERENCE varchar(50) comment '发行流水号',
    SALE_BATCH_NO varchar(50) comment '发行批次号',
    COMPANY varchar(20) comment '法人代码',
    primary  key (CONTRACT_ID)
);
alter table MB_TRANSFER_CONTRACT comment '转让合同表 undefined';