drop table if exists GL_RESERVE_PAY_CCY;
/*==============================================================*/
/* Table: GL_RESERVE_PAY_CCY                                           */
/*==============================================================*/
create table GL_RESERVE_PAY_CCY
(
    PAY_TYPE varchar(8) not null comment '准备金缴存类型',
    BRANCH varchar(20) not null comment '机构',
    PAY_CCY varchar(3) not null comment '缴存币种',
    COLL_IND varchar(1) not null comment '是否汇总上缴',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    primary  key (PAY_TYPE,BRANCH,PAY_CCY)
);
alter table GL_RESERVE_PAY_CCY comment '缴存范围定义 undefined';