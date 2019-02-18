package com.dcits.ensemble.om.model.table;

import lombok.Getter;
import lombok.Setter;

/**
 * Created by zjy on 2019/02/15.
 */
@Getter
@Setter
public class ColumnHeard {
    public ColumnHeard(String code, String title) {
        this.code = code;
        this.title = title;
    }
    String code;
    String title;
}
