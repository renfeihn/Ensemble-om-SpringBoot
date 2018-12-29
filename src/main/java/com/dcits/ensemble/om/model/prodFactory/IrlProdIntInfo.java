package com.dcits.ensemble.om.model.prodFactory;


import com.dcits.ensemble.om.model.dbmodel.tables.*;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class IrlProdIntInfo {
    private List<IrlPeriSplit> irlPeriSplitList;

    private List<IrlAmtSplit> irlAmtSplitList;

    private List<IrlIntType> irlIntTypeList;

    private List<IrlIntRate> irlIntRateList;

    private List<IrlBasisRate> irlBasisRateList;


    @Override
    public String toString() {
        return "IrlProdIntInfo{" +
                "IrlPeriSplit=" + irlPeriSplitList +
                ", IrlAmtSplit=" + irlAmtSplitList +
                ", IrlIntType=" + irlIntTypeList +
                ", IrlIntRate=" + irlIntRateList +
                ", IrlBasisRate=" + irlBasisRateList +

                '}';
    }

}
