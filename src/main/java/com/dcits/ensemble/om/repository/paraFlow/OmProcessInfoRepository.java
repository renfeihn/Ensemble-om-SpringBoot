package com.dcits.ensemble.om.repository.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmProcessCombination;
import com.dcits.ensemble.om.model.dbmodel.OmProcessCombinationKeysClass;
import com.dcits.ensemble.om.model.dbmodel.OmProcessInfo;
import com.dcits.ensemble.om.model.dbmodel.OmProcessInfoKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigDecimal;

/**
 * Created by ligan on 2018/8/14.
 */
public interface OmProcessInfoRepository extends JpaRepository<OmProcessInfo,OmProcessInfoKeysClass> ,JpaSpecificationExecutor<OmProcessCombination>{
    @Query("select max(s.operatorNo) from OmProcessInfo s  where s.reqNo = :reqNo")
    public String findByReqNoMax(@Param("reqNo") String reqNo);
    public OmProcessInfo findByReqNoAndOperatorNoAndOperatorType(@Param("reqNo") String reqNo,@Param("operatorNo") BigDecimal operatorNo,@Param("operatorType") String operatorType);

}
