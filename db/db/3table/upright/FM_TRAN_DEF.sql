drop table if exists FM_TRAN_DEF;
/*==============================================================*/
/* Table: FM_TRAN_DEF                                           */
/*==============================================================*/
create table FM_TRAN_DEF
(
    EVENT_TYPE varchar(50) not null comment '事件类型 MB_EVENT_CLASS.EVENT_CLASS',
    TRAN_SCENE varchar(50) not null comment '交易场景',
    TRAN_SCENE_DESC varchar(50) not null comment '交易场景描述',
    OTH_TRAN_SCENE varchar(50) not null comment '对手交易场景',
    TRAN_TYPE varchar(10) comment '交易类型',
    primary  key (EVENT_TYPE,TRAN_SCENE)
);
alter table FM_TRAN_DEF comment '交易类型配置表 undefined';