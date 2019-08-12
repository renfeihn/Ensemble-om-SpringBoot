package com.dcits.ensemble.om.repository.tables;

import com.dcits.ensemble.om.model.dbmodel.tables.GlProdMapping;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface GlProdMappingRepository extends JpaRepository<GlProdMapping,Long>, JpaSpecificationExecutor<GlProdMapping> {
    List<GlProdMapping> findByProdType(String prodType);
}
