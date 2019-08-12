drop table if exists TB_CASH_SIGN;
/*==============================================================*/
/* Table: TB_CASH_SIGN                                           */
/*==============================================================*/
create table TB_CASH_SIGN
(
    CASH_SIGN_ID varchar(30) not null comment '长短钞登记代号 由系统自动产生,使用序列TB_SEQ_CASHSIGNID产生',
    TRAILBOX_ID varchar(30) not null comment '尾箱代号',
    CASH_FLAG varchar(1) not null comment '长短钞标记 取值： O：长款； S：短款；',
    CCY varchar(3) not null comment '币种',
    AMT Decimal(17,2) not null comment '金额',
    REAMRK varchar(200) comment '登记说明',
    SIGN_DATE varchar(8) not null comment '登记时间',
    REASON_ID varchar(3) comment '长短款原因',
    CASH_SIGN_STATUS varchar(3) comment '状态 取值： N： 未处理； Y： 已处理；',
    CASH_SIGN_BRANCH varchar(20) comment '交易机构',
    USER_ID varchar(30) comment '交易柜员',
    TRAN_DATE varchar(8) comment '交易日期',
    LEADERR_CASH_BRANCH varchar(20) comment '导致差错机构',
    LEADERR_USER_ID varchar(30) comment '导致差错柜员',
    PROCESS_BRANCH varchar(20) comment '处理机构',
    PROCESS_USER_ID varchar(30) comment '处理柜员',
    PROCESS_DATE varchar(8) comment '处理日期',
    CASH_FROM_TO varchar(1) comment '资金去向/来源 取值： C-现金 R-活期账户 G-总账账户',
    DEALED_OVG_SHTG_AMT Decimal(17,2) comment '长短款已处理金额',
    TRAN_TYPE varchar(10) comment '交易类型',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    REVERSAL varchar(1) default 'N' comment '冲正标志',
    REFERENCE varchar(50) comment '交易参考号',
    primary  key (CASH_SIGN_ID)
);
alter table TB_CASH_SIGN comment '长短钞登记表 undefined';