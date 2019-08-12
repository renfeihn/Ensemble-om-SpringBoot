drop table if exists MB_CERTIFICATE_TYPE;
/*==============================================================*/
/* Table: MB_CERTIFICATE_TYPE                                           */
/*==============================================================*/
create table MB_CERTIFICATE_TYPE
(
    CERTIFICATE_TYPE varchar(1) not null comment '产权证明种类',
    CERTIFICATE_TYPE_DESC varchar(200) comment '产权证明种类描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_DATE varchar(8) comment '交易日期',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    LAST_CHANGE_USER_ID varchar(30) comment '上次修改柜员',
    primary  key (CERTIFICATE_TYPE)
);
alter table MB_CERTIFICATE_TYPE comment '产权证明种类 undefined';