drop table if exists TB_AUDIT_DETAIL;
/*==============================================================*/
/* Table: TB_AUDIT_DETAIL                                           */
/*==============================================================*/
create table TB_AUDIT_DETAIL
(
    AUDIT_ID varchar(30) not null comment '查库编号',
    USER_ID_ORG varchar(20) not null comment '被查人机构',
    USER_ID varchar(30) not null comment '被查人',
    CHECK_USER_ORG varchar(20) not null comment '检查人机构',
    CHECK_USER varchar(30) not null comment '检查人',
    CURRENT_USER_ID varchar(10) not null comment '操作柜员',
    AUDIT_DATE varchar(8) comment '审计日期',
    AUDIT_TIMESTAMP varchar(17) comment '审计时间',
    CASH_CHECK_RESULT varchar(5) comment '现金检查结果',
    VOUCHER_CHECK_RESULT varchar(5) comment '凭证检查结果',
    FAKE_MONEY_CHECK_RESULT varchar(5) comment '假币检查结果',
    CUSTODY_PRODUCT_CHECK_RESULT varchar(5) comment '代保管品检查结果',
    REMARK varchar(200) comment '备注，用来描述制卡原因，比如正常制卡，补换卡等',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AUDIT_ID)
);
alter table TB_AUDIT_DETAIL comment '审计查库结果登记表 undefined';