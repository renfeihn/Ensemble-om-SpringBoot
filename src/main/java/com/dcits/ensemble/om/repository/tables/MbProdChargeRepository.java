package com.dcits.ensemble.om.repository.tables;

import com.dcits.ensemble.om.model.dbmodel.tables.MbProdCharge;
import com.dcits.ensemble.om.model.dbmodel.tables.MbProdChargeKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * Created by jiajt on 2018/9/18.
 */
public interface MbProdChargeRepository extends JpaRepository<MbProdCharge,MbProdChargeKeysClass>,JpaSpecificationExecutor<MbProdCharge> {
    List<MbProdCharge> findByProdType(String prodType);
}
