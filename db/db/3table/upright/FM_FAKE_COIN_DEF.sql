drop table if exists FM_FAKE_COIN_DEF;
/*==============================================================*/
/* Table: FM_FAKE_COIN_DEF                                           */
/*==============================================================*/
create table FM_FAKE_COIN_DEF
(
    CCY varchar(3) not null comment '币种',
    BONDTYPEID varchar(30) not null comment '券别代码',
    BONDNAME varchar(15) comment '券别名称',
    BONDVERSIONNUM varchar(15) not null comment '版别',
    BONDNUMBER varchar(20) not null comment '套数',
    BONDNOTES varchar(20) not null comment '面额',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CCY,BONDTYPEID,BONDVERSIONNUM,BONDNUMBER,BONDNOTES)
);
alter table FM_FAKE_COIN_DEF comment '劵别信息表 undefined';