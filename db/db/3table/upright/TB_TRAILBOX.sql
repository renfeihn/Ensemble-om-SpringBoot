drop table if exists TB_TRAILBOX;
/*==============================================================*/
/* Table: TB_TRAILBOX                                           */
/*==============================================================*/
create table TB_TRAILBOX
(
    TRAILBOX_ID varchar(30) not null comment '尾箱代号',
    BRANCH varchar(20) not null comment '尾箱所属机构',
    USER_ID varchar(30) comment '使用柜员',
    TRAILBOX_PROPERTY varchar(1) comment '尾箱属性 取值： C：现金尾箱； V：凭证尾箱； B：组合尾箱 默认值为B',
    TRAILBOX_TYPE varchar(1) not null comment '尾箱类型 取值： B：机构尾箱； T：柜员尾箱；',
    TRAILBOX_STATUS varchar(3) not null comment '尾箱状态 取值： N：未使用 Y：已使用 D：已封存 默认值为N 封存后启用状态修改为N',
    CREATE_DATE varchar(8) comment '创建日期',
    UPDATE_DATE varchar(8) comment '更新日期',
    ASSIGN_USER_ID varchar(30) comment '分配柜员',
    LAST_USER_ID varchar(30) comment '上一使用柜员',
    CASH_EQUAL varchar(8) comment '现金碰库标志',
    VOUCHER_EQUAL varchar(8) comment '凭证碰库标志',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (TRAILBOX_ID)
);
alter table TB_TRAILBOX comment '尾箱基本信息表 undefined';