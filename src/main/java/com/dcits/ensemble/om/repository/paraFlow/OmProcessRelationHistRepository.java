package com.dcits.ensemble.om.repository.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmProcessRelationHist;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRelationHistKeysClass;
import com.dcits.ensemble.om.model.dbmodel.OmProcessDetailHist;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface OmProcessRelationHistRepository extends JpaRepository<OmProcessRelationHist,OmProcessRelationHistKeysClass> ,JpaSpecificationExecutor<OmProcessRelationHist>{
  public List<OmProcessRelationHist> findByMainSeqNoAndDtlSeqNo(@Param("mainSeqNo") String mainSeqNo,@Param("dtlSeqNo") String dtlSeqNo);
  @Query("select s from OmProcessRelationHist s  where s.mainSeqNo = :mainSeqNo GROUP BY s.tranId")
  public List<OmProcessRelationHist> findByMainSeqNo(@Param("mainSeqNo") String mainSeqNo);
}
