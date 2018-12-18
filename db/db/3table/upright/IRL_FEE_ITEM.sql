drop table if exists IRL_FEE_ITEM;
/*==============================================================*/
/* Table: IRL_FEE_ITEM                                           */
/*==============================================================*/
create table IRL_FEE_ITEM
(
    FEE_ITEM varchar(10) not null comment '费用项目代码',
    FEE_ITEM_DESC varchar(150) not null comment '费用项目描述',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (FEE_ITEM)
);
alter table IRL_FEE_ITEM comment '费用项目表 undefined';