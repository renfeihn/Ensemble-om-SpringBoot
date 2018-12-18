drop table if exists GL_POST_GROUP;
/*==============================================================*/
/* Table: GL_POST_GROUP                                           */
/*==============================================================*/
create table GL_POST_GROUP
(
    BRANCH varchar(20) not null comment '分行',
    CCY varchar(3) not null comment '货币',
    CLIENT_NO varchar(20) not null comment '客户号',
    GL_CODE varchar(20) not null comment '科目号',
    SEQ_NO varchar(50) not null comment '序号',
    PROFIT_CENTRE varchar(12) comment '利润中心',
    AMOUNT Decimal(17,2) not null comment '金额',
    STATUS varchar(3) comment '状态',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table GL_POST_GROUP comment '分录汇总信息表 undefined';