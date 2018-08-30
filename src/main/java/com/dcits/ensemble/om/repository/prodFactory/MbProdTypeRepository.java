package com.dcits.ensemble.om.repository.prodFactory;

import com.dcits.ensemble.om.model.dbmodel.MbProdType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface MbProdTypeRepository extends JpaRepository<MbProdType,Long> ,JpaSpecificationExecutor<MbProdType>{
    MbProdType findByProdType(String prodType);
    List<MbProdType> findByProdClass(String prodClass);
}
