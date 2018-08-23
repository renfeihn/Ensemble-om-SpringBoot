package com.dcits.ensembleom.repository.prodFactory;

import com.dcits.ensembleom.model.ParaDifferenceCheckPublish;
import com.dcits.ensembleom.model.dbmodel.MbEventPart;
import com.dcits.ensembleom.model.dbmodel.MbProdDefine;
import com.dcits.ensembleom.model.dbmodel.MbProdDefineKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by ligan on 2018/8/14.
 */
public interface MbProdDefineRepository extends JpaRepository<MbProdDefine,MbProdDefineKeysClass> ,JpaSpecificationExecutor<ParaDifferenceCheckPublish>{

}
