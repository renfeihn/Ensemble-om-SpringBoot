drop table if exists IRL_PROD_INT;
/*==============================================================*/
/* Table: IRL_PROD_INT                                           */
/*==============================================================*/
create table IRL_PROD_INT
(
    PROD_TYPE varchar(50) not null comment '产品类型 ',
    EVENT_TYPE varchar(50) not null comment '事件类型',
    INT_TYPE varchar(3) comment '利率类型 ',
    INT_CLASS varchar(20) not null comment '利息分类',
    TAX_TYPE varchar(3) comment '税率类型 ',
    RATE_AMT_ID varchar(30) not null comment '利率计算金额编码',
    INT_AMT_ID varchar(30) not null comment '利息计算金额编码',
    RECAL_METHOD varchar(1) not null comment '重算利息方法',
    COMPANY varchar(20) comment '法人代码',
    INT_START varchar(1) default '0' comment '计息起始日期取值方法 ',
    INT_DAYS_TYPE varchar(1) comment '靠档天数计算方式 ',
    INT_CALC_BAL varchar(3) comment '利息计算方法',
    INT_APPL_TYPE varchar(1) comment '利率启用方式 ',
    ROLL_FREQ varchar(2) comment '利率变更周期 ',
    ROLL_DAY varchar(2) comment '利率变更日',
    MIN_RATE Decimal(15,8) comment '最小利率',
    MAX_RATE Decimal(15,8) comment '最大利率',
    INT_RATE_IND varchar(1) comment '利率靠档标志',
    MONTH_BASIS varchar(3) comment '月基准',
    GROUP_RULE_TYPE varchar(2) not null default '02'   comment '分组规则关系',
    SPLIT_ID varchar(10) not null comment '首个分段ID',
    SPLIT_TYPE varchar(3) comment '分段类型',
    RULEID varchar(50) not null comment '规则ID',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ACCT_RATE_EFFECT varchar(1) default 'N' comment '使用分户利率标志',
    ROUND_DOWN varchar(1) comment '是否截位标志 Y-截位 N-不截位',
    primary  key (PROD_TYPE,EVENT_TYPE,INT_CLASS,SPLIT_ID,RULEID)
);
alter table IRL_PROD_INT comment '产品利率信息表 undefined';