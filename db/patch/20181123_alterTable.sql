alter table om_prod_perm_def add base_prod_level varchar(1) comment '基础产品权限等级' ;
alter table om_prod_perm_def add sold_prod_level varchar(1) comment '可售产品权限等级' ;
commit;
