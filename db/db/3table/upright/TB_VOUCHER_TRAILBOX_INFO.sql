drop table if exists TB_VOUCHER_TRAILBOX_INFO;
/*==============================================================*/
/* Table: TB_VOUCHER_TRAILBOX_INFO                                           */
/*==============================================================*/
create table TB_VOUCHER_TRAILBOX_INFO
(
    VOUCHER_ID varchar(30) not null comment '凭证主键',
    TRAILBOX_ID varchar(30) not null comment 'ATM尾箱编号',
    BRANCH varchar(20) not null comment '机构代码',
    DOC_TYPE varchar(10) not null comment '凭证类型 TB_VOUCHER_DEF.DOC_TYPE',
    PREFIX varchar(10) comment '前缀',
    START_NO_C varchar(50) not null comment '凭证起始号码，字符类型',
    START_NO varchar(50) not null comment '起始号码',
    END_NO_C varchar(50) not null comment '凭证终止号码，字符类型',
    END_NO varchar(50) not null comment '凭证终止号码,数字类型',
    VOUCHER_SUM varchar(5) not null comment '凭证合计数',
    CCY varchar(3) comment '币种',
    AMT Decimal(17,2) comment '金额',
    VOUCHER_STATUS varchar(3) not null comment '凭证状态',
    LAST_USER_ID varchar(30) comment '上一更改柜员',
    UPDATE_DATE varchar(8) comment '更新日期',
    REMARK varchar(200) comment '备注，用来描述制卡原因，比如正常制卡，补换卡等',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (VOUCHER_ID)
);
alter table TB_VOUCHER_TRAILBOX_INFO comment '凭证出售前登记簿 undefined';