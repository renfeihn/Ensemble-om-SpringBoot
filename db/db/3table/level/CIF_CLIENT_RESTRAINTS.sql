drop table if exists CIF_CLIENT_RESTRAINTS;
/*==============================================================*/
/* Table: CIF_CLIENT_RESTRAINTS                                           */
/*==============================================================*/
create table CIF_CLIENT_RESTRAINTS
(
    RES_SEQ_NO varchar(50) not null comment '限制序号',
    CLIENT_NO varchar(20) not null comment '客户号',
    RESTRAINT_TYPE varchar(3) not null comment '限制类型 取值范围FM_RESTRAINT_TYPE表RESTRAINT_TYPE',
    START_DATE varchar(8) comment '限制开始日期',
    TERM varchar(5) comment '限制期限',
    TERM_TYPE varchar(1) comment '限制期限类型',
    END_DATE varchar(8) comment '限制结束日期',
    STATUS varchar(3) comment '限制状态 A-已批准 E-已终止 F-未生效(限制开始日期未到，在将来的某天限制开始生效)',
    USER_ID varchar(30) comment '经办柜员',
    LAST_CHANGE_DATE varchar(8) comment '最后修改日期',
    LAST_CHANGE_USER_ID varchar(30) comment '最后修改柜员',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    NARRATIVE varchar(300) comment '摘要',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    BRANCH varchar(20) comment '机构代码',
    TRAN_DATE varchar(8) comment '交易日期',
    primary  key (RES_SEQ_NO)
);
alter table CIF_CLIENT_RESTRAINTS comment '客户级帐户限制 undefined';