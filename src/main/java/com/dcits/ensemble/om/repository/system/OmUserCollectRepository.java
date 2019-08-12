package com.dcits.ensemble.om.repository.system;

import com.dcits.ensemble.om.model.dbmodel.system.OmUserCollect;
import com.dcits.ensemble.om.model.dbmodel.system.OmUserCollectClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface OmUserCollectRepository extends JpaRepository<OmUserCollect, OmUserCollectClass>, JpaSpecificationExecutor<OmUserCollect> {

    List<OmUserCollect> findByUserId(String userId);
}
