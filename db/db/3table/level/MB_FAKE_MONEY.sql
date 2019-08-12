drop table if exists MB_FAKE_MONEY;
/*==============================================================*/
/* Table: MB_FAKE_MONEY                                           */
/*==============================================================*/
create table MB_FAKE_MONEY
(
    SEQ_NO varchar(50) not null comment '假币序号',
    HOLDER_NAME varchar(200) comment '持有人名称',
    HOLDER_GLOBAL_TYPE varchar(3) comment '持有人证件类型',
    HOLDER_GLOBAL_ID varchar(75) comment '持有人证件号码',
    STATUS varchar(3) comment '假币状态:1:收缴,2:库管收缴,3:在途,4:上缴库管,5,完成,6:上报,0-删除7:预收缴',
    CCY varchar(3) comment '币种',
    PRINT_TIMES varchar(10) comment '套数',
    CCY_TYPE varchar(10) comment '卷别',
    PRINT_TYPE varchar(10) comment '版别',
    MAKE_TYPE varchar(10) comment '制作方式',
    FAKE_CCY_NO varchar(10) comment '冠字号码',
    FAKE_NUM varchar(10) comment '张数 ',
    FAKE_AMT Decimal(17,2) comment '金额',
    REMARK varchar(200) comment '备注',
    ATTACH_BRANCH varchar(20) comment '上级机构 ',
    CLLECTION_BRANCH varchar(20) comment '收缴机构',
    CLLECTION_USER_ID varchar(30) comment '收缴柜员',
    CLLECTION_DATE varchar(8) comment '收缴日期 ',
    CLLECTION_NO varchar(20) comment '收缴编号',
    TURN_IN_BRANCH varchar(20) comment '上缴机构',
    TURN_IN_USER_ID varchar(30) comment '上缴柜员',
    TURN_IN_DATE varchar(8) comment '上缴日期',
    TURN_IN_NO varchar(10) comment '上缴编号',
    TURN_IN_STATUS varchar(1) comment '上缴状态1-在途2-确认3-拒绝',
    CONFIRM_USER_ID varchar(30) comment '上缴确认柜员',
    CONFIRM_DATE varchar(8) comment '上缴确认日期',
    PAID_BRANCH varchar(20) comment '上缴人行机构 ',
    PAID_DATE varchar(8) comment '上缴人行日期 ',
    PAID_USER_ID varchar(30) comment '上缴人行柜员 ',
    OWNER varchar(50) comment '客户名称',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (SEQ_NO)
);
alter table MB_FAKE_MONEY comment '假币管理 undefined';