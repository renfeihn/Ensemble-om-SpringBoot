package com.dcits.ensemble.om.model.prodFactory;


import com.dcits.ensemble.om.model.dbmodel.MbProdDefine;
import com.dcits.ensemble.om.model.dbmodel.MbProdType;
import com.dcits.ensemble.om.model.dbmodel.tables.GlProdAccounting;
import com.dcits.ensemble.om.model.dbmodel.tables.IrlProdInt;
import com.dcits.ensemble.om.model.dbmodel.tables.MbAcctStats;
import com.dcits.ensemble.om.model.dbmodel.tables.MbProdCharge;
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
    private List<GlProdAccounting> glProdAccounting;
    private List<IrlProdInt> irlProdInt;
    private List<MbAcctStats> mbAcctStats;
    private List<MbProdCharge> mbProdCharge;
    private Map<String,MbProdDefine> prodDefines;
    private Map<String,MbEventInfo> mbEventInfos;
    private Map<String, MbColumnInfo> mbColumnInfo;
    @Override
    public String toString() {
        return "MbProdInfo{" +
                "prodType=" + prodType +
                ", glProdAccounting=" + glProdAccounting +
                ", irlProdInt=" + irlProdInt +
                ", mbAcctStats=" + mbAcctStats +
                ", mbProdCharge=" + mbProdCharge +
                ", prodDefines=" + prodDefines +
                ", mbColumnInfo=" + mbColumnInfo +
                ", mbEventInfos=" + mbEventInfos +
                '}';
    }
}
