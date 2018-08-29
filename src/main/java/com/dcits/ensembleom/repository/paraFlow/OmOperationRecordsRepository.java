package com.dcits.ensembleom.repository.paraFlow;

import com.dcits.ensembleom.model.dbmodel.OmOperationRecords;
import com.dcits.ensembleom.model.dbmodel.OmOperationRecordsKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface OmOperationRecordsRepository extends JpaRepository<OmOperationRecords,OmOperationRecordsKeysClass> ,JpaSpecificationExecutor<OmOperationRecords>{

    List<OmOperationRecords> findByReqNo(String reqNo);
    @Query("select s from OmOperationRecords s  where s.tableFullName = :tableName")
    List<OmOperationRecords> searchDiffByTableName(@Param("tableName") String tableName);
}
