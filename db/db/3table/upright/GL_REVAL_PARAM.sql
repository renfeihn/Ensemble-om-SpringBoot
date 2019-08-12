drop table if exists GL_REVAL_PARAM;
/*==============================================================*/
/* Table: GL_REVAL_PARAM                                           */
/*==============================================================*/
create table GL_REVAL_PARAM
(
    REVAL_FREQ varchar(20) not null comment '重估频率',
    RATE_TYPE varchar(3) not null comment '利率类型 IRL_INT_TYPE.INT_TAX_TYPE',
    LAST_REVAL_DATE varchar(8) comment '上次重估日期',
    NEXT_REVAL_DATE varchar(8) comment '下次重估日期',
    COMPANY varchar(20) comment '法人代码'
);
alter table GL_REVAL_PARAM comment '汇兑损益重估参数定义表 undefined';