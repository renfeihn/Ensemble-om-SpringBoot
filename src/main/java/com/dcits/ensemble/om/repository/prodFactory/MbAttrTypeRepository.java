package com.dcits.ensemble.om.repository.prodFactory;

import com.dcits.ensemble.om.model.dbmodel.MbAttrType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by jiajt on 2018/12/3.
 */
public interface MbAttrTypeRepository extends JpaRepository<MbAttrType,Long>,JpaSpecificationExecutor<MbAttrType> {
    MbAttrType findByAttrKey(String attrKey);
}
