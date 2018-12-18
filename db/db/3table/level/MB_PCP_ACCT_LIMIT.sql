drop table if exists MB_PCP_ACCT_LIMIT;
/*==============================================================*/
/* Table: MB_PCP_ACCT_LIMIT                                           */
/*==============================================================*/
create table MB_PCP_ACCT_LIMIT
(
    GROUP_ID varchar(50) not null comment '账户组ID',
    AGREEMENT_ID varchar(30) not null comment '协议编号',
    PERI_LIMIT varchar(3) comment '是否循环使用',
    LIMIT_TYPE varchar(2) not null comment '类型  ',
    FREQUENCE varchar(2) comment '频率',
    BASE_ACCT_NO varchar(150) not null comment '账号',
    PROD_TYPE varchar(50) not null comment '产品类型',
    CCY varchar(3) not null comment '币种',
    ACCT_SEQ_NO varchar(8) not null comment '账户序列号',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    LIMIT_AMT Decimal(17,2) not null comment '核准件总金额',
    START_DATE varchar(8) comment '生效日期',
    END_DATE varchar(8) comment '终止日期',
    STATUS varchar(3) not null comment '状态 A:有效 E:失效',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (LIMIT_TYPE,INTERNAL_KEY)
);
alter table MB_PCP_ACCT_LIMIT comment '分户限额定义表 undefined';