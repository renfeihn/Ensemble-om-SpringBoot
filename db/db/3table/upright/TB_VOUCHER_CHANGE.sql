drop table if exists TB_VOUCHER_CHANGE;
/*==============================================================*/
/* Table: TB_VOUCHER_CHANGE                                           */
/*==============================================================*/
create table TB_VOUCHER_CHANGE
(
    NEW_STATUS varchar(3) comment '凭证新状态',
    OLD_STATUS varchar(3) comment '凭证原状态',
    STATUS_DESC varchar(50) not null comment '描述信息',
    UPDATE_BEFORE varchar(1) not null comment '凭证出售前登记簿更新标志 I：新增   D：删除 U：修改 N：不变',
    UPDATE_AFTER varchar(1) not null comment '凭证出售后登记簿更新标志 I：新增   D：删除 U：修改 N：不变',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table TB_VOUCHER_CHANGE comment '凭证状态变化定义表 undefined';