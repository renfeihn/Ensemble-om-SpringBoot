drop table if exists GL_RESERVE_OUT_PAY_HIST;
/*==============================================================*/
/* Table: GL_RESERVE_OUT_PAY_HIST                                           */
/*==============================================================*/
create table GL_RESERVE_OUT_PAY_HIST
(
    BRANCH varchar(20) comment '机构',
    PAY_TYPE varchar(8) comment '准备金类型',
    TRAN_DATE varchar(8) comment '交易日期',
    PAY_TYPE_DESC varchar(50) comment '准备金类型描述信息',
    TRAN_AMT Decimal(17,2) comment '缴存金额',
    PAY_CCY varchar(3) comment '缴存币种',
    BALANCE Decimal(17,2) comment '余额',
    LAST_CHANGE_DATE varchar(8) comment '上次修改日期',
    COMPANY varchar(20) comment '法人',
    PAY_BASE_SUM Decimal(17,2) comment '缴存基数',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table GL_RESERVE_OUT_PAY_HIST comment '对外缴存信息 undefined';