drop table if exists TB_VOUCHER_EQUAL_DETAIL;
/*==============================================================*/
/* Table: TB_VOUCHER_EQUAL_DETAIL                                           */
/*==============================================================*/
create table TB_VOUCHER_EQUAL_DETAIL
(
    EQUAL_DETAIL_SEQ_NO varchar(30) not null comment '凭证碰库详情序号',
    EQUAL_SEQ_NO varchar(30) not null comment '碰库序号',
    TRAILBOX_ID varchar(30) not null comment ' 尾箱号',
    USER_ID varchar(30) not null comment '柜员',
    DOC_TYPE varchar(10) not null comment '凭证种类',
    PREFIX varchar(10) comment '前缀',
    START_NO_C varchar(50) not null comment '凭证起始号',
    START_NO varchar(50) not null comment '凭证起始号',
    END_NO_C varchar(50) not null comment '凭证终止号',
    END_NO varchar(50) not null comment '凭证终止号',
    SUM varchar(15) not null comment '数量',
    AMT Decimal(17,2) comment '金额',
    CCY varchar(3) comment '币种',
    VOUCHER_STATUS varchar(3) not null comment '状态',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (EQUAL_DETAIL_SEQ_NO)
);
alter table TB_VOUCHER_EQUAL_DETAIL comment '凭证碰库详情表 undefined';