package com.dcits.ensemble.om.model.dbmodel.system;

import lombok.Getter;
import lombok.Setter;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by jiajt on 2018/11/13.
 */

@Entity
@Table(name = "om_transaction_define")
@Getter
@Setter
public class OmTransactionDefine implements Serializable {
    public OmTransactionDefine() {}

    public OmTransactionDefine(String transactionId, String unitTables,String transactionName) {
        this.transactionId = transactionId;
        this.unitTables = unitTables;
        this.transactionName = transactionName;
    }

    @Id
    @Column(name="transaction_id")
    private String transactionId;
    @Column(name="unit_tables")
    private String unitTables;
    @Column(name="transaction_name")
    private String transactionName;

    @Override
    public String toString() {
        return "OmTransactionDefine{" +
                "transactionId='" + transactionId + '\'' +
                ", unitTables='" + unitTables + '\'' +
                ", transactionName='" + transactionName + '\'' +
                '}';
    }


}