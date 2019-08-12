drop table if exists IRL_AMT_SPLIT;
/*==============================================================*/
/* Table: IRL_AMT_SPLIT                                           */
/*==============================================================*/
create table IRL_AMT_SPLIT
(
    AMT_SPLIT_ID varchar(10) not null comment '金额分段ID',
    AMT_SEQ_NO varchar(5) not null comment '序号',
    SPLIT_AMT Decimal(17,2) comment '分段金额',
    AMT_SPLIT_MODE varchar(1) comment '分段模式',
    INT_TYPE varchar(3) comment '利率类型',
    PERI_SPLIT_ID varchar(10) comment '周期分段ID',
    RULE_ID varchar(500) comment '规则ID',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (AMT_SPLIT_ID,AMT_SEQ_NO)
);
alter table IRL_AMT_SPLIT comment '金额分段参数表 undefined';