drop table if exists TB_BRANCH_LINE;
/*==============================================================*/
/* Table: TB_BRANCH_LINE                                           */
/*==============================================================*/
create table TB_BRANCH_LINE
(
    LINE_BRANCH_ID varchar(50) not null comment '线路编码序号',
    LINE_CODE varchar(6) not null comment '线路编码',
    BRANCH varchar(20) not null comment '机构代码',
    BRANCH_NAME varchar(100) comment '机构名称',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (LINE_BRANCH_ID)
);
alter table TB_BRANCH_LINE comment '机构钞车线路表 undefined';