drop table if exists IRL_ELEMENT_GROUP;
/*==============================================================*/
/* Table: IRL_ELEMENT_GROUP                                           */
/*==============================================================*/
create table IRL_ELEMENT_GROUP
(
    GROUP_TYPE varchar(20) not null comment '分组类型',
    ELEMENT_ID varchar(20) not null comment '因子名称',
    ELEMENT_DESC varchar(50) not null comment '因子描述',
    COMPANY varchar(20) comment '所属法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (GROUP_TYPE,ELEMENT_ID)
);
alter table IRL_ELEMENT_GROUP comment '因子分组定义表 undefined';