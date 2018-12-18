drop table if exists TB_TRAN_HIST;
/*==============================================================*/
/* Table: TB_TRAN_HIST                                           */
/*==============================================================*/
create table TB_TRAN_HIST
(
    SEQ_NO varchar(50) comment '碰库序号',
    REFERENCE varchar(50) not null comment '尾箱代号',
    TRAN_BRANCH varchar(20) comment '柜员',
    EFFECT_DATE varchar(8) comment '机构',
    TRAN_CCY varchar(3) comment '碰库类型,取值1-日始碰库2-日间碰库3-日终碰库  ',
    SOURCE_MODULE varchar(10) comment '碰库种类 取值V-凭证C-现金  ',
    SOURCE_TYPE varchar(10) comment '碰库日期',
    BUSINESS_UNIT varchar(10) comment '账套',
    AMT_TYPE varchar(10) comment '金额类型',
    AMOUNT Decimal(17,2) comment '是否复核 取值Y-已复核N-未复核  ',
    PROD_TYPE varchar(50) comment '产品类型',
    BASE_ACCT_NO varchar(150) comment '账号',
    BRANCH varchar(20) comment '机构代码',
    ACCT_STATUS varchar(3) comment '核算状态',
    PROFIT_CENTRE varchar(12) comment '利润中心 FM_PROFIT_CENTRE.PROFIT_CENTRE',
    CCY varchar(3) comment '币种',
    CLIENT_TYPE varchar(3) comment '客户类型',
    CLIENT_NO varchar(20) comment '客户号',
    SYSTEM_ID varchar(20) comment '系统ID',
    REVERSAL varchar(1) comment '冲正标志 Y:是 N:否',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    PRIAMT Decimal(17,2) comment '本金金额',
    INTAMT Decimal(17,2) comment '利息金额',
    ODPAMT Decimal(17,2) comment '罚息金额',
    ODIAMT Decimal(17,2) comment '复利金额',
    TRAN_PROFIT_CENTRE varchar(12) comment '交易利润中心',
    EVENT_TYPE varchar(50) comment '事件类型 MB_EVENT_CLASS.EVENT_CLASS',
    TRAN_TYPE varchar(10) comment '交易类型',
    TRAN_DATE varchar(8) comment '交易日期',
    DATA_TYPE varchar(20) comment '数据类型  ',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    GL_POSTED varchar(1) comment '过账标志',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    PRE_REFERENCE varchar(50) comment '原交易参考号',
    CHANNEL_SEQ_NO varchar(50) comment '渠道流水号',
    COMPANY varchar(20) comment '法人代码'
);
alter table TB_TRAN_HIST comment '公共核算流水表 undefined';