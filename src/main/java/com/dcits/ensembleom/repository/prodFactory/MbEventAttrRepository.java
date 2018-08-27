package com.dcits.ensembleom.repository.prodFactory;

import com.dcits.ensembleom.model.dbmodel.MbEventAttr;
import com.dcits.ensembleom.model.dbmodel.MbEventAttrKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface MbEventAttrRepository extends JpaRepository<MbEventAttr,MbEventAttrKeysClass> ,JpaSpecificationExecutor<MbEventAttr>{
     List<MbEventAttr> findByEventTypeAndAssembleType(String eventType,String assembleType);
}
