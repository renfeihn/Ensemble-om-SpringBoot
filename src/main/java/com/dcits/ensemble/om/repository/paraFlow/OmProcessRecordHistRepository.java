package com.dcits.ensemble.om.repository.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmProcessRecordHist;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRecordHistKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface OmProcessRecordHistRepository extends JpaRepository<OmProcessRecordHist,OmProcessRecordHistKeysClass> ,JpaSpecificationExecutor<OmProcessRecordHist>{

    List<OmProcessRecordHist> findByRecSeqNo(@Param("recReqNo")String recSeqNo);
    List<OmProcessRecordHist> findByMainSeqNo(@Param("mainSeqNo")String mainSeqNo);

    @Query("select s from OmProcessRecordHist s  where s.tableName = :tableName")
    List<OmProcessRecordHist> searchDiffByTableName(@Param("tableName") String tableName);
    @Query("select max(s.subSeqNo) from OmProcessRecordHist s  where s.recSeqNo = :recSeqNo")
    public String findBySubSeqNoMax(@Param("recSeqNo") String recSeqNo);
    @Transactional
    public void deleteByRecSeqNo(@Param("recSeqNo") String recSeqNo);
}
