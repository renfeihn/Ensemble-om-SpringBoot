drop table if exists MB_FAKE_MONEY_HIST;
/*==============================================================*/
/* Table: MB_FAKE_MONEY_HIST                                           */
/*==============================================================*/
create table MB_FAKE_MONEY_HIST
(
    HIST_SEQ_NO varchar(50) not null comment '流水序号',
    SEQ_NO varchar(50) comment '假币序号',
    HOLDER_NAME varchar(200) comment '持有人名称',
    HOLDER_GLOBAL_TYPE varchar(3) comment '持有人证件类型',
    HOLDER_GLOBAL_ID varchar(75) comment '持有人证件号码',
    STATUS varchar(3) comment '假币状态:1-收缴2-库管收缴3-在途4-上缴5-完成6-上报0-删除7-预收缴8-已退回',
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
    TURN_IN_STATUS varchar(1) comment '上缴状态',
    CONFIRM_BRANCH varchar(20) comment '上缴确认机构',
    CONFIRM_USER_ID varchar(30) comment '上缴确认柜员',
    CONFIRM_DATE varchar(8) comment '上缴确认日期',
    PAID_BRANCH varchar(20) comment '上缴人行机构 ',
    PAID_DATE varchar(8) comment '上缴人行日期 ',
    PAID_USER_ID varchar(30) comment '上缴人行柜员 ',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_DATE varchar(8) comment '交易日期',
    REFERENCE varchar(50) comment '交易参考号',
    GL_POSTED varchar(1) comment '过账标记',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    OPTION_TYPE varchar(2) comment '操作类型  1、收缴录入  2、收缴修改  3、收缴删除  4、上缴库管  5、上缴上级机构  6、上缴确认  7、上缴拒绝  8、解缴人行  9、生成文件 10、预收缴录入 11、预收缴修改 12、预收缴删除',
    primary  key (HIST_SEQ_NO)
);
alter table MB_FAKE_MONEY_HIST comment '假币管理流水 undefined';