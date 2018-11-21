package com.dcits.ensemble.om.model.dbmodel.system;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by jiajt on 2018/11/21.
 */
@Entity
@Table(name = "OmMenu")
@Getter
@Setter
public class OmMenu implements Serializable {
    public OmMenu () {}

    public OmMenu(String menuSeqNo, String menuId, String menuDesc, String menuParentId, String menuLevel, String menuStatus) {
        this.menuSeqNo = menuSeqNo;
        this.menuId = menuId;
        this.menuDesc = menuDesc;
        this.menuParentId = menuParentId;
        this.menuLevel = menuLevel;
        this.menuStatus = menuStatus;
    }



    @Id
    @Column(name = "menu_seq_no")
    private String menuSeqNo;
    @Column(name = "menu_id")
    private String menuId;
    @Column(name = "menu_desc")
    private String menuDesc;
    @Column(name = "menu_parent_id")
    private String menuParentId;
    @Column(name = "menu_level")
    private String menuLevel;
    @Column(name = "menu_status")
    private String menuStatus;

    @Override
    public String toString() {
        return "OmMenu{" +
                "menuSeqNo='" + menuSeqNo + '\'' +
                ", menuId='" + menuId + '\'' +
                ", menuDesc='" + menuDesc + '\'' +
                ", menuParentId='" + menuParentId + '\'' +
                ", menuLevel='" + menuLevel + '\'' +
                ", menuStatus='" + menuStatus + '\'' +
                '}';
    }
}
