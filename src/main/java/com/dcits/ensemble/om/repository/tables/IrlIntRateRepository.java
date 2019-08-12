package com.dcits.ensemble.om.repository.tables;

import com.dcits.ensemble.om.model.dbmodel.tables.IrlIntRate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface IrlIntRateRepository extends JpaRepository<IrlIntRate,Long>, JpaSpecificationExecutor<IrlIntRate> {

    List<IrlIntRate> findByIrlSeqNo(String irlSeqNo);
}
