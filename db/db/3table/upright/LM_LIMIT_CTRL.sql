drop table if exists LM_LIMIT_CTRL;
/*==============================================================*/
/* Table: LM_LIMIT_CTRL                                           */
/*==============================================================*/
create table LM_LIMIT_CTRL
(
    CTRL_ID varchar(10) not null comment '控制编号',
    CTRL_DESC varchar(50) comment '控制描述',
    CTRL_TYPE varchar(1) comment '限额类型',
    DEAL_FLOW varchar(2) comment '日间处理方式',
    DEAL_FLOW_NIGHT varchar(2) comment '日终处理方式',
    USER_ID varchar(30) comment '创建柜员ID',
    STATUS varchar(3) comment '状态',
    IS_CHECK varchar(1) comment '是否日间检查',
    REMARK varchar(200) comment '备注信息',
    COMPANY varchar(20) comment '所属法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CTRL_ID)
);
alter table LM_LIMIT_CTRL comment '限额信息表 undefined';