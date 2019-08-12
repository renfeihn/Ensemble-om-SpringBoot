drop table if exists web_menu;

drop table if exists web_role;

drop table if exists web_role_menu;

drop table if exists web_user;

drop table if exists web_user_role;

create table web_menu
(
   menu_seq             int default null comment '�˵����',
   menu_id              int not null comment '�˵�ID',
   menu_name            varchar(20) not null comment '�˵�����',
   menu_parent_id       int not null comment '�ϼ��˵�ID',
   menu_url             varchar(100) not null comment '�˵�URL',
   menu_status          varchar(10) not null comment '�˵�״̬',
   menu_action          varchar(100) default '' comment '��ť����',
   primary key (menu_id)
);

alter table web_menu comment 'Ȩ�޲˵�����';

create table web_role
(
   role_id              int not null comment '��ɫID',
   role_name            varchar(20) not null comment '��ɫ����',
   role_desc            varchar(100) not null comment '��ɫ����',
   primary key (role_id)
);

alter table web_role comment 'Ȩ�޽�ɫ����';

create table web_role_menu
(
   role_id              int not null comment '��ɫID',
   menu_id              int not null comment '�˵�ID',
   primary key (role_id, menu_id)
);

alter table web_role_menu comment 'Ȩ�޽�ɫ�˵�����';

CREATE TABLE web_user (
  USER_ID varchar(20) NOT NULL COMMENT '用户ID',
  USER_NAME varchar(20) NOT NULL COMMENT '用户名称',
  PASSWORD varchar(20) NOT NULL COMMENT '用户密码',
  MESSAGE varchar(255) DEFAULT '' COMMENT '机构',
  ORGANIZATION varchar(100) DEFAULT '' COMMENT '法人',
  LEGALENTITY varchar(100) DEFAULT '' COMMENT '用户信息',
  PRIMARY KEY (USER_ID)
);

alter table web_user comment 'Ȩ���û�����';

create table web_user_role
(
   role_id              int not null comment '��ɫID',
   user_id              varchar(30) not null comment '�û�ID',
   primary key (user_id)
);

alter table web_user_role comment 'Ȩ���û���ɫ����';

