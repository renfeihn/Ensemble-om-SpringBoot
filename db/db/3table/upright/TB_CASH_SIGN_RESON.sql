drop table if exists TB_CASH_SIGN_RESON;
/*==============================================================*/
/* Table: TB_CASH_SIGN_RESON                                           */
/*==============================================================*/
create table TB_CASH_SIGN_RESON
(
    SHTG_TYPE varchar(10) not null comment '处理类型 REASONID:长短款原因 ， CASHFROMTO:长短款挂账资金去向',
    SHTG_ID varchar(3) not null comment '原因代号/资金流向代号',
    SHTG_DESC varchar(50) comment '原因描述/资金流向描述',
    OVER_TRAN_TYPE varchar(10) comment '长款交易类型 取值 MB_TRAN_DEF.TRAN_TYPE',
    SHORT_TRAN_TYPE varchar(10) comment '短款交易类型 取值 MB_TRAN_DEF.TRAN_TYPE',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (SHTG_TYPE,SHTG_ID)
);
alter table TB_CASH_SIGN_RESON comment '长短款原因参数表 undefined';