package com.dcits.ensembleom.repository.paraFlow;

import com.dcits.ensembleom.model.dbmodel.ParaDifferenceCheckPublish;
import com.dcits.ensembleom.model.dbmodel.ParaDifferenceCheckPublishKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface ParaDifferenceCheckPublishRepository extends JpaRepository<ParaDifferenceCheckPublish,ParaDifferenceCheckPublishKeysClass> ,JpaSpecificationExecutor<ParaDifferenceCheckPublish>{

    List<ParaDifferenceCheckPublish> findByReqNo(String reqNo);
    @Query("select s from ParaDifferenceCheckPublish s  where s.tableFullName = :tableName")
    List<ParaDifferenceCheckPublish> searchDiffByTableName(@Param("tableName") String tableName);
}
