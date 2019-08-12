package com.dcits.ensemble.om.model.dbmodel.tables;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by ligan on 2018/11/8.
 */
@Entity
@Table(name = "om_table_list")
@Getter
@Setter
public class OmTableList {
    public OmTableList(String tableName, String tableDesc, String system, String parameter,String modelId,String searchColumn,String eidtColumns) {
        this.tableName = tableName;
        this.tableDesc = tableDesc;
        this.system = system;
        this.parameter = parameter;
        this.modelId  = modelId;
        this.searchColumn = searchColumn;
        this.eidtColumns = eidtColumns;
    }
    public OmTableList() {

    }
    @Id
    @Column(name="table_name")
    private String tableName;
    @Column(name="table_desc")
    private String tableDesc;
    @Column(name="system")
    private String system;
    @Column(name="parameter")
    private String parameter;
    @Column(name="model_id")
    private String modelId;
    @Column(name="search_column")
    private String searchColumn;
    @Column(name="eidt_columns")
    private String eidtColumns;


    @Override
    public String toString() {
        return "OmTableList{" +
                "tableName='" + tableName + '\'' +
                ", tableDesc='" + tableDesc + '\'' +
                ", system='" + system + '\'' +
                ", parameter='" + parameter + '\'' +
                ", modelId='" + modelId + '\'' +
                ", searchColumn='" + searchColumn + '\'' +
                ", eidtColumns='" + eidtColumns + '\'' +
                '}';
    }
}
