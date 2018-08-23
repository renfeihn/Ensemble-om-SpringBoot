package com.dcits.ensembleom.repository.prodFactory;

import com.dcits.ensembleom.model.ParaDifferenceCheckPublish;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface ProdInfoRepository extends JpaRepository<ParaDifferenceCheckPublish,Long> ,JpaSpecificationExecutor<ParaDifferenceCheckPublish>{
    @Query("select s from ParaDifferenceCheckPublish s  where s.tableFullName = :tableName")
    List<ParaDifferenceCheckPublish> searchDiffByTableName(@Param("tableName") String tableName);
}
