package com.dcits.ensembleom.repository.paraFlow;

import com.dcits.ensembleom.model.ParaDifferenceCheckPublish;
import com.dcits.ensembleom.model.dbmodel.ParaCircleInfo;
import com.dcits.ensembleom.model.dbmodel.ParaCircleInfoKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by ligan on 2018/8/14.
 */
public interface ParaCircleInfoRepository extends JpaRepository<ParaCircleInfo,ParaCircleInfoKeysClass> ,JpaSpecificationExecutor<ParaCircleInfo>{

}
