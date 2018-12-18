drop table if exists MB_TRAN_CONTROL;
/*==============================================================*/
/* Table: MB_TRAN_CONTROL                                           */
/*==============================================================*/
create table MB_TRAN_CONTROL
(
    PROD_TYPE varchar(50) not null comment '产品类型',
    CD_CUST_GRADE varchar(3) not null comment '卡客户等级',
    PROD_CHANNEL varchar(2) not null comment '产品渠道',
    CD_AREA_CODE varchar(10) not null comment '所属区域',
    PASSWORD_CTR varchar(1) comment '密码控制',
    TRAN_COUNT varchar(10) comment '交易笔数  ADD：值累加  COUNT：统计笔数  AVG：平均  MAX：最大  MIN：最小',
    SINGLE_TRAN_LIM Decimal(17,2) comment '单次交易限额  A：始终  D：天  W：周  M：月  Y：年',
    DAY_TRAN_LIM Decimal(17,2) comment '日交易限额',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PROD_TYPE,CD_CUST_GRADE,PROD_CHANNEL,CD_AREA_CODE)
);
alter table MB_TRAN_CONTROL comment '交易控制表 undefined';