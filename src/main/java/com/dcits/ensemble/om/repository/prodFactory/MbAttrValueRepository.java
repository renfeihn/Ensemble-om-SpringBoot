package com.dcits.ensemble.om.repository.prodFactory;

import com.dcits.ensemble.om.model.dbmodel.MbAttrValue;
import com.dcits.ensemble.om.model.dbmodel.MbAttrValueKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * Created by jiajt on 2018/12/3.
 */
public interface MbAttrValueRepository extends JpaRepository<MbAttrValue, MbAttrValueKeysClass>,JpaSpecificationExecutor<MbAttrValue> {
    List<MbAttrValue> findAllByAttrKey(String attrKey);
    MbAttrValue findByAttrKey(String attrKey);
}
