package com.dcits.ensembleom.table;

import javafx.scene.control.Tab;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class TableDefineTest {

    @Test
    public void getTables() {
        List<DbTable> dbTableList = TableDefine.getTables();
        System.out.println(dbTableList.toString());
    }
}