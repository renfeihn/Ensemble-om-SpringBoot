drop table if exists RC_LIST_CATEGORY;
/*==============================================================*/
/* Table: RC_LIST_CATEGORY                                           */
/*==============================================================*/
create table RC_LIST_CATEGORY
(
    LIST_CATEGORY varchar(2) not null comment '名单种类代码  01-人行黑名单  02-人行灰名单  11-行内黑名单  12-行内白名单',
    LIST_CATEGORY_DESC varchar(100) comment '名单种类描述',
    APP_IND varchar(1) comment '内外部名单标识：I-内部 E-外部',
    PROPERTY varchar(12) comment '1-黑名单或者灰名单，禁止  2-白名单或者红名单，通行',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (LIST_CATEGORY)
);
alter table RC_LIST_CATEGORY comment '定义银行的名单种类 undefined';