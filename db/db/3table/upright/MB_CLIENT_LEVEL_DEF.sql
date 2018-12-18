drop table if exists MB_CLIENT_LEVEL_DEF;
/*==============================================================*/
/* Table: MB_CLIENT_LEVEL_DEF                                           */
/*==============================================================*/
create table MB_CLIENT_LEVEL_DEF
(
    CLIENT_INDICATOR varchar(1) not null comment '客户标识 N-普通客户 S-银行员工客户 V-VIP客户 M-潜在客户',
    USER_LEVEL varchar(1) not null comment '柜员级别 0~9 9为最高级别',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CLIENT_INDICATOR)
);
alter table MB_CLIENT_LEVEL_DEF comment '客户信息安全控制表 undefined';