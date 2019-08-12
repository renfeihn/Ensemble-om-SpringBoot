package com.dcits.ensemble.om.model.table;

import lombok.Getter;
import lombok.Setter;

/**
 * Created by ligan on 2018/11/8.
 */
@Getter
@Setter
public class ColumnBean {
    public ColumnBean(String code,String dataIndex, String title, String key, String isNull, String lengths) {
        this.code = code;
        this.dataIndex = dataIndex;
        this.title = title;
        this.key = key;
        this.isNull = isNull;
        this.lengths = lengths;
    }
    String code;
    String dataIndex;
    String title;
    String key;
    String isNull;
    String lengths;
}
