TRUNCATE TABLE ${tablename};
<#list datas as data>INSERT INTO ${tablename} (<#list columns as column>${column.columnName}<#if column_has_next>, </#if></#list>) VALUES (<#list data as colval><#if colval?length!=0>'${colval}'<#else>NULL</#if><#if colval_has_next>, </#if></#list>);${nextline}</#list>
COMMIT;