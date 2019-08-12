drop table if exists DC_REDEMPTION_INFO;
/*==============================================================*/
/* Table: DC_REDEMPTION_INFO                                           */
/*==============================================================*/
create table DC_REDEMPTION_INFO
(
    ISSUE_YEAR varchar(4) not null comment '发行年度',
    PROD_TYPE varchar(50) not null comment '产品类型 ',
    CCY varchar(3) not null comment '币种',
    STAGE_CODE varchar(50) not null comment '期次代码',
    TOHONOR_RATE Decimal(15,8) comment '赎回利率',
    USER_ID varchar(30) comment '使用柜员',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    STATUS varchar(3) comment '状态 ',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    STAGE_PROD_CLASS varchar(4) comment '期次产品分类',
    primary  key (ISSUE_YEAR,PROD_TYPE,CCY,STAGE_CODE)
);
alter table DC_REDEMPTION_INFO comment '大额存单赎回申请表 undefined';