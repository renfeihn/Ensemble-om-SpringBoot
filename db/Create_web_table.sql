drop table if exists web_menu;

drop table if exists web_role;

drop table if exists web_role_menu;

drop table if exists web_user;

drop table if exists web_user_role;

create table web_menu
(
   menu_seq             int default null comment '菜单序号',
   menu_id              int not null comment '菜单ID',
   menu_name            varchar(20) not null comment '菜单名称',
   menu_parent_id       int not null comment '上级菜单ID',
   menu_url             varchar(100) not null comment '菜单URL',
   menu_status          varchar(10) not null comment '菜单状态',
   menu_action          varchar(100) default '' comment '按钮链接',
   primary key (menu_id)
);

alter table web_menu comment '权限菜单交易';

create table web_role
(
   role_id              int not null comment '角色ID',
   role_name            varchar(20) not null comment '角色名称',
   role_desc            varchar(100) not null comment '角色描述',
   primary key (role_id)
);

alter table web_role comment '权限角色交易';

create table web_role_menu
(
   role_id              int not null comment '角色ID',
   menu_id              int not null comment '菜单ID',
   primary key (role_id, menu_id)
);

alter table web_role_menu comment '权限角色菜单交易';

create table web_user
(
   user_id              varchar(20) not null comment '用户ID',
   user_name            varchar(20) not null comment '用户名称',
   password             varchar(200) not null comment '用户密码',
   message              varchar(255) default '' comment '用户信息',
   organization         varchar(100) default '' comment '机构',
   legalentity          varchar(100) default '' comment '法人',
   primary key (user_id)
);

alter table web_user comment '权限用户交易';

create table web_user_role
(
   role_id              int not null comment '角色ID',
   user_id              varchar(30) not null comment '用户ID',
   primary key (user_id)
);

alter table web_user_role comment '权限用户角色交易';

