drop table if exists MB_TRANSFER_DETAIL;
/*==============================================================*/
/* Table: MB_TRANSFER_DETAIL                                           */
/*==============================================================*/
create table MB_TRANSFER_DETAIL
(
    TRANSFER_SEQ_NO varchar(30) not null comment '主键',
    CONTRACT_ID varchar(30) not null comment '合同ID',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    BASE_ACCT_NO varchar(150) not null comment '账号',
    PROD_TYPE varchar(50) not null comment '产品类型',
    CCY varchar(3) comment '币种',
    NEW_PROD_TYPE varchar(50) comment '变更后的产品类型  MB_PROD_TYPE.PROD_TYPE',
    ACCOUNTING_STATUS varchar(3) not null comment '核算状态',
    ACCT_STATUS varchar(3) comment '核算状态',
    BALANCE Decimal(17,2) not null comment '余额',
    TRAN_DATE varchar(8) not null comment '交易日期',
    LAST_CHANGE_DTE varchar(8) comment '最后修改日期',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    FLOAT_AMOUNT Decimal(17,2) comment '折溢价总额 折溢价=结算金额-发行金额',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    BATCH_NO varchar(50) comment '批处理号',
    TRAN_STATUS varchar(3) comment '状态 S:成功 F:失败',
    OPTION_KW varchar(1) comment '操作方式',
    ACCT_BRANCH varchar(20) comment '账户开户行',
    SALE_STATUS varchar(4) comment '发行状态',
    PACK_ERROR_DESC varchar(200) comment '封包错误描述',
    SALE_ERROR_DESC varchar(200) comment '发行错误描述',
    COMPANY varchar(20) comment '法人代码',
    primary  key (TRANSFER_SEQ_NO)
);
alter table MB_TRANSFER_DETAIL comment '合同明细表 undefined';