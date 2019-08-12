drop table if exists BAT_IRL_RATE_INFO;
/*==============================================================*/
/* Table: BAT_IRL_RATE_INFO                                           */
/*==============================================================*/
create table BAT_IRL_RATE_INFO
(
    RATEVALUE Decimal(22,0) comment '年利率',
    MINTERM varchar(32) comment '最低期限月',
    MAXTERM varchar(32) comment '最高期限月',
    EFFECTDATE varchar(8) comment '变更月数',
    RATETYPE varchar(32) comment '利率类型',
    TERMUNIT varchar(32) comment '利率单位',
    STATUS varchar(3) comment '状态'
);
alter table BAT_IRL_RATE_INFO comment '利率信息表 undefined';