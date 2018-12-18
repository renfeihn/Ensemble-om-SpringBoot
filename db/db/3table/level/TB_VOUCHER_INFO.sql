drop table if exists TB_VOUCHER_INFO;
/*==============================================================*/
/* Table: TB_VOUCHER_INFO                                           */
/*==============================================================*/
create table TB_VOUCHER_INFO
(
    VOUCHER_ID varchar(30) not null comment '凭证主键',
    BRANCH varchar(20) not null comment '机构',
    DOC_TYPE varchar(10) not null comment '凭证类型',
    PREFIX varchar(10) comment '凭证前缀',
    VOUCHER_NO_C varchar(50) not null comment '凭证号码',
    VOUCHER_NO varchar(50) not null comment '凭证号码，数字',
    CCY varchar(3) not null comment '币种',
    AMT Decimal(17,2) comment '凭证面额',
    VOUCHER_STATUS varchar(3) not null comment '凭证状态 取值： NUS：未使用 WAY：未使用在途 WDE：待销毁 WWA：待销毁在途 DES：销毁  LCB：丢失 CAN：已作废 LOC：已锁定 SOL：已签发 ACP：已承兑 VER：口头挂失 LCC：正式挂失 USE：已收回 POB：已兑付 SET：已结清 PBK：已退回 默认值为NUS',
    OLD_STATUS varchar(3) comment '凭证上一状态 取值： NUS：未使用 WAY：未使用在途 WDE：待销毁 WWA：待销毁在途 DES：销毁  LCB：丢失 CAN：已作废 LOC：已锁定 SOL：已签发 ACP：已承兑 VER：口头挂失 LCC：正式挂失 USE：已收回 POB：已兑付 SET：已结清 PBK：已退回 默认值为NUS',
    LINK_TYPE varchar(3) comment '关联类型 取值： CD：卡号关联 AM：主账号关联（取main_tbl_key） AS：子账号关联 ……',
    LINK_VALUE Decimal(15) not null comment '关联键值',
    LAST_USER_ID varchar(30) comment '上一更改柜员',
    UPDATE_DATE varchar(8) comment '更新日期',
    MODULE_ID varchar(2) comment '模块ID',
    COLLAT_IND varchar(1) comment '抵质押标志 Y：抵押 N：非抵押',
    COLLAT_NO varchar(13) comment '抵质押编号',
    WITHDRAW_FLAG varchar(1) comment '是否收回标志 Y：收回 N：未收回',
    BUSINESSTYPE varchar(50) comment '业务类型',
    ADJUST_BAT_NO varchar(50) comment '批量调整批次号',
    REMARK varchar(200) comment '备注',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    TRAN_DATE varchar(8) comment '交易日期',
    primary  key (VOUCHER_ID)
);
alter table TB_VOUCHER_INFO comment '凭证出售后登记簿 undefined';

drop index TB_VOUCHER_INFO_IND1 on TB_VOUCHER_INFO;
/*==============================================================*/
/* Index: TB_VOUCHER_INFO_IND1                                           */
/*==============================================================*/
create index TB_VOUCHER_INFO_IND1 on TB_VOUCHER_INFO (
    LINK_VALUE
);