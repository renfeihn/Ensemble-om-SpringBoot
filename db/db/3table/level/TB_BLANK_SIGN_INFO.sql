drop table if exists TB_BLANK_SIGN_INFO;
/*==============================================================*/
/* Table: TB_BLANK_SIGN_INFO                                           */
/*==============================================================*/
create table TB_BLANK_SIGN_INFO
(
    BORROW_ID varchar(50) comment '交易序号',
    BORROW_NO varchar(50) comment '借出批次',
    BORROW_BRANCH varchar(20) comment '外借机构（借出时的外借机构）',
    BORROW_USER_ID varchar(30) comment '外借柜员（借出的外借柜员）',
    BORROW_DATE varchar(8) comment '外借日期（借出的外借日期）',
    BORROW_NARRATIVE varchar(200) comment '外借备注',
    USER_ID varchar(30) comment '借出柜员（借出的借出柜员）',
    TRAILBOX_ID varchar(30) comment '尾箱（借出的借出柜员尾箱）',
    DOC_TYPE varchar(10) comment '凭证类型 TB_VOUCHER_DEF.DOC_TYPE',
    DOC_PREFIX varchar(10) comment '凭证前缀',
    DOC_NO varchar(50) comment '凭证号码',
    DOC_STATUS varchar(3) comment '凭证状态',
    OPER_USER_ID varchar(30) comment '操作柜员',
    OPER_BORROW_USER_ID varchar(30) comment '操作柜员',
    OPER_DATE varchar(8) comment '操作日期',
    OPER_NARRATIVE varchar(200) comment '备注',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table TB_BLANK_SIGN_INFO comment '预留空白印鉴卡登记簿 undefined';