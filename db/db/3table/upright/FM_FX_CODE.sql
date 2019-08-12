drop table if exists FM_FX_CODE;
/*==============================================================*/
/* Table: FM_FX_CODE                                           */
/*==============================================================*/
create table FM_FX_CODE
(
    FX_CODE varchar(3) not null comment '没有字段描述 货币交换类型',
    FX_CODE_DESC varchar(50) not null comment '货币交换类型描述',
    SELL_BUY_IND varchar(1) not null comment '买卖固定方'
);