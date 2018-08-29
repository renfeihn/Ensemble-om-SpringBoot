package com.dcits.ensemble.om.table;

import lombok.Data;

import java.util.List;

@Data
public class DbTables {
    private List<DbTable> dbTables;

    public DbTables(List<DbTable> dbTables) {
        this.dbTables = dbTables;
    }
}
