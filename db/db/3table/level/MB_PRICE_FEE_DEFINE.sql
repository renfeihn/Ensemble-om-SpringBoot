create table MB_PRICE_FEE_DEFINE
(
    PROD_FEE_TYPE Varchar2(8) not null,
    GL_CODE Varchar2(20) not null,
    CR_DR Varchar2(1) not null,
    TAXRATE_CODE Varchar2(3) not null,
    START_DATE Varchar2(8) not null,
    AFTER_TREATMENT Varchar2(1),
    OPER_NARRATIVE Varchar2(200),
    TAX_GL_CODE Varchar2(20) not null,
    COMPANY Varchar2(20),
    constraint PK_MB_PRICE_FEE_DEFINE primary key (PROD_FEE_TYPE,GL_CODE,CR_DR,START_DATE)
) tablespace account_data;
comment on table MB_PRICE_FEE_DEFINE is '价税分离范围定义表';
comment on column MB_PRICE_FEE_DEFINE.PROD_FEE_TYPE is '产品类型/费用类型 ';
comment on column MB_PRICE_FEE_DEFINE.GL_CODE is '科目代码GL_PROD_ACCOUNTING ';
comment on column MB_PRICE_FEE_DEFINE.CR_DR is '借贷标志 C:贷 D：借';
comment on column MB_PRICE_FEE_DEFINE.TAXRATE_CODE is '税率代码 ';
comment on column MB_PRICE_FEE_DEFINE.START_DATE is '生效日期 ';
comment on column MB_PRICE_FEE_DEFINE.AFTER_TREATMENT is '是否补充处理 ';
comment on column MB_PRICE_FEE_DEFINE.OPER_NARRATIVE is '备注 ';
comment on column MB_PRICE_FEE_DEFINE.TAX_GL_CODE is '税率科目代码 ';
comment on column MB_PRICE_FEE_DEFINE.COMPANY is '法人代码 FM_COMPANY.COMPANY';