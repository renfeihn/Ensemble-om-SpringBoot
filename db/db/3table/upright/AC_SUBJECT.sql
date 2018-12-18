drop table if exists AC_SUBJECT;
/*==============================================================*/
/* Table: AC_SUBJECT                                           */
/*==============================================================*/
create table AC_SUBJECT
(
    SUBJECT_CODE varchar(20) not null comment '科目代码',
    SUBJECT_DESC varchar(100) not null comment '科目描述',
    SUBJECT_DESC_EN varchar(100) comment '科目英文描述',
    SUBJECT_TYPE varchar(1) not null comment '科目类型 C:控制类科目 S:记账类科目',
    CONTROL_SUBJECT varchar(20) comment '上级科目',
    BSPL_TYPE varchar(1) not null comment 'BSPL类型  ',
    GL_TYPE varchar(1) not null comment '账户类型  （客户账）',
    TFR_IND varchar(1) not null comment '转账标志',
    OF_TRF varchar(1) comment '转账指示  ',
    MANUAL_BATCH_RES varchar(1) not null comment '是否允许手工批量记账',
    OPERATING_TAX varchar(1) comment '是否计提营业税  ',
    INTERNAL varchar(1) comment '是否内部科目标志',
    SUBJECT_STATUS varchar(1) not null comment '科目状态  ',
    SUBJECT_LEVEL varchar(10) comment '科目级别',
    MANUAL_ACCOUNT varchar(1) comment '是否允许手工记账',
    BALANCE_WAY varchar(1) not null comment '余额方向  ',
    BUSINESS_UNIT varchar(10) comment '帐套',
    INTER_IND varchar(1) comment '内部账管理标志',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    FACILITY varchar(1),
    COMPANY varchar(20) comment '法人代码',
    primary  key (SUBJECT_CODE)
);
alter table AC_SUBJECT comment '会计科目表 undefined';