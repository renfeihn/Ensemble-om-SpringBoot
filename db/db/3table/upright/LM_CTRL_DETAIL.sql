drop table if exists LM_CTRL_DETAIL;
/*==============================================================*/
/* Table: LM_CTRL_DETAIL                                           */
/*==============================================================*/
create table LM_CTRL_DETAIL
(
    CTRL_ID varchar(10) not null comment '控制编号',
    CTRL_DETAIL_ID varchar(10) not null comment '控制明细编 号',
    CCY varchar(3) comment '限额币种',
    DOC_TYPE varchar(10) comment '凭证类型',
    HIGH_LIMIT Decimal(17,2) not null comment '日间上限',
    LOW_LIMIT Decimal(17,2) not null comment '日间下限',
    HIGH_LIMIT_NIGHT Decimal(17,2) comment '日终现金余额上限',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CTRL_DETAIL_ID)
);
alter table LM_CTRL_DETAIL comment '限额控制明细表 undefined';