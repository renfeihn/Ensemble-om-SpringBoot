package com.dcits.ensemble.om.repository.prodFactory;

import com.dcits.ensemble.om.model.dbmodel.MbAttrClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by jiajt on 2018/12/3.
 */
public interface MbAttrClassRepository extends JpaRepository<MbAttrClass,Long>,JpaSpecificationExecutor<MbAttrClass> {

}
