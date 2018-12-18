drop table if exists OC_CHANGE_BRANCH;
/*==============================================================*/
/* Table: OC_CHANGE_BRANCH                                           */
/*==============================================================*/
create table OC_CHANGE_BRANCH
(
    BRANCH varchar(20) not null comment '机构代码',
    CHANGE_BRANCH varchar(20) comment '交换机构',
    SETTLE_BRANCH varchar(20) comment '清算机构 ',
    CHANGE_REGION varchar(4) comment '交换地区 ',
    CHANGE_NO varchar(10) comment '交换号',
    SETTLE_ACCT_NO varchar(150) comment '人行清算账户',
    SETTLE_PROD_TYPE varchar(50) comment '人行清算账户产品类型',
    SETTLE_CCY varchar(3) comment '人行清算账户币种',
    SETTLE_SEQ_NO varchar(50) comment '人行清算账户序列号',
    BRANCH_TYPE varchar(20) comment '机构类型',
    CHANGE_TYPE varchar(3) comment '交换机构类型',
    BRANCH_NAME varchar(100) comment '机构名称',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    CHECK_STATUS varchar(3) comment '是否检查交换状态',
    TEMP_ACCT_NO varchar(150) comment '暂记账号',
    TEMP_PROD_TYPE varchar(50) comment '暂记账户产品类型 ',
    TEMP_CCY varchar(3) comment '暂记账户币种 ',
    TEMP_SEQ_NO varchar(50) comment '暂记账户序号',
    USED_PROD_TYPE varchar(50) comment '待抵用账户产品类型',
    USED_CCY varchar(3) comment '待抵用账户币种',
    USED_SEQ_NO varchar(50) comment '待抵用账户序列号',
    USED_ACCT_NO varchar(150) comment '待抵用账户',
    BUDGET_ACCT_NO varchar(50) comment '待报解预算账户',
    BUDGET_PROD_TYPE varchar(50) comment '待报解预算账户产品类型',
    BUDGET_CCY varchar(3) comment '待报解预算账户币种',
    BUDGET_SEQ_NO varchar(8) comment '待报解预算账户序列号',
    TRANSIT_ACCT_NO varchar(50) comment '过渡户账号',
    TRANSIT_PROD_TYPE varchar(50) comment '过渡户产品类型',
    TRANSIT_CCY varchar(3) comment '过渡户币种',
    TRANSIT_SEQ_NO varchar(8) comment '过渡户序列号',
    CHANGE_REGION_NAME varchar(50) comment '交换地区名称',
    primary  key (BRANCH)
);
alter table OC_CHANGE_BRANCH comment '同城票交机构信息表 undefined';