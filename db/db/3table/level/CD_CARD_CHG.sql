drop table if exists CD_CARD_CHG;
/*==============================================================*/
/* Table: CD_CARD_CHG                                           */
/*==============================================================*/
create table CD_CARD_CHG
(
    OLD_CARD_NO varchar(50) not null comment '原卡号',
    NEW_CARD_NO varchar(50) not null comment '新卡号',
    PROD_TYPE varchar(50) comment '新卡产品类型',
    BRANCH varchar(20) not null comment '申请机构',
    CLIENT_NO varchar(20) comment '客户号：持卡人客户号',
    CHANGE_STATUS varchar(3) not null comment '换卡交易状态',
    APPLY_DATE varchar(8) comment '新卡申请日期',
    APPLY_USER_ID varchar(30) comment '新卡申请柜员',
    CHANGE_DATE varchar(8) comment '更换日期，指实际发卡日期',
    CHANGE_USER_ID varchar(30) comment '更换柜员，指实际发卡柜员',
    SAME_NO_FLAG varchar(1) comment '同号换卡标识',
    CHANGE_REASON_CODE varchar(200) comment '更换原因 ',
    CONTACT_TEL varchar(20) comment '联系电话',
    LOST_NO varchar(16) comment '挂失编号，如果是挂失补发新卡，则记录此字段',
    PROMISSORY_DATE varchar(8) comment '约定的领卡日期',
    REMARK varchar(200) comment '备注',
    GAIN_TYPE varchar(1) comment '卡片领取方式',
    URGENT_FLAG varchar(1) comment '加急标识',
    POSTAL_CODE varchar(6) comment '邮编',
    ADDRESS varchar(140) comment '邮寄地址',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (OLD_CARD_NO)
);
alter table CD_CARD_CHG comment '卡片更换登记簿 undefined';