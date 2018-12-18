drop table if exists GL_ACCT;
/*==============================================================*/
/* Table: GL_ACCT                                           */
/*==============================================================*/
create table GL_ACCT
(
    INTERNAL_KEY Decimal(15) not null comment '内部键值',
    BRANCH varchar(20) not null comment '分行',
    CCY varchar(3) not null comment '货币',
    CLIENT_NO varchar(20) not null comment '客户号',
    GL_CODE varchar(20) not null comment '科目号',
    SEQ_NO varchar(50) not null comment '序号 1到999999999',
    GL_TYPE varchar(1) not null comment '科目类型 N-往帐 V-来帐 I-内部账',
    PROFIT_CENTRE varchar(12) not null comment '利润中心',
    ACCT_OPEN_DATE varchar(8) not null comment '开户日期',
    ACCT_CLOSE_DATE varchar(8) comment '闭户日期',
    LEDGER_BAL Decimal(17,2) comment '帐面余额',
    ACTUAL_BAL Decimal(17,2) comment '实际余额',
    OL_LEDGER_BAL Decimal(17,2) comment '联机账面余额',
    OL_ACTUAL_BAL Decimal(17,2) comment '联机实际余额',
    GL_CTRL_DATE varchar(8) comment '总账控制日期',
    AGG_BAL_CTD Decimal(17,2) comment '当前累计余额',
    CTD_DAYS varchar(5) comment '累计天数',
    AGG_BAL_MTD Decimal(17,2) comment '月累计余额',
    MTD_DAYS varchar(5) comment '月累计天数',
    AGG_BAL_YTD Decimal(17,2) comment '年累计余额',
    YTD_DAYS varchar(5) comment '年累计天数',
    ACCRUED_BAL Decimal(17,2) comment '计提余额',
    NOS_VOS_NO varchar(5) comment '往来帐号',
    ACCT_DESC varchar(150) comment '帐户描述',
    ACCT_NO varchar(150) comment '总账帐号',
    ACCT_CLOSE_REASON varchar(200) comment '账户关闭原因',
    WS_ID varchar(200) comment '终端编号',
    USER_ID varchar(30) comment '用户号',
    OPEN_TRAN_DATE varchar(8) comment '开户日期',
    LAST_CHANGE_DATE varchar(8) comment '最后一个修改日期',
    LAST_RUN_DATE varchar(8) comment '最后运行日期',
    MTD_BAL Decimal(17,2) comment '月到日的金额',
    YTD_BAL Decimal(17,2) comment '年到日的金额',
    INT_STMT varchar(1) comment '利息对帐单 Y-是 N-否',
    INT_CONTACT_TYPE varchar(3) comment '利息联系方式',
    INT_STMT_FREQ varchar(2) comment '利息频率',
    NEXT_INT_STMT_DATE varchar(8) comment '下一个利息收取日期',
    INT_STMT_DAY varchar(2) comment '利息产生日期 1到31',
    LAST_INT_STMT_DATE varchar(8) comment '上一个利息收取日期',
    ACTUAL_AGG_BAL_CTD Decimal(17,2) comment '实际累计积数',
    ACTUAL_AGG_BAL_MTD Decimal(17,2) comment '月累计实际积数',
    ACTUAL_AGG_BAL_YTD Decimal(17,2) comment '实际年累计积数',
    ACTUAL_MTD_BAL Decimal(17,2) comment '月内实际余额',
    ACTUAL_YTD_BAL Decimal(17,2) comment '年内实际余额',
    ACTUAL_CTD_DAYS varchar(5) comment '周期内天数',
    ACTUAL_MTD_DAYS varchar(5) comment '当前月内天数',
    ACTUAL_YTD_DAYS varchar(5) comment '当前年内天数',
    LEDGER_CTRL_DATE varchar(8) comment '总帐控制日期',
    ACTUAL_CTRL_DATE varchar(8) comment '实际控制日期',
    LEDGER_BAL_O Decimal(17,2) comment '记录日的总帐额',
    ACTUAL_BAL_O Decimal(17,2) comment '实际天数额',
    LEDGER_BAL_V Decimal(17,2) comment '过账日重估余额',
    ACTUAL_BAL_V Decimal(17,2) comment '实际过账重做余额',
    LEDGER_BAL_T Decimal(17,2) comment '过账日收入或支出总帐金额',
    ACTUAL_BAL_T Decimal(17,2) comment '实际过账日收入或支出金额',
    LEDGER_BAL_R Decimal(17,2) comment '过账日净利润金额',
    ACTUAL_BAL_R Decimal(17,2) comment '实际过账日净利润金额',
    CHECK_MIN varchar(1) comment '最低余额检查标志 Y,N',
    MIN_AMOUNT Decimal(17,2) comment '最低余额 最低为0',
    CHECK_MAX varchar(1) comment '最高余额检查标志 Y,N',
    MAX_AMOUNT Decimal(17,2) comment '最高余额',
    MANUAL_ACCOUNT varchar(1) comment '是否允许手工记账 Y-允许,N-不允许',
    MATURE_DATE varchar(8) comment '到期日',
    INTERBANK_RATE Decimal(15,8) comment '行内利率',
    COMPANY varchar(20) comment '法人代码',
    ACCT_TYPE varchar(10) comment '账户类型',
    ACCT_STATUS varchar(3) comment '账户状态',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    INT_IND varchar(1) comment '是否计息 Y:是 N:否',
    primary  key (INTERNAL_KEY)
);
alter table GL_ACCT comment '总账账户表 undefined';

drop index AK_GAC_UK_GL_ACCT on GL_ACCT;
/*==============================================================*/
/* Index: AK_GAC_UK_GL_ACCT                                           */
/*==============================================================*/
create unique index AK_GAC_UK_GL_ACCT on GL_ACCT (
    BRANCH,CCY,CLIENT_NO,GL_CODE,SEQ_NO,PROFIT_CENTRE
);