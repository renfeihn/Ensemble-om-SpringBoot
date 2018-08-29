package com.dcits.ensemble.om.model.prodFactory;


import com.dcits.ensemble.om.model.dbmodel.MbEventAttr;
import com.dcits.ensemble.om.model.dbmodel.MbEventPart;
import com.dcits.ensemble.om.model.dbmodel.MbEventType;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */@Getter
   @Setter
public class MbEventInfo {
    private MbEventType mbEventType;
    private List<MbEventAttr> mbEventAttrs;
    private List<MbEventPart> mbEventParts;

    @Override
    public String toString() {
        return "MbEventInfo{" +
                "mbEventType=" + mbEventType +
                ", mbEventAttrs=" + mbEventAttrs +
                ", mbEventParts=" + mbEventParts +
                '}';
    }
}
