package com.dcits.ensembleom.model.prodFactory;


import com.dcits.ensembleom.model.dbmodel.MbProdDefine;
import com.dcits.ensembleom.model.dbmodel.MbProdType;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
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
