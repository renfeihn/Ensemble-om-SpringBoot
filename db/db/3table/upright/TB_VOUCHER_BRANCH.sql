drop table if exists TB_VOUCHER_BRANCH;
/*==============================================================*/
/* Table: TB_VOUCHER_BRANCH                                           */
/*==============================================================*/
create table TB_VOUCHER_BRANCH
(
    DOC_TYPE varchar(10) not null comment '凭证类型 取值TB_VOUCHER_DEF.DOC_TYPE',
    BRANCH varchar(20) not null comment '机构 取值FM_BRANCH_TBL.BRANCH',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (DOC_TYPE,BRANCH)
);
alter table TB_VOUCHER_BRANCH comment '凭证使用分行表 undefined';