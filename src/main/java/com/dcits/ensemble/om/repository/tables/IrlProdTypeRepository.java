package com.dcits.ensemble.om.repository.tables;

import com.dcits.ensemble.om.model.dbmodel.tables.IrlProdType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface IrlProdTypeRepository extends JpaRepository<IrlProdType,Long>, JpaSpecificationExecutor<IrlProdType> {

    List<IrlProdType> findByProdType(String prodType);
}
