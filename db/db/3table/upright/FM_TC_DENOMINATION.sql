drop table if exists FM_TC_DENOMINATION;
/*==============================================================*/
/* Table: FM_TC_DENOMINATION                                           */
/*==============================================================*/
create table FM_TC_DENOMINATION
(
    TC_DENOM_GROUP varchar(8) not null comment '有价单证固定面额组',
    DENOM_AMT Decimal(17,2) not null comment '有价单证固定面额',
    DENOM_DESC varchar(50) comment '有价单证描述',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (TC_DENOM_GROUP,DENOM_AMT)
);
alter table FM_TC_DENOMINATION comment '面额组参数表 undefined';