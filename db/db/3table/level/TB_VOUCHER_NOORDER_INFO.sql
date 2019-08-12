drop table if exists TB_VOUCHER_NOORDER_INFO;
/*==============================================================*/
/* Table: TB_VOUCHER_NOORDER_INFO                                           */
/*==============================================================*/
create table TB_VOUCHER_NOORDER_INFO
(
    VOUCHER_ID varchar(30) not null comment '凭证主键',
    TRAILBOX_ID varchar(30) not null comment '尾箱代号',
    BRANCH varchar(20) not null comment '机构',
    DOC_TYPE varchar(10) not null comment '凭证类型',
    PREFIX varchar(10) comment '凭证前缀',
    VOUCHER_SUM varchar(5) not null comment '凭证数量',
    CCY varchar(3) comment '币种',
    AMT Decimal(17,2) comment '凭证面额',
    VOUCHER_STATUS varchar(3) not null comment '凭证状态 取值： NUS：未使用 WAY：未使用在途 WDE：待销毁 WWA：待销毁在途 DES：销毁  LCB：丢失 CAN：已作废 LOC：已锁定 SOL：已签发 ACP：已承兑 VER：口头挂失 LCC：正式挂失 USE：已收回 POB：已兑付 SET：已结清 PBK：已退回 默认值为NUS',
    LAST_USER_ID varchar(30) comment '上一更改柜员 上一次更改的执行柜员ID',
    UPDATE_DATE varchar(8) comment '更新日期',
    REMARK varchar(200) comment '备注',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (VOUCHER_ID)
);
alter table TB_VOUCHER_NOORDER_INFO comment '无号凭证登记簿 undefined';