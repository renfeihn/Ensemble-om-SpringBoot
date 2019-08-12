package com.dcits.ensemble.om.repository.prodFactory;

import com.dcits.ensemble.om.model.dbmodel.MbEventClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by ligan on 2018/8/14.
 */
public interface MbEventClassRepository extends JpaRepository<MbEventClass,Long> ,JpaSpecificationExecutor<MbEventClass>{
    MbEventClass findByEventClass(String eventClass);
}
