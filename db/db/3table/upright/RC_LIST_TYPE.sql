drop table if exists RC_LIST_TYPE;
/*==============================================================*/
/* Table: RC_LIST_TYPE                                           */
/*==============================================================*/
create table RC_LIST_TYPE
(
    LIST_TYPE varchar(12) not null comment '名单类型 RC_LIST_TYPE.LIST_TYPE',
    LIST_TYPE_DESC varchar(500) comment '名单类型描述',
    LIST_CATEGORY varchar(2) comment '名单种类 RC_LIST_CATEGORY.LIST_CATEGORY',
    LIST_ORG varchar(12) comment '名单发送/审核机构 ',
    RELATE_ACCT_IND varchar(1) comment '是否关联同一客户下的其他账户标识',
    VERIFY_ACCT_IND varchar(1) comment '是否需要核实关联账户',
    VERIFY_IND varchar(1) comment '是否需要核实本身',
    VERIFY_TERM varchar(5) comment '核实期限',
    VERIFY_TERM_TYPE varchar(1) comment '核实期限类型 FM_PERIOD_FREQ.DAY_MTH',
    STATUS varchar(3) comment '状态 A:有效 E:失效',
    VERIFY_ACCT_TERM varchar(5),
    VERIFY_ACCT_TERM_TYPE varchar(1),
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (LIST_TYPE)
);
alter table RC_LIST_TYPE comment '名单类型 undefined';