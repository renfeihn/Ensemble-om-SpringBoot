drop table if exists para_apply_check_publish;

drop table if exists para_circle_flow;

drop table if exists para_difference_check_publish;

drop table if exists para_env_org;

drop table if exists para_fields_column;

drop table if exists para_module_org;

drop table if exists para_namespace_org;

drop table if exists para_select_fields;

drop table if exists para_system_org;

drop table if exists para_table_fields;

drop table if exists para_transaction_table_org;

drop table if exists para_user_authority;

create table para_apply_check_publish
(
   req_no               varchar(50) not null comment '日期+时间',
   tran_timestamp       varchar(20) not null comment '时间戳',
   operator_type        varchar(1) not null comment '操作类型: A:申请;C:复核;P:发布;R:复核驳回;J:发布驳回;E:输入;S:附属;F:作废',
   check_text           varchar(500) not null comment '复核发布意见',
   approve              varchar(1) not null comment '是否通过:Y;N,作废:C',
   operator_id          varchar(30) not null comment '操作人ID',
   currentsystem_time   varchar(50) not null comment '操作时间',
   client_ip            varchar(30) not null comment '操作人IP',
   primary key (req_no, tran_timestamp)
);

alter table para_apply_check_publish comment '申请审核发布流程管理表';

create table para_circle_flow
(
   req_no               varchar(60) not null comment '日期+时间',
   transaction_id       varchar(50) not null comment '参数交易名(MenuID)/参数表全名',
   transaction_desc     varchar(100) not null comment '交易中文描述',
   current_status       varchar(1) not null comment '当前状态:已申请1，已录入2，已复核3，已发布4，已作废5，已驳回6, 附属交易0',
   multitbdata          longblob comment '接收到的批量修改/删除/添加参数表数据的报文',
   operate_desc         varchar(500) comment '操作描述',
   primary key (req_no)
);

alter table para_circle_flow comment '参数流程控制表';

create table para_difference_check_publish
(
   tran_timestamp       varchar(20) not null comment '时间戳',
   series_num           int not null comment '序列号',
   req_no               varchar(60) not null comment '日期+时间',
   table_full_name      varchar(50) not null comment '参数表全名',
   primary_keyvalue     varchar(2000) comment '主键值组合',
   key_value            longblob comment '主键字段和值',
   operate_type         varchar(1) not null comment '操作类型：D/U/I',
   data_dui             longblob comment '批量删除/添加/修改参数表数据的报文',
   olddata_upd          longblob comment '批量修改之前的参数表数据报文',
   primary key (tran_timestamp, series_num)
);

alter table para_difference_check_publish comment '参数数据操作一览表';

create table para_env_org
(
   env_id               varchar(30) not null comment '环境ID',
   system_id            varchar(10) not null comment '系统ID',
   env_desc             varchar(100) not null comment '环境描述',
   url                  varchar(100) not null comment 'HTTP接入URL',
   module               varchar(5) not null comment '模块',
   service_code         varchar(30) not null comment '服务代码',
   message_type         varchar(4) not null comment '报文类型',
   message_code         varchar(6) not null comment '报文代码',
   operator             varchar(50) default null comment '最新修改人ID',
   time                 varchar(50) default null comment '最新修改时间',
   ip                   varchar(50) default null comment '最后修改人IP',
   primary key (env_id)
);

alter table para_env_org comment '环境设置表';

create table para_fields_column
(
   column_name          varchar(32) not null comment '列名',
   column_type          varchar(16) not null comment '字段类型',
   column_desc          varchar(50) not null comment '字段描述',
   data_length          int default null comment '数据长度',
   value_method         varchar(2) default null comment '显示类型',
   value_score          varchar(500) default null comment '固定备选',
   ref_table            varchar(50) default null comment '来自表',
   ref_col              varchar(50) default null comment '来自列',
   primary key (column_name)
);

alter table para_fields_column comment '元字段描述表';

create table para_module_org
(
   module_id            varchar(10) not null comment '模块代码',
   system_id            varchar(10) not null comment '目标系统ID',
   module_name          varchar(60) not null comment '目标模块名称',
   module_desc          varchar(100) default null comment '目标模块描述',
   primary key (module_id, system_id)
);

alter table para_module_org comment '目标模块表';

create table para_namespace_org
(
   transaction_id       varchar(50) not null comment '表名/交易ID',
   system_id            varchar(10) not null comment '目标系统ID',
   is_tbname            varchar(1) not null comment '是否表名：Y;N',
   transaction_desc     varchar(100) not null comment '交易中文描述',
   module_id            varchar(10) not null comment '模块代码',
   jsp_url              varchar(100) not null comment '比较差异数据,编辑数据的jsp链接',
   band_enteringcheck   varchar(10) not null default 'Y' comment '录入和复核是否可以是同一个人:Y;N',
   delete_auth          varchar(10) not null default 'Y' comment '能否删除数据:Y;N',
   namespace_name       varchar(60) not null comment '命名空间名称',
   namespace_desc       varchar(100) default null comment '命名空间描述',
   jsp_viewurl          varchar(100) default null comment '多表查看jsp链接',
   primary key (transaction_id, system_id)
);

alter table para_namespace_org comment '参数表信息管理表';

create table para_select_fields
(
   table_name           varchar(32) not null comment '表名',
   select1              varchar(32) not null comment '条件1',
   select2              varchar(32) default null comment '条件2',
   select3              varchar(32) default null comment '条件3',
   primary key (table_name)
);

alter table para_select_fields comment '参数表条件管理表';

create table para_system_org
(
   system_id            varchar(10) not null comment '目标系统ID',
   system_name          varchar(60) not null comment '目标系统名称',
   system_desc          varchar(100) default null comment '目标系统描述',
   primary key (system_id)
);

alter table para_system_org comment '目标系统表';

create table para_table_fields
(
   table_name           varchar(32) not null comment '表名',
   column_name          varchar(32) not null comment '列名',
   is_null              varchar(1) not null comment '是否为空：Y;N',
   is_primary           varchar(1) not null comment '是否主键：Y;N',
   reg_format           varchar(500) comment '正则表达式',
   tip_message          varchar(500) comment '出错提示信息',
   primary key (table_name, column_name, is_primary)
);

alter table para_table_fields comment '参数表字段信息管理表';

create table para_transaction_table_org
(
   req_no               varchar(60) not null comment '主交易日期+时间',
   transaction_id       varchar(100) not null comment '参数表全名:系统名_表名',
   sub_req_no           varchar(60) not null comment '附属交易日期+时间',
   publish_status       varchar(1) default 'N',
   primary key (req_no, transaction_id)
);

alter table para_transaction_table_org comment '参数表交易和表对应关系表';

create table para_user_authority
(
   user_id              varchar(20) not null comment '用户ID',
   auth_application     varchar(10) not null comment '申请：Y;N',
   auth_entering        varchar(10) not null comment '录入:Y;N',
   auth_check           varchar(10) not null comment '复核:Y;N',
   auth_publish         varchar(10) not null comment '发布:Y;N',
   primary key (user_id)
);

alter table para_user_authority comment '用户参数操作权限表';

