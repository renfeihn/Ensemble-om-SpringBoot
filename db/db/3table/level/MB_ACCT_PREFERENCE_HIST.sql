drop table if exists MB_ACCT_PREFERENCE_HIST;
/*==============================================================*/
/* Table: MB_ACCT_PREFERENCE_HIST                                           */
/*==============================================================*/
create table MB_ACCT_PREFERENCE_HIST
(
    HIST_SEQ_NO varchar(50) comment '流水序号',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    INT_CLASS varchar(20) comment '利息分类 IRL_INT_ROLL.INT_CLASS',
    START_DATE varchar(8) comment '生效日期',
    END_DATE varchar(8) comment '终止日期',
    AGG_CTD_BALS Decimal(38,2) comment '存款日均余额',
    AGREE_PERCENT_RATE Decimal(5,2) comment '协议浮动百分比',
    AGREE_SPREAD_RATE Decimal(15,8) comment '协议浮动百分点',
    AGREE_FIXED_RATE Decimal(15,8) comment '协议固定利率',
    AGREE_CHANGE_TYPE varchar(1) comment '协议变动方式',
    AGREE_REDUCE_AMT Decimal(38,2) comment '协议优惠金额',
    primary  key (HIST_SEQ_NO)
);
alter table MB_ACCT_PREFERENCE_HIST comment '协议利率优惠历史表 undefined';