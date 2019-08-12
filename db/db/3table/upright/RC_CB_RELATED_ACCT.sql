drop table if exists RC_CB_RELATED_ACCT;
/*==============================================================*/
/* Table: RC_CB_RELATED_ACCT                                           */
/*==============================================================*/
create table RC_CB_RELATED_ACCT
(
    BASE_ACCT_NO varchar(150) comment '账号/卡号',
    LIST_TYPE varchar(12) comment '名单类型',
    VERIFY_RESAULT varchar(1) comment '核实结果： N-未核实 A-已核实为正常 D-已核实为可疑 E-已到期未核实',
    VERIFY_START_DATE varchar(8) comment '核实期限起始日期',
    VERIFY_END_DATE varchar(8) comment '核实期限终止日期',
    VERIFY_DATE varchar(8) comment '核实日期',
    USER_ID varchar(30) comment '柜员',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table RC_CB_RELATED_ACCT comment '待核实人行黑灰名单关联账户 undefined';