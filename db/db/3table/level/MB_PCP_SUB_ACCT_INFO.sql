drop table if exists MB_PCP_SUB_ACCT_INFO;
/*==============================================================*/
/* Table: MB_PCP_SUB_ACCT_INFO                                           */
/*==============================================================*/
create table MB_PCP_SUB_ACCT_INFO
(
    GROUP_ID varchar(50) not null comment '账户组ID',
    UPPER_BASE_ACCT_NO varchar(150) comment '上级账户（组主账户）',
    UPPER_INTERNAL_KEY Decimal(15) comment '组主账户内部键',
    IN_OUT_FLAG varchar(10) comment '境内境外',
    CLIENT_NO varchar(20) comment '客户号',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '币种',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    SUB_SEQ_NO varchar(8) comment '子公司序号',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    EFFECT_DATE varchar(8) comment '生效日期',
    PRIORITY varchar(5) comment '优先级',
    MIN_SUB_STATUS varchar(3) comment '主子状态',
    TRAN_BRANCH varchar(20) comment '交易支行 FM_BRANCH.BRANCH',
    CREATE_DATE varchar(8) comment '创建日期',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    AUTH_OFFICER_ID varchar(30) comment '授权柜员',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (GROUP_ID,INTERNAL_KEY)
);
alter table MB_PCP_SUB_ACCT_INFO comment '资金池账户组子账户信息表 undefined';