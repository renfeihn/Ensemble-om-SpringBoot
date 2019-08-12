drop table if exists FM_DEPARTMENT;
/*==============================================================*/
/* Table: FM_DEPARTMENT                                           */
/*==============================================================*/
create table FM_DEPARTMENT
(
    DEPARTMENT varchar(3) not null comment '部门代码',
    DEPARTMENT_DESC varchar(20) not null comment '部门名称',
    PROFIT_SEGMENT varchar(12) comment '利润中心',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (DEPARTMENT)
);
alter table FM_DEPARTMENT comment '部门信息表 undefined';