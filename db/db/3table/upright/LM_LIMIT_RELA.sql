drop table if exists LM_LIMIT_RELA;
/*==============================================================*/
/* Table: LM_LIMIT_RELA                                           */
/*==============================================================*/
create table LM_LIMIT_RELA
(
    CTRL_ID varchar(10) not null comment '控制编号',
    LM_TYPE_ID varchar(30) not null comment '类型ID',
    LM_TYPE varchar(1) not null comment '类型  I:机构， B:尾箱',
    EFFECT_DATE varchar(8) not null comment '生效日期',
    REMARK varchar(200) comment '备注',
    CV_FLAG varchar(1) not null comment '现金/凭证标志 C：现金，V：凭证',
    COMPANY varchar(20) comment '所属法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (LM_TYPE_ID,LM_TYPE,CV_FLAG)
);
alter table LM_LIMIT_RELA comment '限额控制关系表 undefined';