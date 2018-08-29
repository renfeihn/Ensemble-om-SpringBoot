package com.dcits.ensemble.om.repository.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmProcessManagement;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface OmProcessManagementRepository extends JpaRepository<OmProcessManagement,Long> ,JpaSpecificationExecutor<OmProcessManagement>{
     public OmProcessManagement findByTransactionId(String transactionId);
     @Modifying
     @Query("update O mProcessManagement set currentStatus=:status where reqNo=:reqNo")
     void updateParaStatus(@Param("reqNo") String reqNo,@Param("status") String status);
     public List<OmProcessManagement> findByCurrentStatus(String status);
}
