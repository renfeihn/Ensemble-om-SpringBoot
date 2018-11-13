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
@Table(name = "om_table_define")
@Getter
@Setter
public class OmTableDefine implements Serializable {
    public OmTableDefine() {}
    public OmTableDefine(String tableId, String tableName, String isTable, String systemId, String moduleId, String multiUserCheck, String permitRoleId) {
        this.tableId = tableId;
        this.tableName = tableName;
        this.isTable = isTable;
        this.systemId = systemId;
        this.moduleId = moduleId;
        this.multiUserCheck = multiUserCheck;
        this.permitRoleId = permitRoleId;
    }

    @Id
    @Column(name="table_id")
    private String tableId;
    @Column(name="table_name")
    private String tableName;
    @Column(name="is_table")
    private String isTable;
    @Column(name="system_id")
    private String systemId;
    @Column(name="module_id")
    private String moduleId;
    @Column(name="multi_user_check")
    private String multiUserCheck;
    @Column(name="permit_role_id")
    private String permitRoleId;

    @Override
    public String toString() {
        return "OmTableDefine{" +
                "tableId='" + tableId + '\'' +
                ", tableName='" + tableName + '\'' +
                ", isTable='" + isTable + '\'' +
                ", systemId='" + systemId + '\'' +
                ", moduleId='" + moduleId + '\'' +
                ", multiUserCheck='" + multiUserCheck + '\'' +
                ", permitRoleId='" + permitRoleId + '\'' +
                '}';
    }
}
