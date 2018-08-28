package com.dcits.ensembleom.repository.prodFactory;

import com.dcits.ensembleom.model.dbmodel.MbEventType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by ligan on 2018/8/14.
 */
public interface MbEventTypeRepository extends JpaRepository<MbEventType,Long> ,JpaSpecificationExecutor<MbEventType>{
    MbEventType findByEventType(String eventType);
}
