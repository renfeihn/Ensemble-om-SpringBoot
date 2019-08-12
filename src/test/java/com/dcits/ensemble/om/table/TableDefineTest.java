package com.dcits.ensemble.om.table;

import org.junit.Test;

import java.util.List;

public class TableDefineTest {

    @Test
    public void getTables() {
/*        List<DbTable> dbTableList = TableDefine.getTables();
        System.out.println(dbTableList.toString());*/
        DbTable dbTable = TableDefine.getTable("MB_PROD_TYPE");

        System.out.println(dbTable.toString());
    }
}