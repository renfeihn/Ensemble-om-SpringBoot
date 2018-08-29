package com.dcits.ensemble.om.repository.prodFactory;

import com.dcits.ensemble.om.model.dbmodel.MbEventPart;
import com.dcits.ensemble.om.model.dbmodel.MbEventPartKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface MbEventPartRepository extends JpaRepository<MbEventPart,MbEventPartKeysClass> ,JpaSpecificationExecutor<MbEventPart>{
    List<MbEventPart> findByEventTypeAndAssembleId(String eventType,String assembleId );
}
