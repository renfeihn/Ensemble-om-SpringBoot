drop table if exists LM_TRAN_LIMIT_DEF;
/*==============================================================*/
/* Table: LM_TRAN_LIMIT_DEF                                           */
/*==============================================================*/
create table LM_TRAN_LIMIT_DEF
(
    LIMIT_REF varchar(200) not null comment '限额编码',
    LIMIT_DESC varchar(180) not null comment '说明',
    CCY varchar(3) not null comment '币种',
    MIN_AMT Decimal(17,2) not null comment '最低转存金额',
    MAX_AMT Decimal(17,2) not null comment '最大额',
    EFFECT_DATE varchar(8) not null comment '生效日期',
    LIMIT_TYPE varchar(2) not null comment '类型  ',
    LIMIT_LEVEL varchar(20) comment '其他级别  ',
    STATUS varchar(3) not null comment '状态 A:有效 E:失效',
    DEAL_FLOW varchar(2) not null comment '处理方式',
    ENABLE_DEFINE varchar(10) default 'N' comment '是否允许自定义  ',
    START_DATE varchar(8) comment '生效日期',
    END_DATE varchar(8) comment '终止日期',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (LIMIT_REF)
);
alter table LM_TRAN_LIMIT_DEF comment '限额定义表 undefined';