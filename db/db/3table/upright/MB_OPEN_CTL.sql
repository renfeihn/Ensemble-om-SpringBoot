drop table if exists MB_OPEN_CTL;
/*==============================================================*/
/* Table: MB_OPEN_CTL                                           */
/*==============================================================*/
create table MB_OPEN_CTL
(
    CLIENT_TYPE varchar(3) not null comment '客户类型',
    CTRL_ATTR varchar(5) not null comment '控制要素',
    CTRL_VALUE varchar(50) not null comment '要素取值',
    QUANTITY varchar(10) not null comment '数量',
    DEAL_FLOW varchar(2) not null comment '处理方式',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    COMPANY varchar(20) comment '法人代码',
    primary  key (CLIENT_TYPE,CTRL_ATTR)
);
alter table MB_OPEN_CTL comment '开户数量控制表 undefined';