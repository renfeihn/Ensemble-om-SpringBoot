drop table if exists FM_PERIOD_FREQ;
/*==============================================================*/
/* Table: FM_PERIOD_FREQ                                           */
/*==============================================================*/
create table FM_PERIOD_FREQ
(
    PERIOD_FREQ varchar(2) not null comment '频率id',
    PERIOD_FREQ_DESC varchar(60) not null comment '描述',
    FORCE_WORK_DAY varchar(1) not null comment '节假日是否顺延 Y:顺延 N:不顺延',
    ADD_NO varchar(5) not null comment '每期数量',
    DAY_MTH varchar(1) not null comment '每期单位 D:Day M:Month',
    DAY_NUM varchar(5) not null comment '每期天数 DAY_MTH为D时，取ADD_NO值；为M时，值为7* ADD_NO；为Y时，值为360* ADD_NO',
    FIRST_LAST varchar(1) not null comment '期初/期末 F:期初       L:期末      A:实际天数',
    PRIOR_DAYS varchar(5) comment '期限单位值',
    CLIENT_SPREAD Decimal(15,8) comment '客户浮动',
    HALF_MONTH varchar(1) not null default 'N'   comment '半月标识 Y:是 N:否 默认值为N',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PERIOD_FREQ)
);
alter table FM_PERIOD_FREQ comment '周期频率表 undefined';