drop table if exists IRL_FEE_RATE;
/*==============================================================*/
/* Table: IRL_FEE_RATE                                           */
/*==============================================================*/
create table IRL_FEE_RATE
(
    IRL_SEQ_NO varchar(50) not null comment '序号',
    FEE_TYPE varchar(8) not null comment '费率类型',
    EFFECT_DATE varchar(8) not null comment '生效日期',
    BRANCH varchar(20) not null comment '机构代码',
    CCY varchar(3) not null comment '交易币种',
    HIGH_LIMIT Decimal(17,2) comment '上限',
    LOW_LIMIT Decimal(17,2) comment '下限',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (IRL_SEQ_NO)
);
alter table IRL_FEE_RATE comment '费率信息表 undefined';