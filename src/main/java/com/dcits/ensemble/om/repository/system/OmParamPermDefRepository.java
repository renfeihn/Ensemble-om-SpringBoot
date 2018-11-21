package com.dcits.ensemble.om.repository.system;

import com.dcits.ensemble.om.model.dbmodel.system.OmParamPermDef;
import com.dcits.ensemble.om.model.dbmodel.system.OmParamPermDefClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by jiajt on 2018/11/21.
 */
public interface OmParamPermDefRepository extends JpaRepository<OmParamPermDef,OmParamPermDefClass>,JpaSpecificationExecutor<OmParamPermDef> {
    public OmParamPermDef findByUserIdAndSystemIdAndModelId(String userId,String systemId,String modelId);
}
