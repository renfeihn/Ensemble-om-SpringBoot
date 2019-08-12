package com.dcits.ensemble.om.repository.tables;

import com.dcits.ensemble.om.model.dbmodel.tables.IrlBasisRate;
import com.dcits.ensemble.om.model.dbmodel.tables.IrlBasisRateKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface IrlBasisRateRepository extends JpaRepository<IrlBasisRate, IrlBasisRateKeysClass>, JpaSpecificationExecutor<IrlBasisRate> {
}
