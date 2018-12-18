drop table if exists CD_CANCEL_REG;
/*==============================================================*/
/* Table: CD_CANCEL_REG                                           */
/*==============================================================*/
create table CD_CANCEL_REG
(
    SEQ_NO varchar(50) comment '序号',
    OPTIONS varchar(2) not null comment '操作类型',
    BASE_ACCT_NO varchar(150) not null comment '账号',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    GLOBAL_ID_TYPE varchar(3) comment '证件类型',
    DOCUMENT_ID varchar(75) comment '证件号码',
    MAIN_CCY varchar(3) not null comment '主币种',
    SEC_CCY varchar(3) comment '其他币种',
    MAIN_CCY_BAL Decimal(17,2) comment '主币种余额',
    SEC_CCY_BAL Decimal(17,2) comment '其他币种余额',
    DEAL_FLOW varchar(2) comment '处理方式',
    SETTLEMENT_DATE varchar(8) comment '清算日期',
    IS_REC_CARD varchar(1) comment '是否收回卡片',
    RETURN_TYPE varchar(3) comment '余额退换方式',
    primary  key (SEQ_NO)
);
alter table CD_CANCEL_REG comment '卡撤销登记表 undefined';