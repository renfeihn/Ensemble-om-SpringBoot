drop table if exists CD_TRAN_DESC;
/*==============================================================*/
/* Table: CD_TRAN_DESC                                           */
/*==============================================================*/
create table CD_TRAN_DESC
(
    CHANNEL varchar(20) not null comment '渠道集合 ',
    DR_CR_FLAG varchar(1) not null comment '借贷方向',
    MESSAGE_CODE varchar(6) not null comment '服务代码',
    MESSAGE_TYPE varchar(4) not null comment '服务类型',
    TRAN_FLAG varchar(4) comment '交易标志  ',
    REMARK varchar(200) comment '备注',
    CARD_STATUS varchar(3) default '1' comment '卡状态 ',
    TRAN_NAME varchar(50) comment '交易名称',
    CSH_TSF_FLAG varchar(1) comment '现转标志',
    primary  key (CHANNEL,MESSAGE_CODE,MESSAGE_TYPE)
);
alter table CD_TRAN_DESC comment '卡交易信息描述 undefined';