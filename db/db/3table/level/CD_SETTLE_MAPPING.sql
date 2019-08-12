drop table if exists CD_SETTLE_MAPPING;
/*==============================================================*/
/* Table: CD_SETTLE_MAPPING                                           */
/*==============================================================*/
create table CD_SETTLE_MAPPING
(
    MAPPING_NO varchar(10) not null comment '银联记账流水文件记账序号',
    CR_DR_MAINT_IND varchar(1) not null comment '借贷标志',
    TRAN_TYPE varchar(10) not null comment '交易类型'
);
alter table CD_SETTLE_MAPPING comment '银联清算映射信息表 undefined';