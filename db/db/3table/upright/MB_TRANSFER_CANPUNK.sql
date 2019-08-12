drop table if exists MB_TRANSFER_CANPUNK;
/*==============================================================*/
/* Table: MB_TRANSFER_CANPUNK                                           */
/*==============================================================*/
create table MB_TRANSFER_CANPUNK
(
    TRANSFER_SEQ_NO varchar(30) not null comment '主键',
    CONTRACT_NO varchar(50) not null comment '合同号',
    BASE_ACCT_NO varchar(150) not null comment '账号',
    BATCH_NO varchar(50) comment '批处理号',
    TRAN_STATUS varchar(3) comment '状态 S:成功 F:失败',
    REFERENCE varchar(50) comment '交易参考号',
    UNPACK_ERROR_DESC varchar(50) comment '撤包错误信息描述',
    primary  key (TRANSFER_SEQ_NO)
);
alter table MB_TRANSFER_CANPUNK comment '撤包明细表 undefined';