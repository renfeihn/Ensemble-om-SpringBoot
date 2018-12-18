drop table if exists FM_SEQ_TYPE;
/*==============================================================*/
/* Table: FM_SEQ_TYPE                                           */
/*==============================================================*/
create table FM_SEQ_TYPE
(
    SEQ_TYPE varchar(3) not null comment '序列类型代码(类似于编号值)',
    START_NO varchar(50) not null comment '开始号',
    END_NO varchar(50) not null comment '结束号',
    BRANCH_RESET varchar(1) not null default 'N'   comment '分行重置 Y/N',
    PROD_TYPE_RESET varchar(1) not null default 'N'   comment '产品重置 Y/N',
    CCY_RESET varchar(1) not null default 'N'   comment '币种重置 Y/N',
    IS_INDVL_RESET varchar(1) default 'N' comment '客户公私属性重置 Y/N',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (SEQ_TYPE)
);
alter table FM_SEQ_TYPE comment '序列类型定义表 undefined';