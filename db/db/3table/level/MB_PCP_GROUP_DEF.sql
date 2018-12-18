drop table if exists MB_PCP_GROUP_DEF;
/*==============================================================*/
/* Table: MB_PCP_GROUP_DEF                                           */
/*==============================================================*/
create table MB_PCP_GROUP_DEF
(
    GROUP_ID varchar(50) not null comment '账户组ID',
    UPPER_GROUP_ID varchar(50) comment '上级组ID',
    GROUP_NAME varchar(100) comment '账户组名称',
    GROUP_CCY varchar(10) comment '币种组  目标币种+源币种  FM_CURRENCY.CCY',
    BOTH_PART_NATURE varchar(2) comment '收支属性',
    CLIENT_NO varchar(20) comment '客户号',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '币种',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    STATUS varchar(3) comment '状态 A:有效 E:失效',
    CREATE_DATE varchar(8) comment '创建日期',
    CREATE_USER_ID varchar(30) comment '录入柜员',
    AUTH_OFFICER_ID varchar(30) comment '授权柜员',
    TRAN_BRANCH varchar(20) comment '交易支行 FM_BRANCH.BRANCH',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (GROUP_ID)
);
alter table MB_PCP_GROUP_DEF comment '资金池账户组定义表 undefined';