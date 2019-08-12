alter table mb_prod_define add PAGE_CODE varchar(20) comment '页签信息' ;
commit;
ALTER TABLE mb_prod_define ADD PER_EFFECT VARCHAR(10) COMMENT '分户生效标志';
ALTER TABLE mb_event_part ADD PER_EFFECT VARCHAR(10) COMMENT '分户生效标志';
ALTER TABLE mb_event_attr ADD PER_EFFECT VARCHAR(10) COMMENT '分户生效标志';
commit;