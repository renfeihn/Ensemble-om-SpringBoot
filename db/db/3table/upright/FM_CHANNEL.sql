drop table if exists FM_CHANNEL;
/*==============================================================*/
/* Table: FM_CHANNEL                                           */
/*==============================================================*/
create table FM_CHANNEL
(
    CHANNEL varchar(20) not null comment '渠道 目前系统使用到渠道类型有： MT-柜面业务 MC-卡柜面业务 AC-本行自助 DP-大额支付 MP-小额支付 SF-SWIFT CB-网上银行 PB-电话银行 CC-CALL CENTRE MB-短信银行 UC-银联交易 PC-卡支付业务 BC-柜面发起卡中间业务 ND-票据系统发起的业务 AB-自助终端系统发起的中间业务 BH-中间业务 UT-银联本代他业务 BI-批量接口业务 IF-一般文件接口业务 NI-内部业务处理 IG-内部清算 CS-财税库行业务 SR-(Security)安全加密渠道 GL-总帐系统业务',
    CHANNEL_DESC varchar(30) not null comment '渠道描述',
    CHANNEL_SHORT varchar(10) comment '渠道简称',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CHANNEL)
);
alter table FM_CHANNEL comment '渠道类型 undefined';