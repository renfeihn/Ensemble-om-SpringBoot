package com.dcits.ensembleom.repository.paraFlow;

import com.dcits.ensembleom.model.dbmodel.OmProcessCombination;
import com.dcits.ensembleom.model.dbmodel.OmProcessCombinationKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by ligan on 2018/8/14.
 */
public interface OmProcessCombinationRepository extends JpaRepository<OmProcessCombination,OmProcessCombinationKeysClass> ,JpaSpecificationExecutor<OmProcessCombination>{
;
}
