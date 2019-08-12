drop table if exists FM_RESTRAINT_TYPE;
/*==============================================================*/
/* Table: FM_RESTRAINT_TYPE                                           */
/*==============================================================*/
create table FM_RESTRAINT_TYPE
(
    RESTRAINT_TYPE varchar(3) not null comment '限制类型 ',
    RESTRAINT_CLASS varchar(2) comment '限制类型类别 ',
    RESTRAINT_DESC varchar(100) comment '限制类型描述',
    MANUAL_RES_FLAG varchar(1) comment '手工冻结标志',
    MANUAL_UNRES_FLAG varchar(1) comment '手工解冻标志',
    EOD_IMPOUND_FALG varchar(1) comment 'EOD扣款标志',
    STOP_WTD_FALG varchar(1) comment '全额止付标志',
    SYSTEM_USE_FLAG varchar(1) comment '是否系统专用标志',
    AH_BU varchar(1) comment '是否有权机关冻结 ',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    RES_PRIORITY varchar(5) comment '冻结级别(限制级别)',
    primary  key (RESTRAINT_TYPE)
);
alter table FM_RESTRAINT_TYPE comment '账户限制类型定义表 undefined';