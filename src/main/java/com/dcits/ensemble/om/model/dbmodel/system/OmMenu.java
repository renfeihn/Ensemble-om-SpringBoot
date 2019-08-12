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

    public OmMenu(String menuSeqNo, String menuId, String menuParams, String menuParentId, String menuLevel, String menuStatus, String menuIcon, String menuComponent,String menuTitle) {
        this.menuSeqNo = menuSeqNo;
        this.menuId = menuId;
        this.menuParams = menuParams;
        this.menuParentId = menuParentId;
        this.menuLevel = menuLevel;
        this.menuStatus = menuStatus;
        this.menuIcon = menuIcon;
        this.menuComponent = menuComponent;
        this.menuTitle = menuTitle;
    }

    @Id
    @Column(name = "menu_seq_no")
    private String menuSeqNo;
    @Column(name = "menu_id")
    private String menuId;
    @Column(name = "menu_params")
    private String menuParams;
    @Column(name="menuTitle")
    private String menuTitle;
    @Column(name = "menu_parent_id")
    private String menuParentId;
    @Column(name = "menu_level")
    private String menuLevel;
    @Column(name = "menu_status")
    private String menuStatus;
    @Column(name = "menu_icon")
    private String menuIcon;
    @Column(name = "menu_component")
    private String menuComponent;

    @Override
    public String toString() {
        return "OmMenu{" +
                "menuSeqNo='" + menuSeqNo + '\'' +
                ", menuId='" + menuId + '\'' +
                ", menuName='" + menuParams + '\'' +
                ", menuParentId='" + menuParentId + '\'' +
                ", menuLevel='" + menuLevel + '\'' +
                ", menuTitle='" + menuTitle + '\'' +
                ", menuStatus='" + menuStatus + '\'' +
                ", menuIcon='" + menuIcon + '\'' +
                ", menuComponent='" + menuComponent + '\'' +
                '}';
    }
}
