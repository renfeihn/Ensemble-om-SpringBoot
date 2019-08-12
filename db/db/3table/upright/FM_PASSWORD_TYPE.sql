drop table if exists FM_PASSWORD_TYPE;
/*==============================================================*/
/* Table: FM_PASSWORD_TYPE                                           */
/*==============================================================*/
create table FM_PASSWORD_TYPE
(
    PASSWORD_TYPE varchar(2) not null comment '密码类型编号：  WD - 支取密码  QY - 查询密码  MA - 账户管理密码',
    PASSWORD_TYPE_DESC varchar(100) comment '密码类型描述',
    CHANNEL_MUSTER varchar(200) comment '渠道集合  多个渠道之间用,分隔，如果是所有渠道，则用 ALL 表示',
    ERROR_CHANNEL_IND varchar(1) comment '错误次数是否分渠道：Y-是 N-否 默认为N',
    MAX_FAILUER_TIMES varchar(5) comment '密码最大错误次数',
    RESET_IND varchar(1) comment '是否当日清零方式：1-当日清零 0-非当日清零  默认1',
    BRANCH varchar(20) comment '维护机构',
    LAST_CHANGE_OFFICER varchar(90) comment '上次修改柜员',
    LAST_CHANGE_DATE varchar(8) comment '上次修改日期',
    LAST_CHANGE_TIME varchar(17) comment '上次修改时间戳',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PASSWORD_TYPE)
);
alter table FM_PASSWORD_TYPE comment '密码类型参数表 undefined';