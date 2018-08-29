package com.dcits.ensemble.om.repository.prodFactory;

import com.dcits.ensemble.om.model.dbmodel.MbEventAttr;
import com.dcits.ensemble.om.model.dbmodel.MbEventAttrKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface MbEventAttrRepository extends JpaRepository<MbEventAttr,MbEventAttrKeysClass> ,JpaSpecificationExecutor<MbEventAttr>{
     List<MbEventAttr> findByEventTypeAndAssembleType(String eventType,String assembleType);
}
