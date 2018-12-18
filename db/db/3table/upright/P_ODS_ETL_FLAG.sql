drop table if exists P_ODS_ETL_FLAG;
/*==============================================================*/
/* Table: P_ODS_ETL_FLAG                                           */
/*==============================================================*/
create table P_ODS_ETL_FLAG
(
    SRC_EN varchar(20) not null comment '源系统英文简称',
    CURRENT_DAY date not null comment '系统日期',
    SRC_CHN varchar(50) not null comment '源系统中文名',
    ODS_ETL_FLAG varchar(1) not null comment 'ODS是否可抽数标识 ',
    CREATE_TIME timestamp not null comment '交易时间戳',
    primary  key (SRC_EN,CURRENT_DAY)
);
alter table P_ODS_ETL_FLAG comment 'ODS可抽取数据标识表 undefined';