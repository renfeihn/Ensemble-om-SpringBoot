package com.dcits.ensemble.om.repository.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmProcessRelationHist;
import com.dcits.ensemble.om.model.dbmodel.OmProcessDetailHist;
import com.dcits.ensemble.om.model.dbmodel.OmProcessDetailHistKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface OmProcessDetailHistRepository extends JpaRepository<OmProcessDetailHist,OmProcessDetailHistKeysClass> ,JpaSpecificationExecutor<OmProcessRelationHist>{
    @Query("select max(s.dtlSeqNo) from OmProcessDetailHist s  where s.mainSeqNo = :mainSeqNo")
    public String findBySeqNoMax(@Param("mainSeqNo") String mainSeqNo);
    List<OmProcessDetailHist> findByMainSeqNo(@Param("recReqNo")String recSeqNo);
    public OmProcessDetailHist findByMainSeqNoAndDtlSeqNoAndStatus(@Param("mainSeqNo") String mainSeqNo,@Param("dtlSeqNo") BigDecimal dtlSeqNo,@Param("status") String status);

}
