drop table if exists CIF_CLIENT_NATURE_DEF;
/*==============================================================*/
/* Table: CIF_CLIENT_NATURE_DEF                                           */
/*==============================================================*/
create table CIF_CLIENT_NATURE_DEF
(
    CLIENT_NATURE varchar(10) not null comment '属性类型',
    CLIENT_NATURE_DESC varchar(50) not null comment '类型描述',
    LOSS_IND varchar(1) not null comment '损失标志 Y-损失 N-非损失',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CLIENT_NATURE)
);
alter table CIF_CLIENT_NATURE_DEF comment '客户属性定义 undefined';