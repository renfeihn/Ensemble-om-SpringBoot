create table GL_TAXRATE_DEFINE
(
    TAXRATE_TYPE Varchar2(3) not null,
    TAXRATE_DESC Varchar2(30) not null,
    START_METHOD Varchar2(1) not null,
    COMPANY Varchar2(20),
    constraint PK_GL_TAXRATE_DEFINE primary key (TAXRATE_TYPE)
) tablespace account_data;
comment on table GL_TAXRATE_DEFINE is '增值税税率类型定义表';
comment on column GL_TAXRATE_DEFINE.TAXRATE_TYPE is '税率类型 ';
comment on column GL_TAXRATE_DEFINE.TAXRATE_DESC is '税率类型描述 ';
comment on column GL_TAXRATE_DEFINE.START_METHOD is '启动方式 ';
comment on column GL_TAXRATE_DEFINE.COMPANY is '法人代码 FM_COMPANY.COMPANY';