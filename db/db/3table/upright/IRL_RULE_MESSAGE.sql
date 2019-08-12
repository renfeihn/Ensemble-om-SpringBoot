drop table if exists IRL_RULE_MESSAGE;
/*==============================================================*/
/* Table: IRL_RULE_MESSAGE                                           */
/*==============================================================*/
create table IRL_RULE_MESSAGE
(
    IRL_SEQ_NO varchar(50) not null comment '序号  ',
    RULE_CLASS_1 varchar(20) not null comment '规则分类1 ',
    RULE_CLASS_2 varchar(20) comment '规则分类2',
    RULE_CLASS_3 varchar(20) comment '规则分类3',
    START_DATE_TIME varchar(17) not null comment '生效日期',
    END_DATE_TIME varchar(17) not null comment '失效日期',
    RULE_DESC varchar(256) not null comment '规则描述',
    RULE_EXPRESS varchar(2000) not null comment '规则表达式',
    INT_FLOAT_TYPE varchar(2) comment '浮动类型  ',
    FLOAT_VALUE varchar(10) comment '浮动值',
    CHECK_TYPE varchar(2) comment '约束类型',
    USER_ID varchar(30) not null comment '交易柜员',
    CREATE_DATE varchar(8) not null comment '创建日期',
    RULE_STATUS varchar(1) not null comment '规则状态  ',
    IMPORT_MESSAGE varchar(256) comment '规则引用信息',
    SPECIAL_RULE_PROCESS varchar(512) comment '特殊规则浮动信息',
    GROUP_CCY varchar(10) comment '币种组，使用目标币种+源币种',
    COMPANY varchar(20) comment '法人代码',
    RULE_FLAG varchar(1) not null default 'S'    comment '规则标志  ',
    GROUP_TYPE varchar(20) comment '规则分组类型',
    RULE_WEIGHT Decimal(5,2) comment '规则权重',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (IRL_SEQ_NO)
);
alter table IRL_RULE_MESSAGE comment '规则信息表 undefined';