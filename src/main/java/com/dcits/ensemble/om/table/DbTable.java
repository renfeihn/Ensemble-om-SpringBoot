package com.dcits.ensemble.om.table;

import lombok.Data;

import java.util.List;

@Data
public class DbTable {

    private String code;

    private String system;

    private String comment;

    private String dbType;

    private String parameter;

    private List<Attr> attrs;

    public DbTable(String code, String system, String comment, String dbType, String parameter, List<Attr> attrs) {
        this.code = code;
        this.system = system;
        this.comment = comment;
        this.dbType = dbType;
        this.parameter = parameter;
        this.attrs = attrs;
    }
}
