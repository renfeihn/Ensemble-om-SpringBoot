drop table if exists CIF_RELATION_TYPE;
/*==============================================================*/
/* Table: CIF_RELATION_TYPE                                           */
/*==============================================================*/
create table CIF_RELATION_TYPE
(
    RELATION_TYPE varchar(10) not null comment '类型',
    RELATION_DESC varchar(100) not null comment '类型描述',
    COUNTER_REL varchar(15) comment '反相关系类型 取值 FM_RELATION_TYPE.RELATION_TYPE',
    EXPOSURE varchar(1) not null comment '风险 Y/N',
    EQUITY varchar(1) not null comment '股权 Y/N',
    JOINT_ACCT varchar(1) not null comment '联合帐户 Y/N',
    AUTHORISED varchar(1) not null comment '授权方 Y/N',
    EMPLOYMENT varchar(1) not null comment '雇佣 Y/N',
    RELATIVE varchar(1) not null comment '亲戚 Y/N',
    SYMMENTRIC varchar(1) not null comment '对等 Y/N',
    JOIN_COLLAT varchar(1) not null comment '联合体 Y/N',
    RELATION_TYPE_FLAG varchar(1) comment '关系类型标识 1-个人-个人 2-个人-非个人 3-非个人-非个人 4-非个人-个人 5-个人-非个人 或 非个人-非个人 6-非个人-非个人 或 非个人-个人',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (RELATION_TYPE)
);
alter table CIF_RELATION_TYPE comment '客户关系类型 undefined';