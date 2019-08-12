drop table if exists LM_TRAN_LIMIT_LINK;
/*==============================================================*/
/* Table: LM_TRAN_LIMIT_LINK                                           */
/*==============================================================*/
create table LM_TRAN_LIMIT_LINK
(
    LIMIT_REF varchar(200) not null comment '限额编码',
    TRAN_TYPE_LINK varchar(500) not null comment '交易类型 多交易类型（联合起来使用统一额度）,不限制为ALLMB_TRAN_DEF.TRAN_TYPE',
    SOURCE_TYPE_LINK varchar(500) comment '渠道 多渠道类型（联合渠道使用统一额度）ALL表示所有渠道 FM_CHANNEL.CHANNEL',
    CLIENT_TYPE varchar(3) comment '客户类型',
    INLAND_IND varchar(1) comment '客户境内外标志 ',
    AREA_CODE_LINK varchar(500) comment '地区码 交易地区码（卡系统需要），不限制为ALL FM_STATE.STATE',
    PROD_TYPE varchar(50) comment '产品类型 MB_PROD_TYPE.PROD_TYPE',
    BALANCE_TYPE varchar(10) comment '余额类型  CA  TT,不限制为ALL',
    IS_APP_FLAG varchar(1) comment '是否附属卡',
    IS_CONVENT varchar(3),
    BRANCH_LINK varchar(500) comment '机构号',
    TRAN_CCY_LINK varchar(500),
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table LM_TRAN_LIMIT_LINK comment '限额链接表 undefined';