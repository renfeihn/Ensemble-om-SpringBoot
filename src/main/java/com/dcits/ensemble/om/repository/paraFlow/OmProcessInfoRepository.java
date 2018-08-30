package com.dcits.ensemble.om.repository.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmProcessCombination;
import com.dcits.ensemble.om.model.dbmodel.OmProcessCombinationKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by ligan on 2018/8/14.
 */
public interface OmProcessInfoRepository extends JpaRepository<OmProcessCombination,OmProcessCombinationKeysClass> ,JpaSpecificationExecutor<OmProcessCombination>{

}
