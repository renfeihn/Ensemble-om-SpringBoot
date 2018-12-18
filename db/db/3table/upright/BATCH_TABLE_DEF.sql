drop table if exists BATCH_TABLE_DEF;
/*==============================================================*/
/* Table: BATCH_TABLE_DEF                                           */
/*==============================================================*/
create table BATCH_TABLE_DEF
(
    BATCH_TABLE_ID varchar(20) comment '数据抽取ID',
    TABLE_NAME varchar(30) comment '源表',
    TARGET_TABLE_NAME varchar(30) comment '目标表',
    SELECT_NAMESPACE varchar(100) comment '查询命名空间',
    SELECT_SQL_ID varchar(50) comment '查询SQL_ID',
    INSERT_NAMESPACE varchar(100) comment 'INSERT命名空间',
    INSERT_SQL_ID varchar(50) comment 'INSERT_SQL_ID',
    WHERE_SQL varchar(1000) comment '查询条件',
    BATCH_SIZE Decimal(11,0) comment '批量条数',
    COMPANY varchar(20) comment '法人代码'
);
alter table BATCH_TABLE_DEF comment 'EOD跑批抽数定义表 undefined';