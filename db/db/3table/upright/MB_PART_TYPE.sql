drop table if exists MB_PART_TYPE;
/*==============================================================*/
/* Table: MB_PART_TYPE                                           */
/*==============================================================*/
create table MB_PART_TYPE
(
    PART_TYPE varchar(50) not null comment '指标类型',
    PART_DESC varchar(100) not null comment '指标类型描述',
    DEFAULT_PART varchar(20) comment '基础指标类型',
    PART_CLASS varchar(20) not null comment '指标分类 取值于MB_PART_CLASS.PART_CLASS',
    IS_STANDARD varchar(1) not null comment '是否标准模板 Y：标准模板 N：非标准模板',
    PROCESS_METHOD varchar(1) comment '指标实现方式',
    BUSI_CATEGORY varchar(50) comment '业务分类  RB-存款，CL-贷款，MM-货币市场，GL-总账',
    STATUS varchar(3) not null comment '状态 A：有效 F：无效',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PART_TYPE)
);
alter table MB_PART_TYPE comment '指标类型定义表 undefined';