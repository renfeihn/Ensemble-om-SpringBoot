drop table if exists IRL_PRE_CLIENT;
/*==============================================================*/
/* Table: IRL_PRE_CLIENT                                           */
/*==============================================================*/
create table IRL_PRE_CLIENT
(
    INPUT_DATE varchar(8) not null comment '计提日期',
    ACCR_STATUS varchar(3) not null comment '状态',
    CLIENT_NO varchar(20) not null comment '客户号',
    CLIENT_GRP varchar(20) comment '客户组',
    GLOBAL_ID varchar(25) comment '证件号码',
    GLOBAL_ID_TYPE varchar(3) comment '证件类型',
    CLIENT_SHORT varchar(30) comment '客户简称',
    CLIENT_NAME varchar(200) comment '客户名称(英)',
    LOCATION varchar(50) comment '地址',
    ACCT_EXEC varchar(30) comment '客户经理',
    CLIENT_TYPE varchar(3) comment '客户分类',
    COUNTRY_LOC varchar(3) comment '国籍',
    STATE_LOC varchar(10) comment '省、州',
    COUNTRY_CITIZEN varchar(3) comment '居住国家',
    COUNTRY_RISK varchar(3) comment '风险控制国家',
    CATEGORY_TYPE varchar(3) comment '分类类别 ',
    NON_RESIDENT_CTRL varchar(1) default 'N'   comment '运营是否国外控制 Y-是 N-否',
    CTRL_BRANCH varchar(20) comment '控制分行 ',
    CLIENT_STATUS varchar(3) comment '状态 ',
    TRAN_STATUS varchar(3) comment '客户交易状态 A-活动 B-冻结 C-关闭',
    LEGAL_REP varchar(50) comment '法人代表 ',
    INLAND_OFFSHORE varchar(1) comment '境内境外 I-境内 O-境外',
    TEMP_CLIENT varchar(1) comment '是否为临时客户 Y-临时客户 N-正式客户',
    CH_CLIENT_NAME varchar(200) comment '客户名称(中)',
    CR_RATING varchar(4) comment '客户等级',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INPUT_DATE,CLIENT_NO)
);
alter table IRL_PRE_CLIENT comment '客户批量更新信息表  undefined';