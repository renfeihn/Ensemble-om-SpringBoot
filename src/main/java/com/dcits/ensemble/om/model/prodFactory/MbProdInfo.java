package com.dcits.ensemble.om.model.prodFactory;


import com.dcits.ensemble.om.model.dbmodel.MbProdDefine;
import com.dcits.ensemble.om.model.dbmodel.MbProdType;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/8/14.
 */@Getter
   @Setter
public class MbProdInfo {
    private MbProdType prodType;
    private Map<String,MbProdDefine> prodDefines;
    private List<MbEventInfo> mbEventInfos;

    @Override
    public String toString() {
        return "MbProdInfo{" +
                "prodType=" + prodType +
                ", prodDefines=" + prodDefines +
                ", mbEventInfos=" + mbEventInfos +
                '}';
    }
}
