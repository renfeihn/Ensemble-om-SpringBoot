drop table if exists FM_RESOURCE_LOCK;
/*==============================================================*/
/* Table: FM_RESOURCE_LOCK                                           */
/*==============================================================*/
create table FM_RESOURCE_LOCK
(
    MODULE_ID varchar(2) not null comment '模块',
    RESOURCE_ID varchar(50) not null comment '资源ID',
    STATUS varchar(3) comment '状态： L锁定',
    TXID varchar(20) not null comment '事务ID',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (MODULE_ID,RESOURCE_ID)
);
alter table FM_RESOURCE_LOCK comment '资源锁定表 undefined';