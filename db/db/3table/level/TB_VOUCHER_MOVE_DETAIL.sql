drop table if exists TB_VOUCHER_MOVE_DETAIL;
/*==============================================================*/
/* Table: TB_VOUCHER_MOVE_DETAIL                                           */
/*==============================================================*/
create table TB_VOUCHER_MOVE_DETAIL
(
    VOUCHER_MOVE_DETAIL_ID varchar(30) not null comment '凭证转移明细ID',
    VOUCHER_MOVE_ID varchar(30) not null comment '凭证转移ID',
    DOC_TYPE varchar(10) not null comment '凭证类型',
    PREFIX varchar(10) comment '凭证前缀',
    START_NO_C varchar(50) comment '凭证起始号码',
    START_NO varchar(50) comment '凭证起始号码,数字类型',
    END_NO_C varchar(50) comment '凭证终止号码',
    END_NO varchar(50) comment '凭证终止号码,数字类型',
    SUM varchar(15) not null comment '凭证数量',
    CCY varchar(3) comment '币种',
    AMT Decimal(17,2) comment '面额',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    UNIT_TYPE varchar(50) comment '凭证单位',
    UNIT_BASE varchar(10) comment '单位基数',
    primary  key (VOUCHER_MOVE_DETAIL_ID)
);
alter table TB_VOUCHER_MOVE_DETAIL comment '凭证转移明细表 undefined';