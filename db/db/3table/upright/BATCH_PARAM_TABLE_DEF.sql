drop table if exists BATCH_PARAM_TABLE_DEF;
/*==============================================================*/
/* Table: BATCH_PARAM_TABLE_DEF                                           */
/*==============================================================*/
create table BATCH_PARAM_TABLE_DEF
(
    SEQ_NO varchar(50) comment '序号',
    TABLE_NAME varchar(30) comment '源表',
    TARGET_TABLE_NAME varchar(30) comment '目标表',
    DATA_SOURCE varchar(20) comment '静态参数',
    SELECT_NAMESPACE varchar(100) comment '查询命名空间',
    SELECT_SQL_ID varchar(50) comment '查询SQL_ID',
    INSERT_NAMESPACE varchar(100) comment 'INSERT命名空间',
    INSERT_SQL_ID varchar(50) comment 'INSERT_SQL_ID',
    WHERE_SQL varchar(1000) comment '查询条件',
    BATCH_SIZE Decimal(11,0) comment '批量条数',
    COMPANY varchar(20) comment '法人代码'
);
alter table BATCH_PARAM_TABLE_DEF comment '批量参数同步表 undefined';