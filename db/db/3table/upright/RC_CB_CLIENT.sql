drop table if exists RC_CB_CLIENT;
/*==============================================================*/
/* Table: RC_CB_CLIENT                                           */
/*==============================================================*/
create table RC_CB_CLIENT
(
    CLIENT_NO varchar(20) comment '客户号',
    LIST_TYPE varchar(12) comment '名单类型',
    VERIFY_RESAULT varchar(1) comment '核实结果： N-未核实 A-已核实为正常 D-已核实为可疑 E-已到期未核实',
    VERIFY_START_DATE varchar(8) comment '核实期限起始日期',
    VERIFY_END_DATE varchar(8) comment '核实期限终止日期',
    VERIFY_DATE varchar(8) comment '核实日期',
    USER_ID varchar(30) comment '柜员',
    DOCUMENT_TYPE varchar(3) comment '证件类型',
    DOCUMENT_ID varchar(75) comment '证件号',
    ISS_COUNTRY varchar(3) comment '签发国家',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table RC_CB_CLIENT comment '待核实人行黑灰名单客户 undefined';