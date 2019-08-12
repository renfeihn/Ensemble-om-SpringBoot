drop table if exists MB_PASSWORD_HIST;
/*==============================================================*/
/* Table: MB_PASSWORD_HIST                                           */
/*==============================================================*/
create table MB_PASSWORD_HIST
(
    PWD_KEY varchar(150) not null comment '账户标识符',
    PWD_TYPE varchar(3) not null comment '密码类型',
    PASSWORD_OLD varchar(50) comment '旧密码',
    PASSWORD_NEW varchar(50) comment '新密码',
    CHANGED_TYPE varchar(3) not null comment '密码修改类型 CRE-创建 MOD-修改 DEL-删除 RES-重置 LCK-锁定',
    CHANGE_DATE varchar(8) not null comment '修改日期',
    CHANGE_REASON varchar(200) comment '修改原因',
    USER_ID varchar(30) not null comment '交易柜员',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    COMPANY varchar(20) comment '法人代码',
    REFERENCE varchar(50) comment '交易参考号',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table MB_PASSWORD_HIST comment '帐户密码修改历史表 undefined';