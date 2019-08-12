drop table if exists FM_COMPANY;
/*==============================================================*/
/* Table: FM_COMPANY                                           */
/*==============================================================*/
create table FM_COMPANY
(
    COMPANY varchar(20) not null comment '公司代码',
    COMPANY_NAME varchar(50) not null comment '公司名称',
    HEAD_OFFICE_CODE varchar(50) comment '总行机构代码',
    COMPANY_CLIENT_NO varchar(20) comment '法人内部客户号',
    SYSTEM_PHASE varchar(3) comment '系统所处的阶段',
    MULTI_CORP_QUERY_ALLOW varchar(1) comment '多法人是否允许跨法人查询标志 ',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (COMPANY)
);
alter table FM_COMPANY comment '法人定义表 undefined';