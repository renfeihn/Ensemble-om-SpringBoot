drop table if exists MB_COMMISSION_HIST;
/*==============================================================*/
/* Table: MB_COMMISSION_HIST                                           */
/*==============================================================*/
create table MB_COMMISSION_HIST
(
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    TRAN_DATE varchar(8) not null comment '交易日期',
    PROGRAM_ID varchar(20) not null comment '交易码',
    REFERENCE varchar(50) comment '交易参考号',
    COMMISSION_CLIENT_NO varchar(20) comment '代办人客户号',
    COMMISSION_CLIENT_NAME varchar(200) comment '代办人客户名称',
    COMMISSION_DOC_TYPE varchar(3) comment '代办人证件类型',
    COMMISSION_DOC_ID varchar(75) comment '代办人证件号码',
    COMMISSION_EXPIRY_DATE varchar(8) comment '代办人证件到期日',
    COMMISSION_PHONE varchar(20) comment '代办人电话',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table MB_COMMISSION_HIST comment '代办业务登记表 undefined';