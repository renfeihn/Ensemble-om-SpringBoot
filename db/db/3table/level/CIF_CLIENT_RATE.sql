drop table if exists CIF_CLIENT_RATE;
/*==============================================================*/
/* Table: CIF_CLIENT_RATE                                           */
/*==============================================================*/
create table CIF_CLIENT_RATE
(
    CLIENT_NO varchar(20) not null comment '客户号',
    RAINTG_TYPE varchar(2) comment '评级类型  N-内部评级  W-外部评级',
    RAINTG varchar(6) not null comment '评级结果',
    RAINTG_ORG varchar(50) comment '评级机构',
    RAINTG_EFFE_DATE varchar(8) not null comment '评级生效日期',
    RAINTG_MAT_DATE varchar(8) not null comment '评级到期日期',
    RATING_STATUS varchar(1) not null comment '评级状态  0-有效  1-无效',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table CIF_CLIENT_RATE comment '客户评级信息表 undefined';