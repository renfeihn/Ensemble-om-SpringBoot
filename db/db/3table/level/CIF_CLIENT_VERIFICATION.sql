drop table if exists CIF_CLIENT_VERIFICATION;
/*==============================================================*/
/* Table: CIF_CLIENT_VERIFICATION                                           */
/*==============================================================*/
create table CIF_CLIENT_VERIFICATION
(
    CLIENT_NO varchar(20) not null comment '客户号',
    VERIFICATION_RESULT varchar(2) comment '核查结果',
    VERIFICATION_REASON varchar(2) comment '无法核实原因',
    TREATMENT varchar(100) comment '处置方式',
    IS_SAVE varchar(2) comment '是否留存',
    REMARK varchar(200) comment '备注',
    VERIFICATION_DATE varchar(8) comment '核实日期',
    VERIFICATION_USER_ID varchar(30) comment '核实柜员',
    COMPANY varchar(20) comment '法人代码',
    CONTRAST_BAT_NO varchar(50) comment '批次号',
    STATUS varchar(3) not null default 'N'   comment '核查状态  Y:已核查  N:未核查',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (CLIENT_NO)
);
alter table CIF_CLIENT_VERIFICATION comment '个人客户身份核实情况   undefined';