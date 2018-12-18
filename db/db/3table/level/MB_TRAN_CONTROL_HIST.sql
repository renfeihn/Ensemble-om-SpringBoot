drop table if exists MB_TRAN_CONTROL_HIST;
/*==============================================================*/
/* Table: MB_TRAN_CONTROL_HIST                                           */
/*==============================================================*/
create table MB_TRAN_CONTROL_HIST
(
    SOURCE_TYPE varchar(10) not null comment '渠道',
    CHANNEL_SEQ_NO varchar(50) not null comment '渠道流水号',
    CHANNEL_DATE varchar(8) not null comment '渠道日期',
    TRAN_DATE varchar(8) comment '交易日期',
    REFERENCE varchar(50) comment '交易参考号',
    BUSI_CLASS varchar(10) comment '业务分类',
    BUSI_SUB_CLASS varchar(10) comment '业务细类',
    SOURCE_MODULE varchar(10) comment '模块',
    BRANCH varchar(20) comment '机构代码',
    MESSAGE_CODE varchar(6) comment '服务代码',
    MESSAGE_TYPE varchar(4) comment '服务类型',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    TRAN_STATUS varchar(3) comment '状态',
    TIME_STAMP varchar(17) comment '交易时间戳',
    SERVICE_CODE varchar(30) comment '服务代码',
    primary  key (SOURCE_TYPE,CHANNEL_SEQ_NO,CHANNEL_DATE)
);
alter table MB_TRAN_CONTROL_HIST comment '交易流程控制表 undefined';

drop index MB_TRAN_CONTROL_HIST_IND1 on MB_TRAN_CONTROL_HIST;
/*==============================================================*/
/* Index: MB_TRAN_CONTROL_HIST_IND1                                           */
/*==============================================================*/
create index MB_TRAN_CONTROL_HIST_IND1 on MB_TRAN_CONTROL_HIST (
    REFERENCE
);