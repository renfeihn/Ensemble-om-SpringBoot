drop table if exists TB_CASH_MOVE;
/*==============================================================*/
/* Table: TB_CASH_MOVE                                           */
/*==============================================================*/
create table TB_CASH_MOVE
(
    CASH_MOVE_ID varchar(30) not null comment '现金转移ID',
    TRAILBOX_ID varchar(30) not null comment '尾箱代号',
    TO_TRAILBOX_ID varchar(30) comment '交易对方尾箱代号',
    TRAN_TO varchar(1) not null comment '交易对方 取值： B：人民银行 S：同业银行 O：本行',
    TRAN_DATE varchar(8) comment '交易日期',
    TIME_STAMP varchar(17) comment '交易时间戳',
    IS_CHECK varchar(1) not null comment '复核标志',
    OUT_USER_ID varchar(30) comment '出库交易柜员',
    IN_USER_ID varchar(30) comment '入库交易柜员',
    CONTRA_CLIENT_NO varchar(20) comment '对方客户号',
    MOVE_TYPE varchar(3) comment '转移类型 取值： A：调剂 C：上缴 D：分配 I：入库 O：出库 OI：出入库（行内机构之间转移）',
    TRAN_DESC varchar(100) comment '交易描述',
    REMARK varchar(200) comment '备注',
    FROM_BRANCH varchar(20) comment '转出机构',
    TO_BRANCH varchar(20) comment '转入机构',
    OUT_DOC_TYPE varchar(10) comment '转出凭证类型',
    OUT_PREFIX varchar(10) comment '转出凭证前缀',
    OUT_VOUCHER_ID varchar(50) comment '转出凭证号',
    IN_DOC_TYPE varchar(10) comment '转入凭证类型',
    IN_PREFIX varchar(20) comment '转入凭证前缀',
    IN_VOUCHER_ID varchar(50) comment '转入凭证号',
    REFERENCE varchar(50) comment '交易参考号',
    COMPANY varchar(20) comment '法人代码',
    ACCT_NO varchar(150) comment '人行/同业账号 ',
    PROD_TYPE varchar(50) comment '产品类型',
    CLIENT_NAME varchar(200) comment '对方客户名',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (CASH_MOVE_ID)
);
alter table TB_CASH_MOVE comment '现金转移表 undefined';