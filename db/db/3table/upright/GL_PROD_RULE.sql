drop table if exists GL_PROD_RULE;
/*==============================================================*/
/* Table: GL_PROD_RULE                                           */
/*==============================================================*/
create table GL_PROD_RULE
(
    PROD_TYPE varchar(50) not null comment '产品类型',
    SYS_NAME varchar(30) not null comment '系统名称',
    SOURCE_MODULE varchar(10) not null comment '源类型',
    SOURCE_TYPE varchar(10) not null comment '源类型',
    CLIENT_TYPE varchar(3) not null comment '客户类型',
    ACCOUNTING_STATUS varchar(3) not null comment '核算状态',
    TRAN_EVENT_TYPE varchar(50) not null comment '事件类型',
    ACCOUNTING_NO varchar(30) not null comment '会计分录标号',
    CCY varchar(3) not null comment '币种',
    CUSTOM_RULE varchar(30) comment '自定义规则编号',
    ACCOUNTING_DESC varchar(100) comment '分录规则描述',
    TRAN_TYPE varchar(10) not null comment '交易类型',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    COMPANY varchar(20) comment '法人代码',
    primary  key (PROD_TYPE,SYS_NAME,SOURCE_MODULE,SOURCE_TYPE,CLIENT_TYPE,ACCOUNTING_STATUS,TRAN_EVENT_TYPE,CCY,TRAN_TYPE)
);
alter table GL_PROD_RULE comment '产品分录规则表 undefined';