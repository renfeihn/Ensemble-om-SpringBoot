package com.dcits.ensemble.om.model.prodFactory;


import com.dcits.ensemble.om.model.dbmodel.MbEventAttr;
import com.dcits.ensemble.om.model.dbmodel.MbEventPart;
import com.dcits.ensemble.om.model.dbmodel.MbEventType;
import lombok.Getter;
import lombok.Setter;

import java.util.Map;

/**
 * Created by ligan on 2018/8/14.
 */@Getter
   @Setter
public class MbEventInfo {
    private MbEventType mbEventType;
    private Map<String,MbEventAttr> mbEventAttrs;
    private Map<String,Map> mbEventParts;

    @Override
    public String toString() {
        return "MbEventInfo{" +
                "mbEventType=" + mbEventType +
                ", mbEventAttrs=" + mbEventAttrs +
                ", mbEventParts=" + mbEventParts +
                '}';
    }
}
