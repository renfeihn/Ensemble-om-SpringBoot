drop table if exists TB_VOUCHER_TRAILBOX_INFO_BAK;
/*==============================================================*/
/* Table: TB_VOUCHER_TRAILBOX_INFO_BAK                                           */
/*==============================================================*/
create table TB_VOUCHER_TRAILBOX_INFO_BAK
(
    VOUCHER_ID varchar(30) not null comment '凭证主键',
    TRAILBOX_ID varchar(30) not null comment '尾箱代号',
    BRANCH varchar(20) not null comment '机构',
    DOC_TYPE varchar(10) not null comment '凭证类型',
    PREFIX varchar(10) comment '凭证前缀',
    START_NO_C varchar(50) not null comment '凭证起始号码',
    START_NO varchar(50) not null comment '凭证起始号码,数字类型',
    END_NO_C varchar(50) not null comment '凭证终止号码',
    END_NO varchar(50) not null comment '凭证终止号码,数字类型',
    VOUCHER_SUM varchar(5) not null comment '凭证数量',
    CCY varchar(3) not null comment '币种',
    AMT Decimal(17,2) comment '面额',
    VOUCHER_STATUS varchar(3) not null comment '凭证状态 取值： NUS：未使用 WAY：未使用在途 WDE：待销毁 WWA：待销毁在途 DES：销毁  LCB：丢失 CAN：已作废 LOC：已锁定 SOL：已签发 ACP：已承兑 VER：口头挂失 LCC：正式挂失 USE：已收回 POB：已兑付 SET：已结清 PBK：已退回 默认值为NUS',
    LAST_USER_ID varchar(30) comment '上一更改柜员',
    UPDATE_DATE varchar(8) comment '更新日期',
    REMARK varchar(200) comment '备注',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (VOUCHER_ID)
);
alter table TB_VOUCHER_TRAILBOX_INFO_BAK comment '凭证出售前登记簿备份表 undefined';

drop index PK_TB_VOUCHER_TRAILBOX_INFO_BA on TB_VOUCHER_TRAILBOX_INFO_BAK;
/*==============================================================*/
/* Index: PK_TB_VOUCHER_TRAILBOX_INFO_BA                                           */
/*==============================================================*/
create index PK_TB_VOUCHER_TRAILBOX_INFO_BA on TB_VOUCHER_TRAILBOX_INFO_BAK (
    VOUCHER_ID
);