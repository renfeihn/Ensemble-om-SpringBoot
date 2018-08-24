package com.dcits.ensembleom.repository.paraFlow;

import com.dcits.ensembleom.model.ParaDifferenceCheckPublish;
import com.dcits.ensembleom.model.dbmodel.ParaDifferenceCheckPublishKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by ligan on 2018/8/14.
 */
public interface ParaDifferenceChcekPublishRepository extends JpaRepository<ParaDifferenceCheckPublish,ParaDifferenceCheckPublishKeysClass> ,JpaSpecificationExecutor<ParaDifferenceCheckPublish>{

}
