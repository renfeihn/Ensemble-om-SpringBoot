alter table mb_prod_charge add CHARGE_DEAL_METHOD varchar(10) comment '收费处理方式' ;
alter table mb_prod_charge add CON_DEDUCT_FLAG varchar(10) comment '持续扣款标识' ;
alter table mb_prod_charge add CON_DEDUCT_TIMES varchar(10) comment '持续扣款次数' ;
commit;

