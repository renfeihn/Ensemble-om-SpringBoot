drop table if exists IRL_FEE_MATRIX;
/*==============================================================*/
/* Table: IRL_FEE_MATRIX                                           */
/*==============================================================*/
create table IRL_FEE_MATRIX
(
    MATRIX_NO varchar(50) not null comment '矩阵序号',
    IRL_SEQ_NO varchar(50) not null comment '费率编号',
    BOUNDARY Decimal(17,2) comment '缺口值',
    FEE_AMT Decimal(17,2) comment '费用金额',
    FEE_RATE Decimal(15,8) comment '费率（%）',
    INT_TYPE varchar(3) comment '利率类型',
    FLOAT_RATE Decimal(15,8) comment '浮动值',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (MATRIX_NO)
);
alter table IRL_FEE_MATRIX comment '费率矩阵信息表 undefined';