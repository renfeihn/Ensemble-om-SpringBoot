create table GL_TAXRATE_INFO
(
    TAXRATE_TYPE Varchar2(3) not null,
    TAX_RATE number(15,8) not null,
    EFFECT_DATE Varchar2(8) not null,
    COMPANY Varchar2(20),
    constraint PK_GL_TAXRATE_INFO primary key (TAXRATE_TYPE,EFFECT_DATE)
) tablespace account_data;
comment on table GL_TAXRATE_INFO is '增值税税率维护表';
comment on column GL_TAXRATE_INFO.TAXRATE_TYPE is '税率类型 ';
comment on column GL_TAXRATE_INFO.TAX_RATE is '税率 ';
comment on column GL_TAXRATE_INFO.EFFECT_DATE is '生效日期 ';
comment on column GL_TAXRATE_INFO.COMPANY is '法人代码 FM_COMPANY.COMPANY';