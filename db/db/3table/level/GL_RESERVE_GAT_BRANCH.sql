drop table if exists GL_RESERVE_GAT_BRANCH;
/*==============================================================*/
/* Table: GL_RESERVE_GAT_BRANCH                                           */
/*==============================================================*/
create table GL_RESERVE_GAT_BRANCH
(
    FREQ_BRANCH varchar(20) not null comment '缴存机构',
    DOWN_BRANCH varchar(20) not null comment '下级机构',
    PAY_TYPE varchar(8) not null comment '准备金类型 GL_RESERVE_PAY_CCY.PAY_TYPE',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    primary  key (FREQ_BRANCH,DOWN_BRANCH,PAY_TYPE)
);
alter table GL_RESERVE_GAT_BRANCH comment '准备金缴存机构汇总表 undefined';