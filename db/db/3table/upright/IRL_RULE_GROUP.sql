drop table if exists IRL_RULE_GROUP;
/*==============================================================*/
/* Table: IRL_RULE_GROUP                                           */
/*==============================================================*/
create table IRL_RULE_GROUP
(
    GROUP_TYPE varchar(20) not null comment '规则分组类型',
    GROUP_TYPE_DESC varchar(50) not null comment '规则分组描述',
    GROUP_CLASS varchar(1) not null comment '分组归属分类  ',
    GROUP_MATCH_TYPE varchar(2) not null comment '组内规则关系    ',
    WEIGHT varchar(5) comment '权重',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (GROUP_TYPE)
);
alter table IRL_RULE_GROUP comment '规则分组定义表 undefined';