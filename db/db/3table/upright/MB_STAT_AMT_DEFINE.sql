drop table if exists MB_STAT_AMT_DEFINE;
/*==============================================================*/
/* Table: MB_STAT_AMT_DEFINE                                           */
/*==============================================================*/
create table MB_STAT_AMT_DEFINE
(
    AMT_TYPE varchar(10) not null comment '金额类型',
    AMT_TYPE_DESC varchar(100) not null comment '金额类型描述',
    BATCH_ONLINE varchar(1) comment '批处理或在线更新:  B：批处理统计更新  O：在线交易实时更新  ',
    STAT_TABLE varchar(50) comment '统计表名',
    STAT_ATTR varchar(50) comment '统计属性名',
    STAT_TYPE varchar(10) comment '统计方式  ADD：值累加  COUNT：统计笔数  AVG：平均  MAX：最大  MIN：最小',
    STAT_FREQ varchar(10) comment '统计周期  A：始终  D：天  W：周  M：月  Y：年',
    STAT_CONDITION varchar(500) comment '统计条件',
    CALC_FORMULA varchar(500) comment '计算公式',
    STATUS varchar(3) comment '状态  A：有效  E：无效',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (AMT_TYPE)
);
alter table MB_STAT_AMT_DEFINE comment '账户统计金额定义表 undefined';