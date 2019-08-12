drop table if exists GL_PROD_ACCT_BAL;
/*==============================================================*/
/* Table: GL_PROD_ACCT_BAL                                           */
/*==============================================================*/
create table GL_PROD_ACCT_BAL
(
    BRANCH varchar(20) not null comment '分行',
    CCY varchar(3) not null comment '货币',
    PROD_TYPE varchar(50) not null comment '产品',
    GL_CODE varchar(20) not null comment '科目',
    PROFIT_CENTRE varchar(12) not null comment '利润中心',
    BALANCE Decimal(17,2) not null comment '当日余额',
    LAST_CHANGE_DATE varchar(8) not null comment '最后修改日期',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (BRANCH,CCY,PROD_TYPE,GL_CODE,PROFIT_CENTRE)
);
alter table GL_PROD_ACCT_BAL comment '总账产品分户余额表 undefined';