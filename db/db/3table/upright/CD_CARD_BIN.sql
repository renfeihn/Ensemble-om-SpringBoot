drop table if exists CD_CARD_BIN;
/*==============================================================*/
/* Table: CD_CARD_BIN                                           */
/*==============================================================*/
create table CD_CARD_BIN
(
    CARD_BIN varchar(6) not null comment '卡bin',
    VALID_TIME varchar(20) comment '卡bin证书有效期限',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CARD_BIN)
);
alter table CD_CARD_BIN comment ' 卡bin参数表 undefined';