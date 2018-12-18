drop table if exists MB_SETTLE_TRAN_MAPPING;
/*==============================================================*/
/* Table: MB_SETTLE_TRAN_MAPPING                                           */
/*==============================================================*/
create table MB_SETTLE_TRAN_MAPPING
(
    ACCT_TYPE varchar(10) not null comment '主账户账户类型  M-普通贷款,  D-垫款,  U-贴现贷款,  E-委托贷款,  Y-银团贷款',
    PAY_REC_IND varchar(3) not null comment '收付款方向',
    SETTLE_GL_TYPE varchar(2) not null comment '结算账户总账类型',
    TRAN_TYPE_LIST varchar(200) not null comment '交易类型，可以配置多个，支持逗号分隔',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ACCT_TYPE,PAY_REC_IND,SETTLE_GL_TYPE)
);
alter table MB_SETTLE_TRAN_MAPPING comment '结算交易类型映射表 undefined';