drop table if exists MB_CASH_ITEM;
/*==============================================================*/
/* Table: MB_CASH_ITEM                                           */
/*==============================================================*/
create table MB_CASH_ITEM
(
    CASH_ITEM varchar(4) not null comment '现金项目',
    CASH_ITEM_DESC varchar(30) comment '现金项目描述',
    CR_DR_IND varchar(1) comment '收入支出标志 D 借 C  贷',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CASH_ITEM)
);
alter table MB_CASH_ITEM comment '现金项目定义 undefined';