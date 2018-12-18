drop table if exists MB_ACCT_LINKMAN_TYPE;
/*==============================================================*/
/* Table: MB_ACCT_LINKMAN_TYPE                                           */
/*==============================================================*/
create table MB_ACCT_LINKMAN_TYPE
(
    LINKMAN_TYPE varchar(3) not null comment '联系人类型 HL-热线验证人 CA-对账有权人 FC-金融交易经办人',
    LINKMAN_DESC varchar(50) comment '联系人类型描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (LINKMAN_TYPE)
);
alter table MB_ACCT_LINKMAN_TYPE comment '账户联系人类型表 undefined';