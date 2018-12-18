drop table if exists MB_PCP_PARAMETER;
/*==============================================================*/
/* Table: MB_PCP_PARAMETER                                           */
/*==============================================================*/
create table MB_PCP_PARAMETER
(
    PARA_KEY varchar(30) not null comment '参数名',
    PARA_VALUE varchar(500) not null comment '参数值',
    PARA_DESC varchar(200) comment '参数描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PARA_KEY)
);
alter table MB_PCP_PARAMETER comment '资金池参数表 undefined';