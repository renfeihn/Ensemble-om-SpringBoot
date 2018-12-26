package com.dcits.ensemble.om.repository.tables;

import com.dcits.ensemble.om.model.dbmodel.tables.IrlIntType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface IrlIntTypeRepository extends JpaRepository<IrlIntType,Long>, JpaSpecificationExecutor<IrlIntType> {

    List<IrlIntType> findByIntTaxType(String intTaxType);
}
