
CREATE TABLE om_table_define (
  table_id   varchar(30) NOT NULL COMMENT '表id',
  table_name	 varchar(100) NOT NULL COMMENT '表名称',
  id_table	   varchar(1) NOT NULL COMMENT '是否单表交易 Y/N',
  system_id	   varchar(10) COMMENT '系统id ',
  module_id	   varchar(10) COMMENT '模块id ',

  multi_user_check   varchar(1) COMMENT '录入复核是否允许同一用户',
  permit_role_id	 varchar(1) COMMENT '允许操作角色ID',
  PRIMARY KEY (table_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表信息定义';


CREATE TABLE om_transaction_define (
  transaction_id      varchar(30) NOT NULL COMMENT '组合交易id',
    transaction_name      varchar(100) NOT NULL COMMENT '组合交易名称',

  unit_tables	 varchar(200) NOT NULL COMMENT '组合交易关联单表id集合',

  PRIMARY KEY (transaction_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组合交易担单表映射表';
commit;