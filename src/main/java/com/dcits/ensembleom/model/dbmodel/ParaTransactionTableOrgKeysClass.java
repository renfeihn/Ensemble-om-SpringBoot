package com.dcits.ensembleom.model.dbmodel;


import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * Created by ligan on 2018/8/14.
 */
@Getter
@Setter
public class ParaTransactionTableOrgKeysClass implements Serializable {
    private String reqNo;
    private String transactionId;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ParaTransactionTableOrgKeysClass that = (ParaTransactionTableOrgKeysClass) o;

        if (reqNo != null ? !reqNo.equals(that.reqNo) : that.reqNo != null) return false;
        return !(transactionId != null ? !transactionId.equals(that.transactionId) : that.transactionId != null);

    }

    @Override
    public int hashCode() {
        int result = reqNo != null ? reqNo.hashCode() : 0;
        result = 31 * result + (transactionId != null ? transactionId.hashCode() : 0);
        return result;
    }
}
