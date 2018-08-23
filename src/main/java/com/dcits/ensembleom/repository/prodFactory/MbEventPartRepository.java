package com.dcits.ensembleom.repository.prodFactory;

import com.dcits.ensembleom.model.ParaDifferenceCheckPublish;
import com.dcits.ensembleom.model.dbmodel.MbEventPart;
import com.dcits.ensembleom.model.dbmodel.MbEventPartKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by ligan on 2018/8/14.
 */
public interface MbEventPartRepository extends JpaRepository<MbEventPart,MbEventPartKeysClass> ,JpaSpecificationExecutor<ParaDifferenceCheckPublish>{

}
