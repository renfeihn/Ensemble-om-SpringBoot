drop table if exists MB_ACCT_SETTLE_INFO;
/*==============================================================*/
/* Table: MB_ACCT_SETTLE_INFO                                           */
/*==============================================================*/
create table MB_ACCT_SETTLE_INFO
(
    SEQ_NO varchar(50) comment '序号',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    OPERATE_TYPE varchar(3) comment '操作类型',
    SETTLE_NO varchar(50) comment '结算编号',
    SETTLE_CLIENT varchar(20) comment '结算客户号',
    SETTLE_BANK_FLAG varchar(1) comment '资金转移账户银行标识 ',
    SETTLE_BRANCH varchar(20) comment '清算机构 FM_BRANCH.BRANCH',
    SETTLE_ACCT_INTERNAL_KEY Decimal(15) comment '结算账户标志符',
    SETTLE_BASE_ACCT_NO varchar(150) comment '账号',
    SETTLE_ACCT_NAME varchar(200) comment '账户户名',
    SETTLE_PROD_TYPE varchar(50) comment '结算账户产品类型  MB_PROD_TYPE.PROD_TYPE',
    SETTLE_ACCT_CCY varchar(3) comment '账户币种，对于AIO账户和一本通账户，账户币种为XXX  FM_CURRENCY.CCY',
    SETTLE_ACCT_SEQ_NO varchar(8) comment '序列号，采用顺序数字，表示在同一账号、账户类型、币种下的不同子账户，比如定期存款序列号',
    SETTLE_MOBILE_PHONE varchar(20) comment '绑定账户手机号码',
    OLD_SETTLE_BASE_ACCT_NO varchar(150) comment '原利息入账账号',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    LAST_CHANGE_USER_ID varchar(30) comment '上次修改柜员',
    LAST_CHARGE_DATE varchar(8) comment '上一收费日期'
);
alter table MB_ACCT_SETTLE_INFO comment 'II,III类账户绑定信息流水表 undefined';