drop table if exists MB_GUARANTY_STYLE;
/*==============================================================*/
/* Table: MB_GUARANTY_STYLE                                           */
/*==============================================================*/
create table MB_GUARANTY_STYLE
(
    GUARANTY_STYLE varchar(6) not null comment '担保方式',
    GUARANTY_STYLE_DESC varchar(30) not null comment '描述',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (GUARANTY_STYLE)
);
alter table MB_GUARANTY_STYLE comment '担保方式 undefined';