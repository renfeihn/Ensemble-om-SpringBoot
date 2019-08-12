drop table if exists TB_APPLY_CONF;
/*==============================================================*/
/* Table: TB_APPLY_CONF                                           */
/*==============================================================*/
create table TB_APPLY_CONF
(
    BRANCH varchar(20) not null comment '机构代码',
    CBRANCH varchar(20) comment '现金管理机构',
    VBRANCH varchar(20) comment '凭证管理机构',
    VBSFLAG varchar(1) comment '凭证人行/同业方向',
    CBSFLAG varchar(1) comment '现金人行/同业方向',
    IS_VOUCHER_APPLY varchar(1) comment '是否进行凭证预约',
    IS_CASH_APPLY varchar(1) comment '是否进行现金预约',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    REVIEW_BRANCH varchar(20) comment '复核机构',
    REVIEW_FLAG varchar(1) comment '是否需要复核（Y-是，N-否）',
    primary  key (BRANCH)
);
alter table TB_APPLY_CONF comment '预约参数表 undefined';