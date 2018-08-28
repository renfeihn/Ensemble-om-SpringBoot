package com.dcits.ensembleom.repository.paraFlow;

import com.dcits.ensembleom.model.dbmodel.ParaCircleFlow;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * Created by ligan on 2018/8/14.
 */
public interface ParaCircleFlowRepository extends JpaRepository<ParaCircleFlow,Long> ,JpaSpecificationExecutor<ParaCircleFlow>{
     public ParaCircleFlow findByTransactionId(String transactionId);
     @Modifying
     @Query("update ParaCircleFlow set currentStatus=:status where reqNo=:reqNo")
     void updateParaStatus(@Param("reqNo") String reqNo,@Param("status") String status);
}
