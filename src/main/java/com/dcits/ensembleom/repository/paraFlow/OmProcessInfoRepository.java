package com.dcits.ensembleom.repository.paraFlow;

import com.dcits.ensembleom.model.dbmodel.OmProcessInfo;
import com.dcits.ensembleom.model.dbmodel.OmProcessInfoKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by ligan on 2018/8/14.
 */
public interface OmProcessInfoRepository extends JpaRepository<OmProcessInfo,OmProcessInfoKeysClass> ,JpaSpecificationExecutor<OmProcessInfo>{

}
