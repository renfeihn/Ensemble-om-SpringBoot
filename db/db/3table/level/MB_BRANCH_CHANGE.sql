drop table if exists mb_branch_change;
/*==============================================================*/
/* Table: mb_branch_change                                           */
/*==============================================================*/
create table mb_branch_change
(
    FILE_NAME varchar(500) comment '鏂囦欢鍚嶇О',
    BUSI_TYPE varchar(10) not null comment '涓氬姟鍒嗙被',
    TRAN_DATE varchar(8) not null comment '浜ゆ槗鏃ユ湡',
    PROD_TYPE varchar(50) comment '浜у搧绫诲瀷',
    NEW_BRANCH varchar(20) not null comment '鍙樻洿鍚庢満鏋�',
    OLD_BRANCH varchar(20) not null comment '鍙樻洿鍓嶆満鏋�',
    FLAG varchar(1) comment '澶勭悊鏍囧織',
    TRAN_TIMESTAMP varchar(17) comment '浜ゆ槗鏃堕棿鎴�',
    TRAN_TIME Decimal(11,0) comment '浜ゆ槗鏃堕棿',
    ROUTER_KEY varchar(100) comment '鍒嗗簱璺敱鍏抽敭瀛�',
    AMEND_SEQ_NO varchar(50) comment '鍙樻洿搴忓彿',
    EFFECT_DATE varchar(8) not null comment '锟斤拷效锟斤拷锟斤拷'
);
alter table mb_branch_change comment '鏃ョ粓鎵瑰鐞嗘満鏋勫彉鏇磋褰曡〃 undefined';