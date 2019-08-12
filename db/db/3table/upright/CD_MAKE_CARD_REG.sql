drop table if exists CD_MAKE_CARD_REG;
/*==============================================================*/
/* Table: CD_MAKE_CARD_REG                                           */
/*==============================================================*/
create table CD_MAKE_CARD_REG
(
    APPLY_NO varchar(15) not null comment '申请编号',
    APPLY_DATE varchar(8) not null comment '申请日期',
    BRANCH varchar(20) not null comment '机构代码',
    PROD_TYPE varchar(50) not null comment '产品类型',
    APPLY_TYPE varchar(1) comment '申请类型',
    AREA_CODE varchar(6) comment '地区代码',
    CARD_NUM varchar(10) comment '制卡数量',
    STATUS varchar(3) comment '状态',
    OFFICER varchar(30) comment '操作柜员',
    BATCH_JOB_NO varchar(50) comment '制卡文件批次号',
    REMARK varchar(200) comment '备注，用来描述制卡原因，比如正常制卡，补换卡等',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    LUCKY_CARD varchar(4) comment '是否吉祥卡',
    MAKE_CARD_TYPE varchar(4) comment '制卡类型',
    DOC_TYPE varchar(10) comment '凭证类型',
    primary  key (APPLY_NO)
);
alter table CD_MAKE_CARD_REG comment '制卡申请登记簿 undefined';