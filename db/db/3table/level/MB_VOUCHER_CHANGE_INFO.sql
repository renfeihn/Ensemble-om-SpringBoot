drop table if exists MB_VOUCHER_CHANGE_INFO;
/*==============================================================*/
/* Table: MB_VOUCHER_CHANGE_INFO                                           */
/*==============================================================*/
create table MB_VOUCHER_CHANGE_INFO
(
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    LOST_NO varchar(16) comment '挂失编号',
    BASE_ACCT_NO varchar(150) comment '账号',
    NEW_CARD_NO varchar(50) comment '新卡号',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    DOC_TYPE varchar(10) comment '凭证类型 TB_VOUCHER_DEF.DOC_TYPE',
    PREFIX varchar(10) comment '前缀',
    VOUCHER_NO varchar(50) comment '凭证号',
    NEW_DOC_TYPE varchar(10) comment '新凭证类型 TB_VOUCHER_DEF.DOC_TYPE',
    NEW_PREFIX varchar(10) comment '新凭证前缀',
    NEW_VOUCHER_NO varchar(50) comment '新凭证号码',
    CHANGE_DATE varchar(8) comment '修改日期',
    CHANGE_REASON varchar(200) comment '修改原因',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    VOUCHER_CHANGE_TYPE varchar(2) comment '凭证变更类型',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    MB_VOUCHER_CHANGE_NO varchar(16) not null comment '凭证更换编号',
    primary  key (MB_VOUCHER_CHANGE_NO)
);
alter table MB_VOUCHER_CHANGE_INFO comment '凭证更换信息表 undefined';