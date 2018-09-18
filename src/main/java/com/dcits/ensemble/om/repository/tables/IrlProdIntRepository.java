package com.dcits.ensemble.om.repository.tables;

import com.dcits.ensemble.om.model.dbmodel.tables.IrlProdInt;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * Created by jiajt on 2018/9/18.
 */
public interface IrlProdIntRepository extends JpaRepository<IrlProdInt,Long>,JpaSpecificationExecutor<IrlProdInt> {
    List<IrlProdInt> findByProdType(String prodType);
}
