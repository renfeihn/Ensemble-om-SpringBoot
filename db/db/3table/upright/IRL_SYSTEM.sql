drop table if exists IRL_SYSTEM;
/*==============================================================*/
/* Table: IRL_SYSTEM                                           */
/*==============================================================*/
create table IRL_SYSTEM
(
    COY_NAME varchar(40) not null comment '银行全称',
    COY_SHORT varchar(20) not null comment '银行简称',
    RUN_DATE varchar(8) comment '运行日期',
    MTH_END_DATE varchar(8) comment '本月月末日期',
    YR_END_DATE varchar(8) comment '本年年末日期',
    BASE_CCY varchar(3) comment '基础币种',
    LOCAL_CCY varchar(3) comment '当地币种',
    DEFAULT_BRANCH varchar(8) comment '默认机构',
    LAST_RUN_DATE varchar(8) comment '上一运行日期',
    NEXT_RUN_DATE varchar(8) comment '下一运行日',
    QUR_END_DATE varchar(8) comment '季末日期',
    HALF_END_DATE varchar(8) comment '半年末日期',
    SYSTEM_PHASE varchar(3) comment '系统所处的阶段',
    DEFAULT_RATE_TYPE varchar(3) comment '默认汇率类型',
    QUOTE_BALANCE_TYPE varchar(2) comment '报价余额类型',
    INT_EVENT_VALUE varchar(10) comment '计提事件类型',
    COMPANY varchar(20) comment '法人代码',
    GL_MERGE_TYPE varchar(1) comment '计提是否轧差',
    DEFAULT_CHARGE_RATE_TYPE varchar(3) comment '结售汇内部平盘汇率类型',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table IRL_SYSTEM comment '系统信息表 undefined';