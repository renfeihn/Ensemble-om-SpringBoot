drop table if exists TB_VOUCHER_TRAILBOX_JOURNAL;
/*==============================================================*/
/* Table: TB_VOUCHER_TRAILBOX_JOURNAL                                           */
/*==============================================================*/
create table TB_VOUCHER_TRAILBOX_JOURNAL
(
    JOURNAL_ID varchar(30) not null comment '凭证流水ID',
    TRAILBOX_ID varchar(30) not null comment '尾箱代号',
    BRANCH varchar(20) not null comment '机构',
    DOC_TYPE varchar(10) not null comment '凭证类型',
    PREFIX varchar(10) comment '凭证前缀',
    START_NO_C varchar(50) not null comment '凭证起始号码',
    START_NO varchar(50) not null comment '凭证起始号码,数字类型',
    END_NO_C varchar(50) not null comment '凭证终止号码',
    END_NO varchar(50) not null comment '凭证终止号码,数字类型',
    SUM varchar(15) not null comment '凭证数量',
    CCY varchar(3) comment '币种',
    AMT Decimal(17,2) comment '面额',
    VOUCHER_STATUS varchar(3) comment '凭证状态 取值： NUS：未使用 WAY：未使用在途 WDE：待销毁 WWA：待销毁在途 DES：销毁  LCB：丢失 CAN：已作废 LOC：已锁定 SOL：已签发 ACP：已承兑 VER：口头挂失 LCC：正式挂失 USE：已收回 POB：已兑付 SET：已结清 PBK：已退回',
    OLD_STATUS varchar(3) comment '凭证上一状态 取值： NUS：未使用 WAY：未使用在途 WDE：待销毁 WWA：待销毁在途 DES：销毁  LCB：丢失 CAN：已作废 LOC：已锁定 SOL：已签发 ACP：已承兑 VER：口头挂失 LCC：正式挂失 USE：已收回 POB：已兑付 SET：已结清 PBK：已退回',
    MOVE_TYPE varchar(3) comment '转移类型 取值： AI：调剂-入 AO:调剂-出 CI:上缴-入 CO:上缴-出 DI：分配-入 DO:分配-出 OI:行内入库 I：非本行入库 OO：行内出库 O：非本行出库',
    PROGRAM_ID varchar(20) comment '交易代码',
    TRAN_DESC varchar(100) comment '交易描述',
    MODULE_ID varchar(2) comment '交易模块',
    SOURCE_TYPE varchar(10) comment '渠道类型',
    CHANNEL_SEQ_NO varchar(50) comment '渠道流水号',
    USER_ID varchar(30) comment '交易柜员',
    CHECK_USER_ID varchar(30) comment '复核柜员',
    TRAN_DATE varchar(8) comment '交易日期',
    TIME_STAMP varchar(17) comment '交易时间戳',
    VOUCHER_MOVE_ID varchar(30) comment '凭证转移ID',
    REMARK varchar(200) comment '备注',
    REFERENCE varchar(50) comment '交易参考号',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (JOURNAL_ID)
);
alter table TB_VOUCHER_TRAILBOX_JOURNAL comment '凭证出售前流水信息表 undefined';