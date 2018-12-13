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
     public OmProcessMainFlow findByTranIdAndStatus(String tranId,String status);
     public OmProcessMainFlow findByTranId(String tranId);
     public OmProcessMainFlow findByMainSeqNo(String mainSeqNo);
     @Transactional
     @Modifying
     @Query("update OmProcessMainFlow set status=:status where mainSeqNo=:mainSeqNo")
     void updateParaStatus(@Param("status") String status,@Param("mainSeqNo") String mainSeqNo);
     @Transactional
     @Modifying
     @Query("update OmProcessMainFlow set dispose=:dispose where mainSeqNo=:mainSeqNo")
     void updateParaDispose(@Param("dispose") String dispose,@Param("mainSeqNo") String mainSeqNo);
     public List<OmProcessMainFlow> findByStatus(String status);
     public OmProcessMainFlow findByUserIdAndDispose(@Param("userId") String userId,@Param("dispose") String dispose);
}
