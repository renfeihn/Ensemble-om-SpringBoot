drop table if exists GL_RESERVE_PAY_TYPE;
/*==============================================================*/
/* Table: GL_RESERVE_PAY_TYPE                                           */
/*==============================================================*/
create table GL_RESERVE_PAY_TYPE
(
    PAY_TYPE varchar(8) not null comment '准备金类型',
    PAY_TYPE_DESC varchar(50) comment '准备金类型描述信息',
    NOS_TYPE varchar(10) comment '往账类型',
    VOS_TYPE varchar(10) comment '来账类型',
    PERIOD_PAY_IND varchar(1) comment '是否按询上缴',
    PAY_PERIOD_FREQ varchar(2) comment '缴存频率',
    PAY_DAY Decimal(2,0) comment '缴存日',
    NEXT_PAY_DATE varchar(8) comment '下一缴存日期',
    FORCE_WORK_DAY varchar(1) comment '是否工作日',
    PAY_RATE Decimal(5,2) not null comment '准备金率',
    PAY_CCY varchar(3) comment '缴存币种',
    PAY_MODE varchar(3),
    AUTO_ACCOUNTING varchar(1) comment '是否记账',
    MIDDLE_TEN_DAY varchar(2) default '20' comment '中旬',
    FREQ_DAY varchar(2) default '5' comment '缴存日,默认为5',
    FIRST_TEN_DAY varchar(2) default '10' comment '上旬',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    primary  key (PAY_TYPE)
);
alter table GL_RESERVE_PAY_TYPE comment ' 对内准备金缴存定义 undefined';