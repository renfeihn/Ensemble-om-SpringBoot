drop table if exists BAT_SALE_ADDVALUE_FLOW;
/*==============================================================*/
/* Table: BAT_SALE_ADDVALUE_FLOW                                           */
/*==============================================================*/
create table BAT_SALE_ADDVALUE_FLOW
(
    DATADATE varchar(8) comment '数据日期
',
    DATABATCH varchar(8) comment '批次号',
    VOUCHERID varchar(30) comment '尾箱编号',
    TRANSERIAL varchar(128) comment '交易流水号',
    TRANBATCH varchar(128) comment '交易批次号',
    TRANDATE varchar(8) comment '交易日期',
    TRANORG varchar(50) comment '交易机构',
    TRANCHANNEL varchar(50) comment '交易渠道',
    TRANTYPE varchar(30) comment '交易代码',
    PROCODE varchar(50) comment '产品代码',
    BUSINO varchar(30) comment '业务类型代码',
    TRANREMARK varchar(256) comment '交易摘要',
    CHANGESTATE varchar(22) comment '变更状态',
    ACCOUNTNO varchar(50) comment '账户号',
    TRANCURRENCY varchar(3) comment '交易币种',
    TRANAMT Decimal(17,2) comment '交易金额',
    CUSTCODE varchar(30) comment '客户号',
    CUSTNAME varchar(50) comment '客户名称',
    ACCNO varchar(30) comment '会计机构',
    LOANFLAG varchar(1) comment '借贷标志',
    ACCCODE varchar(50) comment '科目编码',
    OVERSEASFLAG varchar(22) comment '附属标志',
    CZTYPE varchar(1) comment '冲抹类型',
    ISCURRENT varchar(1) comment '冲抹标识',
    CZOLDDATE varchar(8) comment '冲抹原交易日期',
    CZBUSINO varchar(30) comment '冲抹号码',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    ACCT_STATUS varchar(3) comment '核算状态',
    AMENT_TYPE varchar(10) comment '利息分类',
    COMPANY varchar(20) comment '法人代码'
);
alter table BAT_SALE_ADDVALUE_FLOW comment '增值税流水表 undefined';