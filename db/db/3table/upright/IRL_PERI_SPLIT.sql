drop table if exists IRL_PERI_SPLIT;
/*==============================================================*/
/* Table: IRL_PERI_SPLIT                                           */
/*==============================================================*/
create table IRL_PERI_SPLIT
(
    PERI_SPLIT_ID varchar(10) not null comment '周期分段ID',
    PERI_SEQ_NO varchar(5) not null comment '序号',
    PERIOD varchar(50) comment '分段周期',
    PERIOD_TYPE varchar(1) comment '分段周期类型',
    PERI_SPLIT_MODE varchar(1) comment '分段模式  ',
    RECAL_DAYS varchar(5) comment '重算天数',
    RECAL_METHOD varchar(1) comment '重算过去利息',
    INT_TYPE varchar(3) comment '利率类型',
    AMT_SPLIT_ID varchar(10) comment '金额分段ID',
    RULE_ID varchar(500) comment '规则ID',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PERI_SPLIT_ID,PERI_SEQ_NO)
);
alter table IRL_PERI_SPLIT comment '周期分段参数表 undefined';