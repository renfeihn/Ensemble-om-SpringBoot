drop table if exists CIF_CLIENT_MERGE;
/*==============================================================*/
/* Table: CIF_CLIENT_MERGE                                           */
/*==============================================================*/
create table CIF_CLIENT_MERGE
(
    CLIENT_A varchar(20) not null comment '被合并客户',
    CLIENT_B varchar(20) not null comment '目标客户号，即A和B合并后保留B客户',
    MERGE_DATE varchar(8) comment '合并日期',
    USER_ID varchar(30) comment '操作柜员',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    MERGE_NO varchar(20) not null comment '合并编号',
    MERGE_FLAG varchar(1) comment '合并状态',
    CH_CLIENT_NAME_A varchar(30) comment ' 客户中文名1',
    CH_CLIENT_NAME_B varchar(30) comment '客户中文名2',
    BL_DESC varchar(200) comment '描述',
    primary  key (MERGE_NO)
);
alter table CIF_CLIENT_MERGE comment '客户合并信息 undefined';