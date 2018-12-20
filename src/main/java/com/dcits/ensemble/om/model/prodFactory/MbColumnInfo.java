package com.dcits.ensemble.om.model.prodFactory;

import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.Map;
@Getter
@Setter
public class MbColumnInfo {
    private String valueMethod;
    private String columnDesc;
    private String columnType;
    private String isMultiSelect;
    private List valueScoreVl;
    private Map valueScoreRf;
}
