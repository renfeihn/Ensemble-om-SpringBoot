package com.dcits.ensemble.om.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "om_page_classification")
@IdClass(OmPageClassificationKeysClass.class)
@Getter
@Setter
public class OmPageClassification {
    public OmPageClassification(){

    }

    public OmPageClassification(String department, String pageClass, String attrKey) {
        this.department = department;
        this.pageClass = pageClass;
        this.attrKey = attrKey;
    }

    @Id
    @Column(name="department")
    private String department;
    @Id
    @Column(name="page_class")
    private String pageClass;
    @Id
    @Column(name="attr_key")
    private String attrKey;

    @Override
    public String toString() {
        return "OmPageClassification{" +
                "department='" + department + '\'' +
                ", pageClass='" + pageClass + '\'' +
                ", attrKey='" + attrKey + '\'' +
                '}';
    }
}
