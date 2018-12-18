drop table if exists IRL_FEE_MAPPING;
/*==============================================================*/
/* Table: IRL_FEE_MAPPING                                           */
/*==============================================================*/
create table IRL_FEE_MAPPING
(
    IRL_SEQ_NO varchar(50) not null comment '费用代码',
    FEE_TYPE varchar(8) not null comment '费率类型',
    BRANCH_RULE varchar(200) not null comment '机构代码',
    EVENT_TYPE_RULE varchar(200) not null comment '事件类型',
    TRAN_TYPE_RULE varchar(200) not null comment '交易类型',
    PROD_GROUP_RULE varchar(200) not null comment '产品组',
    PROD_TYPE_RULE varchar(200) not null comment '产品类型',
    URGENT_FLAG_RULE varchar(20) not null comment '加急标志 ',
    IS_LOCAL_RULE varchar(20) not null comment '跨行标志',
    AREA_RULE varchar(50) not null comment '地区',
    CCY_RULE varchar(200) not null comment '币种',
    CLIENT_TYPE_RULE varchar(200) not null comment '客户类型',
    CATEGORY_TYPE_RULE varchar(200) not null comment '客户类型细类',
    SOURCE_TYPE_RULE varchar(150) not null comment '渠道类型',
    DOC_TYPE_RULE varchar(150) not null comment '凭证类型',
    OLD_STATUS_RULE varchar(150) not null comment '凭证/票据变更前状态',
    NEW_STATUS_RULE varchar(150) not null comment '凭证/票据变更后状态',
    IS_RULE varchar(1) not null comment '是否使用规则',
    COMPANY_RULE varchar(250) comment '所属法人',
    SERVICE_ID_RULE varchar(200) comment '服务代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (IRL_SEQ_NO)
);
alter table IRL_FEE_MAPPING comment '费用启用规则表 undefined';