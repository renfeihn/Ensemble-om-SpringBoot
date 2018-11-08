package com.dcits.ensemble.om.table;

import lombok.Data;

@Data
public class Attr {
    private String code;
    private String dataType;
    private String lengths;
    private String precision;
    private String comment;
    private String defaults;
    private String p;
    private String m;

    public Attr(String code, String dataType, String lengths, String precision, String comment, String defaults, String p, String m) {
        this.code = code;
        this.dataType = dataType;
        this.lengths = lengths;
        this.precision = precision;
        this.comment = comment;
        this.defaults = defaults;
        this.p = p;
        this.m = m;
    }
}
