drop table if exists GL_ERROR_LOG;
/*==============================================================*/
/* Table: GL_ERROR_LOG                                           */
/*==============================================================*/
create table GL_ERROR_LOG
(
    SEQ_NO varchar(50) comment '序号',
    REFERENCE varchar(50) comment '交易流水号',
    TRAN_BRANCH varchar(20) comment '交易机构',
    EFFECT_DATE varchar(8) comment '生效日期',
    TRAN_CCY varchar(3) comment '交易币种',
    SOURCE_MODULE varchar(10) comment '源模块',
    SOURCE_TYPE varchar(10) comment '渠道类型',
    BUSINESS_UNIT varchar(10) comment '核算单元',
    AMT_TYPE varchar(10) comment '金额类型',
    AMOUNT Decimal(17,2) comment '交易金额',
    PROD_TYPE varchar(50) comment '产品类型',
    BASE_ACCT_NO varchar(150) comment '账号',
    BRANCH varchar(20) comment '开户机构',
    ACCOUNTING_STATUS varchar(3) comment '核算状态',
    PROFIT_CENTRE varchar(12) comment '利润中心',
    CCY varchar(3) comment '币种',
    CLIENT_TYPE varchar(3) comment '客户类型',
    CLIENT_NO varchar(20) comment '客户号',
    SYSTEM_ID varchar(20) comment '系统ID',
    REVERSAL varchar(1) comment '冲正标志',
    NARRATIVE varchar(300) comment '描述',
    PRIAMT Decimal(17,2) comment '本金金额',
    INTAMT Decimal(17,2) comment '利息金额',
    ODPAMT Decimal(17,2) comment '罚息金额',
    ODIAMT Decimal(17,2) comment '复利金额',
    TRAN_PROFIT_CENTRE varchar(12) comment '利润中心',
    EVENT_TYPE varchar(50) comment '事件类型',
    TRAN_TYPE varchar(10) comment '交易类型',
    TRAN_DATE varchar(8) comment '交易日期',
    ERROR_DESC varchar(4000) comment '未生成分录原因',
    DATA_FLAG varchar(5) comment '运行节点',
    COMPANY varchar(20) comment '法人代码'
);
alter table GL_ERROR_LOG comment '错误日志表 undefined';