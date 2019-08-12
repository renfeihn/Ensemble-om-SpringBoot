drop table if exists TB_VOUCHER_APPLY_INFO;
/*==============================================================*/
/* Table: TB_VOUCHER_APPLY_INFO                                           */
/*==============================================================*/
create table TB_VOUCHER_APPLY_INFO
(
    APPLY_ID varchar(30) not null comment '预约编号',
    APPLY_DATE varchar(8) not null comment '申请日期',
    APPLY_TYPE varchar(1) not null comment '申请类型',
    APPLY_BRANCH varchar(20) not null comment '账户申请机构 LOAN_MANAGER',
    APPLY_USER_ID varchar(30) not null comment '预约柜员',
    TRAN_TO varchar(1) comment '交易对方',
    REC_DATE varchar(8) comment '预约日期',
    TO_BRANCH varchar(20) comment '转入机构',
    CHECK_USER_ID varchar(30) comment '复核柜员',
    APPLY_STATUS varchar(1) not null comment '预约状态 ',
    REFUSE_REASON varchar(50) comment '拒绝原因',
    REFERENCE varchar(50) comment '交易参考号',
    COMPANY varchar(20) comment '法人代码',
    VOUCHER_MOVE_ID varchar(30) comment '凭证转移ID',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    LEADER_BRANCH varchar(20) comment '调剂审批机构',
    OUT_BRANCH varchar(20) comment '出库机构',
    primary  key (APPLY_ID)
);
alter table TB_VOUCHER_APPLY_INFO comment '凭证预约申请信息表 undefined';