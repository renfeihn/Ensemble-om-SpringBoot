package com.dcits.ensemble.om.repository.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmProcessMainFlow;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface OmProcessMainFlowRepository extends JpaRepository<OmProcessMainFlow,Long> ,JpaSpecificationExecutor<OmProcessMainFlow>{
     public OmProcessMainFlow findByTranId(String tranId);
     @Transactional
     @Modifying
     @Query("update OmProcessMainFlow set status=:status where mainReqNo=:mainReqNo")
     void updateParaStatus(@Param("status") String status,@Param("mainReqNo") String mainReqNo);
     public List<OmProcessMainFlow> findByStatus(String status);
}
