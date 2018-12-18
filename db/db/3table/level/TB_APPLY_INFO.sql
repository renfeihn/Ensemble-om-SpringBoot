drop table if exists TB_APPLY_INFO;
/*==============================================================*/
/* Table: TB_APPLY_INFO                                           */
/*==============================================================*/
create table TB_APPLY_INFO
(
    APPLY_ID varchar(30) not null comment '预约编号',
    APPLY_DATE varchar(8) comment '申请日期',
    APPLY_TYPE varchar(1) comment '预约类型',
    APPLY_CCY varchar(3) comment '预约币种',
    APPLY_BRANCH varchar(20) comment '预约机构编号',
    REC_DATE varchar(8) comment '预约日期',
    REC_TIME varchar(10) comment '申请时间',
    TO_BRANCH varchar(20) comment '对方机构编号',
    ACCT_NO varchar(150) comment '账号/卡号',
    ACCT_CCY varchar(3) comment '账户币种',
    PROD_TYPE varchar(50) comment '产品类型',
    ACCT_NAME varchar(200) comment '账户名称',
    APPLY_TELLER_ID varchar(30) comment '预约柜员编号',
    APPROVE_TELLER_ID varchar(30) comment '确认柜员编号',
    APPLY_STATUS varchar(1) comment '预约状态 A:申请,C:完成,W:在途,S:确认,N:录入(上门收款记账已录入),X:撤销,E:复核',
    APPLY_AMT Decimal(17,2) comment '预约总金额',
    CASH_MOVE_ID varchar(30) comment '现金调拨追踪号',
    LINE_CODE varchar(6) comment '线路编码',
    REFUSE_REASON varchar(50) comment '拒绝原因',
    COMPANY varchar(20) comment '法人代码',
    ACCT_SEQ_NO varchar(8) comment '序号',
    REASON_CODE varchar(6) comment '账户用途',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    APPROVE_BRANCH varchar(20) comment '复核柜员所属机构',
    APPR_USER_ID varchar(30) comment '复核柜员',
    APPROVAL_DATE varchar(8) comment '复核日期',
    primary  key (APPLY_ID)
);
alter table TB_APPLY_INFO comment '现金预约申请信息表 undefined';