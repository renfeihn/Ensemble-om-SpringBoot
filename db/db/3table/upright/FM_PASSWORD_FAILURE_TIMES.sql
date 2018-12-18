drop table if exists FM_PASSWORD_FAILURE_TIMES;
/*==============================================================*/
/* Table: FM_PASSWORD_FAILURE_TIMES                                           */
/*==============================================================*/
create table FM_PASSWORD_FAILURE_TIMES
(
    PASSWORD_TYPE varchar(2) not null comment '密码类型编号',
    CHANNEL varchar(20) not null comment '渠道集合',
    MAX_FAILUER_TIMES varchar(5) comment '密码最大错误次数',
    RESET_IND varchar(1) comment '是否当日清零方式',
    BRANCH varchar(20) comment '维护机构',
    LAST_CHANGE_OFFICER varchar(90) comment '上次修改柜员',
    LAST_CHANGE_DATE varchar(8) comment '上次修改日期',
    LAST_CHANGE_TIME varchar(17) comment '上次修改时间',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PASSWORD_TYPE,CHANNEL)
);
alter table FM_PASSWORD_FAILURE_TIMES comment '密码错误次数参数表 undefined';