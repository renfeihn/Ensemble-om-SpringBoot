drop table if exists TB_RCV_INFO;
/*==============================================================*/
/* Table: TB_RCV_INFO                                           */
/*==============================================================*/
create table TB_RCV_INFO
(
    APPLY_ID varchar(30) not null comment '预约编号',
    APPLY_CCY varchar(3) comment '预约币种',
    APPLY_DATE varchar(8) comment '预约日期',
    TRAN_DATE varchar(8) comment '录入日期',
    APPROVE_DATE varchar(8) comment '复核日期',
    ACCT_NO varchar(150) comment '单位账号',
    ACCT_NAME varchar(200) comment '单位账户名称',
    RECORD_AMT Decimal(17,2) not null comment '实际入账金额',
    BOOK_AMT Decimal(17,2) not null comment '客户预约金额',
    VOUCHER_COUNT varchar(10) comment '交款单张数',
    DIFF_TYPE varchar(1) comment '差错类型 S—短款 O—长款',
    DIFF_AMT Decimal(17,2) comment '差错金额',
    DIFF_REMARK varchar(100) comment '差错摘要',
    TELLER_ID varchar(30) comment '录入柜员',
    BRANCH varchar(20) comment '机构',
    APPROVE_TELLER_ID varchar(30) comment '复核柜员',
    APPROVE_BRANCH varchar(20) comment '复核柜员所属机构',
    STATUS varchar(3) comment '状态 A—录入 C—复核',
    REFERENCE varchar(50) comment '交易参考号',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (APPLY_ID)
);
alter table TB_RCV_INFO comment '上门收款信息表 undefined';