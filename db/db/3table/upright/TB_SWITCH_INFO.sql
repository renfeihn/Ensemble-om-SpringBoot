drop table if exists TB_SWITCH_INFO;
/*==============================================================*/
/* Table: TB_SWITCH_INFO                                           */
/*==============================================================*/
create table TB_SWITCH_INFO
(
    TB_APPLY_BIGTYPE varchar(50) not null comment '预约大类（V-凭证预约  C-现金预约）',
    BRANCH_ID varchar(20) not null comment '机构',
    TB_APPLY_TYPE varchar(50) not null comment '预约类型（I-凭证领取 O-凭证缴存 T-现金缴存 D-现金领取）',
    TB_SWITCH_STATE  varchar(50) comment '开关状态（O-打开 S-关闭）',
    USER_ID varchar(30) comment '修改柜员',
    UPDATE_DATE varchar(8) comment '修改日期',
    LAST_UPDATE_DATE varchar(8) comment '上次更新日期',
    LAST_USER_ID varchar(30) comment '上次修改柜员',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (TB_APPLY_BIGTYPE,BRANCH_ID,TB_APPLY_TYPE)
);
alter table TB_SWITCH_INFO comment '预约申请开关信息表 undefined';