drop table if exists TB_STAY_RUIN_CARD_INFO;
/*==============================================================*/
/* Table: TB_STAY_RUIN_CARD_INFO                                           */
/*==============================================================*/
create table TB_STAY_RUIN_CARD_INFO
(
    CARD_NO varchar(50) not null comment '待销毁卡号',
    ATM_NO varchar(50) comment 'ATM机编号',
    BRANCH varchar(20) comment '所属机构',
    USER_ID varchar(30) comment '所属柜员',
    ENREGISTER_DATE varchar(8) comment '登记日期',
    CARD_TYPE varchar(1) comment '卡类型',
    CARD_STATUS varchar(3) comment '待销毁卡状态',
    DEPOT_USER_ID varchar(30) comment '入库柜员',
    DEPOT_DATE varchar(8) comment '入库日期',
    TURN_IN_BRANCH varchar(20) comment '上缴机构',
    UNTREAD_USER_ID varchar(30) comment '退回柜员',
    UNTREAD_DATE varchar(8) comment '退回日期',
    STAY_RUIN_DATE varchar(8) comment '转待销毁日期',
    CAPTURE_BRANCH varchar(20) comment '收缴机构',
    CAPTURE_USER_ID varchar(30) comment '收缴柜员',
    CAPTURE_DATE varchar(8) comment '收缴日期',
    RUIN_BRANCH varchar(20) comment '销毁机构',
    RUIN_USER_ID varchar(30) comment '销毁柜员',
    RUIN_DATE varchar(8) comment '销毁日期',
    DRAW_MAN varchar(100) comment '领取人',
    DOCUMENT_TYPE varchar(3) comment '证件类型 CIF_DOCUMENT_TYPE.DOCUMENT_TYPE',
    DOCUMENT_NO varchar(25) comment '证件号码',
    REMARK varchar(200) comment '备注，用来描述制卡原因，比如正常制卡，补换卡等',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (CARD_NO)
);
alter table TB_STAY_RUIN_CARD_INFO comment '待销毁卡管理登记表 undefined';