drop table if exists MB_EVENT_LINK;
/*==============================================================*/
/* Table: MB_EVENT_LINK                                           */
/*==============================================================*/
create table MB_EVENT_LINK
(
    PROD_TYPE varchar(50) not null comment '产品类型',
    ORIG_PROD_TYPE varchar(50) not null comment '源产品类型',
    ORIG_EVENT_TYPE varchar(50) not null comment '源事件类型',
    LINK_PROD_TYPE varchar(50) not null comment '链接产品类型',
    LINK_EVENT_TYPE varchar(50) not null comment '链接事件类型',
    LINK_CONDITION varchar(1000) not null comment '链接条件 取值于MB_LINK_CONDITION.CONDITION_ID',
    STATUS varchar(3) not null comment '状态 A：有效 F：无效',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PROD_TYPE,ORIG_PROD_TYPE,ORIG_EVENT_TYPE,LINK_PROD_TYPE,LINK_EVENT_TYPE)
);
alter table MB_EVENT_LINK comment '事件链接定义表 undefined';