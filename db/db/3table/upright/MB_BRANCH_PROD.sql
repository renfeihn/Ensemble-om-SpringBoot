drop table if exists MB_BRANCH_PROD;
/*==============================================================*/
/* Table: MB_BRANCH_PROD                                           */
/*==============================================================*/
create table MB_BRANCH_PROD
(
    BRANCH varchar(20) not null comment '机构代码',
    PROD_TYPE varchar(50) not null comment '产品类型',
    PROD_DESC varchar(100) not null comment '产品名称 MB_PROD_TYPE.PROD_DESC',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (BRANCH,PROD_TYPE)
);
alter table MB_BRANCH_PROD comment '产品与机构定义表 undefined';