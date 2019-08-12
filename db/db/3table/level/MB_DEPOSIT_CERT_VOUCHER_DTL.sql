drop table if exists MB_DEPOSIT_CERT_VOUCHER_DTL;
/*==============================================================*/
/* Table: MB_DEPOSIT_CERT_VOUCHER_DTL                                           */
/*==============================================================*/
create table MB_DEPOSIT_CERT_VOUCHER_DTL
(
    DEPOSIT_CERT_NO varchar(20) not null comment '存款证明编号',
    DOC_TYPE varchar(10) not null comment '凭证类型 TB_VOUCHER_DEF.DOC_TYPE',
    PREFIX varchar(10) comment '前缀',
    VOUCHER_NO varchar(50) not null comment '凭证号',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    DEL_USER_ID varchar(30) comment '删除柜员',
    DEL_AUTH_USER_ID varchar(30) comment '删除授权柜员',
    REMARK varchar(200) comment '备注,修改印鉴卡关联添加描述',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    OPTION_TYPE varchar(2) not null comment '操作类型',
    SEQ_NO varchar(50) not null comment '序号',
    primary  key (DEPOSIT_CERT_NO,VOUCHER_NO,OPTION_TYPE,SEQ_NO)
);
alter table MB_DEPOSIT_CERT_VOUCHER_DTL comment '存款证明凭证明细信息 undefined';