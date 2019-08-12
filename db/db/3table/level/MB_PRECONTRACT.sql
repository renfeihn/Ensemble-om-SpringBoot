drop table if exists MB_PRECONTRACT;
/*==============================================================*/
/* Table: MB_PRECONTRACT                                           */
/*==============================================================*/
create table MB_PRECONTRACT
(
    PRECONTRACT_NO varchar(12) not null comment '编号',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    PRECONTRACT_DATE varchar(8) comment '预约登记日期',
    PRECONTRACT_CCY varchar(3) not null comment '预约币种',
    PRECONTRACT_AMT Decimal(17,2) not null comment '预约金额',
    PRECONTRACT_DRAW_DATE varchar(8) not null comment '取款日期',
    PRECONTRACT_METHOD varchar(2) comment '预约方式  ',
    PRECONTRACT_WTD_TYPE varchar(2) comment '预约支取方式',
    CLIENT_TYPE varchar(3) comment '客户类型',
    TELEPHONE varchar(20) comment '电话号码',
    BRANCH varchar(20) not null comment '机构代码',
    USER_ID varchar(30) comment '交易柜员',
    PRECONTRACT_STATUS varchar(2) comment '预约状态    ',
    UNCHAIN_USER_ID varchar(30) comment '解挂柜员',
    LAST_CHANGE_DATE varchar(8) not null comment '最后变更日期 ',
    PRECONTRACT_TYPE varchar(1) not null comment '预约登记的账户类型  ',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    VIOLATE_ADJ Decimal(38,2) default 0 comment '通知存款违约基数',
    REFERENCE varchar(50) comment '交易参考号',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '币种',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    primary  key (PRECONTRACT_NO,INTERNAL_KEY,PRECONTRACT_CCY,PRECONTRACT_AMT,PRECONTRACT_DRAW_DATE,BRANCH)
);
alter table MB_PRECONTRACT comment '大额现金支取预约及通知存款预约信息表 undefined';