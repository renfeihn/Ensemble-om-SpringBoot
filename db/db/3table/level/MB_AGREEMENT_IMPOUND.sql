drop table if exists MB_AGREEMENT_IMPOUND;
/*==============================================================*/
/* Table: MB_AGREEMENT_IMPOUND                                           */
/*==============================================================*/
create table MB_AGREEMENT_IMPOUND
(
    AGREEMENT_ID varchar(30) not null comment '协议号',
    TRAN_BRANCH varchar(20) comment '交易行',
    INTERNAL_KEY Decimal(15) not null comment '扣划账户主键',
    CLIENT_NO varchar(20) comment '客户号',
    TOTAL_TIMES varchar(5) comment '扣划总次数',
    IMPOUND_AMT Decimal(17,2) comment '扣划金额',
    TOTAL_AMT Decimal(17,2) comment '总金额',
    CCY varchar(3) comment '币种',
    PERIOD_FREQ varchar(2) comment '扣划频率 ',
    NEXT_DEAL_DATE varchar(8) comment '下一处理日',
    START_DATE varchar(8) comment '起始日期',
    RESTRAINT_SEQ_NO varchar(50) comment '冻结编号',
    LAW_NO varchar(50) comment '法律文书号',
    DEDUCTION_JUDICIARY_NAME varchar(200) comment '有权机关名称',
    DEDUCTION_TYPE varchar(2) comment '扣划类型',
    TRANSFER_TIMES varchar(5) comment '已扣划次数',
    TRANSFER_AMT Decimal(17,2) comment '已扣划金额',
    NARRATIVE varchar(300) comment '摘要',
    BENEFIT_BASE_ACCT_NO varchar(150) comment '扣划转入账号',
    BENEFIT_PROD_TYPE varchar(50) comment '扣划转入账户类型',
    BENENFIT_CCY varchar(3) comment '扣划转入币种',
    BENENFIT_SEQ_NO varchar(8) comment '扣划转入账号序号',
    BENENFIT_ACCT_NAME varchar(200) comment '扣划转入账户户名',
    JUDICIARY_OFFICER_NAME varchar(200) comment '经办人1姓名',
    JUDICIARY_DOCUMENT_ID varchar(75) comment '经办人1证件号码',
    JUDICIARY_DOCUMENT_TYPE varchar(3) comment '经办人1证件类型',
    JUDICIARY_OTH_OFFICER_NAME varchar(200) comment '经办人2姓名',
    JUDICIARY_OTH_DOCUMENT_ID varchar(75) comment '经办人2证件号码',
    JUDICIARY_OTH_DOCUMENT_TYPE varchar(3) comment '经办人2证件类型',
    USER_ID varchar(30) comment '交易柜员',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    END_FLAG varchar(1) comment '是否终止扣划',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AGREEMENT_ID,INTERNAL_KEY)
);
alter table MB_AGREEMENT_IMPOUND comment '周期性扣划协议表 undefined';