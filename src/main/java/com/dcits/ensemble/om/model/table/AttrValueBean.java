package com.dcits.ensemble.om.model.table;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * Created by ligan on 2018/11/15.
 */
@Getter
@Setter
public class AttrValueBean {
   private String key;
    private List<String> valueScore;
    private String rfTable;
    private String rfColumn;
    private String rfColumnDesc;

}
