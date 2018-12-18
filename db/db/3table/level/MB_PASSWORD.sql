drop table if exists MB_PASSWORD;
/*==============================================================*/
/* Table: MB_PASSWORD                                           */
/*==============================================================*/
create table MB_PASSWORD
(
    PWD_KEY varchar(150) not null comment '账户标识符',
    PWD_TYPE varchar(3) not null comment '密码类型',
    PASSWORD varchar(50) not null comment '密码',
    PASSWORD_STATUS varchar(3) not null comment '密码状态',
    FAILURE_TIMES varchar(5) not null comment '失败次数',
    PASSWORD_EFFECT_DATE varchar(8) comment '密码生效日期',
    LAST_CHANGE_DATE varchar(8) comment '上次修改日期',
    CHANGE_IND varchar(1) not null default 'Y'   comment '是否已修改标志',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (PWD_KEY,PWD_TYPE)
);
alter table MB_PASSWORD comment '帐户密码表 undefined';