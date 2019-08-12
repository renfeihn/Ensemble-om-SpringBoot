drop table if exists MB_SEAL_RELATION_HIST;
/*==============================================================*/
/* Table: MB_SEAL_RELATION_HIST                                           */
/*==============================================================*/
create table MB_SEAL_RELATION_HIST
(
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    CLIENT_NO varchar(20) comment '客户号',
    DOC_TYPE varchar(10) not null comment '凭证类型',
    PREFIX varchar(10) comment '前缀',
    VOUCHER_NO varchar(50) comment '凭证号',
    LEAD_ACCT_FLAG varchar(1) comment '是否主账户',
    START_DATE varchar(8) comment '生效日期',
    END_DATE varchar(8) comment '终止日期',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    LAST_CHANGE_USER_ID varchar(30) comment '上次修改柜员',
    OPTION_FLAG varchar(1) comment '印鉴关联标志',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    REMARK varchar(200) comment '备注，用来描述制卡原因，比如正常制卡，补换卡等'
);
alter table MB_SEAL_RELATION_HIST comment '帐户印鉴关联交易历史表 undefined';