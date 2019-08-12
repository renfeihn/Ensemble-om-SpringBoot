drop table if exists TB_PAR_VALUE;
/*==============================================================*/
/* Table: TB_PAR_VALUE                                           */
/*==============================================================*/
create table TB_PAR_VALUE
(
    PAR_VALUE_ID varchar(20) not null comment '券别代号',
    CCY varchar(3) not null comment '币种 取值 FM_CURRENCY.CCY',
    PAR_VALUE Decimal(17,2) comment '券别',
    PAR_TYPE varchar(1) comment '券别类型 取值： S：纸币； C：硬币；',
    PAR_DESC varchar(60) comment '券别描述',
    UPDATE_DATE varchar(8) comment '更新日期',
    IS_SPALL varchar(1) not null comment '是否残损币 取值：Y-残损币，N-完整币',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PAR_VALUE_ID)
);
alter table TB_PAR_VALUE comment '券别币种表 记录币种卷别的参数信息。 undefined';