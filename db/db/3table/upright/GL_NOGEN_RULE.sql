drop table if exists GL_NOGEN_RULE;
/*==============================================================*/
/* Table: GL_NOGEN_RULE                                           */
/*==============================================================*/
create table GL_NOGEN_RULE
(
    PROD_TYPE varchar(50) not null comment '产品类型',
    SOURCE_TYPE varchar(10) not null comment '源类型',
    EVENT_TYPE varchar(50) not null comment '事件类型',
    TRAN_TYPE varchar(10) not null comment '交易类型',
    AMOUNT_TYPE varchar(50) not null comment '金额类型',
    ACCOUNTING_STATUS varchar(3) not null comment '核算状态',
    SOURCE_MODULE varchar(10) not null comment '源类型',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    primary  key (PROD_TYPE,SOURCE_TYPE,EVENT_TYPE,TRAN_TYPE,AMOUNT_TYPE,ACCOUNTING_STATUS,SOURCE_MODULE)
);
alter table GL_NOGEN_RULE comment '免于生成分录规则表 undefined';