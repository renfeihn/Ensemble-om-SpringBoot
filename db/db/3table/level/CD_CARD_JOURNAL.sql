drop table if exists CD_CARD_JOURNAL;
/*==============================================================*/
/* Table: CD_CARD_JOURNAL                                           */
/*==============================================================*/
create table CD_CARD_JOURNAL
(
    CARD_SEQ_NO varchar(35) not null comment '卡系统流水号',
    CHANNEL_SEQ_NO varchar(50) comment '渠道流水号',
    USER_ID varchar(30) comment '使用柜员',
    BRANCH varchar(20) comment '机构代码',
    TERMINAL_NO varchar(20) comment '终端ID',
    MERCH_NO varchar(15) comment '特约商户',
    TRAN_DATE varchar(8) comment '交易日期',
    CUP_DATE varchar(8) comment '银联日期',
    FTS_DATE varchar(8) comment '主机日期',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    ACCT_NO1 varchar(50) comment '账户1',
    CARD_NO1 varchar(50) comment '卡号1',
    ACCT_NO2 varchar(50) comment '账号2',
    CARD_NO2 varchar(50) comment '卡号2',
    TRAN_CCY varchar(3) comment '交易币种',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    ERROR_CODE varchar(200) comment '错误码',
    CHANNEL varchar(20) comment '渠道集合',
    REMARK varchar(200) comment '备注',
    CHANNEL_LIST varchar(2) comment '渠道细分',
    TERM_SEQ varchar(30) comment '终端流水号',
    primary  key (CARD_SEQ_NO)
);
alter table CD_CARD_JOURNAL comment '卡流水表 undefined';