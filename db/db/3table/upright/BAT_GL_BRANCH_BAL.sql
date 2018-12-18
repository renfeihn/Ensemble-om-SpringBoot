drop table if exists BAT_GL_BRANCH_BAL;
/*==============================================================*/
/* Table: BAT_GL_BRANCH_BAL                                           */
/*==============================================================*/
create table BAT_GL_BRANCH_BAL
(
    BRANCH varchar(20) not null comment '机构代码',
    CCY varchar(3) not null comment '币种',
    GL_CODE varchar(20) not null comment '科目代码',
    BALANCE Decimal(17,2) not null comment '余额',
    DR_AMOUNT Decimal(17,2) not null comment '借方发生额',
    CR_AMOUNT Decimal(17,2) not null comment '贷方发生额',
    TRAN_DATE varchar(8) not null comment '交易日期',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码'
);
alter table BAT_GL_BRANCH_BAL comment '机构汇总余额表 undefined';