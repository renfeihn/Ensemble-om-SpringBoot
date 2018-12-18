drop table if exists MB_ACCT_RELATION;
/*==============================================================*/
/* Table: MB_ACCT_RELATION                                           */
/*==============================================================*/
create table MB_ACCT_RELATION
(
    INTERNAL_KEY_A Decimal(15) not null comment '账户标识符',
    RELATION_IND varchar(1) not null comment '关系标志：I-系统内关联账户 O-系统外关系账户',
    INTERNAL_KEY_B Decimal(15) comment '关联账户标识符，如果是系统内管理账户，此字段必输',
    SOURCE_MODULE varchar(10) comment '关联账户标识符来源模块 ：RB-存款 CL-贷款 GL-总账 OT-其他   （1.NR-    SYMBOLS*NOSTRO RECON 2.SA-       SYMBOLS*SYSTEM ADMINISTRATION 3.FM-        SYMBOLS*KERNEL 4.GL-        SYMBOLS*GENERAL LEDGER 5.BI-        SYMBOLS*BATCH INTERFACE 6.RB -       SYMBOLS*DEPOSITS 7.IF-        SYMBOLS*GENERAL INTERFACE DP-        SYMBOLS*DOME）',
    STATUS varchar(3) comment '状态：A-有效 C-无效',
    BASE_ACCT_NO varchar(150) comment '关联账号，如果是系统外关系账户此字段必输',
    ACCT_NAME varchar(200) comment '关联账户名称，如果是系统外关系账户此字段必输',
    PROD_TYPE varchar(50) comment '关联账户产品类型',
    CCY varchar(3) comment '关联账户币种',
    ACCT_SEQ_NO varchar(8) comment '关联账户序列号',
    LAST_CHANGE_USER_ID varchar(30) comment '上次修改柜员',
    LAST_CHANGE_DATE varchar(8) comment '上次修改日期',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table MB_ACCT_RELATION comment '账户关系表 undefined';