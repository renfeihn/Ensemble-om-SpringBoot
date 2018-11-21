CREATE TABLE om_menu (
  menu_seq_no   varchar(10) NOT NULL COMMENT '菜单编号',
  menu_id	 varchar(30) NOT NULL COMMENT '菜单id',
  menu_desc	   varchar(100) NOT NULL COMMENT '菜单名称',
  menu_parent_id	   varchar(30) COMMENT '父级菜单',
  menu_level	   int(1) COMMENT '菜单等级 ',
  menu_status   varchar(1) COMMENT '菜单状态',
  PRIMARY KEY (menu_seq_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单信息定义表';

CREATE TABLE om_role (
  role_id   varchar(10) NOT NULL COMMENT '角色id',
  role_name	 varchar(30) NOT NULL COMMENT '角色名称',
  role_desc	   varchar(100) NOT NULL COMMENT '备注',
  PRIMARY KEY (role_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色信息定义表';


CREATE TABLE om_user (
  user_id   varchar(10) NOT NULL COMMENT '用户id',
  user_name	 varchar(30) NOT NULL COMMENT '用户名称',
  password	 varchar(100) NOT NULL COMMENT '密码',
  branch	 varchar(20)  COMMENT '机构',
  company	 varchar(100)  COMMENT '法人',
  user_level	   varchar(100) NOT NULL COMMENT '用户等级',
  parent_user_id	   varchar(30) COMMENT '父级用户',
  PRIMARY KEY (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息定义表';


CREATE TABLE om_menu_role (
  role_id   varchar(30) NOT NULL COMMENT '角色id',
  menu_id	 varchar(30) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (role_id,menu_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色菜单关系表';


CREATE TABLE om_user_role (
  user_id   varchar(10) NOT NULL COMMENT '用户id',
  role_id	 varchar(30) NOT NULL COMMENT '角色id',
  PRIMARY KEY (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色关系表';


CREATE TABLE om_prod_perm_def (
  user_id   varchar(10) NOT NULL COMMENT '用户id',
  model_type	 varchar(30) NOT NULL COMMENT '操作模块',
  perm_level	   varchar(100) NOT NULL COMMENT '权限等级',
  PRIMARY KEY (user_id,model_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户产品权限定义表';


CREATE TABLE om_param_perm_def (
  user_id   varchar(10) NOT NULL COMMENT '用户id',
  system_id	 varchar(30) NOT NULL COMMENT '所属系统',
  model_id	   varchar(100) NOT NULL COMMENT '所属模块',
  perm_level	   varchar(30) COMMENT '权限等级',
  PRIMARY KEY (user_id,system_id,model_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户参数权限等一表';