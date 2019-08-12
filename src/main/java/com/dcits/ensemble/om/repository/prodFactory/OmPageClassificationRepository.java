package com.dcits.ensemble.om.repository.prodFactory;


import com.dcits.ensemble.om.model.dbmodel.OmPageClassification;
import com.dcits.ensemble.om.model.dbmodel.OmPageClassificationKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by ligan on 2018/12/25.
 */
public interface OmPageClassificationRepository extends JpaRepository<OmPageClassification, OmPageClassificationKeysClass>, JpaSpecificationExecutor<OmPageClassification> {


}
