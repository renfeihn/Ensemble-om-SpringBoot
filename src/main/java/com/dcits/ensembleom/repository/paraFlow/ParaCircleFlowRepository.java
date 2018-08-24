package com.dcits.ensembleom.repository.paraFlow;

import com.dcits.ensembleom.model.ParaDifferenceCheckPublish;
import com.dcits.ensembleom.model.dbmodel.ParaCircleFlow;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by ligan on 2018/8/14.
 */
public interface ParaCircleFlowRepository extends JpaRepository<ParaCircleFlow,Long> ,JpaSpecificationExecutor<ParaCircleFlow>{

}
