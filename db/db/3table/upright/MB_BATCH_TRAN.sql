drop table if exists MB_BATCH_TRAN;
/*==============================================================*/
/* Table: MB_BATCH_TRAN                                           */
/*==============================================================*/
create table MB_BATCH_TRAN
(
    BATCH_NO varchar(50) not null comment '批处理号',
    BATCH_CLASS varchar(10) not null comment '批量交易类型',
    RUN_TIME varchar(3) comment '运行时间',
    FILE_PATH varchar(512) comment '文件路径',
    FILE_NAME varchar(500) comment '文件名称',
    TOTAL_NUM varchar(10) comment '总数量',
    TOTAL_AMT Decimal(17,2) comment '计划总金额',
    DEAL_DATE varchar(8) comment '处理日期',
    BATCH_STATUS varchar(3) comment '批次处理状态 ',
    SUCC_NUM varchar(10) comment '成功数量',
    FAIL_NUM varchar(10) comment '失败数量',
    ERROR_DESC varchar(4000) comment '未生成分录原因',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    SERVER_IP varchar(50) comment '后台服务IP',
    BEGIN_TIME varchar(30) comment '开始时间',
    END_TIME varchar(30) comment '终止时间',
    APPR_FLAG varchar(1) comment '复核标志',
    APPR_USER_ID varchar(30) comment '复核柜员',
    AUTH_FLAG varchar(1) comment '授权标志',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    BRANCH_ID varchar(20) comment '机构代码',
    COMPANY varchar(20) comment '法人代码',
    DEST_BRANCH_NO varchar(6) comment '目标节点编号',
    MAC_VALUE varchar(50) comment '传输密押',
    PROGRAM_ID varchar(20) comment '交易码',
    REFERENCE varchar(50) comment '交易参考号',
    RUN_DATE varchar(8) comment '运行日期',
    SEQ_NO varchar(50) comment '序号',
    SOURCE_BRANCH_NO varchar(6) comment '源节点编号',
    SOURCE_TYPE varchar(10) comment '渠道',
    SYSTEM_ID varchar(20) comment '系统ID',
    THREAD_NO varchar(512) comment '线程编号',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_MODE varchar(10) comment '交易模式',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    USER_LANG varchar(20) comment '柜员语言 ',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    BATCH_DESC varchar(300),
    primary  key (BATCH_NO)
);
alter table MB_BATCH_TRAN comment '批量交易信息登记簿 undefined';