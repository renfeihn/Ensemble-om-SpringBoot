package com.dcits.ensemble.om.repository.tables;

import com.dcits.ensemble.om.model.dbmodel.tables.MbProdAmendMaping;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface MbProdAmendMapingRepository extends JpaRepository<MbProdAmendMaping,Long>, JpaSpecificationExecutor<MbProdAmendMaping> {
    List<MbProdAmendMaping> findByProdType(String prodType);
}