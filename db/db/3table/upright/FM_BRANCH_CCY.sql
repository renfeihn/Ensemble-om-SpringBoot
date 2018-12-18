drop table if exists FM_BRANCH_CCY;
/*==============================================================*/
/* Table: FM_BRANCH_CCY                                           */
/*==============================================================*/
create table FM_BRANCH_CCY
(
    BRANCH varchar(20) not null comment '机构代码',
    CCY varchar(3) not null comment '币种',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (BRANCH,CCY)
);
alter table FM_BRANCH_CCY comment '机构币种表 undefined';