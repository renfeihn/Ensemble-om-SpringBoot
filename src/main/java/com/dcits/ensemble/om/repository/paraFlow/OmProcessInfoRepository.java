package com.dcits.ensemble.om.repository.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmProcessInfoKeysClass;
import com.dcits.ensemble.om.model.dbmodel.OmProcessInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by ligan on 2018/8/14.
 */
public interface OmProcessInfoRepository extends JpaRepository<OmProcessInfo,OmProcessInfoKeysClass> ,JpaSpecificationExecutor<OmProcessInfo>{

}
