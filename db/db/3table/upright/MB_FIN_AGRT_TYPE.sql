drop table if exists MB_FIN_AGRT_TYPE;
/*==============================================================*/
/* Table: MB_FIN_AGRT_TYPE                                           */
/*==============================================================*/
create table MB_FIN_AGRT_TYPE
(
    FIN_TYPE varchar(50) not null comment '理财类型',
    FIN_TYPE_DESC varchar(8) comment '理财类型描述',
    KEEP_DAYS varchar(5) comment '保留天数',
    AUTO_TRANSFER varchar(3) comment '是否允许自动支取',
    RETRAIN_AMT Decimal(17,2) comment '保留金额',
    TERM_AMT Decimal(17,2) comment '定期固定金额',
    RENEWAL_TYPE varchar(50) comment '定期理财方式',
    CHECK_TRAN_FLAG varchar(3) comment '交易检查标志  指在保留天数内是否检查发生过交易',
    MIN_INIT_AMT Decimal(17,2) comment '起始最底金额',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (FIN_TYPE)
);
alter table MB_FIN_AGRT_TYPE comment '活期理财协议表 undefined';