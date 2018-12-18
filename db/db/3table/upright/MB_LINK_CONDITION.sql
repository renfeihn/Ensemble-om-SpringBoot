drop table if exists MB_LINK_CONDITION;
/*==============================================================*/
/* Table: MB_LINK_CONDITION                                           */
/*==============================================================*/
create table MB_LINK_CONDITION
(
    CONDITION_ID varchar(10) not null comment '链接条件规则ID',
    CONDITION_RULE varchar(1024) comment '链接条件规则 OPEN：开户 CLOSE：销户 BAL：余额变化 DUE：到期',
    CONDITION_DESC varchar(100) not null comment '规则描述',
    STATUS varchar(3) not null comment '状态 A：有效 F：无效',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CONDITION_ID)
);
alter table MB_LINK_CONDITION comment '链接条件定义表 undefined';