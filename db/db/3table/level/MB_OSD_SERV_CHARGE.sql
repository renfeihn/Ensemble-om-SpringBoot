drop table if exists MB_OSD_SERV_CHARGE;
/*==============================================================*/
/* Table: MB_OSD_SERV_CHARGE                                           */
/*==============================================================*/
create table MB_OSD_SERV_CHARGE
(
    OSD_SEQ_NO varchar(50) not null comment '应收费用序号',
    CLIENT_NO varchar(20) comment '客户号',
    CLIENT_TYPE varchar(3) comment '客户类型',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    FEE_TYPE varchar(8) not null comment '费用类型 IRL_FEE_TYPE.FEE_TYPE',
    CHARGE_PERIOD_FREQ varchar(2) comment '收取频率',
    CHARGE_DAY varchar(2) comment '收费日',
    NEXT_CHARGE_DATE varchar(8) comment '下一收费日期',
    LAST_CHARGE_DATE varchar(8) comment '上一收费日期',
    PRIORITY varchar(5) comment '优先级',
    DELAY_FLAG varchar(1) comment '宽限标志 ',
    EFFECT_DATE varchar(8) not null comment '生效日期',
    FEE_CCY varchar(3) comment '收费币种  FM_CURRENCY.CCY',
    ORIG_FEE_AMT Decimal(17,2) comment '原始费用金额,即折扣前的费用金额',
    DISC_FEE_AMT Decimal(17,2) comment '折扣金额',
    FEE_AMT Decimal(17,2) not null comment '手续费金额',
    SC_DISCOUNT_TYPE varchar(30) comment '费用折扣类型 IRL_RULE_GROUP.GROUP_TYPE',
    SC_DISCOUNT_RATE Decimal(15,8) comment '费用折扣率',
    PRIMARY_TRAN_SEQ_NO varchar(50) comment '主交易序号',
    BO_IND varchar(1) not null comment '日终/联机标志',
    TRAN_BRANCH varchar(20) not null comment '交易支行 FM_BRANCH.BRANCH',
    REFERENCE varchar(50) comment '交易参考号',
    CHARGE_WAY varchar(1) comment '收费方式',
    TRAN_DATE varchar(8) not null comment '交易日期',
    USER_ID varchar(30) not null comment '交易柜员 FM_USER.USER_ID',
    LAST_CHANGE_USER_ID varchar(30) comment '上次修改柜员',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    CHARGE_TO_INTERNAL_KEY Decimal(15) comment '收费账户标识符',
    CHARGE_TO_BASE_ACCT_NO varchar(150) comment '收费账号',
    CHARGE_TO_PROD_TYPE varchar(50) comment '收费账户产品类型',
    CHARGE_TO_CCY varchar(3) comment '收费账户币种符',
    CHARGE_TO_ACCT_SEQ_NO varchar(8) comment '收费账户序号',
    DOC_TYPE varchar(10) comment '凭证类型 TB_VOUCHER_DEF.DOC_TYPE',
    PREFIX varchar(10) comment '前缀',
    OPEN_ACCT_BRANCH varchar(20) comment '账户行',
    VOUCHER_SUM varchar(5) comment '凭证合计数',
    UNIT_PRICE Decimal(17,2) comment '单价',
    START_NO varchar(50) comment '起始号码',
    END_NO varchar(50) comment '凭证终止号码,数字类型',
    COMPANY varchar(20) comment '法人代码',
    TAX_TYPE varchar(3) comment '税率类型  IRL_INT_TYPE.INT_TAX_TYPE',
    TAX_RATE Decimal(15,8) comment '税率',
    TAX_AMT Decimal(17,2) comment '税金',
    TRAN_FEE_AMT Decimal(17,2) comment '原应收费用金额,即初始实收费用金额',
    REVERSAL varchar(1) default 'N' comment '冲正标志 Y:是 N:否',
    REVERSAL_DATE varchar(8) comment '冲正日期',
    REVERSAL_BRANCH varchar(20) comment '冲正机构',
    REVERSAL_USER_ID varchar(30) comment '冲正柜员',
    REVERSAL_AUTH_USER_ID varchar(30) comment '冲正授权柜员',
    AGREEMENT_ID varchar(30) comment '协议编号',
    OTH_BUSINESS_NO varchar(50) comment '对手业务编号',
    SEQ_NO varchar(50) comment '序号',
    OTH_NAME varchar(200) comment '对手名称',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    PROFIT_ALLOT_FLAG varchar(1) default 'N' comment '是否需要分润',
    OPEN_BRANCH_PERCENT Decimal(15,8) comment '账户行比例,记录百分数',
    TRAN_BRANCH_PERCENT Decimal(15,8) comment '交易行比例,记录百分数',
    OPEN_PROFIT_AMT Decimal(17,2) comment '账户行分润金额',
    TRAN_PROFIT_AMT Decimal(17,2) comment '交易行分润金额',
    OSD_STATUS varchar(3) comment '欠费状态',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    primary  key (OSD_SEQ_NO)
);
alter table MB_OSD_SERV_CHARGE comment '应收费用表 undefined';