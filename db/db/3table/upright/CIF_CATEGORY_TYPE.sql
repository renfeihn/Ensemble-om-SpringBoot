drop table if exists CIF_CATEGORY_TYPE;
/*==============================================================*/
/* Table: CIF_CATEGORY_TYPE                                           */
/*==============================================================*/
create table CIF_CATEGORY_TYPE
(
    CATEGORY_TYPE varchar(3) not null comment '客户细分类型',
    CATEGORY_DESC varchar(30) not null comment '类型描述',
    CLIENT_TYPE varchar(3) comment '客户类型',
    BANK varchar(1) not null comment '是否为银行 Y-是 N-不是',
    CENTRAL_BANK varchar(1) not null comment '是否为中央银行 Y-是 N-不是',
    FIN_INSTITUTION varchar(1) not null comment '是否为金融机构 Y-是 N-不是',
    REP_OFFICE varchar(1) not null comment '是否为代表处 Y-是 N-不是',
    BROKER varchar(1) not null comment '是否为经纪人 Y-是 N-不是',
    CORPORATION varchar(1) not null comment '是否为企业 Y-是 N-不是',
    INDIVIDUAL varchar(1) not null comment '是否为个体 Y-是 N-不是',
    GOVERNMENT varchar(1) not null comment '是否为政府部门 Y-是 N-不是',
    INTL_INSTITUTION varchar(1) not null comment '是否为国际组织 Y-是 N-不是',
    JOINT varchar(1) not null comment '是否为联合体 Y-是 N-不是',
    OTHER varchar(1) not null comment '是否是其他 Y-是 N-不是',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CATEGORY_TYPE)
);
alter table CIF_CATEGORY_TYPE comment '客户类型-细分类表 undefined';