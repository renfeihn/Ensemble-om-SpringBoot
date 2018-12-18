drop table if exists MB_DEPOSIT_CERT_REC;
/*==============================================================*/
/* Table: MB_DEPOSIT_CERT_REC                                           */
/*==============================================================*/
create table MB_DEPOSIT_CERT_REC
(
    DEPOSIT_CERT_NO varchar(20) not null comment '存款证明编号',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    CERT_BAL Decimal(17,2) not null comment '证明余额',
    CERT_TYPE varchar(1) comment '存款证明类型',
    TERM varchar(5) comment '存期',
    TERM_TYPE varchar(1) comment '存期类型 FM_PERIOD_FREQ.DAY_MTH',
    CERT_END_DATE varchar(8) not null comment '证明截止日期',
    DOC_TYPE varchar(10) comment '凭证类型 TB_VOUCHER_DEF.DOC_TYPE',
    PREFIX varchar(10) comment '前缀',
    VOUCHER_START_NO varchar(50) comment '凭证起始号码',
    VOUCHER_END_NO varchar(50) comment '凭证终止号码',
    CERT_USE varchar(50) comment '存款证明用途',
    TRAN_DATE varchar(8) comment '交易日期',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    RESTRAINT_SEQ_NO varchar(50) comment '冻结编号',
    CERT_NUM varchar(10) comment '证明张数',
    BRANCH varchar(20) comment '机构代码',
    CH_HEAD varchar(50) comment '中文抬头',
    EN_HEAD varchar(50) comment '英文抬头',
    SEQ_NO varchar(50) comment '序号',
    PRINT_CNT varchar(5) comment '打印次数',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    DEL_USER_ID varchar(30) comment '删除柜员',
    DEL_AUTH_USER_ID varchar(30) comment '删除授权柜员',
    DEL_DATE varchar(8) comment '删除日期',
    REFERENCE varchar(50) comment '交易参考号',
    STATUS varchar(3) comment '状态 A:有效 E:失效',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    CHANNEL_SEQ_NO varchar(50) comment '渠道流水号',
    REPAIR_TIME varchar(8) comment '补打时间',
    REPAIR_REASON varchar(1) comment '补打原因',
    CANCEL_REASON varchar(200) comment '撤销原因',
    CANCEL_USER_ID varchar(30) comment '取消柜员',
    CANCEL_TIME varchar(8) comment '取消时间',
    CANCEL_AUTH_USER varchar(30) comment '撤销授权柜员',
    TRAN_REFERENCE varchar(50) comment '原交易参考号',
    primary  key (DEPOSIT_CERT_NO,INTERNAL_KEY)
);
alter table MB_DEPOSIT_CERT_REC comment '存款证明处理信息 undefined';