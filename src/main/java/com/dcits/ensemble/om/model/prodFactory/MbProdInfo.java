package com.dcits.ensemble.om.model.prodFactory;


import com.dcits.ensemble.om.model.dbmodel.MbProdDefine;
import com.dcits.ensemble.om.model.dbmodel.MbProdType;
import com.dcits.ensemble.om.model.dbmodel.tables.*;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/8/14.
 */
@Getter
@Setter
public class MbProdInfo {
    private MbProdType prodType;
    private Map<String,MbProdDefine> prodDefines;
    private Map<String,MbEventInfo> mbEventInfos;
    private Map<String, MbColumnInfo> mbColumnInfo;
    private List<GlProdAccounting> glProdAccounting;
    private List<GlProdCodeMapping> glProdCodeMappings;
    private IrlProdIntInfo irlProdIntInfos;
    private List<IrlProdInt> irlProdInt;
    private List<IrlIntMatrix> irlIntMatrices;
    private List<MbProdCharge> mbProdCharge;
    private List<GlProdMapping> glProdMappings;
    private List<IrlProdType> irlProdTypes;
    private List<IrlBasisRate> irlBasisRateList;
    private List<MbProdAmendMaping> mbProdAmendMaping;
    private List<MbProdGroup> mbProdGroup;
    @Override
    public String toString() {
        return "MbProdInfo{" +
                "prodType=" + prodType +
                ", prodDefines=" + prodDefines +
                ", mbEventInfos=" + mbEventInfos +
                ", mbColumnInfo=" + mbColumnInfo +
                ", glProdAccounting=" + glProdAccounting +
                ", glProdCodeMappings=" + glProdCodeMappings +
                ", irlProdIntInfos=" + irlProdIntInfos +
                ", irlProdInt=" + irlProdInt +
                ", irlIntMatrices=" + irlIntMatrices +
                ", mbProdCharge=" + mbProdCharge +
                ", glProdMappings=" + glProdMappings +
                ", irlProdTypes=" + irlProdTypes +
                ", IrlBasisRate=" + irlBasisRateList +
                ", mbProdGroups=" + mbProdGroup +
                ", mbProdAmendMaping=" + mbProdAmendMaping +
                '}';
    }
}
