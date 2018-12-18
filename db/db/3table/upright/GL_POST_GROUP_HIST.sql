drop table if exists GL_POST_GROUP_HIST;
/*==============================================================*/
/* Table: GL_POST_GROUP_HIST                                           */
/*==============================================================*/
create table GL_POST_GROUP_HIST
(
    BRANCH varchar(20) not null comment '机构代码',
    CCY varchar(3) not null comment '币种',
    CLIENT_NO varchar(20) not null comment '客户号',
    GL_CODE varchar(20) not null comment '科目代码 AC_SUBJECT.SUBJECT_CODE',
    SEQ_NO varchar(50) not null comment '序号',
    PROFIT_CENTRE varchar(12) comment '利润中心 FM_PROFIT_CENTRE.PROFIT_CENTRE',
    AMOUNT Decimal(17,2) not null comment '交易金额',
    STATUS varchar(3) comment '状态 A:有效 E:失效',
    COMPANY varchar(20) comment '法人代码',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    BATCH_NO varchar(50) comment '批处理号'
);
alter table GL_POST_GROUP_HIST comment '分录分组历史表 undefined';