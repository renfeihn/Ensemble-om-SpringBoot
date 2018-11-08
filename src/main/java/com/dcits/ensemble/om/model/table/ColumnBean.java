package com.dcits.ensemble.om.model.table;

import lombok.Getter;
import lombok.Setter;

/**
 * Created by ligan on 2018/11/8.
 */
@Getter
@Setter
public class ColumnBean {
    public ColumnBean(String dataIndex, String title, String key, String isNull) {
        this.dataIndex = dataIndex;
        this.title = title;
        this.key = key;
        this.isNull = isNull;
    }

    String dataIndex;
    String title;
    String key;
    String isNull;
}
