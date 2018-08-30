package com.dcits.ensemble.om.repository.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmProcessCombination;
import com.dcits.ensemble.om.model.dbmodel.OmProcessCombinationKeysClass;
import com.dcits.ensemble.om.model.dbmodel.OmProcessInfo;
import com.dcits.ensemble.om.model.dbmodel.OmProcessInfoKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface OmProcessCombinationRepository extends JpaRepository<OmProcessCombination,OmProcessCombinationKeysClass> ,JpaSpecificationExecutor<OmProcessInfo>{
  public List<OmProcessCombination> findByReqNoAndOperatorNo(String reqNo,String operator);
}
