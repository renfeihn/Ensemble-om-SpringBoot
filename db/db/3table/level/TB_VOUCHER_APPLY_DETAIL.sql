drop table if exists TB_VOUCHER_APPLY_DETAIL;
/*==============================================================*/
/* Table: TB_VOUCHER_APPLY_DETAIL                                           */
/*==============================================================*/
create table TB_VOUCHER_APPLY_DETAIL
(
    VOUCHER_APPLY_DETAIL_ID varchar(30) not null comment '凭证预约明细ID',
    APPLY_ID varchar(30) not null comment '预约编号',
    VOUCHER_TYPE varchar(1) comment '类型',
    DOC_TYPE varchar(10) not null comment '凭证类型',
    SUM varchar(15) not null comment '凭证数量',
    CCY varchar(3) comment '币种',
    AMT Decimal(17,2) comment '金额',
    COMPANY varchar(20) comment '法人代码',
    PREFIX varchar(10) comment '凭证前缀',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    UNIT_TYPE varchar(50) comment '凭证单位',
    UNIT_BASE varchar(10) comment '单位基数',
    primary  key (VOUCHER_APPLY_DETAIL_ID)
);
alter table TB_VOUCHER_APPLY_DETAIL comment '凭证预约申请明细表 undefined';