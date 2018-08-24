package com.dcits.ensembleom.repository.prodFactory;

import com.dcits.ensembleom.model.dbmodel.MbProdType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by ligan on 2018/8/14.
 */
public interface MbProdTypeRepository extends JpaRepository<MbProdType,Long> ,JpaSpecificationExecutor<MbProdType>{
    MbProdType findByProdType(String prodType);
}
