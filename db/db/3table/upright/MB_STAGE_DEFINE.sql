drop table if exists MB_STAGE_DEFINE;
/*==============================================================*/
/* Table: MB_STAGE_DEFINE                                           */
/*==============================================================*/
create table MB_STAGE_DEFINE
(
    ISSUE_YEAR varchar(4) not null comment '发行年度',
    PROD_TYPE varchar(50) not null comment '产品类型',
    CCY varchar(3) not null comment '币种',
    STAGE_CODE varchar(50) not null comment '期次代码   系统内唯一。例如“NCDS-1-2016-001”，NCDS代表大额存单，1代表个人，2016代表年份，001代表第一期',
    STAGE_CODE_DESC varchar(100) comment '期次描述',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_BRANCH varchar(20) comment '交易支行',
    ISSUE_AMT Decimal(17,2) not null comment '发行额度',
    SALE_TYPE varchar(1) comment '销售方式  竞售： C                  配额： P',
    ISSUE_START_DATE varchar(8) not null comment '发行起始日期',
    ISSUE_END_DATE varchar(8) not null comment '发行终止日期',
    INT_CALC_TYPE varchar(50) comment '计息方式  零息：0                   浮动计息：1              固定利率：2',
    RESET_INT_FREQ varchar(2) comment '利率重置频率',
    PAY_INT_TYPE varchar(2) comment '付息方式  一次还本付息和定期付息： 1     到期还本：2',
    GET_INT_FREQ varchar(3) comment '取息频率',
    TRANSFER_FLAG varchar(1) comment '转让标识  Y:是                      N:否',
    PRE_WITHDRAW_FLAG varchar(1) comment '是否允许提前支取  Y:是                      N:否',
    PART_WITHDRAW_NUM varchar(3) comment '部提次数',
    TERM varchar(5) comment '期限',
    TERM_TYPE varchar(1) comment '期限类型  年：Y                       月：M                    日：D ',
    USER_ID varchar(30) comment '交易柜员',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (STAGE_CODE)
);
alter table MB_STAGE_DEFINE comment '期次定义表 undefined';