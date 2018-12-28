package com.dcits.ensemble.om.repository.tables;

import com.dcits.ensemble.om.model.dbmodel.tables.GlProdCodeMapping;
import com.dcits.ensemble.om.model.dbmodel.tables.GlProdCodeMappingKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface GlProdCodeMappingRepository extends JpaRepository<GlProdCodeMapping, GlProdCodeMappingKeysClass>, JpaSpecificationExecutor<GlProdCodeMapping> {
    List<GlProdCodeMapping> findByProdType(String prodType);
}
