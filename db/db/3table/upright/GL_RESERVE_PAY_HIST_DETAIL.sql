drop table if exists GL_RESERVE_PAY_HIST_DETAIL;
/*==============================================================*/
/* Table: GL_RESERVE_PAY_HIST_DETAIL                                           */
/*==============================================================*/
create table GL_RESERVE_PAY_HIST_DETAIL
(
    BRANCH varchar(20) comment '机构',
    PAY_TYPE varchar(8) comment '准备金类型',
    TRAN_DATE varchar(8) comment '交易日期',
    PAY_TYPE_DESC varchar(50) comment '准备金类型描述信息',
    FROM_PAY_CCY varchar(3) comment '原缴存币种',
    FROM_TRAN_AMT Decimal(17,2) comment '原缴存金额',
    TO_PAY_CCY varchar(3) comment '缴存币种',
    TO_TRAN_AMT Decimal(17,2) comment '缴存金额',
    LAST_CHANGE_DATE varchar(8) comment '上次修改日期',
    PAY_BASE_SUM Decimal(17,2) comment '缴存基数',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码'
);
alter table GL_RESERVE_PAY_HIST_DETAIL comment '对内缴存明细表 undefined';