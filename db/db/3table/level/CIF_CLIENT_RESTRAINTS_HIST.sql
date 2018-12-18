drop table if exists CIF_CLIENT_RESTRAINTS_HIST;
/*==============================================================*/
/* Table: CIF_CLIENT_RESTRAINTS_HIST                                           */
/*==============================================================*/
create table CIF_CLIENT_RESTRAINTS_HIST
(
    SEQ_NO varchar(50) not null comment '序号',
    RESTRAINT_TYPE varchar(3) comment '限制类型 FM_RESTRAINT_TYPE.RESTRAINT_TYPE',
    CLIENT_NO varchar(20) comment '客户号',
    RES_SEQ_NO varchar(50) comment '限制序号',
    START_DATE varchar(8) comment '生效日期',
    TERM varchar(5) comment '存期',
    TERM_TYPE varchar(1) comment '存期类型 FM_PERIOD_FREQ.DAY_MTH',
    END_DATE varchar(8) comment '终止日期',
    STATUS varchar(3) comment '状态',
    LAST_STATUS varchar(3) comment '前一限制状态',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    TRAN_DATE varchar(8) comment '交易日期',
    BRANCH varchar(20) comment '机构代码',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    COMPANY varchar(20) comment '法人代码',
    SOURCE_TYPE varchar(10) comment '渠道 FM_CHANNEL.CHANNEL',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (SEQ_NO)
);
alter table CIF_CLIENT_RESTRAINTS_HIST comment '客户限制历史表 undefined';