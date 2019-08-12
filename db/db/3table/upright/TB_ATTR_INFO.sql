drop table if exists TB_ATTR_INFO;
/*==============================================================*/
/* Table: TB_ATTR_INFO                                           */
/*==============================================================*/
create table TB_ATTR_INFO
(
    ATTR_ID varchar(30) not null comment '附属物品编号',
    TRAILBOX_ID varchar(30) not null comment '尾箱编号',
    NAME varchar(200) not null comment '物品名称',
    VAIIA_COUNT varchar(10) not null comment '数量',
    START_NO varchar(50) comment '起始号码',
    END_NO varchar(50) comment '终止号码',
    USER_ID varchar(30) comment '登记柜员',
    BRANCH varchar(20) comment '机构代码 ',
    ASSIGN_DATE varchar(8) comment '登记日期',
    COMPANY varchar(20) comment '法人代码',
    NARRATIVE varchar(300) comment '备注',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ATTR_ID)
);
alter table TB_ATTR_INFO comment '尾箱附属物品登记表 undefined';