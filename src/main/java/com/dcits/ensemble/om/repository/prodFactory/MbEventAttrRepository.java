package com.dcits.ensemble.om.repository.prodFactory;

import com.dcits.ensemble.om.model.dbmodel.MbEventAttr;
import com.dcits.ensemble.om.model.dbmodel.MbEventAttrKeysClass;
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
public interface MbEventAttrRepository extends JpaRepository<MbEventAttr,MbEventAttrKeysClass> ,JpaSpecificationExecutor<MbEventAttr>{
     @Query("select s from MbEventAttr s  where s.eventType = :eventType order by s.pageCode,s.pageSeqNo Asc" )
     List<MbEventAttr> findByEventTypeOrderByPageCodePageSeqNoAsc(@Param("eventType") String eventType);
     List<MbEventAttr> findByEventType(String eventType);
     public MbEventAttr findByEventTypeAndAssembleId(String eventType,String assembleId);
     @Transactional
     @Modifying
     @Query("update MbEventAttr set pageSeqNo=:pageSeqNo where eventType=:eventType and assembleId=:assembleId and pageCode=:pageCode")
     void updatePageSeq(@Param("pageSeqNo") Integer pageSeqNo, @Param("eventType") String eventType, @Param("assembleId") String assembleId, @Param("pageCode") String pageCode);
}
