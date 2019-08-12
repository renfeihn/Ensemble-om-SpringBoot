drop table if exists TB_VOUCHER_MOVE;
/*==============================================================*/
/* Table: TB_VOUCHER_MOVE                                           */
/*==============================================================*/
create table TB_VOUCHER_MOVE
(
    VOUCHER_MOVE_ID varchar(30) not null comment '凭证转移ID',
    FROM_TRAILBOX_ID varchar(30) comment '转出尾箱代号',
    FROM_BRANCH varchar(20) comment '转出机构',
    TO_TRAILBOX_ID varchar(30) comment '转入尾箱代号',
    TO_BRANCH varchar(20) comment '转入机构',
    ON_WAY_STATUS varchar(1) comment '在途标志 取值： Y： 在途 N： 非在途',
    TRAN_TO varchar(1) not null comment '交易对方 取值： B：人民银行/印刷厂 S：同业银行 O：本行',
    TRAN_DATE varchar(8) comment '交易日期',
    TIME_STAMP varchar(17) comment '交易时间戳',
    IS_CHECK varchar(1) not null comment '确认标志 取值： N：未复核 Y：已复核',
    FROM_USER_ID varchar(30) comment '出库交易柜员',
    TO_USER_ID varchar(30) comment '入库交易柜员',
    MOVE_TYPE varchar(3) not null comment '转移类型 取值： A：调剂 C：上缴 D：分配 I：入库 O：出库 OI：出入库（行内机构之间转移）',
    TRAN_DESC varchar(100) comment '交易描述',
    APPLY_ID varchar(30) comment '预约编号',
    REMARK varchar(200) comment '备注',
    REFERENCE varchar(50) comment '交易参考号',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (VOUCHER_MOVE_ID)
);
alter table TB_VOUCHER_MOVE comment '凭证转移表 undefined';