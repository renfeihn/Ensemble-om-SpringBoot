drop table if exists IRL_INT_RATE;
/*==============================================================*/
/* Table: IRL_INT_RATE                                           */
/*==============================================================*/
create table IRL_INT_RATE
(
    IRL_SEQ_NO varchar(50) not null comment '序号',
    INT_TYPE varchar(3) not null comment '利率类型',
    CCY varchar(3) not null comment '币种',
    EFFECT_DATE varchar(8) not null comment '生效日期',
    END_DATE varchar(8) comment '失效日期 ',
    YEAR_BASIS varchar(3) not null comment '年基准天数',
    BRANCH varchar(20) not null comment '机构代码',
    LAST_CHG_RUN_DATE varchar(8) comment '最后修改日期',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (IRL_SEQ_NO)
);
alter table IRL_INT_RATE comment '利率税率信息表 undefined';