drop table if exists CIF_QUALIFICATION;
/*==============================================================*/
/* Table: CIF_QUALIFICATION                                           */
/*==============================================================*/
create table CIF_QUALIFICATION
(
    QUALIFICATION varchar(3) not null comment '职称',
    QUALIFICATION_DESC varchar(50) comment '职称描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (QUALIFICATION)
);
alter table CIF_QUALIFICATION comment '职称定义表 undefined';