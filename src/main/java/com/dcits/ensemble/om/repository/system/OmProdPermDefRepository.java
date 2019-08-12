package com.dcits.ensemble.om.repository.system;

import com.dcits.ensemble.om.model.dbmodel.system.OmProdPermDef;
import com.dcits.ensemble.om.model.dbmodel.system.OmProdPermDefClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * Created by jiajt on 2018/11/21.
 */
public interface OmProdPermDefRepository extends JpaRepository<OmProdPermDef,OmProdPermDefClass>,JpaSpecificationExecutor<OmProdPermDef> {
    public OmProdPermDef findByUserIdAndModelType(String userId,String modelType);
    public List<OmProdPermDef> findByUserId(String userId);
}
