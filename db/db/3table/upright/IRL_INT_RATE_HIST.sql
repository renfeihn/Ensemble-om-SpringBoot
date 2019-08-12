drop table if exists IRL_INT_RATE_HIST;
/*==============================================================*/
/* Table: IRL_INT_RATE_HIST                                           */
/*==============================================================*/
create table IRL_INT_RATE_HIST
(
    IRL_SEQ_NO varchar(50) not null comment '序号',
    INT_TYPE varchar(3) not null comment '利率类型 ',
    CCY varchar(3) not null comment '币种',
    EFFECT_DATE varchar(8) not null comment '生效日期 ',
    END_DATE varchar(8) not null comment '失效日期 ',
    YEAR_BASIS varchar(3) not null comment '年基准',
    LAST_CHG_RUN_DATE varchar(8) comment '最后修改日期',
    STATUS varchar(3) comment '状态',
    COMPANY varchar(20) comment '法人代码',
    BRANCH varchar(20) not null comment '机构代码',
    primary  key (IRL_SEQ_NO)
);
alter table IRL_INT_RATE_HIST comment '利率信息历史表 undefined';