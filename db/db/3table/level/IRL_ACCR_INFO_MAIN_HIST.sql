drop table if exists IRL_ACCR_INFO_MAIN_HIST;
/*==============================================================*/
/* Table: IRL_ACCR_INFO_MAIN_HIST                                           */
/*==============================================================*/
create table IRL_ACCR_INFO_MAIN_HIST
(
    IRL_SEQ_NO varchar(50) not null comment '序号  ',
    SYSTEM_ID varchar(20) not null comment '系统ID',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    INT_CLASS varchar(20) not null comment '利息分类 IRL_INT_ROLL.INT_CLASS',
    INT_ACCRUED Decimal(17,2) comment '累计计提利息（结息周期内累计计提金额）',
    INT_ACCRUED_CTD Decimal(17,2) comment '计提日计提利息',
    ACCR_DATE varchar(8) comment '计提日期',
    primary  key (IRL_SEQ_NO)
);
alter table IRL_ACCR_INFO_MAIN_HIST comment '内部帐非自动结息计提信息表 undefined';