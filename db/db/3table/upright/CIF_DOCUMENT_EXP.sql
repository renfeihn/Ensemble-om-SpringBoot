drop table if exists CIF_DOCUMENT_EXP;
/*==============================================================*/
/* Table: CIF_DOCUMENT_EXP                                           */
/*==============================================================*/
create table CIF_DOCUMENT_EXP
(
    DOCUMENT_TYPE varchar(3) not null comment '证件类型',
    STOP_FLAG varchar(1) not null comment '是否止付Y:是 N:否',
    RESTRAINT_TYPE varchar(3) comment '限制类型',
    DAYS varchar(5) comment '天数',
    SOURCE_TYPE_RULE varchar(150) not null comment '渠道类型规则',
    DEAL_FLOW varchar(2) not null comment '处理方式             A：授权处理              B：拒绝处理              D：提醒处理',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    COMPANY varchar(20) comment '法人代码',
    primary  key (DOCUMENT_TYPE,SOURCE_TYPE_RULE)
);
alter table CIF_DOCUMENT_EXP comment '证件到期管理表 undefined';