drop table if exists IRL_AMT_INFO;
/*==============================================================*/
/* Table: IRL_AMT_INFO                                           */
/*==============================================================*/
create table IRL_AMT_INFO
(
    BUSI_ELEMENT varchar(50) not null comment '业务要素',
    BUSI_ELEMENT_VALUE varchar(50) comment '业务要素值',
    AMT_TYPE varchar(10) not null comment '金额类型',
    AMT Decimal(17,2) not null comment '金额',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (BUSI_ELEMENT,AMT_TYPE)
);
alter table IRL_AMT_INFO comment '业务要素金额信息表 undefined';