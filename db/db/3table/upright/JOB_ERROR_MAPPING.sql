drop table if exists JOB_ERROR_MAPPING;
/*==============================================================*/
/* Table: JOB_ERROR_MAPPING                                           */
/*==============================================================*/
create table JOB_ERROR_MAPPING
(
    JOB_ID varchar(30) not null comment '批量任务编号',
    IS_THROW varchar(1) not null comment '该job是否抛错',
    ERROR_CODE varchar(200) comment '不需抛错的错误码，用|分隔 ',
    primary  key (JOB_ID)
);
alter table JOB_ERROR_MAPPING comment '批处理抛错映射表 undefined';